<?php

defined('BASEPATH') OR exit('No direct script access allowed');
//require_once APPPATH . '/third_party/PHPExcel/IOFactory.php';

class Subscribers extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', /*'excel',*/ 'session'));
        $this->lang->load('auth');
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->load->model(array('Card_model', 'Subscriber_model', 'Sms_model', 'Settings_model', 'Dashboard_model'));
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
        $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        //Call this mysql procedure to change session timezone for all database CRUD
        //$this->db->query("CALL mysql.store_time_zone()");
    }

    function index()
    {

    }

    function allSubscribers()
    {
        if (empty($this->session->userdata('sub_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Subscribers';
        $this->data['subtitle'] = 'All Subscribers';
        $this->data["subview"] = 'subscribers/all_subscribers';
        $this->data['pageurl'] = '63af1019c3f8e05d1e0202c578aa50f0'; // subscribers/allSubscribers

        $this->data['topup_cat'] = $this->Card_model->get_all_topup_categories();
        $this->data['pos'] = $this->Card_model->get_all_active_pos();
        $this->data['subscribers'] = $this->Subscriber_model->get_all_subscribers();
        $this->load->view('_layout_main', $this->data);
    }

    function listSubscribers()
    {
        if (empty($this->session->userdata('sub_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Subscribers';
        $this->data['subtitle'] = 'Search Subscribers';
        $this->data["subview"] = 'subscribers/subscribers';
        $this->data['pageurl'] = 'a18769583d9f14d672803c80bcabf9a7'; // subscribers/listSubscribers
        $this->data['topup_cat'] = $this->Card_model->get_all_topup_categories();
        $this->data['pos'] = $this->Card_model->get_all_active_pos();
        $this->load->view('_layout_main', $this->data);
    }

    function ajaxSearchSubscribers()
    {
        $string = $this->input->get('id');
        if (is_null($string)) {
            $this->load->view('subscribers/ajax_empty');
        } else {
            $data['booktable'] = $this->Subscriber_model->get_subscriber_name($string);
            $this->load->view('subscribers/ajax_output', $data);
        }
    }

    function getSubscribers()
    {
        $data = $this->Subscriber_model->get_all_subscribers();
        echo json_encode($data);
    }

    function addTopup()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('card_no', 'Card No.', 'required');
        $this->form_validation->set_rules('pos', 'POS', 'required');
        $this->form_validation->set_rules('category', 'Category', 'required');
        $this->form_validation->set_rules('amount', 'Amount', 'required');
        if ($this->form_validation->run() == FALSE) {
            $derror = 'error';
            echo json_encode($derror);
        } else {
            $amount = str_replace(',', '', $this->input->post('amount'));
            if ($this->input->post('trn_date') == '') {
                $trn_date = date('Y-m-d');
            } else {
                $trn_date = date('Y-m-d', strtotime($this->input->post('trn_date')));
            }
            $sub = $this->Subscriber_model->get_sub_data_by_cardno($this->input->post('card_no'));
            $sub_reg_date = date('Y-m-d', strtotime($sub->sub_registration_date));
            if ($trn_date < $sub_reg_date) {
                $data = 'reg_date_error';
                echo json_encode($data);
            } else {
                $sub_id = $this->input->post('sub_id');
                $trn_ref_no = 'POS' . $this->session->userdata('user_id') . time() . random_int(10, 99);
                $data = array(
                    'card_no' => $this->input->post('card_no'),
                    'sub_id' => $sub_id,
                    'amount' => $amount,
                    'trn_date' => $trn_date,
                    'trn_ref_no' => $trn_ref_no,
                    'pos' => $this->input->post('pos'),
                    'trn_status' => 'SUCCESS',
                    'category' => $this->input->post('category'),
                    'maker_id' => $this->session->userdata('username')
                );
                $data = $this->Card_model->insert_pos_topup($data);
                $update_sub = array('date_last_topup' => $trn_date);
                $this->Subscriber_model->update_subscriber($update_sub, $sub_id);
                $data = 'okay';
                echo json_encode($data);
            }
        }
    }

    function newSubscriber()
    {
        if (empty($this->session->userdata('sub_add'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Subscribers';
        $this->data['subtitle'] = 'New Subscriber';
        $this->data["subview"] = 'subscribers/new_subscriber';
        $this->data['pageurl'] = '71e166fa855a3ace69d42b1c62892571'; //subscribers/newSubscriber

        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            //echo $this->input->post('id_type'); exit();
            $this->load->library('form_validation');
            $this->form_validation->set_rules('sub_name', 'Full Name', 'trim|required');
            $this->form_validation->set_rules('mobile', 'Mobile', 'trim|required');
            $this->form_validation->set_rules('gender', 'Gender', 'trim|required');
            $this->form_validation->set_rules('category', 'Category', 'trim|required');
            $this->form_validation->set_rules('campus_code', 'Campus', 'trim|required');
            $this->form_validation->set_rules('card_no', 'Card No.', 'trim|required|callback_validate_card_no');
            $this->form_validation->set_rules('record_stat', 'Subscriber Stat', 'trim|required');
            $this->form_validation->set_rules('sub_registration_date', 'Date Registered', 'trim|required');
            $this->form_validation->set_rules('email', 'Email', 'trim|valid_email');
            $topup_amount = $this->input->post('amount');
            if (!empty($topup_amount)) {
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
                /*
                  $this->form_validation->set_rules('course', 'Course', 'required');
                  $this->form_validation->set_rules('curr_course_year', 'Current year of Study', 'required');
                  $this->form_validation->set_rules('total_course_years', 'Total Course Years', 'required');
                 */
            }

            if ($this->form_validation->run() == TRUE) {
                //create card number
                $card = $this->input->post('card_no');
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
                $sub_account = date('ymdHi');
                //$to_encrypt = $this->input->post('mobile').date('ymdHi');
                //$sub_account = strtoupper(md5(uniqid($to_encrypt, true)));
                //echo $sub_account; exit();
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
                    'sub_registration_date' => date('Y-m-d', strtotime($this->input->post('sub_registration_date')))
                );

                $this->db->trans_start();
                $insert_id = $this->Subscriber_model->insert_new_subscriber($data);
                $enc_id = array('enc_id' => MD5(MD5($insert_id)));
                $this->Subscriber_model->update_subscriber($enc_id, $insert_id);
                $update_data = array('occupied' => 'Y');
                $this->Subscriber_model->update_card($update_data, $card_no);
                //Topup
                if (!empty($topup_amount)) {
                    $topup_amount = str_replace(',', '', $this->input->post('amount'));
                    $trn_ref_no = 'REG' . $this->session->userdata('user_id') . time() . random_int(10, 99); // Trn reference number
                    $data = array(
                        'card_no' => $card_no,
                        'sub_id' => $insert_id,
                        'amount' => $topup_amount,
                        'trn_date' => date('Y-m-d', strtotime($this->input->post('sub_registration_date'))),
                        'trn_ref_no' => $trn_ref_no,
                        'pos' => $this->input->post('topup_pos'),
                        'trn_status' => 'SUCCESS',
                        'category' => $this->input->post('topup_category'),
                        'maker_id' => $this->session->userdata('username')
                    );
                    $topup_id = $this->Card_model->insert_pos_topup($data);
                    if ($this->input->post('topup_category') == 'RECHARGE') {
                        #post TRA vfd receipt start
                        $this->_tra_vfd_receipt($card_no, $insert_id, date('Y-m-d H:i:s'), '255000000000', $topup_amount, $topup_id);
                        #post TRA vfd receipt end
                    }
                }
                $this->db->trans_complete();
                $this->session->set_flashdata('success', 'New subscriber added');
                redirect('subscribers/newSubscriber');
            }
        }
        // $this->data['cards'] = $this->Subscriber_model->get_active_free_cards();
        $this->data['campus'] = $this->Subscriber_model->get_all_open_campus();
        $this->data['sub_cat'] = $this->Subscriber_model->get_all_sub_categories();
        $this->data['pos'] = $this->Card_model->get_all_active_pos();
        $this->data['streets'] = $this->Subscriber_model->get_all_streets();
        $this->data['topup_cat'] = $this->Card_model->get_all_topup_categories();
        $this->data['courses'] = $this->Subscriber_model->get_student_courses();
        $this->load->view('_layout_main', $this->data);
    }

    function validate_card_no($card)
    {
        $card = trim($card);
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
        $is_card_valid = $this->db->get_where('cards', array('card_no' => $card_no));
        $is_card_occupied = $this->db->get_where('subscribers', array('card_no' => $card_no))->num_rows();
        $card_stat = $is_card_valid->row();
        if ($is_card_valid->num_rows() != 1) {
            $this->form_validation->set_message('validate_card_no', "Card number is not valid");
            return FALSE;
        } elseif ($is_card_occupied == 1) {
            $this->form_validation->set_message('validate_card_no', "Card already occupied");
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

    function viewSubscriber($sub_id = FALSE)
    {
        if (empty($this->session->userdata('sub_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $sub_id = $this->encryption->decrypt(str_replace(array('-', '_', '~'), array('+', '/', '='), $sub_id));
        $this->data['title'] = 'Subscribers';
        $this->data['subtitle'] = 'View Subscriber';
        $this->data["subview"] = 'subscribers/view_subscriber';
        $this->data['pageurl'] = 'a18769583d9f14d672803c80bcabf9a7';

        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            $formSubmit = $this->input->post('submitForm');
            if ($formSubmit == 'save') {
                $this->form_validation->set_rules('sub_name', 'Full Name', 'required');
                $this->form_validation->set_rules('mobile', 'Mobile', 'required');
                $this->form_validation->set_rules('gender', 'Gender', 'required');
                $this->form_validation->set_rules('recharge_limit', 'Recharge Limit', 'required|numeric|less_than_equal_to[500000]');
                $this->form_validation->set_rules('category', 'Category', 'required');
                $this->form_validation->set_rules('campus_code', 'Campus', 'required');
                $this->form_validation->set_rules('record_stat', 'Subscriber Stat', 'required');
                $this->form_validation->set_rules('sub_registration_date', 'Date Registered', 'required');
                $this->form_validation->set_rules('email', 'Email', 'valid_email');
                $this->form_validation->set_rules('id_type', 'ID Type', 'trim|callback_validate_id_type');
                $household_size = '';
                $street = '';
                $sub_cat = $this->input->post('category');
                if ($sub_cat === 'HOUSEHOLD') {
                    $this->form_validation->set_rules('household_size', 'Household Size', 'required');
                    $household_size = $this->input->post('household_size');
                    $this->form_validation->set_rules('street', 'Street', 'required');
                    $street = $this->input->post('street');
                } elseif ($sub_cat === 'RESIDENT') {
                    $this->form_validation->set_rules('street', 'Street', 'required');
                    $street = $this->input->post('street');
                } elseif ($sub_cat === 'STUDENT') {
                    /*
                      $this->form_validation->set_rules('course', 'Course', 'required');
                      $this->form_validation->set_rules('curr_course_year', 'Current year of Study', 'required');
                      $this->form_validation->set_rules('total_course_years', 'Total Course Years', 'required');
                     */
                }
                if ($this->form_validation->run() == TRUE) {
                    $old_card = $this->input->post('old_card');
                    $new_card = $this->input->post('card_no');
                    $data = array(
                        'mobile' => $this->input->post('mobile'),
                        'sub_name' => $this->input->post('sub_name'),
                        'gender' => $this->input->post('gender'),
                        'recharge_limit' => $this->input->post('recharge_limit'),
                        'email' => strtolower($this->input->post('email')),
                        'id_type' => $this->input->post('id_type'),
                        'id_number' => preg_replace('/[^a-zA-Z0-9]+/', '', $this->input->post('id_number')),
                        'category' => $this->input->post('category'),
                        'household_size' => $household_size,
                        'street' => $street,
                        'record_stat' => $this->input->post('record_stat'),
                        'campus_code' => $this->input->post('campus_code'),
                        'course' => $this->input->post('course'),
                        'curr_course_year' => $this->input->post('curr_course_year'),
                        'total_course_years' => $this->input->post('total_course_years'),
                        'sub_registration_date' => date('Y-m-d', strtotime($this->input->post('sub_registration_date')))
                    );
                    $this->db->trans_start();
                    $this->Subscriber_model->update_subscriber($data, $sub_id);
                    if ($new_card != $old_card) {
                        $old_card_data = array('occupied' => 'N');
                        $this->Subscriber_model->update_card($old_card_data, $old_card);

                        $new_card_data = array('occupied' => 'Y');
                        $this->Subscriber_model->update_card($new_card_data, $new_card);
                    }
                    $this->db->trans_complete();
                    $this->session->set_flashdata('success', 'Record updated');
                    redirect('subscribers/viewSubscriber/' . $this->input->post('ency_sub_id'));
                }
            }
        }
        $sub_data = $this->Subscriber_model->get_sub_data_by_id($sub_id);
        $card_no = $sub_data->card_no;
        $this->data['sub_data'] = $sub_data;
        //$this->data['cards'] = $this->Subscriber_model->get_active_free_cards();
        $this->data['campus'] = $this->Subscriber_model->get_all_open_campus();
        $this->data['sub_cat'] = $this->Subscriber_model->get_all_sub_categories();
        $this->data['streets'] = $this->Subscriber_model->get_all_streets();
        $this->data['topup'] = $this->Subscriber_model->get_all_sub_topup($card_no, $sub_id);
        $this->data['topup_cat'] = $this->Card_model->get_all_topup_categories();
        $this->data['pos'] = $this->Card_model->get_all_active_pos();
        $this->data['inactive_stat'] = $this->Subscriber_model->get_all_sub_inactive_stat();
        $this->data['sub_id'] = $sub_id;
        $this->data['courses'] = $this->Subscriber_model->get_student_courses();
        $this->data['ten_sms'] = $this->Subscriber_model->get_subscriber_sms($sub_data->mobile);
        $this->data['cards_renewal_reason'] = $this->db->get('sub_card_renewal_reasons')->result();
        $this->data['id_types'] = $this->db->get('id_types')->result();
        $this->data['payments'] = $this->Subscriber_model->get_sub_payments($sub_id);
        $this->data['validations'] = $this->Subscriber_model->get_sub_validations($sub_id);
        $this->data['cashiers'] = $this->Subscriber_model->get_all_cashiers();
        $this->load->view('_layout_main', $this->data);
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

    function deleteSubscriber()
    {
        if (empty($this->session->userdata('sub_delete'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $sub_id = $this->input->post('sid');
            $ency_sub_id = $this->input->post('ency_sub_id');
            //echo $sub_id; exit();
            $sub_details = $this->Subscriber_model->get_sub_data_by_id($sub_id);
            $this->db->trans_start();
            $this->Subscriber_model->delete_sub_topup_hist($sub_id, $sub_details->card_no);
            $this->Subscriber_model->delete_subscriber_details($sub_id);
            $data = array('occupied' => 'N');
            $this->Subscriber_model->update_card($data, $sub_details->card_no);
            $this->db->trans_complete();
        }
        $this->session->set_flashdata('success', 'Record deleted');
        redirect('subscribers/listSubscribers');
    }

    function deactivateSub()
    {
        if (empty($this->session->userdata('sub_edit'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $sub_id = $this->input->post('sid');
            $ency_sub_id = $this->input->post('ency_sub_id');
            $record_stat = $this->input->post('status');
            $this->load->library('form_validation');
            $this->form_validation->set_rules('status', 'Status', 'required');
            if ($this->form_validation->run() == FALSE) {
                //$this->session->set_flashdata('error','Validation error');
                redirect('subscribers/viewSubscriber/' . $ency_sub_id);
            }
            //echo $sub_id; exit();
            $sub_details = $this->Subscriber_model->get_sub_data_by_id($sub_id);
            if ($record_stat === 'CLOSED') {
                $comments = $this->input->post('comments_close');
            } elseif ($record_stat === 'SUSPENDED') {
                $comments = $this->input->post('comments_susp');
            }
            $data = array('record_stat' => $this->input->post('status'), 'comments' => $comments);
            $this->db->trans_start();
            $this->Subscriber_model->update_subscriber($data, $sub_id);
            $this->db->trans_complete();
        }
        $this->session->set_flashdata('success', 'Record updated');
        redirect('subscribers/viewSubscriber/' . $ency_sub_id);
    }

    function subscriptionFee()
    {
        if (empty($this->session->userdata('sub_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Subscribers';
        $this->data['subtitle'] = 'Subscription Fee';
        $this->data["subview"] = 'subscribers/subscription_fee';
        $this->data['pageurl'] = '6c2b3b70f6a4b5c780f7a0792d36f727'; //subscribers/subscriptionFee
        $from_date = date('Y-m-d', strtotime(date('Y-m-d', strtotime(date('Y-m-d'))) . '-7 days'));
        $past_90_days = date('Y-m-d', strtotime(date('Y-m-d', strtotime(date('Y-m-d'))) . '-90 days'));
        $today = date('Y-m-d');
        $yesterday = date('Y-m-d', strtotime('-1 days'));
        $first_date = date('Y-m-') . '01';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_subscribers');
        $crud->where('eco_subscribers.date_registered >=', $past_90_days);
        //$crud->set_primary_key('campus_code','eco_campus');
        //$crud->set_relation('campus_code','eco_campus','campus_name');
        $crud->order_by('eco_subscribers.date_registered', 'DESC');
        $crud->columns('card_no', 'sub_name', 'campus_code', 'subscription_plan', 'sub_fee_amount', 'free_promo_code', 'date_registered');
        $crud->edit_fields('card_no', 'sub_name', 'subscription_plan');
        $crud->required_fields('subscription_plan');
        $crud->callback_after_update(array($this, '_callback_update_sub_fee'));
        $state = $crud->getState();
        if ($state == 'edit') {
            $crud->field_type('card_no', 'readonly');
            $crud->field_type('sub_name', 'readonly');
        }
        $crud->display_as('subscription_plan', 'Plan')
            ->display_as('sub_fee_amount', 'Amount')
            ->display_as('free_promo_code', 'Promo Code');
        $crud->callback_column('status', array($this, '_callback_status'));
        $crud->unique_fields(array('pos_name'));
        $crud->callback_column('sub_fee_amount', array($this, '_callback_format_amount'))
            ->callback_column('date_registered', array($this, '_callback_format_date'));
        $crud->unset_clone();
        //$crud->unset_read();
        $crud->unset_delete();
        if ($this->session->userdata('usertypeid') != 1) {
            $crud->unset_edit();
        }
        $crud->unset_add();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->set_crud_url_path(site_url('subscribers/subscriptionFee'));
        $this->data['content'] = $crud->render();
        $this->data['fees_seven_days'] = $this->Subscriber_model->get_subscription_fee_by_date($from_date, $today);
        $this->data['fees_today'] = $this->Subscriber_model->get_subscription_fee_today($today);
        $this->data['sub_fee_today'] = $this->Dashboard_model->get_total_subscription_fees($today, $today);
        $this->data['sub_fee_mtd'] = $this->Dashboard_model->get_total_subscription_fees($first_date, $today);
        $this->data['sub_fee_ytd'] = $this->Dashboard_model->get_total_subscription_fees(date('Y') . '-01-01', $today);
        $this->Subscriber_model->create_sub_fee_view(date('Y') . '-01-01', $today);
        $this->data['paid_today'] = $this->Subscriber_model->get_sub_fee_analysis($today, $today, 'Fee');
        $this->data['paid_mtd'] = $this->Subscriber_model->get_sub_fee_analysis($first_date, $today, 'Fee');
        $this->data['paid_ytd'] = $this->Subscriber_model->get_sub_fee_analysis(date('Y') . '-01-01', $today, 'Fee');
        $this->data['free_today'] = $this->Subscriber_model->get_sub_fee_analysis($today, $today, 'Free');
        $this->data['free_mtd'] = $this->Subscriber_model->get_sub_fee_analysis($first_date, $today, 'Free');
        $this->data['free_ytd'] = $this->Subscriber_model->get_sub_fee_analysis(date('Y') . '-01-01', $today, 'Free');
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_update_sub_fee($post_array, $primary_key)
    {
        $sub = $this->db->get_where('subscribers', array('id' => $primary_key))->row();
        $plan = $sub->subscription_plan;
        $amount = 0;
        if ($plan == 'Free') {
            $data = array('sub_fee_amount' => $amount, 'free_promo_code' => date('Ymd'));
        } elseif ($plan == 'Fee') {
            $fee_amount = $this->db->query("select *
                from eco_campus_subscription_fee a,
                     eco_campus b
                where a.campus_id = b.id
                  and a.status = 'Active'
                  and b.campus_code = '$sub->campus_code'");
            if ($fee_amount->num_rows() > 0) {
                $fee_amount = $fee_amount->row();
                $amount = $fee_amount->fee_amount;
            }
            $data = array('sub_fee_amount' => $amount, 'free_promo_code' => '');
        }
        $this->db->where('id', $primary_key);
        $this->db->update('subscribers', $data);
    }

    function cardRenewals()
    {
        if (empty($this->session->userdata('sub_view')) || empty($this->session->userdata('sub_edit'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Subscribers';
        $this->data['subtitle'] = 'Card Renewals';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'subscribers/cardRenewals';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_sub_card_renewal');
        $crud->order_by('date_registered', 'DESC');
        $crud->set_relation('sub_id', 'eco_subscribers', 'sub_name');
        $crud->set_relation('reason', 'eco_sub_card_renewal_reasons', 'reason');
        $crud->columns('sub_id', 'old_card', 'new_card', 'plan', 'fee', 'reason', 'description', 'maker_id', 'date_registered');
        $crud->display_as('sub_id', 'Subscriber')
            ->display_as('date_registered', 'Renewal Date')
            ->display_as('maker_id', 'Maker');
        $crud->callback_column('date_registered', array($this, '_callback_format_datetime'));
        $crud->callback_column('fee', array($this, '_callback_format_amount'));
        $crud->unset_clone();
        $crud->unset_delete();
        $crud->unset_edit();
        $crud->unset_add();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function ajaxCardRenewal()
    {
        $this->form_validation->set_rules('renewal_old_card', '<strong>Old Card</strong>', 'trim|required');
        $this->form_validation->set_rules('renewal_new_card', '<strong>New Card</strong>', 'trim|required|callback_validate_renewal_card');
        $this->form_validation->set_rules('renewal_plan', '<strong>Card Renewal Plan</strong>', 'trim|required');
        if ($this->input->post('renewal_plan') == 'paid') {
            $this->form_validation->set_rules('renewal_fee', '<strong>Fee Amount</strong>', 'trim|required|greater_than_equal_to[4000]');
        }
        $this->form_validation->set_rules('renewal_reason', '<strong>Reason</strong>', 'trim|required');
        $this->form_validation->set_rules('renewal_desc', '<strong>Description</strong>', 'trim|required');
        $this->form_validation->set_rules('renewal_cashier', '<strong>Cashier</strong>', 'trim|required|callback_validate_card_float');
        if ($this->form_validation->run() === TRUE) {
            $sub_id = $this->input->post('renewal_sub_id');
            $old_card = $this->input->post('renewal_old_card');
            $card = $this->input->post('renewal_new_card');
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
            } else {
                $card_no = 'IC-' . $card;
            }
            $plan = $this->input->post('renewal_plan');
            $fee = $this->input->post('renewal_fee');
            $reason = $this->input->post('renewal_reason');
            $desc = $this->input->post('renewal_desc');
            $cashier = $this->input->post('renewal_cashier');
            $cashier_data = $this->db->query("select *
                from eco_cashiers
                where user_id in (select id from eco_users where username = '$cashier')");
            //update new card as occupied
            $data = array('occupied' => 'Y');
            $this->Subscriber_model->update_card($data, $card_no);
            //update old card as inactive and occupied = N
            $data = array('card_stat' => 'Inactive', 'occupied' => 'N');
            $this->Subscriber_model->update_card($data, $old_card);
            //insert record into sub card change log
            $sub_data = array('sub_id' => $sub_id, 'old_card' => $old_card, 'new_card' => $card_no, 'plan' => $plan, 'fee' => $fee, 'reason' => $reason, 'description' => $desc, 'maker_id' => $this->session->userdata('username'), 'cashier' => $cashier);
            $this->db->insert('eco_sub_card_renewal', $sub_data);
            //update subscriber
            $data = array('card_no' => $card_no);
            $this->Subscriber_model->update_subscriber($data, $sub_id);
            $message = '<div class="alert alert-success fade show" role="alert"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Card succesfully changed</div>';
            $data = array('action' => 'okay', 'message' => $message);
            //update cashier card float
            if ($cashier_data->num_rows() == '1') {
                $cashier_data = $cashier_data->row();
                $card_balance = $cashier_data->card_balance - 1;
                $card_renewal_sold = $cashier_data->card_renewal_sold + 1;
                $card_data = array('card_balance' => $card_balance, 'card_renewal_sold' => $card_renewal_sold);
                $this->db->where('id', $cashier_data->id);
                $this->db->update('cashiers', $card_data);
            }
            echo json_encode($data);
        } else {
            $v_errors = validation_errors();
            $message = '<div class="alert alert-danger fade show alert-dismissable" role="alert"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>' . $v_errors . '</div>';
            $data = array('action' => 'error', 'message' => $message);
            echo json_encode($data);
        }
    }

    function validate_renewal_card($card)
    {
        if (empty($card)) {
            $this->form_validation->set_message('validate_renewal_card', 'The {field} field is required.');
            return FALSE;
        }
        if (substr($card, 0, 6) === '135000' && strlen(trim($card)) == 13) {
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
        } else {
            $card_no = 'IC-' . $card;
        }
        //check if card assign to subscriber
        $sub = $this->db->get_where('subscribers', array('card_no' => $card_no));
        $card_list = $this->db->get_where('cards', array('card_no' => $card_no));
        if ($sub->num_rows() >= 1) {
            $sub = $sub->row();
            $this->form_validation->set_message('validate_renewal_card', 'The {field} already occupied by <strong>' . $sub->sub_name . '</strong>.');
            return FALSE;
        } elseif ($card_list->num_rows() === 0) {
            $this->form_validation->set_message('validate_renewal_card', 'Card number <strong>' . $card_no . '</strong> does not exist on system.');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function validate_card_float($cashier)
    {
        $cashier_data = $this->db->query("select *
                from eco_cashiers
                where user_id in (select id from eco_users where username = '$cashier')")->row();
        if (empty($cashier)) {
            return TRUE;
        } elseif ($cashier_data->card_balance <= 0) {
            $this->form_validation->set_message('validate_card_float', 'Cashier ' . $cashier . ' card float is zero');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function validate_renewal_fee($str)
    {

    }

    function smsSubscriber($sub_id = FALSE)
    {
        $this->data['title'] = 'Subscribers';
        $this->data['subtitle'] = 'View Subscriber';
        $this->data["subview"] = 'subscribers/view_subscriber';
        $this->data['pageurl'] = 'subscribers/listSubscribers';

        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('sub_name', 'Full Name', 'required');
            $this->form_validation->set_rules('mobile', 'Mobile', 'required');
            $this->form_validation->set_rules('gender', 'Gender', 'required');
            $this->form_validation->set_rules('card_no', 'Card No.', 'required');
            $this->form_validation->set_rules('record_stat', 'Subscriber Stat', 'required');
            if ($this->form_validation->run() == TRUE) {
                $old_card = $this->input->post('old_card');
                $new_card = $this->input->post('card_no');
                $data = array(
                    'mobile' => $this->input->post('mobile'),
                    'sub_name' => $this->input->post('sub_name'),
                    'gender' => $this->input->post('gender'),
                    'card_no' => $this->input->post('card_no'),
                    'record_stat' => $this->input->post('record_stat'),
                    'campus_code' => $this->input->post('campus_code')
                );
                $this->db->trans_start();
                $this->Subscriber_model->update_subscriber($data, $sub_id);
                if ($new_card != $old_card) {
                    $old_card_data = array('occupied' => 'N');
                    $this->Subscriber_model->update_card($old_card_data, $old_card);

                    $new_card_data = array('occupied' => 'Y');
                    $this->Subscriber_model->update_card($new_card_data, $new_card);
                }
                $this->db->trans_complete();
                $this->session->set_flashdata('success', 'Record updated');
                redirect('subscribers/listSubscribers');
            }
        }
        $this->data['sub_data'] = $this->Subscriber_model->get_sub_data_by_id($sub_id);
        $this->data['cards'] = $this->Subscriber_model->get_active_free_cards();
        $this->data['campus'] = $this->Subscriber_model->get_all_open_campus();
        $this->data['sub_id'] = $sub_id;
        $this->load->view('_layout_main', $this->data);
    }

    function smsSingleSubscriber()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('mobile', 'Mobile.', 'required');
        $this->form_validation->set_rules('message', 'Message', 'required');
        if ($this->form_validation->run() == FALSE) {
            $derror = 'error';
            echo json_encode($derror);
        } else {
            $mobile = $this->input->post('mobile');
            $message = $this->input->post('message');
            $outgoing = array('receiver' => $mobile, 'message' => $message, 'maker_id' => $this->session->userdata('username'));
            $this->Sms_model->insertOutgoingSMS($outgoing);
            $this->Sms_model->sendsms($message, $mobile);
            $data = 'okay';
            echo json_encode($data);
        }
    }

    function emailSingleSubscriber()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('subject', 'Subject.', 'required');
        $this->form_validation->set_rules('message', 'Message', 'required');
        if ($this->form_validation->run() == FALSE) {
            $derror = 'error';
            echo json_encode($derror);
        } else {
            $email = $this->input->post('email');
            $subject = $this->input->post('subject');
            $message = $this->input->post('message');
            $this->load->library('email');
            $this->email->from('ecowater@smartfittanzania.co.tz', 'eCloud');
            $this->email->set_mailtype("html");
            $this->email->to($email);
            $this->email->subject($subject);
            $this->email->message($message);
            $this->email->send();
            $data = 'okay';
            echo json_encode($data);
        }
    }

    function _tra_vfd_receipt($card_no = '', $sub_id = '', $receipt_date = '', $customer_phone = '', $amount = '', $topup_id = '')
    {
        $amount = (int)$amount;
        //product code = DRINK_WATER
        $vat_enabled = $this->db->get_where('udf_products', array('product_code' => 'DRINK_WATER'))->row()->vat_enabled;
        if ($vat_enabled == 'Y' && $amount > 0 && $card_no == '1350004447744') {
            $sub = $this->db->get_where('sub_card_vw', array('sub_id' => $sub_id))->row();
            //$amount = $amount + 0;
            $curl = curl_init();
            curl_setopt_array($curl, [
                CURLOPT_URL => "https://test.myvfd.app/api/v1/receipt/post",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "POST",
                CURLOPT_POSTFIELDS => "{
                            \n  \"receipt_date\": \"$receipt_date\",
                            \n  \"customer_id\": \"$sub->id_number\",
                            \n  \"customer_idtype\": \"$sub->id_type\",
                            \n  \"customer_phone\": \"$sub->sub_mobile\",
                            \n  \"customer_email\": \"$sub->sub_email\",
                            \n  \"customer_address\": \"$sub->campus_code\",
                            \n  \"customer_name\": \"$sub->sub_name\",
                            \n  \"items\": [
                                            \n  {\n
                                                    \"itemcode\": \"1\",\n
                                                    \"itemdesc\": \"Drinking Water\",\n
                                                    \"quantity\": 1,\n
                                                    \"amount\": $amount,\n
                                                    \"discount\": 0,\n
                                                    \"taxcode\": \"1\"\n
                                                }
                                            \n
                                            ],
                            \n  \"payments\": {
                                                \n  \"paytype\": \"cash\",
                                                \n  \"payamount\": $amount\n
                                            }
                            \n
                            }",
                CURLOPT_HTTPHEADER => [
                    "Accept: application/json",
                    "Authorization: Bearer 02206ad0401a2a8eb86f4e26818099d8de1de675",
                    "Content-Type: application/json",
                    "X-Tin: 152899165"
                ],
            ]);
            $response = curl_exec($curl);
            $err = curl_error($curl);
            curl_close($curl);
            if ($err) {
                echo "cURL Error #:" . $err;
            } else {
                $obj = json_decode($response);
                $receipt_no = $obj->receipt_no;
                $qrcode_url = $obj->qrcode_url;
                $data = array('tra_receipt_no' => $receipt_no, 'tra_qrcode_url' => $qrcode_url);
                $this->db->where(array('id' => $topup_id));
                $this->db->update('card_topup', $data);
            }
        }
    }

    function accountStatDownload()
    {
        //echo 'here'; exit();
        $this->load->library('form_validation');
        $this->form_validation->set_rules('from_date', 'From', 'required');
        $this->form_validation->set_rules('to_date', 'To', 'required');
        $sub_id = $this->input->post('sub_id');
        if ($this->form_validation->run() == FALSE) {
            $this->session->set_flashdata('error', validation_errors());
            redirect($_SERVER['HTTP_REFERER']);
        }
        $sub_details = $this->Subscriber_model->get_sub_data_by_id($sub_id);
        $from_date = date('Y-m-d', strtotime($this->input->post('from_date')));
        $to_date = date('Y-m-d', strtotime($this->input->post('to_date')));
        $curr_topup = $this->Card_model->get_curr_topup_data($sub_id, $from_date, $to_date);
        $old_topup = $this->Card_model->get_old_topup_data($sub_id, $from_date, $to_date);
        $date1 = date_create($from_date);
        $date2 = date_create($to_date);
        $diff = date_diff($date1, $date2);
        $days = $diff->days + 1;
        $statement_data = array(
            'sub_id' => $sub_id,
            'user_id' => $this->session->userdata('username'),
            'year' => date('Y'),
            'start_date' => $from_date,
            'end_date' => $to_date
        );
        $campus_sale_price = $this->Subscriber_model->get_campus_water_sale_price($sub_details->campus_code);
        if ($campus_sale_price) {
            $campus_sale_price = $campus_sale_price->price_per_liter;
        } else {
            $campus_sale_price = 200;
        }
        $system_par = $this->Settings_model->get_system_parameters();
        $statement_id = $this->Subscriber_model->insert_acc_statement_record($statement_data);
        //$statement_id = 1;
        if ($statement_id >= 1 && $statement_id <= 9) {
            $statement_id = 'AS00000000' . $statement_id;
        } elseif ($statement_id >= 10 && $statement_id <= 99) {
            $statement_id = 'AS0000000' . $statement_id;
        } elseif ($statement_id >= 100 && $statement_id <= 999) {
            $statement_id = 'AS000000' . $statement_id;
        } elseif ($statement_id >= 1000 && $statement_id <= 9999) {
            $statement_id = 'AS00000' . $statement_id;
        } elseif ($statement_id >= 10000 && $statement_id <= 99999) {
            $statement_id = 'AS0000' . $statement_id;
        } elseif ($statement_id >= 100000 && $statement_id <= 999999) {
            $statement_id = 'AS000' . $statement_id;
        } elseif ($statement_id >= 1000000 && $statement_id <= 9999999) {
            $statement_id = 'AS00' . $statement_id;
        } elseif ($statement_id >= 10000000 && $statement_id <= 99999999) {
            $statement_id = 'AS0' . $statement_id;
        } else {
            $statement_id = 'AS' . $statement_id;
        }
        $this->load->library('Pdf');
        $pdf = new Pdf('P', 'mm', 'A4', true, 'UTF-8', false);
        $pdf->SetTitle('Account_Statement');
        $pdf->SetHeaderMargin(30);
        $pdf->setPrintHeader(false);
        $pdf->SetTopMargin(5);
        $pdf->setFooterMargin(15);
        $pdf->SetAutoPageBreak(true, 12);
        $pdf->SetAuthor('Author');
        $pdf->SetDisplayMode('real', 'default');

        $html = '
<table style="width: 100%; font-size: 8px; line-height: 1.5;">
    <tr>
        <td style="text-align: center;  padding: 1px; font-size: 12px"><strong>' . strtoupper($system_par->company_name) . '</strong></td>
    </tr>
    <tr>
        <td style="text-align: center; padding: 1px;">' . $system_par->physical_address . ', ' . $system_par->address_line_1 . '. <b>Mob:</b> ' . $system_par->telephone_no . '</td>
    </tr>
    <tr>
        <td style="text-align: center; padding: 1px;"><strong>Email</strong> : ' . $system_par->email . ' | <strong>Website</strong> : ' . $system_par->website . '</td>
    </tr>
    <tr><td></td></tr>
</table>
<hr style="display: block;
  margin-top: 0.1em;
  margin-bottom: 0.5em;
  margin-left: 50px;
  margin-right: 50px;
  border-style: inset;
  border-width: 0.8px;
  color:#0000;
  background-color:#0000;" />
<p style="text-align: center; font-size: 10px; font-weight: bold; padding: 10px;">CUSTOMER ACCOUNT STATEMENT</p>
<table style="width:100%; font-size: 9px; line-height: 1.7;">
	<tr>
        <td style="width: 15%; text-align: right">Customer name :</td>
        <td style="width: 5px"></td>
        <td style="width: 30%; padding: 3px">' . $sub_details->sub_name . '</td>
        <td style="width: 25%"></td>
        <td style="width: 30%; text-align: right">Statement ID : ' . $statement_id . '</td>
    </tr>
    <tr>
        <td style="width: 15%; text-align: right">Active Card No. :</td>
        <td style="width: 5px"></td>
        <td style="width: 15%; padding: 3px">' . $sub_details->card_no . '</td>
        <td style="width: 40%"></td>
        <td style="width: 30%; text-align: right">Run Date : ' . date('D d-M-Y') . '</td>
    </tr>
    <tr>
        <td style="width: 15%; text-align: right">Mobile Number :</td>
        <td style="width: 5px"></td>
        <td style="width: 15%; padding: 3px">' . $sub_details->mobile . '</td>
        <td style="width: 40%"></td>
        <td style="width: 30%; text-align: right">Run Time : ' . date('h:i A') . '</td>
    </tr>
	<tr>
        <td style="width: 15%; text-align: right">Start date :</td>
        <td style="width: 5px"></td>
        <td style="width: 15%; padding: 3px">' . date('D d-M-Y', strtotime($from_date)) . '</td>
        <td style="width: 40%"></td>
        <td style="width: 30%; text-align: right">Performance : ';
        if ($sub_details->sub_stat_dormancy == 'E') {
            $html .= 'Excelent';
        } elseif ($sub_details->sub_stat_dormancy == 'G') {
            $html .= 'Good';
        } elseif ($sub_details->sub_stat_dormancy == 'N') {
            $html .= 'Normal';
        } else {
            $html .= 'Dormant';
        }
        $html .= '</td>
    </tr>
    <tr>
        <td style="width: 15%; text-align: right">End date :</td>
        <td style="width: 5px"></td>
        <td style="width: 15%; padding: 3px">' . date('D d-M-Y', strtotime($to_date)) . '</td>
        <td style="width: 40%"></td>
        <td style="width: 30%; text-align: right"></td>
    </tr>
</table>';
        $total_topup = 0;
        $total_recharge = 0;
        $total_offer = 0;
        foreach ($curr_topup as $c) {
            $total_topup = $total_topup + $c->amount;
            if ($c->category == 'RECHARGE') {
                $total_recharge = $total_recharge + $c->amount;
            } elseif ($c->category == 'SPECIAL_OFFER') {
                $total_offer = $total_offer + $c->amount;
            }
        }
        foreach ($old_topup as $x) {
            $total_topup = $total_topup + $x->amount;
            if ($x->category == 'RECHARGE') {
                $total_recharge = $total_recharge + $x->amount;
            } elseif ($x->category == 'SPECIAL_OFFER') {
                $total_offer = $total_offer + $x->amount;
            }
        }
        $html .= '<p style="text-align: center; font-size: 10px; font-weight: bold; padding: 10px;">STATEMENT SUMMARY</p>
<table style="width:100%">
	<tr>
		<td style="width: 47.5%">
			<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
				<tr>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Total Volume Purchased</td>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">' . round($total_topup / $campus_sale_price, 1) . ' Litres</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Total Recharge</td>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">TZS ' . number_format($total_recharge, 2) . '</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Total Special Offers</td>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">TZS ' . number_format($total_offer, 2) . '</td>
                </tr>
			</table>
		</td>
		<td style="width: 5%"></td>
		<td style="width: 47.5%">
			<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
                <tr>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Single use Plastic Bottles Avoided</td>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">' . round($total_topup / 200) . ' Bottles</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Money saved</td>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">TZS ' . number_format(($total_topup / 200) * 800, 2) . '</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Average consumption</td>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">' . round($total_topup / ($campus_sale_price * $days), 1) . ' L/Day</td>
                </tr>
            </table>
		</td>
	</tr>
</table>
<p style="text-align: center; font-size: 10px; font-weight: bold; padding: 10px;">TOP-UP HISTORY</p>
<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
	<tr>
        <th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Trn Ref No.</th>
        <th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Card No.</th>
        <th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Amount</th>
        <th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Date</th>
        <th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Channel</th>
        <th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Category</th>
    </tr>';
        foreach ($curr_topup as $curr) {
            $html .= '<tr>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . $curr->trn_ref_no . '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . $curr->card_no . '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; text-align: right;">' . number_format($curr->amount, 2) . '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . date('D d-M-Y', strtotime($curr->trn_date)) . '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . $curr->pos . '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . $curr->category . '</td>
        </tr>';
        }
        foreach ($old_topup as $old) {
            $html .= '<tr>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . $old->trn_ref_no . '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;"><' . $old->card_no . '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; text-align: right;">' . number_format($old->amount, 2) . '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . date('D d-M-Y', strtotime($old->trn_date)) . '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . $old->pos . '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . $old->category . '</td>
            </tr>';
        }
        $html .= '</table>';

        $pdf->AddPage();
        $pdf->SetFont('helvetica', '', 20);
        $pdf->writeHTML($html, true, 0, true, 0);
        $pdf->Output('Statement-' . date('YmdHis') . '.pdf', 'D');
    }

    function exportExcel()
    {
        $data['subscribers'] = $this->Subscriber_model->get_all_subscribers_topup_details();
        $this->load->view('subscribers/export_all', $data);
    }

#====================== manual update subscriber

    function _callback_format_date($value, $row)
    {
        $date = date("d-M-y", strtotime($value));
        return $date;
    }

    function _callback_format_date_2($value, $row)
    {
        $date = date("D d-M-Y", strtotime($value));
        return $date;
    }

    function _callback_format_datetime($value, $row)
    {
        $date = date("d-M-Y H:i", strtotime($value));
        return $date;
    }

    function _callback_format_datetime_2($value, $row)
    {
        $date = date("D d-M-Y H:i", strtotime($value));
        return $date;
    }

    function _callback_format_amount($value, $row)
    {
        return '<span class="pull-right">' . number_format($value, 2) . '</span>';
    }

    function manualUpdateSub()
    {
        echo 'Not authorized to do this';
        exit();
        $this->db->select('card_no, MIN(trn_date) as min_trn_date');
        $this->db->group_by('card_no');
        $top = $this->db->get('card_topup')->result();
        foreach ($top as $t) {
            $data = array('sub_registration_date' => $t->min_trn_date);
            $this->db->where('card_no', $t->card_no);
            $this->db->update('subscribers', $data);
        }
        echo 'done';
        exit();
    }

    function testEmail()
    {
        $config = array(
            //'protocol' => 'mail', // 'mail', 'sendmail', or 'smtp'
            //'smtp_host' => 'smtp.smartfittanzania.co.tz',
            // 'smtp_port' => 465,
            // 'smtp_user' => 'ecowater@smartfittanzania.co.tz',
            // 'smtp_pass' => 'ecowater123!',
            // 'smtp_crypto' => 'https', //can be 'ssl' or 'tls' for example
            'mailtype' => 'html', //plaintext 'text' mails or 'html'
            //  'smtp_timeout' => '4', //in seconds
            'charset' => 'utf-8',
            'priority' => '1'
            //'wordwrap' => TRUE
        );
        $this->load->library('email', $config);
        $this->email->set_newline("\r\n");
        $data = array('userName' => 'Pheonix solutions');
        $message = $this->load->view('subscribers/email_sample', $data, true);
        $this->email->from('ecowater@smartfittanzania.co.tz', 'eCloud');
        $this->email->to('rusekeinno@gmail.com');
        $this->email->subject('TEST EMAIL');
        $this->email->message($message);
        $this->email->send();
        echo 'Sent';
        exit();
    }

#============================================
}
