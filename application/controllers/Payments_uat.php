<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Payments_uat extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('Sms_model'));
        //Call this mysql procedure to change session timezone for all database CRUD
//        $this->db->query("CALL mysql.store_time_zone()");
    }

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
        $duplicate = $this->db->get_where('uat_selcom_payments', array('reference_selcom' => $reference_selcom))->num_rows();
        #Check for bottlr loan end here
        //validate Selcom public IP address
        $ip_check = $this->db->get_where('uat_white_list_ips', array('ip_address' => $ip))->num_rows();
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
        $this->db->insert('uat_selcom_payments', $payment_data);
        $payment_id = $this->db->insert_id();
        if ($payment_id >= 1) {
            //generate ecowater transaction reference for customer
            $eco_ref = $this->_generate_eco_ref($payment_id, $operator);
            //notify customer care for failed transactions
            if ($v_status != '000') {
                // $this->_notify_failed_payment($utilityref_card_no, $amount, $msisdn, $v_status, $eco_ref, $campus_code);
            }
            //store json request data
            $json_data = array(
                'payment_id' => $payment_id,
                'reference_selcom' => $reference_selcom,
                'validation_request' => json_encode($obj),
                'validation_response' => json_encode($response_data)
            );
            $this->db->insert('uat_selcom_json', $json_data);
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
        $this->db->update('uat_selcom_payments', $eco_ref_data);
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
        $message = "Failed Transaction " . strtoupper($reason) . ", Card " . $card_no . " amount Tsh" . number_format($amount, 0) . " from " . $customer_mobile . ". Ref " . $eco_ref;
        if ($campus_code == 'CA-000059') {
            // CA-000059 UDOM campus
            $receiver = $param->customer_care_1;
        } else {
            $receiver = $param->customer_care_2;
        }
        $sms = array('receiver' => $receiver, 'message' => $message, 'maker_id' => 'SYSTEM');
        $this->db->insert('uat_sms_outgoing', $sms);
        $this->Sms_model->sendsms($message, '255767821881');
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
        $payment_data = $this->db->get_where('uat_selcom_payments', array('reference_selcom' => $reference_selcom, 'v_status' => '000', 'channel_id' => 'SELCOM'));
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
            $this->db->insert('uat_sms_outgoing', $sms);
            //$this->Sms_model->sendsms($message, '255767821881');
            #Send message to subscriber end here
            if ($final_recharge > 0) {
                //insert card topup
                $topup_id = $this->_insert_card_topup($payment_data->id);
                #post TRA vfd receipt start
                //$this->_tra_vfd_receipt($utilityref_card_no, $payment_data->sub_id, $payment_data->timestamp_selcom, $payment_data->msisdn, $final_recharge, $topup_id);
                #post TRA vfd receipt end
            }
            #update notification status start
            $this->db->where('id', $payment_data->id);
            $this->db->update('uat_selcom_payments', array('n_status' => $n_status, 'comment' => $comment));
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
        $this->db->update('uat_selcom_json', $json_data);
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
        $sms = 'Card ' . $card_no . ' recharged Tsh' . number_format($amount, 0) . ' on ' . date('d/m/y') . ' at ' . date('H:i') . ' Ref ' . $eco_ref . $ecomeal_sms . $ecoprint_sms . $bottle_loan_sms . $bonus_sms . '. Tap validator to validate. Customer Care 0746004174 / 0766493622.';
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
            $ecomeal_sms = '. -' . number_format($ecomeal_data->amount, 0) . ' for Ecomeal';
        }
        # check for ecomeal unpaid coupon end

        # check for bottle loan start
        $sub_loan = $this->db->get_where('uat_bottles_sold', array('sub_id' => $sub_id, 'status' => 'Active'));
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
            $this->db->insert('uat_bottles_repayment', $repayment_data);
            $loan_repayment_id = $this->db->insert_id();
            #update collected amount start
            $new_collected_amount = $collected_amount + $installment;
            $new_outstanding_loan = $loan_amount - $new_collected_amount;
            $update_loan_data = array('collected_amount' => $new_collected_amount, 'status' => $status, 'loan_end_date' => $loan_end_date);
            $this->db->where('id', $loan_id);
            $this->db->update('uat_bottles_sold', $update_loan_data);
            $final_amount = $final_amount - $installment;
            $comment = $comment . 'Bottle Loan ID: ' . $loan_id . ', Installment: ' . $installment . ' | ';
            //update for sms
            $bottle_loan_sms = '. -' . number_format($installment, 0) . ' for Bottle Loan';
        }
        # check for bottle loan end

        # check for bonus start
        $start_date = '2022-06-30';
        $end_date = '2022-07-18';
        //get campus code
        $subscriber = $this->db->get_where('subscribers', array('id' => $sub_id))->row();
        $campus_code = $subscriber->campus_code;
        $rate = 0.2; // 20% of the payment amount
        $today = date('Y-m-d');
        if ($today >= $start_date && $today <= $end_date && $campus_code == 'CA-000059' && $final_amount > 0) {
            $prom_amt = $rate * $final_amount;
            $data = array('prom_amt' => $prom_amt);
            $this->db->where('id', $mobile_payment_id);
            $this->db->update('uat_selcom_payments', $data);
            $comment = $comment . 'Bonus: ' . $prom_amt . ' | ';
            $bonus_sms = '. +' . number_format($prom_amt, 0) . ' UE Offer';
        }
        # check for bonus end

        #update payment amount on eco_selcom_payment table start
        $this->db->where('id', $mobile_payment_id);
        $this->db->update('uat_selcom_payments', array('amount' => $final_amount));
        #update payment amount on eco_selcom_payment table end

        $sms = 'Card ' . $card_no . ' recharged Tsh' . number_format($amount, 0) . ' on ' . date('d/m/y') . ' at ' . date('H:i') . ' Ref ' . $eco_ref . $ecomeal_sms . $ecoprint_sms . $bottle_loan_sms . $bonus_sms . '. Tap validator to validate. Customer Care 0746004174 / 0766493622.';
        return array('sub_sms' => $sms, 'comment' => $comment, 'final_recharge' => $final_amount);
    }

    function _check_bottle_loan($sub_id = '', $amount = 0, $mobile_payment_id = '')
    {
        $sub_loan = $this->db->get_where('uat_bottles_sold', array('sub_id' => $sub_id, 'status' => 'Active'));
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
            $this->db->insert('uat_bottles_repayment', $repayment_data);
            $loan_repayment_id = $this->db->insert_id();
            #update collected amount start
            $new_collected_amount = $collected_amount + $installment;
            $new_outstanding_loan = $loan_amount - $new_collected_amount;
            $update_loan_data = array('collected_amount' => $new_collected_amount, 'status' => $status, 'loan_end_date' => $loan_end_date);
            $this->db->where('id', $loan_id);
            $this->db->update('uat_bottles_sold', $update_loan_data);
            #update collected amount end
            return array('installment' => $installment, 'outstanding_loan' => $new_outstanding_loan, 'loan_id' => $loan_id, 'loan_repayment_id' => $loan_repayment_id, 'mobile_payment_id' => $mobile_payment_id);
        } else {
            return array('installment' => 0, 'outstanding_loan' => 0, 'loan_id' => 0, 'loan_repayment_id' => 0, 'mobile_payment_id' => $mobile_payment_id);
        }
    }

    function _insert_card_topup($mob_payment_id = '')
    {
        $payment = $this->db->get_where('uat_selcom_payments', array('id' => $mob_payment_id))->row();
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
            $this->db->insert('uat_card_topup', $topup_data);
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
                $this->db->insert('uat_card_topup', $topup_data);
            }
        }
        return $insert_id;
    }

    function _mob_recharge_bonus($payment_id = '')
    {
        $start_date = '2022-02-23';
        $end_date = '2022-03-04';
        //get payment data
        $payment_data = $this->db->get_where('uat_selcom_payments', array('id' => $payment_id))->row();
        //get campus code
        $subscriber = $this->db->get_where('subscribers', array('id' => $payment_data->sub_id))->row();
        $campus_code = $subscriber->campus_code;
        $rate = 0.1; // 10% of the payment amount        
        $today = date('Y-m-d');
        if ($today >= $start_date && $today <= $end_date && $campus_code == 'CA-000059') {
            $prom_amt = $rate * $payment_data->amount;
            $data = array('prom_amt' => $prom_amt);
            $this->db->where('id', $payment_id);
            $this->db->update('uat_selcom_payments', $data);
            return array('bonus' => $prom_amt);
        } else {
            return array('bonus' => 0);
        }
    }

    function _tra_vfd_receipt($card_no, $sub_id = '', $receipt_date = '', $customer_phone = '', $amount = '', $topup_id = '')
    {
        $amount = (int)$amount;
        //product code = DRINK_WATER
        $vat_enabled = $this->db->get_where('uat_udf_products', array('product_code' => 'DRINK_WATER'))->row()->vat_enabled;
        if ($vat_enabled == 'Y' && $amount > 0) {
            $sub = $this->db->get_where('sub_card_vw', array('sub_id' => $sub_id))->row();
            //$amount = $amount + 0;
            //verify data
            if (empty($sub->id_type)) {
                $id_type = 6;
            } else {
                $id_type = $sub->id_type;
            }
            if (empty($sub->id_number)) {
                $id_number = 'NIL';
            } else {
                $id_number = $sub->id_number;
            }
            /*if (empty($sub->sub_mobile)) {
                $sub_mobile = '255756445445';
            } else {
                $sub_mobile = $sub->sub_mobile;
            }*/
            $sub_mobile = $customer_phone;
            if (empty($sub->sub_email)) {
                $sub_email = 'payments@ecowaterinternational.com';
            } else {
                $sub_email = $sub->sub_email;
            }
            if (empty($sub->sub_name)) {
                $sub_name = 'eCloud Customer';
            } else {
                $sub_name = $sub->sub_name;
            }
            $request = "{\n\"receipt_date\":\"$receipt_date\",\n\"customer_id\":\"$id_number\",\n\"customer_idtype\":\"$id_type\",\n \"customer_phone\":\"$sub_mobile\",\n\"customer_email\":\"$sub_email\",\n\"customer_address\":\"$sub->campus_code\",\n\"customer_name\":\"$sub_name\",\n\"items\":[\n{\n\"itemcode\":\"100\",\n\"itemdesc\":\"Drinking Water\",\n\"quantity\":1,\n\"amount\":$amount,\n\"discount\":0,\n\"taxcode\":\"3\"\n}\n],\n\"payments\":{\n\"paytype\":\"emoney\",\n\"payamount\":$amount\n}\n}";
            $curl = curl_init();
            curl_setopt_array($curl, [
                CURLOPT_URL => "https://test.myvfd.app/api/v1/receipt/post",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "POST",
                //CURLOPT_POSTFIELDS => "{\n  \"receipt_date\": \"$receipt_date\",\n  \"customer_id\": \"NIL\",\n  \"customer_idtype\": \"6\",\n  \"customer_phone\": \"$customer_phone\",\n  \"customer_email\": \"ecotest@ecowaterinternational.com\",\n  \"customer_address\": \"$sub->campus_code\",\n  \"customer_name\": \"$sub->sub_name\",\n  \"items\": [\n    {\n      \"itemcode\": \"101\",\n      \"itemdesc\": \"Keyboard\",\n      \"quantity\": 1,\n      \"amount\": 1000,\n      \"discount\": 100,\n      \"taxcode\": \"1\"\n    },\n    {\n      \"itemcode\": \"102\",\n      \"itemdesc\": \"Mouse\",\n      \"quantity\": 1,\n      \"amount\": $amount,\n      \"taxcode\": \"3\",\n      \"catcode\": \"C001\",\n      \"catdesc\": \"Computing Devices\"\n    }\n  ],\n  \"payments\": {\n    \"paytype\": \"cash\",\n    \"payamount\": $amount\n  }\n}",
                CURLOPT_POSTFIELDS => $request,
                CURLOPT_HTTPHEADER => [
                    "Accept: application/json",
                    "Authorization: Bearer 910e4e6faefd6b6eb4a2ecacab46031a0620964a",
                    "Content-Type: application/json",
                    "X-Tin: 152899165"
                ],
            ]);
            $response = curl_exec($curl);
            $err = curl_error($curl);
            curl_close($curl);
            if ($err) {
                $error = "cURL Error #:" . $err;
                //$res = array('response' => $error, 'topup_id' => $topup_id);
                //$this->db->insert('tra_response', $res);
                $this->db->where(array('id' => $topup_id));
                $this->db->update('uat_card_topup', array('vfd_api_req' => $request, 'vfd_api_res' => $error));
                echo "cURL Error #:" . $err;
            } else {
                //echo $response;
                $obj = json_decode($response);
                //print_r($obj);
                $receipt_no = $obj->receipt_no;
                $receipt_id = $obj->receipt_id;
                $qrcode_url = $obj->qrcode_url;
                $receipt_timestamp = $obj->posted_date . ' ' . $obj->posted_time;
                $url_par = $receipt_no . '_' . str_replace(":", "", $obj->posted_time);
                $live_url = "https://verify.tra.go.tz/" . $url_par;
                $uat_url = "https://virtual.tra.go.tz/efdmsRctVerify/" . $receipt_no . "_" . date('His', strtotime($receipt_date));
                //echo $qrcode_url;
                $data = array('tra_receipt_no' => $receipt_id, 'tra_receipt_link' => $uat_url, 'tra_qrcode_url' => $qrcode_url, 'tra_verification' => $receipt_no, 'tra_response_time' => $receipt_timestamp);
                $this->db->where(array('id' => $topup_id));
                $this->db->update('uat_card_topup', $data);
                //$sms = "Dear " . $sub->sub_name . ", your Receipt Verification Code is: " . $receipt_no . " Date: " . $obj->posted_date . " Time: " . $obj->posted_time . " Amount: " . $amount . " Payment Method: emoney " . $uat_url . " .Thank you for using eCloud.";
                //$this->Sms_model->sendsms($sms, '255767821881');
                // echo 'Topup id '.$topup_id;
                /*$res = array('response' => json_encode($obj), 'topup_id' => $topup_id);
                $this->db->insert('uat_tra_response', $res);*/
                $this->db->where(array('id' => $topup_id));
                $this->db->update('uat_card_topup', array('vfd_api_req' => $request, 'vfd_api_res' => json_encode($obj)));
                echo $response;
            }
        }
    }

}

?>