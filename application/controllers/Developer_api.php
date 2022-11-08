<?php

defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

class Developer_api extends RestController
{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model(array('Api_model', 'Sms_model', 'Subscriber_model'));
    }

    function ecobox_login_auth_post()
    {
        $card_no = filter_var($this->post('card_id'), FILTER_SANITIZE_STRING);
        $auth_token = filter_var($this->post('auth_token'), FILTER_SANITIZE_STRING);
        $system_name = filter_var($this->post('system_name'), FILTER_SANITIZE_STRING);
        $cert_check = $this->_certificate_check($system_name);
        if ($auth_token === $cert_check) {
            //check if subscriber exist
            $sub_check = $this->_validate_subscriber($card_no);
            if ($sub_check > 0) {
                $sub_id = $sub_check;
                $subscriber = $this->Api_model->get_sub_details_by_id($sub_id);
                $subscriber_data = $subscriber->row();
                if ($subscriber_data->ecobox_reg == 'New') {
                    $otp = rand(1000, 9999);
                    $sub_update_data = array('ecobox_otp' => $otp);
                    $this->Subscriber_model->update_subscriber($sub_update_data, $sub_id);
                    #Send OTP to subscriber end here
                    $message = 'Your ecoBox OTP is ' . $otp;
                    $receiver = $subscriber_data->mobile; // '255754510366';
                    $sms_data = array('receiver' => $receiver, 'message' => $message, 'maker_id' => 'SYSTEM');
                    $this->db->insert('sms_outgoing', $sms_data);
                    //$this->Sms_model->sendsms($message, $receiver);
                    #Send OTP to subscriber end here
                } else {
                    $otp = '';
                }
                $this->response(
                    [
                        'status' => 'success',
                        'sub_name' => $subscriber_data->sub_name,
                        'gender' => $subscriber_data->gender,
                        'card_no' => $subscriber_data->card_no,
                        'mobile' => $subscriber_data->mobile,
                        'email' => $subscriber_data->email,
                        'sub_status' => $subscriber_data->gender,
                        'campus_name' => $subscriber_data->sub_status,
                        'date_registered' => $subscriber_data->date_registered,
                        'ecobox_reg' => $subscriber_data->ecobox_reg,
                        'ecobox_otp' => $otp
                    ]
                );
            } else {
                $this->response(
                    [
                        'status' => 'error',
                        'card_id' => $card_no,
                        'response' => '999',
                        'message' => $sub_check
                    ],
                    404
                );
            }
        } else {
            $this->response(
                [
                    'status' => 'failed',
                    'card_id' => $card_no,
                    'response' => '106',
                    'message' => 'Initial validation failed'
                ],
                404
            );
        }
    }

    function ecobox_request_post()
    {
        $card_no = filter_var($this->post('card_id'), FILTER_SANITIZE_STRING);
        $auth_token = filter_var($this->post('auth_token'), FILTER_SANITIZE_STRING);
        $system_name = filter_var($this->post('system_name'), FILTER_SANITIZE_STRING);
        $cert_check = $this->_certificate_check($system_name);
        $sub_check = $this->_validate_subscriber($card_no); // $sub_check return sub_id
        if ($auth_token != $cert_check) {
            $this->response(
                [
                    'status' => 'failed',
                    'card_id' => $card_no,
                    'response' => '106',
                    'message' => 'Initial validation failed'
                ],
                404
            );
        } elseif (!($sub_check > 0)) {
            $this->response(
                [
                    'status' => 'failed',
                    'card_id' => $card_no,
                    'response' => '999',
                    'message' => $sub_check
                ],
                404
            );
        } elseif ($auth_token === $cert_check && $sub_check > 0) {
            $sub_id = $sub_check;
            $action = filter_var($this->post('action'), FILTER_SANITIZE_STRING);
            if ($action == 'ChangePassword') {
                $sub_password = filter_var($this->post('password'), FILTER_SANITIZE_STRING);
                $sub_update_data = array('ecobox_reg' => 'Existing', 'ecobox_pass' => $sub_password);
                $this->Subscriber_model->update_subscriber($sub_update_data, $sub_id);
                $this->response(
                    [
                        'status' => 'success',
                        'card_id' => $card_no,
                        'message' => 'PasswordChanged'
                    ],
                    200
                );
            } elseif ($action == '112') {
                $this->db->select('code', 'description');
                $data = $this->db->get('rest_api_codes')->result();
                $this->response($data, 200);
            }
        } else {
            $this->response(
                [
                    'status' => 'failed',
                    'card_id' => $card_no,
                    'response' => '106',
                    'message' => 'Initial validation failed'
                ],
                404
            );
        }
    }

    function ecomeal_post()
    {
        /*{
            "card_id": "1350004447744",
            "system_name": "ecobox",
            "auth_token": "3e02548586b031c73e49a25bd320214cb475dfcee78ca0827b5f2e3cd8f65f87",
            "action": "113",
            "coupon_name": "ProMax",
            "amount": 205000
        }*/
        $card_no = filter_var($this->post('card_id'), FILTER_SANITIZE_STRING);
        $auth_token = filter_var($this->post('auth_token'), FILTER_SANITIZE_STRING);
        $system_name = filter_var($this->post('system_name'), FILTER_SANITIZE_STRING);
        $cert_check = $this->_certificate_check($system_name);
        $sub_check = $this->_validate_subscriber($card_no); // $sub_check return sub_id
        $action = filter_var($this->post('action'), FILTER_SANITIZE_STRING);
        if ($auth_token != $cert_check) {
            $this->response(
                [
                    'status' => 'failed',
                    'card_id' => $card_no,
                    'response' => '106',
                    'message' => 'Initial validation failed'
                ],
                404
            );
        } elseif (!($sub_check > 0)) {
            $this->response(
                [
                    'status' => 'failed',
                    'card_id' => $card_no,
                    'response' => '999',
                    'message' => $sub_check
                ],
                404
            );
        } elseif ($action == '113') {
            // 113 Ecomeal coupon purchase
            $coupon_name = filter_var($this->post('coupon_name'), FILTER_SANITIZE_STRING);
            $amount = filter_var($this->post('amount'), FILTER_SANITIZE_STRING);
            //check if subscriber has unpaid coupon
            $unpaid = $this->Api_model->get_sub_unpaid_coupon($sub_check);
            if ($unpaid->num_rows() >= 1) {
                $this->response(
                    [
                        'status' => 'failed',
                        'card_id' => $card_no,
                        'response' => '114',
                        'message' => 'Subscriber has unpaid coupon'
                    ],
                    404
                );
            } elseif (!($card_no == '1350004447744' || $card_no == '1350009494451' || $card_no == '1350009367376')) {
                $this->response(
                    [
                        'status' => 'failed',
                        'card_id' => $card_no,
                        'response' => '114',
                        'message' => 'Card not allowed'
                    ],
                    404
                );
            } else {
                $sub_vw_data = $this->db->get_where('sub_card_vw', array('sub_id' => $sub_check))->row();
                $coupon_data = array('sub_id' => $sub_check, 'card_no' => $card_no, 'coupon_name' => $coupon_name, 'amount' => $amount, 'coupon_date' => date('Y-m-d'));
                $table_name = 'meal_coupon_buy';
                $insert_id = $this->Api_model->insert_data($table_name, $coupon_data);
                $purchase_id = 'EM' . $insert_id . $this->_generate_luhn_check($insert_id);
                //update purchase id
                $purchase_data = array('purchase_id' => $purchase_id);
                $condition = array('id' => $insert_id);
                $this->Api_model->update_data($table_name, $purchase_data, $condition);
                $this->response(
                    [
                        'status' => 'success',
                        'card_id' => $card_no,
                        'response' => '115',
                        'purchase_id' => $purchase_id,
                        'message' => 'Successfully purchased ecomeal coupon'
                    ],
                    200
                );
            }
        } elseif ($action == '116') {
            // 116 list purchased coupons by subscriber
            $coupons = $this->Api_model->get_sub_coupon_purchase($sub_check, '');
            $this->response($coupons->result(), 200);
        } elseif ($action == '117') {
            // 117 delete ecomeal coupon purchased
            $coupon_id = filter_var($this->post('eco_coupon_id'), FILTER_SANITIZE_STRING);
            $coupons = $this->Api_model->get_sub_coupon_purchase($sub_check, $coupon_id);
            $coupons_data = $coupons->row();
            if ($coupons->num_rows() != 1) {
                $this->response(
                    [
                        'status' => 'failed',
                        'card_id' => $card_no,
                        'response' => '118',
                        'message' => 'Ecomeal coupon does not exist'
                    ],
                    404
                );
            } elseif ($coupons_data->status == 'Paid') {
                $this->response(
                    [
                        'status' => 'failed',
                        'card_id' => $card_no,
                        'response' => '119',
                        'message' => 'Paid ecomeal coupon cannot be delete'
                    ],
                    404
                );
            } else {
                //delete coupon
                $this->Api_model->delete_data('meal_coupon_buy', array('id' => $coupon_id));
                $this->response(
                    [
                        'status' => 'success',
                        'card_id' => $card_no,
                        'response' => '120',
                        'message' => 'Ecomeal coupon deleted'
                    ],
                    200
                );
            }
        } elseif ($action == '121') {
            // 121 get subscriber ecoMeal summary data for dashboard
            $data = $this->Api_model->get_ecomeal_summary_by_sub_id($sub_check);
            $this->response(
                [
                    'status' => 'success',
                    'card_no' => $card_no,
                    'ecomeal_balance' => round($data->ecomeal_balance, 2),
                    'coupon_purchase' => round($data->coupon_purchase, 2),
                    'spent_today' => round($data->spent_today, 2),
                    'spent_mtd' => round($data->spent_mtd, 2),
                    'spent_ytd' => round($data->spent_ytd, 2),
                    'response' => '121',
                    'message' => 'Ecomeal summary for subscriber'
                ],
                200
            );
        } elseif ($action == '122') {
            // 122 ecoMeal meal purchased logs
            $data = $this->Api_model->get_ecomeal_purchase_logs($sub_check);
            $this->response($data, 200);
        } else {
            $this->response(
                [
                    'status' => 'failed',
                    'card_id' => $card_no,
                    'response' => '106',
                    'message' => 'Initial validation failed'
                ],
                404
            );
        }
    }

    function clear_ecobox_reg_post()
    {
        /*{
            "card_id": "1350004447744",
            "system_name": "ecobox",
            "auth_token": "3e02548586b031c73e49a25bd320214cb475dfcee78ca0827b5f2e3cd8f65f87",
            "action" : "110"
        }*/
        $card_no = filter_var($this->post('card_id'), FILTER_SANITIZE_STRING);
        $auth_token = filter_var($this->post('auth_token'), FILTER_SANITIZE_STRING);
        $system_name = filter_var($this->post('system_name'), FILTER_SANITIZE_STRING);
        $cert_check = $this->_certificate_check($system_name);
        $sub_check = $this->_validate_subscriber($card_no); // $sub_check return sub_id
        $action = filter_var($this->post('action'), FILTER_SANITIZE_STRING);
        if ($auth_token === $cert_check && $sub_check > 0 && $action == '110') {
            $data = array('ecobox_reg' => 'New', 'ecobox_pass' => null, 'ecobox_otp' => null);
            $this->Api_model->update_subscriber_by_id($sub_check, $data);
            $this->response(
                [
                    'status' => 'success',
                    'card_id' => $card_no,
                    'response' => '111',
                    'message' => 'Subscriber ecoBox registration cleared'
                ],
                200
            );
        } else {
            $this->response(
                [
                    'status' => 'failed',
                    'card_id' => $card_no,
                    'response' => '106',
                    'message' => 'Initial validation failed'
                ],
                404
            );
        }
    }

    function rest_api_codes_post()
    {
        $auth_token = filter_var($this->post('auth_token'), FILTER_SANITIZE_STRING);
        $system_name = filter_var($this->post('system_name'), FILTER_SANITIZE_STRING);
        $cert_check = $this->_certificate_check($system_name);
        $action = filter_var($this->post('action'), FILTER_SANITIZE_STRING);
        if ($auth_token === $cert_check && $action == '112') {
            $this->db->select('code, description');
            $data = $this->db->get('rest_api_codes')->result();
            $this->response($data, 200);
        } else {
            $this->response(
                [
                    'status' => 'failed',
                    'response' => '106',
                    'message' => 'Initial validation failed'
                ],
                404
            );
        }
    }

    function stations_post()
    {
        $this->db->select('a.station_code,a.station_name,b.campus_name');
        $this->db->from('stations a');
        $this->db->join('campus b', 'a.campus_code = b.campus_code', 'LEFT');
        $data = $this->db->get()->result();
        $this->response($data, 200);
    }

    function _validate_subscriber($card_no = FALSE)
    {
        $message = '';
        $sub = $this->Api_model->get_sub_details_by_card_no($card_no);
        $sub_data = $sub->row();
        if ($sub->num_rows() == 0) {
            $message = 'CARD DOES NOT EXIST';
        } elseif ($sub_data->sub_record_stat != 'OPEN' || $sub_data->card_status == 'Inactive') {
            $message = 'INACTIVE CARD';
        } elseif ($sub_data->sub_status == 'D') {
            $message = 'CARD IS DORMANT';
        } else {
            $message = $sub_data->sub_id;
        }
        return $message;
    }

    /*
     * Cafeteria terminal API start here
     */

    function cafeteria_post()
    {
        $card_data = filter_var($this->post('card_data'), FILTER_SANITIZE_STRING);
        $data = array('card_data' => $card_data);
        $this->db->insert('caf_test', $data);
        $this->response(
            [
                'status' => 'success',
                'message' => 'Data received and stored'
            ],
            200
        );
    }

    function caf_terminal_post()
    {
        $terminal_id = filter_var($this->post('terminal_id'), FILTER_SANITIZE_STRING);
        $amount = filter_var($this->post('amount'), FILTER_SANITIZE_NUMBER_FLOAT);
        $card_data = filter_var($this->post('card_data'), FILTER_SANITIZE_STRING);
        $pin = filter_var($this->post('pin'), FILTER_SANITIZE_STRING);
        //initialize empty data to avid error on insert
        $cafeteria_id = '';
        $sub_id = '';
        $eco_card_no = '';
        //validate terminal id
        $terminal = $this->db->get_where('meal_terminal', array('terminal_id' => $terminal_id));
        if ($terminal->num_rows() == 1) {
            $terminal_data = $terminal->row();
            $cafeteria_id = $terminal_data->cafeteria_id;
        }
        #read card data and decode
        $card_data = preg_replace('#\s+#', '', trim($card_data));
        $public_id = ''; //hexdec(substr($card_data, 36, 4));
        $card_no = hexdec(substr($card_data, 40, 8));
        #read card data and decode end
        $card_no_luhn = $this->_generate_luhn_card($card_no);
        $sub_card_vw = $this->db->get_where('sub_card_vw', array('card_luhn' => $card_no_luhn));
        if ($sub_card_vw->num_rows() == 1) {
            $sub_card = $sub_card_vw->row();
            $sub_id = $sub_card->sub_id;
            $eco_card_no = $sub_card->card_luhn;
            $new_balance = $sub_card->ecomeal_balance;
        }
        $param = $this->db->get_where('system_parameters', array('id' => 1))->row();

        if ($public_id != '' /*$param->ic_card_pid*/) {
            //validate public ID
            $res_code = '123';
            $message = 'Invalid public ID';
        } elseif ($terminal->num_rows() != 1) {
            //validate terminal
            $res_code = '104';
            $message = 'Unknown Terminal';
        } elseif ($sub_card_vw->num_rows() != 1) {
            //check if subscriber exist
            $res_code = '105';
            $message = 'Card does not exist';
        } elseif ($sub_card->card_status != 'Active') {
            //validate card
            $res_code = '106';
            $message = 'Card is not active';
        } elseif ($amount <= 0 || is_numeric($amount) != 1) {
            $res_code = '107';
            $message = 'Invalid amount';
        } elseif ($amount > 10000) {
            $res_code = '108';
            $message = 'Amount is too high';
        } elseif ($amount < 10) {
            $res_code = '109';
            $message = 'Amount is too low';
        } elseif ($sub_card->ecomeal_balance < $amount) {
            $res_code = '101';
            $message = 'Insufficient ecoMeal balance';
        } elseif (hash('sha256', $pin) != $sub_card->ecobox_pass) {
            $res_code = '102';
            $message = 'Wrong PIN';
        } else {
            $res_code = '100';
            $message = 'Transaction is successfully';
            $new_balance = $sub_card->ecomeal_balance - $amount;
        }

        //store data into database
        $r_data = array(
            'terminal_id' => $terminal_id,
            'cafeteria_id' => $cafeteria_id,
            'sub_id' => $sub_id,
            'card_no' => $eco_card_no,
            'amount' => $amount,
            'trn_date' => date('Y-m-d'),
            'card_data' => $card_data,
            'res_code' => $res_code
        );
        $insert_id = $this->Api_model->insert_data('meal_purchase', $r_data);
        $log_id = 'MP' . $insert_id . $this->_generate_luhn_check($insert_id);
        $this->Api_model->update_data('meal_purchase', array('log_id' => $log_id), array('id' => $insert_id));

        if ($res_code != '100') {
            /*$this->response(
                [
                    //'status' => 'failed',
                    'status' => $message
                    ,
                    'res_code' => $res_code,
                    'message' => $message
                ],
                404
            );*/
            $res_message = 'Payment failed, ' . $message;
            $this->response($res_message);
        } else {
            //update subscriber ecoMeal balance
            $this->Api_model->update_data('subscribers', array('ecomeal_balance' => $new_balance), array('id' => $sub_id));
            //send success response
            /* $this->response(
                 [
                     'status' => 'success'
                     ,
                     'res_code' => $res_code,
                     'message' => $message,
                     'log_id' => $log_id,
                     'card_no' => $card_no_luhn,
                     'amount' => $amount
                 ],
                 200
             );*/
            $res_message = 'Payment successful card ' . $card_no_luhn . ' of ' . $sub_card->sub_name;
            $this->response($res_message);
        }

    }

    function vendor_login_post()
    {
        $terminal_code = filter_var($this->post('terminal_code'), FILTER_SANITIZE_STRING);
        $password = filter_var($this->post('password'), FILTER_SANITIZE_STRING);
        $row = $this->db->get_where('meal_terminal', array('terminal_code' => $terminal_code, 'password' => hash('sha256', $password)));
        if ($row->num_rows() != 1) {
            $res_message = 'Login Failed';
            $this->response($res_message);
        } else {
            $terminal = $row->row();
            $this->response(
                [
                    'device_id' => $terminal->terminal_id
                ],
                200
            );
        }
    }

    function vendor_logs_post()
    {
        $terminal_id = filter_var($this->post('device_id'), FILTER_SANITIZE_STRING);
        $row = $this->db->get_where('meal_terminal', array('terminal_id' => $terminal_id));
        if ($row->num_rows() != 1) {
            $res_message = 'Invalid device id';
            $this->response($res_message);
        } else {
            $terminal = $row->row();
            $sales = $this->db->query("select a.log_id, a.card_no, a.amount, a.date_registered as trn_time
                            from eco_meal_purchase a,
                                 eco_meal_terminal b
                            where a.terminal_id = b.terminal_id
                              and b.terminal_code = '$terminal->terminal_code'
                              and a.res_code = '100'
                            order by a.date_registered desc")->result();
            $this->response($sales, 200);
        }
    }

    function vendor_logs_few_post()
    {
        $terminal_id = filter_var($this->post('device_id'), FILTER_SANITIZE_STRING);
        $row = $this->db->get_where('meal_terminal', array('terminal_id' => $terminal_id));
        if ($row->num_rows() != 1) {
            $res_message = 'Invalid device id';
            $this->response($res_message);
        } else {
            $terminal = $row->row();
            $sales = $this->db->query("select a.log_id, a.card_no, a.amount, a.date_registered as trn_time
                            from eco_meal_purchase a,
                                 eco_meal_terminal b
                            where a.terminal_id = b.terminal_id
                              and b.terminal_code = '$terminal->terminal_code'
                              and a.res_code = '100'
                            order by a.date_registered desc
                            limit 4")->result();
            $this->response($sales, 200);
        }
    }

    function vendor_analytics_post()
    {
        $terminal_id = filter_var($this->post('device_id'), FILTER_SANITIZE_STRING);
        $row = $this->db->get_where('meal_terminal', array('terminal_id' => $terminal_id));
        $today = date('Y-m-d');
        $mtd_first_date = date('Y-m-') . '01';
        $ytd_first_date = date('Y-') . '01-01';
        if ($row->num_rows() != 1) {
            $res_message = 'Invalid device id';
            $this->response($res_message);
        } else {
            $terminal = $row->row();
            $terminal_code = $terminal->terminal_code;
            $analytics = $this->db->query("select sum(x.today_sales) as today_sales, sum(x.mtd_sales) as mtd_sales, sum(x.ytd_sales) as ytd_sales
                    from (
                             select ifnull(sum(a.amount), 0) as today_sales, 0 as mtd_sales, 0 as ytd_sales
                             from eco_meal_purchase a,
                                  eco_meal_terminal b
                             where a.terminal_id = b.terminal_id
                               and b.terminal_code = '$terminal_code'
                               and a.res_code = '100'
                               and cast(a.date_registered as date) = '$today'
                             union all
                             select 0 as today_sales, ifnull(sum(a.amount), 0) as mtd_sales, 0 as ytd_sales
                             from eco_meal_purchase a,
                                  eco_meal_terminal b
                             where a.terminal_id = b.terminal_id
                               and b.terminal_code = '$terminal_code'
                               and a.res_code = '100'
                               and cast(a.date_registered as date) between '$mtd_first_date' and '$today'
                             union all
                             select 0 as today_sales, 0 as mtd_sales, ifnull(sum(a.amount), 0) as ytd_sales
                             from eco_meal_purchase a,
                                  eco_meal_terminal b
                             where a.terminal_id = b.terminal_id
                               and b.terminal_code = '$terminal_code'
                               and a.res_code = '100'
                               and cast(a.date_registered as date) between '$ytd_first_date' and '$today'
                         ) x")->result();
            $this->response($analytics, 200);
        }
    }

    function vendor_support_post()
    {
        $terminal_id = filter_var($this->post('device_id'), FILTER_SANITIZE_STRING);
        $row = $this->db->get_where('meal_terminal', array('terminal_id' => $terminal_id));
        $mobile_1 = '0746004174';
        $mobile_2 = '0766493622';
        $email = 'eco_vendor@ecowaterinternational.com';
        $address = 'NSSF Commercial Complex, Kenyatta Road';
        if ($row->num_rows() != 1) {
            $res_message = 'Invalid device id';
            $this->response($res_message);
        } else {
            $this->response(
                [
                    'mobile_1' => $mobile_1,
                    'mobile_2' => $mobile_2,
                    'email' => $email,
                    'address' => $address
                ],
                200
            );
        }
    }

    /*
     * Cafeteria terminal API end here
     */

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

    /*
    * post payment to TRA
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
                        from eco_uat_card_topup a,
                             eco_uat_selcom_payments b
                        where a.trn_ref_no = b.eco_ref
                          and a.pos = 'MOB'
                          and a.category = 'RECHARGE'
                          and a.vfd_posted is null
                          and a.date_registered >= '$start_timestamp'
                          and a.date_registered <= '$end_timestamp'")->result();
            foreach ($recharges as $r) {
                $this->_tra_vfd_receipt($r->card_no, $r->sub_id, $r->date_registered, $r->customer_phone, $r->amount, $r->id);
                $this->db->where('id', $r->id);
                $this->db->update('uat_card_topup', array('vfd_posted' => 'Y'));
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

    function _tra_vfd_receipt($card_no, $sub_id = '', $receipt_date = '', $customer_phone = '', $amount = '', $topup_id = '')
    {
        $amount = (int)$amount;
        // product code = DRINK_WATER
        $vat_enabled = $this->db->get_where('uat_udf_products', array('product_code' => 'DRINK_WATER'))->row()->vat_enabled;
        if ($vat_enabled == 'Y' && $amount > 0) {
            $sub = $this->db->get_where('sub_card_vw', array('sub_id' => $sub_id))->row();
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
                $this->db->where(array('id' => $topup_id));
                $this->db->update('uat_card_topup', array('vfd_api_req' => $request, 'vfd_api_res' => $error));
                //echo "cURL Error #:" . $err;
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
                $data = array('tra_receipt_no' => $receipt_id, 'tra_receipt_link' => $uat_url, 'tra_qrcode_url' => $qrcode_url, 'tra_verification' => $receipt_no, 'tra_response_time' => $receipt_timestamp);
                $this->db->where(array('id' => $topup_id));
                $this->db->update('uat_card_topup', $data);
                //$sms = "Dear " . $sub->sub_name . ", your Receipt Verification Code is: " . $receipt_no . " Date: " . $obj->posted_date . " Time: " . $obj->posted_time . " Amount: " . $amount . " Payment Method: emoney " . $uat_url . " .Thank you for using eCloud.";
                //$this->Sms_model->sendsms($sms, '255767821881');
                $this->db->where(array('id' => $topup_id));
                $this->db->update('uat_card_topup', array('vfd_api_req' => $request, 'vfd_api_res' => json_encode($obj)));
                //echo $response ;
            }
        }
    }

    /*
    * post payment to TRA end
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

?>