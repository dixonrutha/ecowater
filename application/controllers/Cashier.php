<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cashier extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'session'));
        $this->load->model(array('Card_model', 'Subscriber_model', 'Sms_model', 'Settings_model', 'Dashboard_model'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        if (!$this->ion_auth->logged_in()) {
            redirect('1b950a2cee305598cdc96de85d706237');  //auth/login
        }
        //Call this mysql procedure to change session timezone for all database CRUD
//        $this->db->query("CALL mysql.store_time_zone()");
        //check session
        $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
    }

    function index()
    {

    }

    function listCashiers()
    {

        $this->data['title'] = 'Cashiers';
        $this->data['subtitle'] = 'List Cashiers';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'cashier/listCashiers';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_cashiers');
        $crud->where('user_id <>', '1');
        $crud->set_relation('user_id', 'eco_users', 'name', array('active' => '1'));
        $crud->set_relation('pos_id', 'eco_topup_pos', 'pos_name');
        $crud->set_relation('campus_id', 'eco_campus', 'campus_name');
        $crud->columns('user_id', 'pos_id', 'campus_id', 'current_float', 'used_float', 'balance_float', 'pay_mode', 'card_balance', 'status');
        $crud->add_fields('id', 'user_id', 'pos_id', 'campus_id', 'current_float', 'add_card', 'pay_mode', 'sell_bottle', 'recharge', 'offer', 'modified_by');
        $crud->edit_fields('id', 'user_id', 'pos_id', 'campus_id', 'current_float', 'add_card', 'pay_mode', 'sell_bottle', 'recharge', 'offer', 'status', 'modified_by');
        $crud->required_fields('user_id', 'pos_id', 'campus_id', 'current_float', 'status', 'pay_mode', 'sell_bottle', 'recharge', 'offer', 'add_card');
        $crud->set_rules('current_float', 'Current Float', 'required|numeric|callback_validate_float');
        $crud->set_rules('add_card', 'Add Card', 'required|numeric');
        $crud->set_rules('user_id', 'Full Name', 'required|callback_validate_user_id');
        $crud->field_type('id', 'hidden');
        $crud->field_type('modified_by', 'hidden', $this->session->userdata('username'));
        $crud->display_as('user_id', 'Full Name')
            ->display_as('', 'POS')
            ->display_as('campus_id', 'Campus')
            ->display_as('current_float', 'Assigned Float')
            ->display_as('campus_id', 'Campus')
            ->display_as('used_float', 'Float Used')
            ->display_as('balance_float', 'Float Balance')
            ->display_as('pay_mode', 'Recharge Mode')
            ->display_as('add_card', 'Assigned Cards');
        $crud->set_subject('Cashier');
        $crud->callback_column('current_float', array($this, '_callback_format_amount'));
        $crud->callback_column('used_float', array($this, '_callback_format_amount'));
        $crud->callback_column('balance_float', array($this, '_callback_format_float_balance'));
        $crud->callback_column('card_balance', array($this, '_callback_format_number'));
        $crud->unset_clone();

        $crud->unset_read();
        $crud->unset_delete();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->callback_after_insert(array($this, '_callback_after_insert_update_cashier'));
        $crud->callback_after_update(array($this, '_callback_after_insert_update_cashier'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);


    }

    function _callback_after_insert_update_cashier($post_array, $primary_key)
    {
        $cashier = $this->db->get_where('cashiers', array('id' => $primary_key))->row();
        $card_balance = $cashier->card_balance + $cashier->add_card;
        $add_card = 0;
        if ($card_balance < 0) {
            $card_balance = 0;
        }
        $this->db->query("update eco_cashiers set card_balance = '$card_balance', add_card = '$add_card' where id = '$primary_key'");


    }

    function newSubscriber()
    {
        if (empty($this->session->userdata('sub_add'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $cashier = $this->Settings_model->get_cashier_details_by_id($this->session->userdata('id'));


        if ($cashier->card_balance <= 0) {
            $this->session->set_callback_before_insert('error', 'You don\'t have card on your float to register new subscriber.<br/> Please contact support team.');


            redirect('dashboard/cashierDashboard');
        }
        $this->data['cashier'] = $cashier;
        // unset cashier data to session
        $this->session->unset_userdata('cashier_id');
        $this->session->unset_userdata('cashier_current_float');
        $this->session->unset_userdata('cashier_used_float');
        $this->session->unset_userdata('cashier_pos_id');
        $this->session->unset_userdata('cashier_pos_name');
        $this->session->unset_userdata('cashier_campus_id');
        $this->session->unset_userdata('cashier_campus_code');
        $this->session->unset_userdata('cashier_campus_name');
        $this->session->unset_userdata('cashier_card_balance');
        // set cashier data to session
        $this->session->set_userdata('cashier_id', $cashier->id);
        $this->session->set_userdata('cashier_current_float', $cashier->current_float);
        $this->session->set_userdata('cashier_used_float', $cashier->used_float);
        $this->session->set_userdata('cashier_pos_id', $cashier->pos_id);
        $this->session->set_userdata('cashier_pos_name', $cashier->pos_name);
        $this->session->set_userdata('cashier_campus_id', $cashier->campus_id);
        $this->session->set_userdata('cashier_campus_code', $cashier->campus_code);
        $this->session->set_userdata('cashier_campus_name', $cashier->campus_name);
        $this->session->set_userdata('cashier_card_balance', $cashier->card_balance);

        $this->data['title'] = 'Subscriber';
        $this->data['subtitle'] = 'New Subscriber';
        $this->data["subview"] = "cashier/new_subscriber";
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('sub_name', 'Full Name', 'trim|required');
            $this->form_validation->set_rules('mobile', 'Mobile', 'trim|required|numeric|exact_length[12]|greater_than_equal_to[255]');
            $this->form_validation->set_rules('gender', 'Gender', 'trim|required');
            $this->form_validation->set_rules('category', 'Category', 'trim|required');
            $this->form_validation->set_rules('campus_code', 'Campus', 'trim|required');
            $this->form_validation->set_rules('card_no', 'Card No.', 'trim|required|callback_validate_card_sub_reg');
            $this->form_validation->set_rules('id_type', 'ID Number', 'trim|callback_validate_id_type');
            $this->form_validation->set_rules('record_stat', 'Subscriber Stat', 'trim|required');
            //$this->form_validation->set_rules('sub_registration_date', 'Date Registered', 'trim|required|callback_validate_reg_date');
            $this->form_validation->set_rules('email', 'Email', 'trim|valid_email');

            $topup_amount = $this->input->post('amount','amount2');
            if (!empty($topup_amount)) {
                $this->form_validation->set_rules('amount', 'Initial Racharge', 'trim|callback_validate_recharge');
                $this->form_validation->set_rules('amount2', 'Initial subscription', 'trim|callback_validate_recharge');
                $this->form_validation->set_rules('topup_category', 'Topup Category', 'trim|required');
                $this->form_validation->set_rules('topup_pos', 'Topup POS', 'trim|required');
            }

            $this->form_validation->set_rules('subscription_type', 'Subscription Type', 'trim|required');
            $subscription_type = $this->input->post('subscription_type');
            if ($subscription_type == 'Free') {
                $this->form_validation->set_rules('free_promo_code', 'Free Promo Code', 'trim|required');
            }
            $household_size = '';
            $street = '';
            $sub_cat = $this->input->post('category');
            if ($sub_cat === 'HOUSEHOLD') {
                $this->form_validation->set_rules('household_size', 'Household Size', 'trim|required');
                $household_size = $this->input->post('household_size');
                $this->form_validation->set_rules('street', 'Street', 'trim|required');
                $street = $this->input->post('street');
            } elseif ($sub_cat === 'RESIDENT') {
                $this->form_validation->set_rules('street', 'Street', 'trim|required');
                $street = $this->input->post('street');
            } elseif ($sub_cat === 'STUDENT') {
                $this->form_validation->set_rules('course', 'Course', 'required');
                $this->form_validation->set_rules('curr_course_year', 'Current year of Study', 'required');
                $this->form_validation->set_rules('total_course_years', 'Total Course Years', 'required');
            }

            if ($this->form_validation->run() == TRUE) {
                $sub_registration_date = date('Y-m-d H:i:s');
                //create card number
                $card = $this->input->post('card_no');
                $id_type = $this->input->post('id_type');
                $id_number = $this->input->post('id_number');
                $card_no = $this->_generate_card_new($card);
                $sub_account = date('ymdHi');
                $subfee = $this->Subscriber_model->get_campus_subscription_plan($this->input->post('campus_code'));
                //$free_promo_code = '';				
                //$sub_fee_amount = 0;
                if ($subfee) {
                    $fee = $subfee->fee_amount;
                } else {
                    $fee = 4000;
                }
                if ($subscription_type == 'Free') {
                    $subscription_plan = 'Free';
                    $sub_fee_amount = 0;
                    $free_promo_code = $this->input->post('free_promo_code');
                } elseif ($subscription_type == 'Fee') {
                    $subscription_plan = 'Fee';
                    $sub_fee_amount = $fee;
                    $free_promo_code = '';
                }
                $data = array(
                    'mobile' => $this->input->post('mobile'),
                    'sub_name' => strtoupper($this->input->post('sub_name')),
                    'gender' => $this->input->post('gender'),
                    'card_no' => $card_no,
                    'email' => strtolower($this->input->post('email')),
                    'record_stat' => $this->input->post('record_stat'),
                    'campus_code' => $this->input->post('campus_code'),
                    'category' => $this->input->post('category'),
                    'household_size' => $household_size,
                    'street' => $street,
                    'sub_account' => $sub_account,
                    'registered_by' => $this->session->userdata('username'),
                    'subscription_plan' => $subscription_plan,
                    'sub_fee_amount' => $sub_fee_amount,
                    'free_promo_code' => $free_promo_code,
                    'course' => $this->input->post('course'),
                    'curr_course_year' => $this->input->post('curr_course_year'),
                    'total_course_years' => $this->input->post('total_course_years'),
                    'sub_registration_date' => $sub_registration_date,
                    'id_type' => $id_type,
                    'id_number' => preg_replace('/[^a-zA-Z0-9]+/', '', $id_number)
                );
                $this->db->trans_start();
                $insert_id = $this->Subscriber_model->insert_new_subscriber($data);
                $enc_id = array('enc_id' => MD5(MD5($insert_id)));
                $this->Subscriber_model->update_subscriber($enc_id, $insert_id);
                $update_data = array('occupied' => 'Y');
                $this->Subscriber_model->update_card($update_data, $card_no);
                //update card balance
                $card_data = array(
                    'card_balance' => $cashier->card_balance - 1,
                    'card_new_sold' => $cashier->card_new_sold + 1
                );
                $this->db->where('id', $cashier->id);
                $this->db->update('cashiers', $card_data);
                //Topup
                if (!empty($topup_amount)) {
                    $topup_amount = str_replace(',', '', $this->input->post('amount'));

                    $trn_ref_no = 'REG' . $this->session->userdata('user_id') . time() . random_int(10, 99); // Trn reference number
                    $data = array(
                        'card_no' => $card_no,
                        'sub_id' => $insert_id,
                        'amount' => $topup_amount,
                        'trn_date' => $sub_registration_date,
                        'trn_ref_no' => $trn_ref_no,
                        'pos' => $this->input->post('topup_pos'),
                        'trn_status' => 'SUCCESS',
                        'category' => $this->input->post('topup_category'),
                        'maker_id' => $this->session->userdata('username')
                    );
                    $topup_id = $this->Card_model->insert_pos_topup($data);
                    //update cashier float

                    if ($this->input->post('topup_category') === 'RECHARGE')

                    {
                        $used_float = (float)$this->session->userdata('cashier_used_float')+(float)$topup_amount+(float)$fee;
                        $update_float = array('used_float' => $used_float);
                        $this->db->where('id', $this->input->post('cashier_id'));
                        $this->db->update('cashiers', $update_float);
                        $this->session->unset_userdata('cashier_used_float');
                        $this->session->set_userdata('cashier_used_float', $used_float);
                    }
                }
                $this->db->trans_complete();
                $confirm_data = $this->db->get_where('sub_card_vw', array('card_no' => $card_no))->row();
                $this->session->set_flashdata('success', 'Subscriber registered, Name: ' . $confirm_data->sub_name . ' Card No.: ' . $confirm_data->card_no);
                redirect('0e440098a33575c32246132ec2395e56ee43da01b539d2135760c9a6e02bfeed'); // cashier/newSubscriber
            }
            $this->data['cashier'] = $this->Settings_model->get_cashier_details_by_id($this->session->userdata('id'));
        }
        $this->data['sub_cat'] = $this->Subscriber_model->get_all_sub_categories();
        $this->data['streets'] = $this->Subscriber_model->get_all_streets();
        $this->data['topup_cat'] = $this->Card_model->get_all_topup_categories();
        $this->data['courses'] = $this->Subscriber_model->get_student_courses();
        $this->data['id_types'] = $this->db->get_where('id_types', array('id <>' => '6'))->result();
        $this->load->view('_layout_cashier', $this->data);
    }

    function validate_id_type($id_type)
    {
        $id_number = $this->input->post('id_number');
        if (!empty($id_type) && $id_type != '6' && empty($id_number)) {
            $this->form_validation->set_message('validate_id_type', 'ID number is required');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function cardRecharge()
    {
        if (empty($this->session->userdata('topup_add'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $cashier = $this->Settings_model->get_cashier_details_by_id($this->session->userdata('id'));
        $this->data['cashier'] = $cashier;
        // unset cashier data to session
        $this->session->unset_userdata('cashier_id');
        $this->session->unset_userdata('cashier_current_float');
        $this->session->unset_userdata('cashier_used_float');
        $this->session->unset_userdata('cashier_pos_id');
        $this->session->unset_userdata('cashier_pos_name');
        $this->session->unset_userdata('cashier_campus_id');
        $this->session->unset_userdata('cashier_campus_code');
        $this->session->unset_userdata('cashier_campus_name');
        // set cashier data to session
        $this->session->set_userdata('cashier_id', $cashier->id);
        $this->session->set_userdata('cashier_current_float', $cashier->current_float);
        $this->session->set_userdata('cashier_used_float', $cashier->used_float);



        $this->session->set_userdata('cashier_pos_id', $cashier->pos_id);
        $this->session->set_userdata('cashier_pos_name', $cashier->pos_name);
        $this->session->set_userdata('cashier_campus_id', $cashier->campus_id);
        $this->session->set_userdata('cashier_campus_code', $cashier->campus_code);
        $this->session->set_userdata('cashier_campus_name', $cashier->campus_name);

        $this->data['title'] = 'Recharge';
        $this->data['subtitle'] = 'Card Recharge';
        $this->data["subview"] = "cashier/card_recharge";
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->form_validation->set_rules('card_no', 'Card No.', 'trim|required|callback_validate_card_recharge|greater_than_equal_to[1]');
            $this->form_validation->set_rules('amount', 'Amount', 'trim|required|callback_validate_recharge');
            $this->form_validation->set_rules('channel', 'Channel', 'required');
            $this->form_validation->set_rules('category', 'Category', 'required');
            //$this->form_validation->set_rules('trn_date', 'Trn Date', 'trim|callback_validate_trn_date');
            if ($this->form_validation->run() === TRUE) {
                $amount = str_replace(',', '', $this->input->post('amount'));

                /*
                  if($this->input->post('trn_date') == ''){
                  $trn_date = date('Y-m-d');
                  }else{
                  $trn_date = $this->input->post('trn_date');
                  }
                 */
                $trn_date = date('Y-m-d');
                $card_no = $this->_generate_card_new($this->input->post('card_no'));
                $channel = $this->input->post('channel');
                $category = $this->input->post('category');
                #Check for duplicate start
                $this->_check_duplicate_recharge($card_no, $amount, $trn_date);
                #Check for duplicate start end
                if ($channel == 'validator') {
                    $pos = 'VAL';
                    //$trn_ref_no = 'VAL' . $this->session->userdata('user_id') . time() . random_int(10, 99); // Trn reference number
                } else {
                    //$pos = 'POS';
                    $pos = $channel;
                    //$trn_ref_no = 'POS' . $this->session->userdata('user_id') . time() . random_int(10, 99);
                }
                $sub_id = $this->db->get_where('subscribers', array('card_no' => $card_no))->row()->id;
                $data_recharge = array(
                    'card_no' => $card_no,
                    'sub_id' => $sub_id,
                    'amount' => $amount,


                    'trn_date' => $trn_date,
                    //'trn_ref_no' => $trn_ref_no,
                    'pos' => $pos,
                    'trn_status' => 'SUCCESS',
                    'category' => $category,
                    'maker_id' => $this->session->userdata('username')
                );
                $topup_id = $this->Card_model->insert_pos_topup($data_recharge);
                //generate ecowater transaction reference
                $eco_ref = $this->_generate_eco_ref($topup_id, 'OTHERS');
                $trn_ref_no = $pos . $eco_ref;
                $topup_update_data = array('trn_ref_no' => $trn_ref_no);
                $this->Card_model->update_pos_topup($topup_update_data, $topup_id);
                //if termination is validator push transaction to eco_selcom_payments table
                if ($channel == 'validator') {
                    $sub_data = $this->db->get_where('sub_card_vw', array('sub_id' => $sub_id))->row();
                    $payment_data = array(
                        'eco_ref' => $trn_ref_no,
                        'operator' => 'ECOWATER',
                        'utilityref_card_no' => $sub_data->card_luhn,
                        'amount' => $amount,

                        'timestamp_selcom' => date('Y-m-d H:i:s'),
                        'v_status' => '000',
                        'n_status' => '000',
                        'sub_id' => $sub_id,
                        'comment' => 'User to validate through validator',
                        'maker_id' => $this->session->userdata('username'),
                        'channel_id' => 'USER',
                        'reference_selcom' => 'NIL',
                        'transid_operator' => 'NIL',
                        'msisdn' => 'NIL'
                    );
                    $this->db->insert('selcom_payments', $payment_data);
                    $mobile_payment_id = $this->db->insert_id();
                    #Check for bottle loan start
                    if ($category === 'RECHARGE') {
                        $bottle_loan = $this->_check_bottle_loan($sub_id, $amount, $mobile_payment_id);
                        $installment = $bottle_loan['installment'];
                        $loan_repayment_id = $bottle_loan['loan_repayment_id'];
                        $new_mobile_amount = $amount - $bottle_loan['installment'];
                        $new_payment_data = array(
                            'amount' => $new_mobile_amount,
                            'comment' => 'Loan ID : ' . $bottle_loan['loan_id'] . ' | Mobile Amount : ' . $amount . ' | Installment : ' . $bottle_loan['installment']
                        );
                        $this->db->where('id', $mobile_payment_id);
                        $this->db->update('selcom_payments', $new_payment_data);
                        //update topup table
                        $new_topup_data = array('amount' => $new_mobile_amount);
                        $this->db->where('id', $topup_id);
                        $this->db->update('card_topup', $new_topup_data);
                    }
                    #Check for bottle loan end
                }

                $data = array('date_last_topup' => $trn_date);
                //echo $sub_id.' - '.$trn_date; exit();
                $this->Subscriber_model->update_subscriber($data, $sub_id);
                if ($this->input->post('category') === 'RECHARGE') {
                    //update cashier float
                    $used_float = (float)$this->session->userdata('cashier_used_float') + (float)$amount+(float)$amount2;
                    $update_float = array('used_float' => $used_float);
                    $this->db->where('id', $this->session->userdata('cashier_id'));
                    $this->db->update('cashiers', $update_float);
                    $this->session->unset_userdata('cashier_used_float');
                    $this->session->set_userdata('cashier_used_float', $used_float);
                }
                $confirm_data = $this->db->get_where('sub_card_vw', array('card_no' => $card_no))->row();
                $this->session->set_flashdata('success', 'Recharge successfully, Card No. ' . $confirm_data->card_no . ' of ' . $confirm_data->sub_name);
                $ency_sub_id = str_replace(array('+', '/', '='), array('-', '_', '~'), $this->encryption->encrypt($sub_id));
                $this->session->unset_userdata('sms_sub_id');
                $this->session->set_userdata('sms_sub_id', $ency_sub_id);
                redirect('043390f2871d161b988b175ead45b6210be8853f05325c453be74989a1479712');
            }
        }
        $this->data['cashier'] = $this->Settings_model->get_cashier_details_by_id($this->session->userdata('id'));
        $this->data['topup_cat'] = $this->Card_model->get_all_topup_categories();
        $this->load->view('_layout_cashier', $this->data);
    }

    function _check_duplicate_recharge($card_no = '', $amount = '', $trn_date = '')
    {
        $existing = $this->db->get_where('card_topup', array('card_no' => $card_no, 'amount' => $amount, 'trn_date' => $trn_date));
        if ($existing->num_rows() >= 1) {
            $existing = $existing->row();
            $start_date = new DateTime($existing->date_registered);
            $now = date('Y-m-d H:i:s');
            $since_start = $start_date->diff(new DateTime($now));
            $minutes = $since_start->days * 24 * 60;
            $minutes += $since_start->h * 60;
            $minutes += $since_start->i;
            if ($minutes <= 15) {
                $this->session->set_flashdata('error', 'Possible duplicate transaction.<br/>You can only perform transaction with same details after 15 mins');
                redirect('043390f2871d161b988b175ead45b6210be8853f05325c453be74989a1479712');
            }
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
        $eco_ref = $payment_id . $checksum;
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

    function _check_bottle_loan($sub_id = '', $amount = 0, $mobile_payment_id = '')
    {
        $sub_loan = $this->db->get_where('bottles_sold', array('sub_id' => $sub_id, 'status <>' => 'Full Paid'));
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

    function listSubscribers()
    {
        if (empty($this->session->userdata('sub_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Subscriber';
        $this->data['subtitle'] = 'Today Registrations';
        $this->data["subview"] = "cashier/list_subscriber";
        $username = $this->session->userdata('username');
        $today = date('Y-m-d');
        $this->data['subscribers'] = $this->db->query("SELECT sub_name,card_no,mobile FROM eco_subscribers WHERE registered_by = '$username' AND CAST(date_registered AS DATE) = '$today' ORDER BY id DESC")->result();
        $this->load->view('_layout_cashier', $this->data);
    }

    function listRecharges()
    {
        if (empty($this->session->userdata('topup_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Recharge';
        $this->data['subtitle'] = 'Today Recharges';
        $this->data["subview"] = "cashier/list_recharges";
        $username = $this->session->userdata('username');
        $today = date('Y-m-d');
        $this->data['recharges'] = $this->db->query("SELECT a.*,b.sub_name FROM eco_card_topup a LEFT JOIN eco_subscribers b ON a.sub_id = b.id WHERE maker_id = '$username' AND  CAST(a.date_registered AS DATE) = '$today' ORDER BY a.id DESC ")->result();
        $this->load->view('_layout_cashier', $this->data);
    }

    function floatLogs()
    {
        $this->data['title'] = 'Cashiers';
        $this->data['subtitle'] = 'Float Logs';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'cashier/floatLogs';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_cashiers_float_logs');
        $crud->set_relation('user_id', 'eco_users', 'name');
        $crud->columns('float_date', 'user_id', 'assigned_float', 'used_float', 'remain_float', 'sub_fees', 'paid_plan_sub', 'free_plan_sub', 'total_revenue','card_new_sold','card_renewal_sold');
        $crud->fields('float_date', 'user_id', 'assigned_float', 'used_float', 'remain_float', 'sub_fees', 'paid_plan_sub', 'free_plan_sub', 'total_revenue');
        $crud->order_by('id', 'DESC');
        $crud->display_as('user_id', 'Cashier')
            ->display_as('used_float', 'Used float(A)')
            ->display_as('sub_fees', 'Sub fees(B)')
            ->display_as('total_revenue', 'Revenue (A+B)')
            ->display_as('paid_plan_sub', 'Paid Plan')
            ->display_as('free_plan_sub', 'Free Plan')
            ->display_as('card_new_sold', 'New Cards')
            ->display_as('card_renewal_sold', 'Renewal Cards');
        $crud->set_subject('Cashier Floats');
        $crud->unset_clone();
        //$crud->unset_read();
        $crud->unset_delete();
        $crud->unset_add();
        $crud->unset_edit();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->callback_column('assigned_float', array($this, '_callback_format_amount'));
        $crud->callback_column('used_float', array($this, '_callback_format_amount'));
        $crud->callback_column('remain_float', array($this, '_callback_format_amount'));
        $crud->callback_column('sub_fees', array($this, '_callback_format_amount'));
        $crud->callback_column('float_date', array($this, '_callback_format_date2'));
        $crud->callback_column('paid_plan_sub', array($this, '_callback_format_number'));
        $crud->callback_column('free_plan_sub', array($this, '_callback_format_number'));
        $crud->callback_column('card_new_sold', array($this, '_callback_format_number'));
        $crud->callback_column('card_renewal_sold', array($this, '_callback_format_number'));
        $crud->callback_column('total_revenue', array($this, '_callback_cashier_revenue'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function ajaxSearchCard()
    {
        $card_no = $this->_generate_card($this->input->post('card_no'));
        //$card_no = $this->input->post('card_no');
        $sub = $this->db->get_where('sub_card_vw', array('card_no' => $card_no));
        if ($sub->num_rows() == 1) {
            $sub = $sub->row();
            $cashier = $this->db->get_where('cashiers', array('user_id' => $this->session->userdata('user_id')))->row();
            if ($this->session->userdata('usertype') == 'Admin' || $cashier->sell_bottle == 'Y') {
                $href = base_url() . 'ae892dc5d86252a3617a66d8524fe3247da3b566d767dec82f2f8a4e41e11cae/' . $sub->sub_id;
            } else {
                $href = '#';
            }
            //$href = base_url() . 'ae892dc5d86252a3617a66d8524fe3247da3b566d767dec82f2f8a4e41e11cae/'.$sub->sub_id;
            $message = '<tr><td>' . $sub->card_no . '</td><td>' . $sub->sub_name . '</td><td>' . $sub->card_luhn . '</td><td><a href="' . $href . '" class="btn btn-xs btn-outline-info">Sell Bottle</a></td></tr>';
            $data = array('action' => 'success', 'message' => $message);
            echo json_encode($data);
        } else {
            $message = '<tr><td>' . $card_no . '</td><td>NO SUBSCRIBER WITH THIS CARD</td><td></td><td></td></</tr>';
            $data = array('action' => 'success', 'message' => $message);
            echo json_encode($data);
        }
    }

    function test_sell()
    {
        $cashier = $this->db->get_where('cashiers', array('user_id' => $this->session->userdata('user_id')))->row();
        echo $cashier->sell_bottle;
        exit();
    }

    function sellBottle($sub_id = '')
    {
        //$sub_id = 3655;
        $this->data['title'] = 'Bottle';
        $this->data['subtitle'] = 'Sell';
        /*if ($this->session->userdata('usertypeid') == '1') {
            $this->data['subview'] = 'cashier/sell_bottle_uat';
        } else {
            $this->data['subview'] = 'cashier/sell_bottle';
        }*/
        $this->data['subview'] = 'cashier/sell_bottle';

        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $sub_id = $this->input->post('sub_id');
            $this->load->library('form_validation');
            $this->form_validation->set_rules('bottle', 'Bottle', 'trim|required');
            $this->form_validation->set_rules('mobile', 'Mobile', 'trim|required');
            $this->form_validation->set_rules('quantity', 'Quantity', 'trim|required|greater_than_equal_to[1]|callback_validate_max_sell');
            $this->form_validation->set_rules('sub_otp', 'OTP', 'trim|required|callback_validate_bottle_otp');
            if ($this->form_validation->run() == TRUE) {
                $bottle = $this->input->post('bottle');
                $bottle_details = $this->db->get_where('bottles', array('id' => $bottle))->row();
                $sub_details = $this->db->get_where('sub_card_vw', array('sub_id' => $sub_id))->row();
                $quantity = $this->input->post('quantity');
                $mobile = $this->input->post('mobile');
                $loan_amount = $quantity * $bottle_details->price;
                //double check to confirm if customer has active loan
                $check = $this->db->get_where('bottles_sold', array('sub_id' => $sub_id, 'status' => 'Active'))->num_rows();
                if ($check >= 1) {
                    redirect('ae892dc5d86252a3617a66d8524fe3247da3b566d767dec82f2f8a4e41e11cae/' . $sub_id);
                }
                $data = array(
                    'bottle_id' => $bottle,
                    'quantity' => $quantity,
                    'unit_price' => $bottle_details->price,
                    'sell_date' => date('Y-m-d'),
                    'sub_id' => $sub_id,
                    'card_no' => $sub_id,
                    'loan_amount' => $loan_amount,
                    'rate' => $bottle_details->loan_rate,
                    'cashier' => $this->session->userdata('username'),
                    'mobile' => $mobile
                );
                $this->db->insert('bottles_sold', $data);
                //send sms
                $message = 'You have subscribed to eCloud bottle plan, amount Tsh ' . number_format($loan_amount, 0) . '. Repayments will be collected as ' . number_format($bottle_details->loan_rate, 0) . '% of your water purchases.';
                $sms = array('receiver' => $mobile, 'message' => $message, 'maker_id' => 'SYSTEM');
                $this->db->insert('sms_outgoing', $sms);
                $this->Sms_model->sendsms($message, $mobile);
                $this->session->set_flashdata('success', 'Loan created for <strong>' . $sub_details->sub_name . '</strong> Card Number <strong>' . $sub_details->card_luhn . '</strong>');
                redirect('dashboard/cashierDashboard');
            }
        }
        #vetting start
        $error = '';
        //check subscriber status
        $sub_check = $this->db->get_where('subscribers', array('id' => $sub_id))->row();
        if ($sub_check->record_stat != 'OPEN') {
            $error = $error . '| Subscriber is ' . $sub_check->record_stat . ' <br/>';
        }
        if ($sub_check->sub_stat_dormancy == 'D') {
            $error = $error . '| Subscriber is dormant <br/>';
        }
        //check for active loan        
        $loan = $this->db->get_where('bottles_sold', array('sub_id' => $sub_id, 'status' => 'Active'));
        if ($loan->num_rows() >= 1) {
            $loan = $loan->row();
            $balance = $loan->loan_amount - $loan->collected_amount;
            $error = $error . '| Subscriber has an outstanding loan of ' . number_format($balance, 2) . ' <br/>';
        }
        //at least 3 mobile payments
        $recharge = $this->db->get_where('selcom_payments', array('sub_id' => $sub_id, 'v_status' => '000', 'reversed' => 'N', 'channel_id' => 'SELCOM'))->num_rows();
        if ($recharge < 3) {
            $error = $error . '| Subscriber has less than 3 mobile recharges <br/>';
        }
        #vetting end
        $sub = $this->db->get_where('sub_card_vw', array('sub_id' => $sub_id))->row();
        $this->data['sub_data'] = $sub;
        $this->db->order_by('litres', 'ASC');
        $bottles = $this->db->get('bottles')->result();
        $this->data['bottles'] = $bottles;
        $this->data['error'] = $error;
        $this->load->view('_layout_cashier', $this->data);
    }

    function validate_max_sell($quantity)
    {
        // $bottle = $this->input->post('bottle');
        $bottle = $this->db->get_where('bottles', array('id' => $this->input->post('bottle')))->row();
        if ($bottle->max_sell < $quantity) {
            $this->form_validation->set_message('validate_max_sell', 'Maximum quantity is ' . $bottle->max_sell . ' bottle(s) for selected bottle');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function validate_bottle_otp($otp = '')
    {
        $mobile = $this->input->post('mobile');
        $sub_id = $this->input->post('sub_id');
        $result = $this->db->query("select TIMESTAMPDIFF(MINUTE, a.date_registered, NOW()) as time_diff, a.* from eco_bottles_otp a where a.sub_id = '$sub_id' and a.sub_otp = '$otp' and a.mobile = '$mobile'");
        if ($result->num_rows() <= 0) {
            $this->form_validation->set_message('validate_bottle_otp', 'Invalid OTP.');
            return FALSE;
        } else {
            $result = $result->row();
            if ($result->time_diff > 2) {
                $this->form_validation->set_message('validate_bottle_otp', 'OTP expired, please send another OTP.');
                return FALSE;
            } else {
                return TRUE;
            }
        }
    }

    function ajaxSendOTP()
    {
        $cashier = $this->session->userdata('username');
        $this->form_validation->set_rules('mobile', 'Mobile', 'trim|required|greater_than[255]|exact_length[12]');
        $card_no = $this->input->post('card_no');
        if ($this->form_validation->run() === TRUE) {
            $mobile = $this->input->post('mobile');
            $sub = $this->db->get_where('sub_card_vw', array('card_luhn' => $card_no))->row();
            $sub_otp = rand(1000, 9999);
            //$cashier_otp = rand(100, 999);
            $sub_message = 'OTP for your bottle plan subscription is ' . $sub_otp . '. Please share with cashier.';
            $this->Sms_model->sendsms($sub_message, $mobile);
            $out_sms = array(
                'receiver' => $mobile,
                'message' => $sub_message,
                'maker_id' => $this->session->userdata('username')
            );
            $this->Sms_model->insertOutgoingSMS($out_sms);
            #store otp data start
            $this->db->delete('bottles_otp', array('sub_id' => $sub->sub_id, 'card_no' => $sub->card_luhn, 'mobile' => $mobile));
            $otp_data = array('sub_id' => $sub->sub_id, 'card_no' => $sub->card_luhn, 'mobile' => $mobile, 'sub_otp' => $sub_otp, 'cashier' => $cashier);
            $this->db->insert('bottles_otp', $otp_data);
            #store otp data end
            $message = '<div class="alert alert-success fade show" role="alert">OTP sent, please enter and proceed, expire in 2 minutes.</div>';
            $data = array('action' => 'success', 'message' => $message);
            echo json_encode($data);
        } else {
            $v_errors = validation_errors();
            $message = '<div class="alert alert-danger fade show" role="alert">' . $v_errors . '</div>';
            $data = array('action' => 'error', 'message' => $message);
            echo json_encode($data);
        }
    }

    function mobilePaymentMessaging()
    {
        $ency_sub_id = $this->session->userdata('sms_sub_id');
        $sub_id = $this->encryption->decrypt(str_replace(array('-', '_', '~'), array('+', '/', '='), $ency_sub_id));
        $this->data['title'] = 'Cashiers';
        $this->data['subtitle'] = 'SMS Subscriber';
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('mobile', 'Mobile', 'trim|required|numeric|exact_length[12]|greater_than_equal_to[255]');
            $update_mobile = $this->input->post('update_mobile');
            $sub_id = $this->input->post('sub_id');
            if ($this->form_validation->run() == TRUE) {
                $message = $this->input->post('message');
                $mobile = $this->input->post('mobile');
                //echo $mobile.' : '.$message; exit();
                $this->Sms_model->sendsms($message, $mobile);
                $data = array(
                    'receiver' => $mobile,
                    'message' => $message,
                    'maker_id' => $this->session->userdata('username')
                );
                $this->Sms_model->insertOutgoingSMS($data);
                if (!empty($update_mobile)) {
                    $sub_data = array('mobile' => $mobile);
                    $this->db->where('id', $sub_id);
                    $this->db->update('subscribers', $sub_data);
                }
                $this->session->set_flashdata('success_sms', 'Message sent');
                redirect('043390f2871d161b988b175ead45b6210be8853f05325c453be74989a1479712'); // cashier/cardRecharge
            }
        }
        $this->db->select('a.id as sub_id,a.sub_name,a.mobile,a.card_no,b.card_luhn');
        $this->db->from('subscribers a');
        $this->db->join('cards b', 'a.card_no = b.card_no', 'LEFT');
        $this->db->where(array('a.id' => $sub_id));
        $sub = $this->db->get()->row();
        $this->data['sub'] = $sub;
        $message = 'Recharging your card with mobile is now activated for all networks and ' . $sub->card_luhn . ' is your payment reference for mobile payments';
        $this->data['message'] = $message;
        $this->data["subview"] = 'cashier/mobile_payment_sms';
        ##########
//        $ency_sub_id = str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($sub_id));
//        $decr_sub_id  = $this->encryption->decrypt(str_replace(array('-', '_', '~'), array('+', '/', '='), $ency_sub_id));
//        $this->session->unset_userdata('sms_sub_id');
//        $this->session->set_userdata('sms_sub_id', $ency_sub_id);
//        $this->session->set_flashdata('success','Recharge successfully, Card No. '.$sub->card_no.' of '.$sub->sub_name);
        ##############
        $this->load->view('_layout_cashier', $this->data);
    }

    function _generate_card_new($card)
    {
        // 22000 this is the last card number for old cards before adopting prefix 135000 and checksum
        if ($card <= 22000) {
            // old cards
            if ($card < 10) {
                $card_no = 'IC-00000' . $card;
            } elseif ($card < 100) {
                $card_no = 'IC-0000' . $card;
            } elseif ($card < 1000) {
                $card_no = 'IC-000' . $card;
            } elseif ($card < 10000) {
                $card_no = 'IC-00' . $card;
            } elseif ($card < 100000) {
                $card_no = 'IC-0' . $card;
            } elseif ($card >= 100000) {
                $card_no = 'IC-' . $card;
            } else {
                $card_no = '00';
            }
            $result = $this->db->get_where('cards', array('card_no' => $card_no));
        } else {
            $card_no = '135000' . $card;
            $this->db->where('card_no', $card_no);
            $result = $this->db->get('cards');
        }
        $card_data = $result->row();
        return $card_data->card_no;
    }

    function validate_card_sub_reg($card)
    {
        // 22000 this is the last card number for old cards before adopting prefix 135000 and checksum
        if ($card <= 22000) {
            // old cards
            if ($card < 10) {
                $card_no = 'IC-00000' . $card;
            } elseif ($card < 100) {
                $card_no = 'IC-0000' . $card;
            } elseif ($card < 1000) {
                $card_no = 'IC-000' . $card;
            } elseif ($card < 10000) {
                $card_no = 'IC-00' . $card;
            } elseif ($card < 100000) {
                $card_no = 'IC-0' . $card;
            } elseif ($card >= 100000) {
                $card_no = 'IC-' . $card;
            } else {
                $card_no = '00';
            }
            $result_sub = $this->db->get_where('subscribers', array('card_no' => $card_no));
            $result_card = $this->db->get_where('cards', array('card_no' => $card_no));
        } else {
            $card_no = '135000' . $card;
            $result_sub = $this->db->get_where('subscribers', array('card_no' => $card_no));
            $result_card = $this->db->get_where('cards', array('card_no' => $card_no));
            $card_stat = $result_card->row();
        }
        if ($result_sub->num_rows() == 1) {
            $result_sub = $result_sub->row();
            $this->form_validation->set_message('validate_card_sub_reg', 'Card already occupied by ' . $result_sub->sub_name);
            return FALSE;
        } elseif ($result_card->num_rows() != 1) {
            $this->form_validation->set_message('validate_card_sub_reg', 'Wrong card number, does not exist on system');
            return FALSE;
        } elseif ($card_stat->lost == 'Y') {
            $error_message = "Card is marked as lost";
            $this->form_validation->set_message('validate_card_no', $error_message);
            return FALSE;
        } elseif ($card_stat->demaged == 'Y') {
            $error_message = "Card is marked as demaged";
            $this->form_validation->set_message('validate_card_no', $error_message);
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function validate_card_recharge($card)
    {
        // 22000 this is the last card number for old cards before adopting prefix 135000 and checksum
        if ($card <= 22000) {
            // old cards
            if ($card < 10) {
                $card_no = 'IC-00000' . $card;
            } elseif ($card < 100) {
                $card_no = 'IC-0000' . $card;
            } elseif ($card < 1000) {
                $card_no = 'IC-000' . $card;
            } elseif ($card < 10000) {
                $card_no = 'IC-00' . $card;
            } elseif ($card < 100000) {
                $card_no = 'IC-0' . $card;
            } elseif ($card >= 100000) {
                $card_no = 'IC-' . $card;
            } else {
                $card_no = '00';
            }
        } else {
            $card_no = '135000' . $card;
        }
        $check_card = $this->db->get_where('sub_card_vw', array('card_no' => $card_no));
        $rows = $check_card->num_rows();
        $row_data = $check_card->row();
        if ($rows < 1) {
            $this->form_validation->set_message('validate_card_recharge', 'Invalid card number');
            return FALSE;
        } elseif ($row_data->card_status == 'Inactive') {
            $this->form_validation->set_message('validate_card_recharge', 'Reported lost or damaged card');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function _generate_card($card = '')
    {
        if (substr($card, 0, 6) === '135000' && strlen(trim($card)) === 13) {
            $card_no = $card;
        } elseif ($card < 10) {
            $card_no = 'IC-00000' . $card;
        } elseif ($card < 100) {
            $card_no = 'IC-0000' . $card;
        } elseif ($card < 1000) {
            $card_no = 'IC-000' . $card;
        } elseif ($card < 10000) {
            $card_no = 'IC-00' . $card;
        } elseif ($card < 100000) {
            $card_no = 'IC-0' . $card;
        } elseif ($card >= 100000) {
            $card_no = 'IC-' . $card;
        } else {
            $card_no = '00';
        }

        return $card_no;
    }

    function validate_topup_card($card)
    {
        if (substr($card, 0, 6) === '135000' && strlen(trim($card)) === 13) {
            $card_no = $card;
        } elseif ($card < 10) {
            $card_no = 'IC-00000' . $card;
        } elseif ($card < 100) {
            $card_no = 'IC-0000' . $card;
        } elseif ($card < 1000) {
            $card_no = 'IC-000' . $card;
        } elseif ($card < 10000) {
            $card_no = 'IC-00' . $card;
        } elseif ($card < 100000) {
            $card_no = 'IC-0' . $card;
        } elseif ($card >= 100000) {
            $card_no = 'IC-' . $card;
        } else {
            $card_no = '00';
        }
        $check_card = $this->db->get_where('sub_card_vw', array('card_no' => $card_no))->num_rows();
        if ($check_card < 1) {
            $this->form_validation->set_message('validate_topup_card', 'Wrong or incorrect Card Number');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function validate_trn_date($str)
    {
        $trn_date = $str;
        //$trn_date = date('Y-m-d',$str);
        if ($trn_date > date('Y-m-d')) {
            $this->form_validation->set_message('validate_trn_date', "Trn Date cannot be greater than current date");
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function validate_card_no($card)
    {
        if (substr($card, 0, 6) === '135000' && strlen(trim($card)) === 13) {
            $card_no = $card;
        } elseif ($card < 10) {
            $card_no = 'IC-00000' . $card;
        } elseif ($card < 100) {
            $card_no = 'IC-0000' . $card;
        } elseif ($card < 1000) {
            $card_no = 'IC-000' . $card;
        } elseif ($card < 10000) {
            $card_no = 'IC-00' . $card;
        } elseif ($card < 100000) {
            $card_no = 'IC-0' . $card;
        } elseif ($card >= 100000) {
            $card_no = 'IC-' . $card;
        } else {
            $card_no = '00';
        }
        $is_card_valid = $this->db->get_where('cards', array('card_no' => $card_no))->num_rows();
        $is_card_occupied = $this->db->get_where('subscribers', array('card_no' => $card_no))->num_rows();
        if ($is_card_valid != 1) {
            $this->form_validation->set_message('validate_card_no', "Card number is not valid");
            return FALSE;
        } elseif ($is_card_occupied == 1) {
            $this->form_validation->set_message('validate_card_no', "Card already occupied");
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function _callback_format_float_balance($value, $row)
    {
        $cashier = $this->db->get_where('cashiers', array('id' => $row->id))->row();
        $float_balance = $cashier->current_float - ($cashier->used_float );
        return "<span style='width:100%;text-align:right;display:block;'>" . number_format($float_balance, 2) . "</span>";
    }

    function _callback_format_date($value, $row)
    {
        $date = date("d-M-Y", strtotime($value));
        return $date;
    }

    function _callback_format_date2($value, $row)
    {
        $date = date("d/m/Y", strtotime($value));
        return $date;
    }

    function validate_float($current_float)
    {
        if ($current_float <= 0) {
            $this->form_validation->set_message('validate_float', "Float should be greater than zero");
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function validate_user_id($user_id)
    {
        $id = $this->input->post('id');
        if ($id != '') {
            $cashier = $this->db->get_where('cashiers', array('id' => $id))->row();
            if ($cashier->user_id != $user_id) {
                $this->form_validation->set_message('validate_user_id', "Cashier Name cannot be changed, please create new record instead");
                return FALSE;
            } else {
                return TRUE;
            }
        } else {
            return TRUE;
        }
    }

    function validate_recharge($topup_amount)
    {
        $topup_amount = str_replace(',', '', $topup_amount);
        $topup_cat = $this->input->post('category'); // === 'RECHARGE'
        $topup_cat_new_sub = $this->input->post('topup_category');
        if ($topup_cat === 'RECHARGE' || $topup_cat_new_sub == 'RECHARGE') {
            $cashier_id = $this->session->userdata('cashier_id');
            $cashier = $this->db->get_where('cashiers', array('id' => $cashier_id))->row();
            $current_float = $cashier->current_float;
            $used_float = $cashier->used_float;
            $balance_float = $current_float - $used_float;
            if ($balance_float < (float)$topup_amount) {
                $this->form_validation->set_message('validate_recharge', "You don't have enough float");
                return FALSE;
            } else {
                return TRUE;
            }
        } else {
            return TRUE;
        }
    }

    function validate_reg_date($reg_date)
    {
        if ($reg_date > date('Y-m-d')) {
            $this->form_validation->set_message('validate_reg_date', "Registration date cannot be greater than today");
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function _callback_format_amount($value, $row)
    {
        return "<span style='width:100%;text-align:right;display:block;'>" . number_format($value, 2) . "</span>";
    }

    function _callback_format_number($value, $row)
    {
        return "<span style='width:100%;text-align:right;display:block;'>" . number_format($value, 0) . "</span>";
    }

    function _callback_cashier_revenue($value, $row)
    {
        $this->db->select('IFNULL(used_float,0) AS used_float, IFNULL(sub_fees,0) AS sub_fee');
        $data = $this->db->get_where('cashiers_float_logs', array('id' => $row->id))->row();
        $revenue = $data->used_float + $data->sub_fee;
        return "<span style='width:100%;text-align:right;display:block;'>" . number_format($revenue, 2) . "</span>";
    }

}
