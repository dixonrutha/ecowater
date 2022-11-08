<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Payments extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('Sms_model'));
        //Call this mysql procedure to change session timezone for all database CRUD
//        $this->db->query("CALL mysql.store_time_zone()");
    }

    public function index()
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
    }

    # SELCOM PAYMENTS API START HERE
    /*
      |  Barrier token  => 0aa6b279aee601626cd3b059e52464904b872a74
      |  Barrier OG     => EcowaterSelcomMobilePayments
      |
      |  Valid Selcom Public IPs
      |  155.12.12.214
      |  41.223.4.232
      |  41.188.172.170
     */

    function selcom_validation()
    {
        $json = file_get_contents('php://input');
        $obj = json_decode($json, TRUE);
        //extracting data from json
        $operator = $obj['operator'];
        $msisdn = $obj['msisdn'];
        $transid_operator = $obj['transid'];
        $reference_selcom = $obj['reference'];
        $utilityref_card_no = $obj['utilityref'];
        $amount = $obj['amount'];
        $timestamp_selcom = $obj['timestamp'];
        $ip = $_SERVER['REMOTE_ADDR'];
        $v_status = '';
        $e_message = '';
        $sub_id = '000';
        $campus_code = '000';
        $sub_name = '';
        $result = '';
        //get card no and customer details
        $sub = $this->db->get_where('sub_card_vw', array('card_luhn' => $utilityref_card_no));
        $sub_vw_data = $sub->row();
        $duplicate = $this->db->get_where('selcom_payments', array('reference_selcom' => $reference_selcom))->num_rows();
        //validate Selcom public IP address
        $ip_check = $this->db->get_where('white_list_ips', array('ip_address' => $ip))->num_rows();
        if ($ip_check == 0) {
            $v_status = '403';
            $result = 'FAILED';
            $e_message = 'Invalid remote address';
        } //check valid card
        elseif ($sub->num_rows() == 0) {
            $v_status = '010';
            $result = 'FAILED';
            $e_message = 'Invalid card number';
        } //check for inactive card (lost/demaged)
        elseif ($sub_vw_data->card_status == 'Inactive') {
            $v_status = '011';
            $result = 'FAILED';
            $e_message = 'Inactive card';
            $sub = $sub->row();
            $sub_id = $sub->sub_id;
            $sub_name = $sub->sub_name;
            $campus_code = $sub->campus_code;
        } //check minimum amount
        elseif ($amount < $sub_vw_data->min_recharge_limit) {
            $v_status = '015';
            $result = 'FAILED';
            $e_message = 'Amount too low minimum TZS ' . number_format($sub_vw_data->min_recharge_limit, 0);
            //$e_message = 'Amount too low minimum TZS 100';
            $sub = $sub->row();
            $sub_id = $sub->sub_id;
            $sub_name = $sub->sub_name;
            $campus_code = $sub->campus_code;
        } //check maximum amount
        elseif ($amount > $sub_vw_data->recharge_limit) {
            $v_status = '014';
            $result = 'FAILED';
            $e_message = 'Amount too high, your limit is TZS ' . number_format($sub_vw_data->recharge_limit, 0);
            $sub = $sub->row();
            $sub_id = $sub->sub_id;
            $sub_name = $sub->sub_name;
            $campus_code = $sub->campus_code;
        } //check duplicate transaction amount
        elseif ($duplicate != 0) {
            $v_status = '402';
            $result = 'FAILED';
            $e_message = 'Duplicate transaction';
            $sub = $sub->row();
            $sub_id = $sub->sub_id;
            $sub_name = $sub->sub_name;
            $campus_code = $sub->campus_code;
        } //success
        else {
            $v_status = '000';
            $result = 'SUCCESS';
            $e_message = 'Success';
            $sub = $sub->row();
            $sub_id = $sub->sub_id;
            $sub_name = $sub->sub_name;
            $campus_code = $sub->campus_code;
        }
        $response_data = [
            'reference' => $reference_selcom,
            'resultcode' => $v_status,
            'result' => $result,
            'message' => $e_message,
            'name' => $sub_name
        ];

        //store payment data      
        $payment_data = array(
            'operator' => $operator,
            'msisdn' => $msisdn,
            'transid_operator' => $transid_operator,
            'reference_selcom' => $reference_selcom,
            'utilityref_card_no' => $utilityref_card_no,
            'amount' => $amount,
            'timestamp_selcom' => $timestamp_selcom,
            'v_status' => $v_status,
            'sub_id' => $sub_id,
            'remote_ip' => $ip
        );
        $this->db->insert('selcom_payments', $payment_data);
        $payment_id = $this->db->insert_id();
        if ($payment_id >= 1) {
            //generate ecowater transaction reference
            $eco_ref = $this->_generate_eco_ref($payment_id, $operator);
            //notify customer care for failed transactions
            if ($v_status != '000') {
                $this->_notify_failed_payment($utilityref_card_no, $amount, $msisdn, $v_status, $eco_ref, $campus_code);
            }
            //store json request data
            $json_data = array(
                'payment_id' => $payment_id,
                'reference_selcom' => $reference_selcom,
                'validation_request' => json_encode($obj),
                'validation_response' => json_encode($response_data)
            );
            $this->db->insert('selcom_json', $json_data);
            //send response back to selcom
            header('Content-type: Application/json');
            echo json_encode($response_data);
        }
    }

    function _generate_eco_ref($payment_id = '', $operator = '')
    {
        $operator_result = $this->db->get_where('selcom_operators', array('operator' => $operator));
        if ($operator_result->num_rows() == 1) {
            $row = $operator_result->row();
            $operator_id = $row->sno;
        } else {
            $operator_id = 9;
        }
        # generate checksum start
        $checksum = $this->_generate_luhn_check($operator_id . $payment_id);
        # generate checksum end
        $eco_ref = 'EC' . $payment_id . $checksum;
        $eco_ref_data = array('eco_ref' => $eco_ref);
        $this->db->where('id', $payment_id);
        $this->db->update('selcom_payments', $eco_ref_data);
        return $eco_ref;
    }

    function _generate_luhn_check($value = '')
    {
        // Force the value to be a string so we can work with it like a string.
        $value = (string)$value;
        // Set some initial values up.
        $length = strlen($value);
        $parity = $length % 2;
        $sum = 0;
        for ($i = $length - 1; $i >= 0; --$i) {
            // Extract a character from the value.
            $char = $value[$i];
            if ($i % 2 != $parity) {
                $char *= 2;
                if ($char > 9) {
                    $char -= 9;
                }
            }
            // Add the character to the sum of characters.
            $sum += $char;
        }
        // Return the value of the sum multiplied by 9 and then modulus 10.
        return ($sum * 9) % 10;
    }

    function _notify_failed_payment($card_no = '', $amount = '', $mobile = '', $v_status = '', $eco_ref = '', $campus_code = '')
    {
        $reason = $this->db->get_where('selcom_response_code', array('e_code' => $v_status))->row()->description;
        $param = $this->db->get('system_parameters')->row();
        $customer_mobile = '0' . substr($mobile, 3, 9);
        $message = "Failed Transaction " . strtoupper($reason) . ", Card " . $card_no . " amount Tsh" . number_format($amount, 0) . " from " . $customer_mobile . ". Ref " . $eco_ref . ".";
        if ($campus_code == 'CA-000059' || $v_status == '010') {
            // CA-000059 UDOM campus
            $receiver = $param->customer_care_1;
        } else {
            $receiver = $param->customer_care_2;
        }
        $sms = array('receiver' => $receiver, 'message' => $message, 'maker_id' => 'SYSTEM');
        $this->db->insert('sms_outgoing', $sms);
        $this->Sms_model->sendsms($message, $receiver);
    }

    function selcom_notification()
    {
        $json = file_get_contents('php://input');
        $obj = json_decode($json, TRUE);
        //extracting data from json
        $reference_selcom = $obj['reference'];
        $utilityref_card_no = $obj['utilityref'];
        $amount = $obj['amount'];
        $msisdn = $obj['msisdn'];
        $payment_id = '999';
        //check if reference exist
        $payment_data = $this->db->get_where('selcom_payments', array('reference_selcom' => $reference_selcom, 'v_status' => '000', 'channel_id' => 'SELCOM'));
        if ($payment_data->num_rows() == 0) {
            $result = 'FAILED';
            $e_message = 'Invalid transaction reference';
            $n_status = '403';
        } else {
            $n_status = '000';
            $result = 'SUCCESS';
            $e_message = 'Success';
            $comment = '';
            $payment_data = $payment_data->row();
            $payment_id = $payment_data->id;

            # check for collected amount start
            $deduction = $this->_collect_deduction($payment_data->sub_id, $payment_data->amount, $payment_data->id, $payment_data->utilityref_card_no, $payment_data->eco_ref);
            $message = $deduction['sub_sms'];
            $comment = $deduction['comment'];
            $final_recharge = $deduction['final_recharge'];
            # check for collected amount end

            $sms = array('receiver' => $msisdn, 'message' => $message, 'maker_id' => 'SYSTEM');
            $this->db->insert('sms_outgoing', $sms);
            $this->Sms_model->sendsms($message, $msisdn);
            #Send message to subscriber end here
            if ($final_recharge > 0) {
                //insert card topup
                $topup_id = $this->_insert_card_topup($payment_data->id);
            }
            #update notification status start
            $this->db->where('id', $payment_data->id);
            $this->db->update('selcom_payments', array('n_status' => $n_status, 'comment' => $comment));
        }
        $response_data = [
            'reference' => $reference_selcom,
            'resultcode' => $n_status,
            'result' => $result,
            'message' => $e_message
        ];
        //store json response data
        $json_data = array(
            'notification_request' => json_encode($obj),
            'notification_response' => json_encode($response_data)
        );
        $this->db->where(array('payment_id' => $payment_id, 'reference_selcom' => $reference_selcom));
        $this->db->update('selcom_json', $json_data);
        //send response back to selcom 
        header('Content-type: Application/json');
        echo json_encode($response_data);
    }

    function _collect_deduction($sub_id = '', $amount = 0, $mobile_payment_id = '', $card_no = '', $eco_ref = '')
    {
        //initialize recharge message
        $ecomeal_sms = ''; // . -190,000 for Ecomeal
        $ecoprint_sms = ''; // , -8,000 for Ecoprint
        $bottle_loan_sms = ''; // , -3,500 for bottle Loan
        $bonus_sms = ''; // . Bonus 2,500
        $sms = 'Card ' . $card_no . ' recharged Tsh' . number_format($amount, 0) . ' on ' . date('d/m/y H:i') . ' Ref ' . $eco_ref . $ecomeal_sms . $ecoprint_sms . $bottle_loan_sms . $bonus_sms . '. Tap validator to validate. Customer Care 0746004174 / 0766493622.';
        $final_amount = $amount;
        $comment = 'Recharge: ' . number_format($amount, 2) . ' | ';

        # check for ecomeal unpaid coupon start
        $ecomeal = $this->db->get_where('meal_coupon_buy', array('sub_id' => $sub_id, 'status' => 'Unpaid'));
        $ecomeal_data = $ecomeal->row();
        if ($ecomeal->num_rows() == 1 && $amount >= $ecomeal_data->amount) {
            //update coupon purchased to paid
            $this->db->where(array('id' => $ecomeal_data->id));
            $this->db->update('meal_coupon_buy', array('status' => 'Paid', 'payment_id' => $mobile_payment_id));
            //update meal balance
            $this->db->query(" update eco_subscribers set ecomeal_balance = (ifnull(ecomeal_balance,0) + '$ecomeal_data->amount') where id = '$sub_id' ");
            $final_amount = $amount - $ecomeal_data->amount;
            $comment = $comment . 'Ecomeal ID: ' . $ecomeal_data->id . ', Amount ' . number_format($ecomeal_data->amount, 2) . ' | ';
            //update for sms
            $ecomeal_sms = '. -' . number_format($ecomeal_data->amount, 0) . ' for ecoMeal';
        }
        # check for ecomeal unpaid coupon end

        # check for bottle loan start
        $sub_loan = $this->db->get_where('bottles_sold', array('sub_id' => $sub_id, 'status' => 'Active'));
        if ($sub_loan->num_rows() >= 1 && $final_amount > 0) {
            $sub_loan = $sub_loan->row();
            $loan_id = $sub_loan->id;
            $loan_amount = $sub_loan->loan_amount;
            $collected_amount = $sub_loan->collected_amount;
            $outstanding_loan = $loan_amount - $collected_amount;
            $rate = $sub_loan->rate;
            $installment = ($rate / 100) * $final_amount;
            $status = 'Active';
            $loan_end_date = null;
            if ($installment >= $outstanding_loan) {
                $installment = $outstanding_loan;
                $status = 'Full Paid';
                $loan_end_date = date('Y-m-d');
            }
            $repayment_data = array('loan_id' => $loan_id, 'amount' => $installment, 'mobile_payment_id' => $mobile_payment_id, 'payment_date' => date('Y-m-d'));
            $this->db->insert('bottles_repayment', $repayment_data);
            $loan_repayment_id = $this->db->insert_id();
            #update collected amount start
            $new_collected_amount = $collected_amount + $installment;
            $new_outstanding_loan = $loan_amount - $new_collected_amount;
            $update_loan_data = array('collected_amount' => $new_collected_amount, 'status' => $status, 'loan_end_date' => $loan_end_date);
            $this->db->where('id', $loan_id);
            $this->db->update('bottles_sold', $update_loan_data);
            $final_amount = $final_amount - $installment;
            $comment = $comment . 'Bottle Loan ID: ' . $loan_id . ', Installment: ' . $installment . ' | ';
            //update for sms
            $bottle_loan_sms = '. -' . number_format($installment, 0) . ' for Bottle Loan';
        }
        # check for bottle loan end

        # check for bonus start
        $start_date = '2022-09-16';
        $end_date = '2022-09-23';
        //get campus code
        $subscriber = $this->db->get_where('subscribers', array('id' => $sub_id))->row();
        $campus_code = $subscriber->campus_code;
        $category = $subscriber->category;
        $rate = 0.5; // 0.5 * 100 = 50% of the payment amount
        $today = date('Y-m-d');
        if ($today >= $start_date && $today <= $end_date && $category == 'STUDENT' && $final_amount > 0) {
            //if ($today >= $start_date && $today <= $end_date && $final_amount > 0) {
            $prom_amt = $rate * $final_amount;
            $data = array('prom_amt' => $prom_amt);
            $this->db->where('id', $mobile_payment_id);
            $this->db->update('selcom_payments', $data);
            $comment = $comment . 'Bonus: ' . $prom_amt . ' | ';
            $bonus_sms = ' bonus Tsh' . number_format($prom_amt, 0) . ' ';
        }
        # check for bonus end
        #update payment amount on eco_selcom_payment table start
        $this->db->where('id', $mobile_payment_id);
        $this->db->update('selcom_payments', array('amount' => $final_amount));
        #update payment amount on eco_selcom_payment table end

        $sms = 'Card ' . $card_no . ' recharged Tsh' . number_format($amount, 0) . ' on ' . date('d/m/y H:i') . ' Ref ' . $eco_ref . $ecomeal_sms . $ecoprint_sms . $bottle_loan_sms . $bonus_sms . '. Tap validator to validate. Customer Care 0746004174 / 0766493622.';
        return array('sub_sms' => $sms, 'comment' => $comment, 'final_recharge' => $final_amount);
    }

    function _check_bottle_loan($sub_id = '', $amount = 0, $mobile_payment_id = '')
    {
        $sub_loan = $this->db->get_where('bottles_sold', array('sub_id' => $sub_id, 'status' => 'Active'));
        if ($sub_loan->num_rows() >= 1) {
            $sub_loan = $sub_loan->row();
            $loan_id = $sub_loan->id;
            $loan_amount = $sub_loan->loan_amount;
            $collected_amount = $sub_loan->collected_amount;
            $outstanding_loan = $loan_amount - $collected_amount;
            $rate = $sub_loan->rate;
            $installment = ($rate / 100) * $amount;
            $status = 'Active';
            $loan_end_date = '';
            if ($installment >= $outstanding_loan) {
                $installment = $outstanding_loan;
                $status = 'Full Paid';
                $loan_end_date = date('Y-m-d');
            }
            $repayment_data = array('loan_id' => $loan_id, 'amount' => $installment, 'mobile_payment_id' => $mobile_payment_id, 'payment_date' => date('Y-m-d'));
            $this->db->insert('bottles_repayment', $repayment_data);
            $loan_repayment_id = $this->db->insert_id();
            #update collected amount start
            $new_collected_amount = $collected_amount + $installment;
            $new_outstanding_loan = $loan_amount - $new_collected_amount;
            $update_loan_data = array('collected_amount' => $new_collected_amount, 'status' => $status, 'loan_end_date' => $loan_end_date);
            $this->db->where('id', $loan_id);
            $this->db->update('bottles_sold', $update_loan_data);
            #update collected amount end
            return array('installment' => $installment, 'outstanding_loan' => $new_outstanding_loan, 'loan_id' => $loan_id, 'loan_repayment_id' => $loan_repayment_id, 'mobile_payment_id' => $mobile_payment_id);
        } else {
            return array('installment' => 0, 'outstanding_loan' => 0, 'loan_id' => 0, 'loan_repayment_id' => 0, 'mobile_payment_id' => $mobile_payment_id);
        }
    }

    function _insert_card_topup($mob_payment_id = '')
    {
        $payment = $this->db->get_where('selcom_payments', array('id' => $mob_payment_id))->row();
        if ($payment->v_status === '000' AND $payment->maker_id === 'SYSTEM' AND $payment->channel_id === 'SELCOM') {
            $topup_data = array(
                'card_no' => $payment->utilityref_card_no,
                'sub_id' => $payment->sub_id,
                'trn_ref_no' => $payment->eco_ref,
                'amount' => $payment->amount,
                'trn_status' => 'SUCCESS',
                'trn_date' => $payment->timestamp_selcom,
                'pos' => 'MOB',
                'category' => 'RECHARGE',
                'maker_id' => $payment->operator
            );
            $this->db->insert('card_topup', $topup_data);
            $insert_id = $this->db->insert_id();
            if ($payment->prom_amt > 0) {
                $topup_data = array(
                    'card_no' => $payment->utilityref_card_no,
                    'sub_id' => $payment->sub_id,
                    'trn_ref_no' => $payment->eco_ref,
                    'amount' => $payment->prom_amt,
                    'trn_status' => 'SUCCESS',
                    'trn_date' => $payment->timestamp_selcom,
                    'pos' => 'MOB',
                    'category' => 'SPECIAL_OFFER',
                    'maker_id' => $payment->operator
                );
                $this->db->insert('card_topup', $topup_data);
            }
        }
        return $insert_id;
    }

    function _mob_recharge_bonus($payment_id = '')
    {
        $start_date = '2022-02-24';
        $end_date = '2022-03-04';
        //get payment data
        $payment_data = $this->db->get_where('selcom_payments', array('id' => $payment_id))->row();
        //get campus code
        $subscriber = $this->db->get_where('subscribers', array('id' => $payment_data->sub_id))->row();
        $campus_code = $subscriber->campus_code;
        $rate = 0.1; // 10% of the payment amount        
        $today = date('Y-m-d');
        if ($today >= $start_date && $today <= $end_date && $campus_code == 'CA-000059') {
            $prom_amt = $rate * $payment_data->amount;
            $data = array('prom_amt' => $prom_amt);
            $this->db->where('id', $payment_id);
            $this->db->update('selcom_payments', $data);
            return array('bonus' => $prom_amt);
        } else {
            return array('bonus' => 0);
        }
    }

    #  SELCOM PAYMENTS API END HERE
}
