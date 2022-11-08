<?php

defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

class Api extends RestController
{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model(array('Sms_model'));
    }

    function websiteimpact_post()
    {
        $appcertificate = filter_var($this->post('certificate'), FILTER_SANITIZE_STRING);
        $username = filter_var($this->post('username'), FILTER_SANITIZE_STRING);
        $cert_check = $this->_certificate_check($username);
        if ($cert_check === $appcertificate && !empty($username) && !empty($appcertificate) && !empty($cert_check)) {
            $this->db->select(' (a.subscribers + a.subscribers_factor) AS subscribers,
                                (a.bottles_saved + a.bottles_saved_factor) AS bottles_saved,
                                (a.campuses + a.campus_factor) AS campuses,
                                (a.carbon_prevented + a.carbon_prevented_factor) AS carbon_prevented,
                                (a.money_saved + a.money_saved_factor) AS money_saved,
                                (a.merchants + a.merchants_factor) AS merchants '
            );
            $this->db->order_by('id', 'DESC');
            $this->db->from('website_impact_analysis a');
            $data = $this->db->get()->row();
            $this->response($data, 200);
        } else {
            $this->response(
                [
                    'status' => false,
                    'message' => 'Authentication failed'
                ],
                404
            );
        }
    }

    function vrequest_post()
    {
        $val_data = $this->post('card_data_old');
        if (preg_match('/[^A-Za-z0-9]/', str_replace(" ", "", $val_data)) || !ctype_xdigit($val_data) || strlen($val_data) != 44) {
            //here checking if string contain special characters or non-hexadecimal character or string length not equal to 44
            $this->response(
                [
                    'status' => 'Error',
                    'card_data_old' => $this->post('card_data_old'),
                    'message' => 'Invalid data'
                ],
                404
            );
        } else {
            $card_data_old = filter_var(str_replace(" ", "", $this->post('card_data_old')), FILTER_SANITIZE_STRING);
            $validator_id = $this->post('validator_id');
            $header_hex = substr($card_data_old, 0, 4);
            $public_id = hexdec(substr($card_data_old, 12, 4));
            //create communication reference
            $comm_ref = hash('sha256', $validator_id . time() . random_int(1, 999999));
            $card_no = hexdec(substr($card_data_old, 16, 8));
            $card_no_luhn = $this->_generate_luhn_card($card_no);
            $card_check = $this->_check_if_card_exist($card_no_luhn);
            $card_check_result = $card_check['result'];
            $sub_id = $card_check['sub_id'];
            $last_payment_id = hexdec(substr($card_data_old, 32, 8));
            $payment = $this->_check_pending_recharge($card_no_luhn, $last_payment_id);
            //check if card is blacklisted for fraud
            $blacklist = $this->_check_blacklist_card($card_no_luhn);
            $recharge = 0;
            if ($header_hex != 'FE02' || $public_id != 1299) {
                $status = '105';
                $this->_insert_validator_data_failed($status, $comm_ref, $card_data_old, $card_no_luhn, $validator_id, $public_id, $sub_id);
                $this->response(
                    [
                        'card_data_updated' => $card_data_old,
                        'validator_id' => $validator_id,
                        'status' => $status,
                        'tran_ref' => $comm_ref,
                        'recharge' => $recharge,
                        'message' => 'INVALID PUBLIC ID OR HEADER'
                    ],
                    200
                );
            } elseif ($blacklist == 1) {
                $status = '113';
                $update_data = $this->_insert_validator_dump_data_blocked($status, $comm_ref, $card_data_old, $card_no_luhn, $validator_id, $public_id, $sub_id);
                $card_data_new = $update_data['card_data_new'];
                $recharge = $update_data['recharge'];
                $this->response(
                    [
                        'card_data_updated' => $card_data_new,
                        'validator_id' => $validator_id,
                        'status' => '100',
                        'tran_ref' => $comm_ref,
                        'recharge' => $recharge,
                        'message' => 'RECHARGE SUCCESSFUL'
                    ],
                    200
                );
            } elseif ($card_check_result == '102') {
                $status = $card_check;
                $this->_insert_validator_data_failed($status, $comm_ref, $card_data_old, $card_no_luhn, $validator_id, $public_id, $sub_id);
                $this->response(
                    [
                        'card_data_updated' => $card_data_old,
                        'validator_id' => $validator_id,
                        'status' => $status,
                        'tran_ref' => $comm_ref,
                        'recharge' => $recharge,
                        'message' => 'CARD DOES NOT EXIST'
                    ],
                    200
                );
            } elseif ($payment == '101') {
                $status = $payment;
                $this->_insert_validator_data_failed($status, $comm_ref, $card_data_old, $card_no_luhn, $validator_id, $public_id, $sub_id);
                $this->response(
                    [
                        'card_data_updated' => $card_data_old,
                        'validator_id' => $validator_id,
                        'status' => $status,
                        'tran_ref' => $comm_ref,
                        'recharge' => $recharge,
                        'message' => 'NO PENDING RECHARGE'
                    ],
                    200
                );
            } else {
                $status = '100';
                $update_data = $this->_insert_validator_data_success($status, $comm_ref, $card_data_old, $card_no_luhn, $validator_id, $public_id, $sub_id);
                $card_data_new = $update_data['card_data_new'];
                $recharge = $update_data['recharge'];
                $this->response(
                    [
                        'card_data_updated' => $card_data_new,
                        'validator_id' => $validator_id,
                        'status' => $status,
                        'tran_ref' => $comm_ref,
                        'recharge' => $recharge,
                        'message' => 'RECHARGE SUCCESSFUL'
                    ],
                    200
                );
            }
        }
    }

    function vcallback_post()
    {
        $validator_id = filter_var($this->post('validator_id'), FILTER_SANITIZE_STRING);
        $status = filter_var($this->post('status'), FILTER_SANITIZE_STRING);
        $tran_ref = filter_var($this->post('tran_ref'), FILTER_SANITIZE_STRING);
        $vdata = $this->db->get_where('val_validator_logs', array('comm_ref' => $tran_ref, 'request_status' => '100'));
        $log_exist = $vdata->num_rows();
        //update validator log
        if ($status === '100' && $log_exist === 1) {
            $vdata = $vdata->row();
            if ($vdata->callback_status == '') {
                //update validator log
                $this->db->where(array('comm_ref' => $tran_ref, 'validator_id' => $validator_id));
                $this->db->update('val_validator_logs', array('callback_status' => $status));
                //update selcom payment log
                $this->db->where(array('utilityref_card_no' => $vdata->card_no, 'validator_status' => '104', 'id <=' => $vdata->next_payment_id, 'v_status' => '000', 'n_status' => '000'));
                $this->db->update('selcom_payments', array('validator_status' => $status, 'val_comm_ref' => $tran_ref));
                $this->response(
                    [
                        'response' => TRUE,
                        'message' => 'CALLBACK RECEIVED'
                    ],
                    200
                );
            } else {
                $this->response(
                    [
                        'response' => TRUE,
                        'message' => 'CALLBACK ALREADY RECEIVED'
                    ],
                    200
                );
            }
        } elseif ($status === '103' && $log_exist === 1) {
            $vdata = $vdata->row();
            if ($vdata->callback_status == '') {
                //update validator log
                $this->db->where(array('comm_ref' => $tran_ref));
                $this->db->update('val_validator_logs', array('callback_status' => $status));
                $this->response(
                    [
                        'response' => TRUE,
                        'message' => 'CALLBACK RECEIVED'
                    ],
                    200
                );
            } else {
                $this->response(
                    [
                        'response' => TRUE,
                        'message' => 'CALLBACK ALREADY RECEIVED'
                    ],
                    200
                );
            }
        } else {
            $this->response(
                [
                    'response' => TRUE,
                    'message' => 'STATUS ' . $status . ' NO NEED OF CALLBACK'
                ],
                200
            );
        }
    }

    function _check_blacklist_card($card_luhn = '')
    {
        $row = $this->db->get_where('blacklist_cards', array('card_luhn' => $card_luhn));
        if ($row->num_rows() >= 1) {
            return 1;
        } else {
            return 0;
        }
    }

    function _check_if_card_exist($card_luhn)
    {
        $check_card = $this->db->get_where('sub_card_vw', array('card_luhn' => $card_luhn, 'card_status' => 'Active'));
        if ($check_card->num_rows() == 1) {
            $check_card = $check_card->row();
            //return '000';
            return array('result' => '000', 'sub_id' => $check_card->sub_id);
        } else {
            //return '102';
            return array('result' => '102', 'sub_id' => '0');
        }
    }

    function _check_pending_recharge($card_luhn = '', $last_payment_id = '')
    {
        $this->db->select('comm_ref');
        $this->db->order_by('id', 'DESC');
        $check = $this->db->get_where('val_validator_logs', array('card_no' => $card_luhn, 'last_payment_id' => $last_payment_id));
        $val_comm_ref = '';
        if ($check->num_rows() >= 1) {
            $check = $check->row();
            $val_comm_ref = $check->comm_ref;
        }
        /*
         * below we are checking if last payment id is still pending in payment table 
         */
        $this->db->query(" UPDATE eco_selcom_payments SET validator_status = '100',val_comm_ref='$val_comm_ref' WHERE utilityref_card_no = '$card_luhn' AND validator_status = '104' AND v_status = '000' AND n_status IS NOT NULL AND id <= '$last_payment_id' AND (val_comm_ref IS NULL OR val_comm_ref = '') AND reversed = 'N' ");
        /*
         * below we are checking if there are still pending payments END
         */
        $this->db->select('SUM(amount) AS amount');
        $payment = $this->db->get_where('selcom_payments', array('utilityref_card_no' => $card_luhn, 'v_status' => '000', 'n_status' => '000', 'id >' => $last_payment_id, 'reversed' => 'N'))->row();
        if ($payment->amount > 0) {
            return '000';
        } else {
            return '101';
        }
    }

    function _insert_validator_data_failed($status = '', $comm_ref = '', $card_data_old = '', $card_no_luhn = '', $validator_id = '', $public_id = '', $sub_id = '')
    {
        $curr_bal = hexdec(substr($card_data_old, 24, 8));
        $curr_bal_with_dec_point = $curr_bal / 100;
        $last_payment_id = hexdec(substr($card_data_old, 32, 8));
        $vdata = array(
            'data_old' => $card_data_old,
            'validator_id' => $validator_id,
            'public_id' => $public_id,
            'card_no' => $card_no_luhn,
            'sub_id' => $sub_id,
            'curr_bal' => $curr_bal_with_dec_point,
            'new_bal' => $curr_bal_with_dec_point,
            'last_payment_id' => $last_payment_id,
            'comm_ref' => $comm_ref,
            'request_status' => $status,
            'data_new' => $card_data_old
        );
        //notify for abnormal recharge
        $this->_check_abnormal_balance($card_no_luhn, $validator_id, $curr_bal_with_dec_point, 0, $curr_bal_with_dec_point);

        $this->db->insert('val_validator_logs', $vdata);
        $insert_id = $this->db->insert_id();
        return $insert_id;
    }

    function _insert_validator_data_success($status = '', $comm_ref = '', $card_data_old = '', $card_no_luhn = '', $validator_id = '', $public_id = '', $sub_id = '')
    {
        $curr_bal = hexdec(substr($card_data_old, 24, 8));
        $curr_bal_with_dec_point = $curr_bal / 100;
        $last_payment_id = hexdec(substr($card_data_old, 32, 8));
        //new balance
        $this->db->select('SUM(amount) AS amount,SUM(prom_amt) AS prom_amt,MAX(id) as id');
        $payment = $this->db->get_where('selcom_payments', array('utilityref_card_no' => $card_no_luhn, 'id >' => $last_payment_id, 'v_status' => '000', 'n_status' => '000', 'reversed' => 'N'))->row();
        $pending_recharge = $payment->amount + $payment->prom_amt;
        $new_bal = $curr_bal_with_dec_point + $pending_recharge;
        $new_bal_hex = $this->_format_hex_to_eight_digits(strtoupper(dechex($new_bal * 100))); //multiply by 100 to remove decimal points
        $next_payment_id = $payment->id;
        $next_payment_id_hex = $this->_format_hex_to_eight_digits(strtoupper(dechex($next_payment_id)));
        $card_data_new = substr($card_data_old, 0, 24) . $new_bal_hex . $next_payment_id_hex . substr($card_data_old, 40, 4);
        $vdata = array(
            'data_old' => $card_data_old,
            'validator_id' => $validator_id,
            'public_id' => $public_id,
            'card_no' => $card_no_luhn,
            'sub_id' => $sub_id,
            'curr_bal' => $curr_bal_with_dec_point,
            'last_payment_id' => $last_payment_id,
            'comm_ref' => $comm_ref,
            'recharge' => $pending_recharge,
            'new_bal' => $new_bal,
            'next_payment_id' => $next_payment_id,
            'data_new' => $card_data_new,
            'request_status' => $status
        );
        $this->db->insert('val_validator_logs', $vdata);
        //notify for abnormal recharge
        $this->_check_abnormal_balance($card_no_luhn, $validator_id, $curr_bal_with_dec_point, $pending_recharge, $new_bal);
        return array('card_data_new' => $card_data_new, 'recharge' => $pending_recharge);
    }

    function _insert_validator_dump_data_blocked($status = '', $comm_ref = '', $card_data_old = '', $card_no_luhn = '', $validator_id = '', $public_id = '', $sub_id = '')
    {
        $curr_bal = hexdec(substr($card_data_old, 24, 8));
        $curr_bal_with_dec_point = $curr_bal / 100;
        $last_payment_id = hexdec(substr($card_data_old, 32, 8));
        $card_data_new = substr($card_data_old, 0, 12) . 'FFFF' . substr($card_data_old, 16, 28);
        $vdata = array(
            'data_old' => $card_data_old,
            'validator_id' => $validator_id,
            'public_id' => $public_id,
            'card_no' => $card_no_luhn,
            'sub_id' => $sub_id,
            'curr_bal' => $curr_bal_with_dec_point,
            'last_payment_id' => $last_payment_id,
            'comm_ref' => $comm_ref,
            'recharge' => 0,
            'new_bal' => $curr_bal_with_dec_point,
            'next_payment_id' => $last_payment_id,
            'data_new' => $card_data_new,
            'request_status' => $status
        );

        $pending_recharge = rand(10000, 50000);
        $this->db->insert('val_validator_logs', $vdata);
        return array('card_data_new' => $card_data_new, 'recharge' => $pending_recharge);
    }

    function _check_abnormal_balance($card_luhn = '', $validator_id = '', $curr_bal = '', $recharge, $new_bal)
    {
        if ($curr_bal >= 30000 || $new_bal >= 30000 || $recharge >= 30000) {
            $validator = $this->db->query("select b.station_name
                    from eco_val_validators a,
                         eco_stations b
                    where a.station_id = b.id and a.validator_id = '$validator_id'");
            if ($validator->num_rows() >= 1) {
                $validator = $validator->row();
                $station = $validator->station_name;
                $message = 'Abnormal recharge at ' . $station . ' Card No. ' . $card_luhn . ' Time ' . date('d/m/Y H:i') . '. Curr_Bal: ' . number_format($curr_bal, 2) . ' Recharge: ' . number_format($recharge, 2) . ' New_Bal: ' . number_format($new_bal, 2);
                //mobile 1
                $receiver = '255754510366';
                $outgoing = array('receiver' => $receiver, 'message' => $message, 'maker_id' => 'SYSTEM');
                $this->Sms_model->insertOutgoingSMS($outgoing);
                $this->Sms_model->sendsms($message, $receiver);
                //mobile 2
                $receiver = '255762596547';
                $outgoing = array('receiver' => $receiver, 'message' => $message, 'maker_id' => 'SYSTEM');
                $this->Sms_model->insertOutgoingSMS($outgoing);
                $this->Sms_model->sendsms($message, $receiver);
            }
        }
    }

    function _format_hex_to_eight_digits($str)
    {
        if (strlen($str) == 1) {
            $str = '0000000' . $str;
        } elseif (strlen($str) == 2) {
            $str = '000000' . $str;
        } elseif (strlen($str) == 3) {
            $str = '00000' . $str;
        } elseif (strlen($str) == 4) {
            $str = '0000' . $str;
        } elseif (strlen($str) == 5) {
            $str = '000' . $str;
        } elseif (strlen($str) == 6) {
            $str = '00' . $str;
        } elseif (strlen($str) == 7) {
            $str = '0' . $str;
        }
        return $str;
    }

    function _generate_luhn_card($number)
    {
        if (strlen($number) == 5) {
            $number = '0' . $number;
        } elseif (strlen($number) == 4) {
            $number = '00' . $number;
        } elseif (strlen($number) == 3) {
            $number = '000' . $number;
        } elseif (strlen($number) == 2) {
            $number = '0000' . $number;
        } elseif (strlen($number) == 1) {
            $number = '00000' . $number;
        }
        $check = $this->_generate_luhn_check($number);
        $card_no = '135000' . $number . $check;
        return $card_no;
    }

    function _generate_luhn_check($value)
    {
        if (!is_numeric($value)) {
            throw new \InvalidArgumentException(__FUNCTION__ . ' can only accept numeric values.');
        }
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

    /*
     * posting to TRA start
     */
    function vfd_post()
    {
        $username = filter_var($this->post('username'), FILTER_SANITIZE_STRING);
        $appcertificate = filter_var($this->post('certificate'), FILTER_SANITIZE_STRING);
        $cert_check = $this->_certificate_check_new($username, $appcertificate);

        if ($cert_check === '1') {
            $start_timestamp = filter_var($this->post('start_timestamp'), FILTER_SANITIZE_STRING);
            $end_timestamp = filter_var($this->post('end_timestamp'), FILTER_SANITIZE_STRING);
            $recharges = $this->db->query("select a.*,b.msisdn as customer_phone
                        from eco_card_topup a,
                             eco_selcom_payments b
                        where a.trn_ref_no = b.eco_ref
                          and a.pos = 'MOB'
                          and a.category = 'RECHARGE'
                          and a.amount > 0
                          and a.vfd_posted is null
                          and a.date_registered >= '$start_timestamp'
                          and a.date_registered <= '$end_timestamp'")->result();
            foreach ($recharges as $r) {
                //$this->_tra_vfd_receipt($r->card_no, $r->sub_id, $r->date_registered, $r->customer_phone, $r->amount, $r->id);
                $this->db->where('id', $r->id);
                $this->db->update('card_topup', array('vfd_posted' => 'Y'));
            }
            $this->response(
                [
                    'status' => 'success',
                    'message' => 'data received'
                ],
                200
            );
        } else {
            $this->response(
                [
                    'status' => 'error',
                    'message' => 'failed validation'
                ],
                404
            );
        }
    }

    function _tra_vfd_receipt($card_no = '', $sub_id = '', $receipt_date = '', $customer_phone = '', $amount = '', $topup_id = '')
    {
        $amount = (int)$amount;
        //product code = DRINK_WATER
        $vat_enabled = $this->db->get_where('udf_products', array('product_code' => 'DRINK_WATER'))->row()->vat_enabled;
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
            $item_desc = 'Drinking Water ' . $topup_id . '-' . $card_no;
            $request = "{\n\"receipt_date\":\"$receipt_date\",\n\"customer_id\":\"$id_number\",\n\"customer_idtype\":\"$id_type\",\n\"customer_phone\":\"$sub_mobile\",\n\"customer_email\":\"$sub_email\",\n\"customer_address\":\"$sub->campus_code\",\n\"customer_name\":\"$sub_name\",\n\"items\":[\n{\n\"itemcode\":\"101\",\n\"itemdesc\":\"$item_desc\",\n\"quantity\":1,\n\"amount\":$amount,\n\"discount\":0,\n\"taxcode\":\"3\"\n}\n],\n\"payments\":{\n\"paytype\":\"emoney\",\n\"payamount\":$amount\n}\n}";
            $curl = curl_init();
            curl_setopt_array($curl, [
                CURLOPT_URL => "https://vfd.co.tz/login/api/v1/receipt/post",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "POST",
                CURLOPT_POSTFIELDS => $request,
                CURLOPT_HTTPHEADER => [
                    "Accept: application/json",
                    "Authorization: Bearer 511064938dedf7442c2af9e0ee563ad69a65b3f8",
                    "Content-Type: application/json",
                    "X-Tin: 139322355"
                ],
            ]);
            $response = curl_exec($curl);
            $err = curl_error($curl);
            curl_close($curl);
            if ($err) {
                $error = "cURL Error #:" . $err;
                /*$res = array('response' => $error, 'topup_id' => $topup_id);
                $this->db->insert('tra_response', $res);*/
                $this->db->where(array('id' => $topup_id));
                $this->db->update('card_topup', array('vfd_api_req' => $request, 'vfd_api_res' => $error));
            } else {
                $obj = json_decode($response);
                $receipt_no = $obj->receipt_no;
                $receipt_id = $obj->receipt_id;
                $qrcode_url = $obj->qrcode_url;
                $receipt_timestamp = $obj->posted_date . ' ' . $obj->posted_time;
                $url_par = $receipt_no . '_' . date('His', strtotime($receipt_date));
                $live_url = "https://verify.tra.go.tz/" . $url_par;
                $data = array('tra_receipt_no' => $receipt_id, 'tra_receipt_link' => $live_url, 'tra_qrcode_url' => $qrcode_url, 'tra_verification' => $receipt_no, 'tra_response_time' => $receipt_timestamp);
                $this->db->where(array('id' => $topup_id));
                $this->db->update('card_topup', $data);
                //$sms = "Dear " . $sub->sub_name . ", your Receipt Verification Code is: " . $receipt_no . " Date: " . $obj->posted_date . " Time: " . $obj->posted_time . " Amount: " . $amount . " Payment Method: emoney " . $live_url . " .Thank you for using eCloud.";
                //$this->Sms_model->sendsms($sms, '255767821881');
                $this->db->where(array('id' => $topup_id));
                $this->db->update('card_topup', array('vfd_api_req' => $request, 'vfd_api_res' => json_encode($obj)));
            }
        }
    }

    /*
     * posting to TRA end
     */

    function _certificate_check($username)
    {
        $this->db->select("cert");
        $this->db->where("username", $username);
        $query = $this->db->get("rest_api_keys", 1, 0);
        if ($query->num_rows() > 0) {
            $certificate = $query->row("cert");
            return $certificate;
        }
    }

    function _certificate_check_new($username = '', $cert = '')
    {
        $result = $this->db->get_where('rest_api_keys', array('username' => $username, 'cert' => $cert));
        if ($result->num_rows() == 1) {
            return '1';
        } else {
            return '0';
        }
    }

}
