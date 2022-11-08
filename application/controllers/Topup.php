<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require_once APPPATH . '/third_party/PHPExcel/IOFactory.php';

class Topup extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'excel', 'session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        $this->load->model(array('Card_model', 'Subscriber_model', 'Topup_model'));
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
        $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        //Call this mysql procedure to change session timezone for all database CRUD
//        $this->db->query("CALL mysql.store_time_zone()");
    }

    function index()
    {

    }

    function test()
    {
        $today = 164021;
        $topup_yest = 593209;
        $daily_diff = $today - $topup_yest;
        $daily_perc = round($daily_diff / $topup_yest * 100, 2, PHP_ROUND_HALF_UP);
        echo number_format($daily_perc, 2);
    }

    function posList()
    {
        if (empty($this->session->userdata('topup_pos'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'TopUp';
        $this->data['subtitle'] = 'POS List';
        //$this->data["subview"] = 'topup/list_pos_topup';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'topup/posList';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_topup_pos');
        $crud->order_by('id', 'asc');
        $crud->columns('pos_name', 'campus_code', 'sort', 'status');
        $crud->fields('pos_name', 'campus_code', 'sort', 'status');
        $crud->set_primary_key('campus_code', 'eco_campus');
        $crud->set_relation('campus_code', 'eco_campus', 'campus_name');
        $crud->display_as('campus_code', 'Campus')
            ->display_as('pos_name', 'POS');
        $crud->required_fields('pos_name', 'campus_code', 'status');
        $crud->callback_column('status', array($this, '_callback_status'));
        $crud->unique_fields(array('pos_name'));
        $crud->unset_clone();
        $crud->unset_read();
        $crud->unset_delete();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function cardTopupOld()
    {
        if (empty($this->session->userdata('topup_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Topup';
        $this->data['subtitle'] = 'Card Topup';
        $this->data["subview"] = 'topup/card_topup';
        $this->data['pageurl'] = 'topup/cardTopup';
        $start_date = date('Y-m-d', strtotime('-3 months'));
        $crud = new grocery_CRUD();
        $crud->set_table('eco_card_topup');
        $crud->set_relation('sub_id', 'eco_subscribers', 'sub_name');
        $crud->where('trn_date >=', $start_date);
        $crud->set_primary_key('category', 'eco_topup_category');
        $crud->set_relation('category', 'eco_topup_category', 'category');
        $crud->set_primary_key('pos_name', 'eco_topup_pos');
        $crud->set_relation('pos', 'eco_topup_pos', 'pos_name');
        $crud->columns('trn_ref_no', 'card_no', 'amount', 'trn_date', 'pos', 'category', 'maker_id');
        $crud->fields('trn_ref_no', 'card_no', 'amount', 'trn_date', 'pos', 'category', 'maker_id', 'date_registered', 'date_updated');
        $crud->required_fields('card_no', 'amount', 'trn_date', 'pos', 'category');
        $crud->set_rules('card_no', 'Card No.', 'required|callback_validate_card_no');
        $state = $crud->getState();
        if ($state == 'add') {
            $crud->change_field_type('trn_ref_no', 'invisible');
        }
        if ($state == 'edit') {
            $crud->field_type('trn_ref_no', 'readonly');
            //$crud->field_type('card_no','readonly');
        }
        $crud->set_rules('amount', 'Amount', 'numeric|callback_validate_amount');
        $crud->callback_add_field('amount', function () {
            return '<input type="number" class="form-control" min="200" style="width: 90%" value="" name="amount" autocomplete="off" >';
        });
        $crud->callback_edit_field('amount', function ($value, $primary_key) {
            return '<input type="number" class="form-control" min="200" style="width: 90%" value="' . $value . '" name="amount" autocomplete="off" >';
        });
        $crud->callback_add_field('card_no', function () {
            return '<input type="number" class="form-control" style="width: 90%" value="" name="card_no" autocomplete="off" >';
        });
        $crud->callback_edit_field('card_no', function ($value, $primary_key) {
            return '<input type="text" class="form-control" style="width: 90%" value="' . $value . '" name="card_no" readonly autocomplete="off" >';
        });
        $crud->set_rules('trn_date', 'Trn Date', 'required|callback_validate_trn_date');
        $crud->callback_add_field('trn_date', function () {
            return '<input type="date" class="form-control" style="width: 90%" value="" name="trn_date" autocomplete="off" >';
        });
        $crud->callback_edit_field('trn_date', function ($value, $primary_key) {
            return '<input type="date" class="form-control" style="width: 90%" value="' . $value . '" name="trn_date" autocomplete="off" >';
        });
        $crud->callback_before_insert(array($this, 'create_ref_no_card_no'));
        $crud->callback_after_insert(array($this, 'update_sub_last_topup'));
        $crud->callback_after_update(array($this, 'update_sub_last_topup'));
        $crud->add_fields(array('trn_ref_no', 'card_no', 'amount', 'trn_date', 'pos', 'category', 'sub_id', 'maker_id'));
        $crud->edit_fields('trn_ref_no', 'card_no', 'amount', 'trn_date', 'pos', 'category');
        $crud->callback_column('trn_date', array($this, '_callback_trn_date'));
        $crud->callback_column('amount', array($this, '_callback_trn_amount'));
        $crud->change_field_type('maker_id', 'invisible');
        $crud->change_field_type('sub_id', 'invisible');
        $crud->display_as('trn_ref_no', 'Trn Ref.')
            ->display_as('card_no', 'Card No.')
            ->display_as('pos', 'Channel')
            ->display_as('maker_id', 'Maker')
            ->display_as('trn_date', 'Trn Date')
            ->display_as('sub_id', 'Subscriber');
        $crud->order_by('date_registered', 'DESC');
        $crud->unset_add();
        $crud->unset_delete();
        $crud->unset_edit();
        if ($this->session->userdata('usertype') != 'Admin') {
            $crud->unset_edit();
            $crud->unset_delete();
        }
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        //$this->data['cards'] = $this->Card_model->get_all_occupied_card();
        $this->data['pos'] = $this->Card_model->get_all_active_pos();
        $this->data['topup_cat'] = $this->Card_model->get_all_topup_categories();
        $this->load->view('_layout_main', $this->data);
    }

    function cardTopup()
    {
        $topup_view = $this->session->userdata('topup_view');
        if (empty($topup_view)) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Topup';
        $this->data['subtitle'] = 'Card Topup';
        $this->data["subview"] = 'topup/card_topup';
        $this->data['pageurl'] = 'topup/cardTopup';
        $start_date = date('Y-m-d', strtotime('-3 months'));
        $crud = new grocery_CRUD();
        $crud->set_table('eco_card_topup');
        $crud->where('trn_date >=', $start_date);
        $crud->order_by('date_registered', 'DESC');
        $crud->columns('trn_ref_no', 'card_no', 'amount', 'date_registered', 'pos', 'category', 'maker_id');
        $crud->callback_column('trn_date', array($this, '_callback_trn_date'));
        $crud->callback_column('date_registered', array($this, '_callback_format_timestamp'));
        $crud->callback_column('amount', array($this, '_callback_trn_amount'));
        $crud->display_as('trn_ref_no', 'Trn Ref.')
            ->display_as('card_no', 'Card No.')
            ->display_as('pos', 'Channel')
            ->display_as('maker_id', 'Maker')
            ->display_as('trn_date', 'Trn Date')
            ->display_as('date_registered', 'Timestamp');
        $crud->unset_add();
        $crud->unset_delete();
        $crud->unset_edit();
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->data['pos'] = $this->Card_model->get_all_active_pos();
        $this->data['topup_cat'] = $this->Card_model->get_all_topup_categories();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_trn_date($value, $row)
    {
        $date = date("d-M-y", strtotime($value));
        return $date;
    }

    function _callback_trn_amount($value, $row)
    {
        //  $amount = number_format($value,0);
        return "<span style='width:100%;text-align:right;display:block;'>" . number_format($value, 0) . "</span>";
    }

    function validate_amount($str)
    {
        if ($str < 200) {
            $this->form_validation->set_message('validate_amount', "Minimum amount is Tsh 200");
            return FALSE;
        } elseif ($str >= 200) {
            return TRUE;
        } else {
            $this->form_validation->set_message('validate_amount', "Amount should be number");
            return FALSE;
        }
    }

    function validate_card_no($str)
    {
        /*
          $x = substr($str, 0, 3);
          if($x === 'IC-'){
          $card_no = $str;
          }else{
          $card_no = 'IC-'.$str;
          }
         * 
         */
        $card_no = $this->_generate_card($str);
        $card = $this->db->get_where('cards', array('card_no' => $card_no))->num_rows();
        $sub = $this->db->get_where('subscribers', array('card_no' => $card_no))->num_rows();
        if ($card <= 0) {
            $this->form_validation->set_message('validate_card_no', "Card number does not exist in system " . $card_no);
            return FALSE;
        } elseif ($sub <= 0) {
            $this->form_validation->set_message('validate_card_no', "No subscriber with this card number");
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

    function create_ref_no_card_no($post_array)
    {
        $card_no = 'IC-' . $post_array['card_no'];
        $amount = $post_array['amount'];
        $trn_date = $post_array['trn_date'];
        # Check for duplicate transaction
        /*  $existing = $this->Card_model->get_top_up_details($card_no, $amount, $trn_date);
          if($existing != ''){
          $start_date = new DateTime($existing->date_registered);
          $now      = date('Y-m-d H:i:s');
          $since_start = $start_date->diff(new DateTime($now));
          $minutes = $since_start->days * 24 * 60;
          $minutes += $since_start->h * 60;
          $minutes += $since_start->i;
          if($minutes <= 60){
          return FALSE;
          }
          } */
        # Check for duplicate transaction end       
        $sub_id = $this->db->get_where('subscribers', array('card_no' => $card_no))->row()->id;
        $post_array['card_no'] = $card_no;
        $post_array['trn_ref_no'] = 'POS' . $this->session->userdata('user_id') . time() . random_int(10, 99);
        $post_array['maker_id'] = $this->session->userdata('username');
        $post_array['sub_id'] = $sub_id;
        return $post_array;
    }

    function update_sub_last_topup($post_array, $primary_key)
    {
        //update subscriber
        $sub_id = $this->db->get_where('card_topup', array('id' => $primary_key))->row()->sub_id;
        $data = array('date_last_topup' => $post_array['trn_date']);
        $this->db->where('id', $sub_id);
        $this->db->update('subscribers', $data);
        //update maker_id on topup table
        $data_top = array('maker_id' => $this->session->userdata('username'));
        $this->db->where('id', $primary_key);
        $this->db->update('card_topup', $data_top);
        return true;
    }

    function ajaxAddTopup()
    {
        if (empty($this->session->userdata('topup_view'))) {
            //$this->session->set_flashdata('access_denied','Access denied, insufficient privileges.');
            //redirect($_SERVER['HTTP_REFERER']); 
            $data = array('action' => 'error', 'message' => 'Access denied, insufficient privileges.');
            echo json_encode($data);
        } else {
            $this->form_validation->set_rules('card_no', 'Card No.', 'trim|required|callback_validate_topup_card|greater_than_equal_to[1]');
            $this->form_validation->set_rules('amount', 'Amount', 'trim|required');
            $this->form_validation->set_rules('pos', 'POS', 'required');
            $this->form_validation->set_rules('category', 'Category', 'required');
            $this->form_validation->set_rules('trn_date', 'Trn Date', 'callback_validate_trn_date');
            if ($this->form_validation->run() === TRUE) {
                $card = $this->input->post('card_no');
                $amount = str_replace(',', '', $this->input->post('amount'));
                if ($this->input->post('trn_date') == '') {
                    $trn_date = date('Y-m-d');
                } else {
                    $trn_date = date('Y-m-d', strtotime($this->input->post('trn_date')));
                }
                $card_no = $this->_generate_card($this->input->post('card_no'));
                $trn_ref_no = 'POS' . $this->session->userdata('user_id') . time() . random_int(10, 99); // Trn reference number
                # Check if user is attempting same trn start
                $existing = $this->db->get_where('card_topup', array('card_no' => $card_no, 'amount' => $amount, 'trn_date' => $trn_date));
                //$existing = $this->Card_model->get_top_up_details($card_no , $amount, $trn_date);
                if ($existing->num_rows() >= 1) {
                    $existing = $existing->row();
                    $start_date = new DateTime($existing->date_registered);
                    $now = date('Y-m-d H:i:s');
                    $since_start = $start_date->diff(new DateTime($now));
                    $minutes = $since_start->days * 24 * 60;
                    $minutes += $since_start->h * 60;
                    $minutes += $since_start->i;
                    if ($minutes <= 60) {
                        $message = "Possible duplicate entry detected.<br/> Card No: " . $existing->card_no . "<br/>Amount: " . number_format($existing->amount, 2) . "<br/>Trn Date: " . date('D d-M-Y', strtotime($existing->trn_date)) . "<br/> You can only perform same transaction after an hour";
                        $message = '<div class="alert alert-danger fade show" role="alert">' . $message . '</div>';
                        $data = array('action' => 'error', 'message' => $message);
                        echo json_encode($data);
                    }
                } else {
                    $sub_id = $this->db->get_where('subscribers', array('card_no' => $card_no))->row()->id;
                    $data = array(
                        'card_no' => $card_no,
                        'sub_id' => $sub_id,
                        'amount' => $amount,
                        'trn_date' => $trn_date,
                        'trn_ref_no' => $trn_ref_no,
                        'pos' => $this->input->post('pos'),
                        'trn_status' => 'SUCCESS',
                        'category' => $this->input->post('category'),
                        'maker_id' => $this->session->userdata('username')
                    );
                    $insert_id = $this->Card_model->insert_pos_topup($data);
                    if ($insert_id == 0) {
                        $message = '<div class="alert alert-danger fade show" role="alert">Unable to add topup, please contact system admin</div>';
                        $data = array('action' => 'error', 'message' => $message);
                        echo json_encode($data);
                    } else {
                        $data = array('date_last_topup' => $trn_date);
                        //echo $sub_id.' - '.$trn_date; exit();
                        $this->Subscriber_model->update_subscriber($data, $sub_id);
                        $message = '<div class="alert alert-success fade show" role="alert"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Topup successfully</div>';
                        $data = array('action' => 'okay', 'message' => $message);
                        echo json_encode($data);
                    }
                }
            } else {
                $v_errors = validation_errors();
                $message = '<div class="alert alert-danger fade show" role="alert">' . $v_errors . '</div>';
                $data = array('action' => 'error', 'message' => $message);
                echo json_encode($data);
            }
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

    function validate_topup_card($str)
    {
        $card = $str;
        if (substr($card, 0, 6) === '135000' && strlen(trim($card)) >= 12) {
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
            $this->form_validation->set_message('validate_topup_card', 'Wrong or incorrect Card No.');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function selcomPayments()
    {
        if (empty($this->session->userdata('topup_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Payments';
        $this->data['subtitle'] = 'Payments';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'topup/selcomPayments';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_selcom_payments');
        $crud->set_relation('sub_id', 'eco_subscribers', 'sub_name');
        $crud->set_primary_key('e_code', 'eco_selcom_response_code');
        $crud->set_relation('v_status', 'eco_selcom_response_code', 'description');
        $crud->set_primary_key('code', 'eco_val_messages');
        $crud->set_relation('validator_status', 'eco_val_messages', 'message');
        $crud->order_by('date_registered', 'DESC');
        $crud->columns('eco_ref', 'operator', 'transid_operator', 'msisdn', 'amount', 'utilityref_card_no', 'n_status', 'val_comm_ref', 'timestamp_selcom');
        //$crud->edit_fields('id','eco_ref','operator','amount','v_status','utilityref_card_no','comment','reversed','val_comm_ref','maker_id','timestamp_selcom');
        //$crud->required_fields('utilityref_card_no','comment');
        //$crud->set_rules('utilityref_card_no','Card No.','required|callback_validate_utilityref_card_no');
        $crud->display_as('msisdn', 'Initiator')
            ->display_as('eco_ref', 'eCloud Ref.')
            ->display_as('transid_operator', 'Mobile Ref.')
            ->display_as('reference_selcom', 'Selcom Ref.')
            ->display_as('utilityref_card_no', 'Card Number')
            ->display_as('timestamp_selcom', 'Timestamp')
            ->display_as('n_status', 'Status')
            ->display_as('val_comm_ref', 'Validation')
            ->display_as('sub_id', 'Card Owner')
            ->display_as('id', 'SID');
        $crud->field_type('eco_ref', 'readonly')
            ->field_type('operator', 'readonly')
            ->field_type('amount', 'readonly')
            ->field_type('v_status', 'readonly')
            ->field_type('val_comm_ref', 'readonly')
            ->field_type('reversed', 'hidden', 'Y')
            ->field_type('timestamp_selcom', 'readonly')
            ->field_type('id', 'hidden');
        $crud->unset_add();
        if ($this->session->userdata('usertypeid') == 1) {
            $crud->add_action('', '', base_url('topup/reverseMobPayment/'), 'fa fa-pencil');
        }
        $crud->unset_delete();
        $crud->unset_edit();
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->unset_export();
        $crud->unset_print();
        $crud->callback_column('amount', array($this, '_callback_format_amount'));
        $crud->callback_column('val_comm_ref', array($this, '_callback_format_val_comm_ref'));
        $crud->callback_column('timestamp_selcom', array($this, '_callback_format_timestamp'));
        $crud->callback_read_field('timestamp_selcom', array($this, '_callback_format_timestamp'));
        $crud->callback_column('date_registered', array($this, '_callback_format_timestamp'));
        $crud->callback_column('date_updated', array($this, '_callback_format_timestamp'));
        $crud->callback_column('sub_name', array($this, '_callback_format_sub_name'));
        $crud->callback_column('n_status', array($this, '_callback_format_v_n_status'));
        $crud->callback_read_field('date_registered', array($this, '_callback_format_timestamp'));
        $crud->callback_read_field('date_updated', array($this, '_callback_format_timestamp'));
        $crud->callback_read_field('sub_name', array($this, '_callback_format_sub_name'));
        $crud->callback_read_field('n_status', array($this, '_callback_format_read_n_status'));
        //$crud->callback_read_field('val_comm_ref', array($this, '_callback_format_read_val_comm_ref'));
        //$crud->callback_before_update(array($this, '_callback_before_update_payment'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function validate_utilityref_card_no($card_no)
    {
        $pkey = $this->input->post('id');
        $data = $this->db->get_where('selcom_payments', array('id' => $pkey))->row();
        $sub = $this->db->get_where('sub_card_vw', array('card_luhn' => $card_no))->num_rows();
        if ($data->val_comm_ref != '') {
            $this->form_validation->set_message('validate_utilityref_card_no', "Validated payment cannot be updated");
            return FALSE;
        } elseif ($data->reversed == 'Y') {
            $this->form_validation->set_message('validate_utilityref_card_no', "Cannot updated reversed payment");
            return FALSE;
        } elseif ($sub != 1) {
            $this->form_validation->set_message('validate_utilityref_card_no', "Card number either does not exist or un-assigned");
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function _callback_before_update_payment($post_array, $primary_key)
    {
        $row = $this->db->get_where('selcom_payments', array('id' => $primary_key))->row();
        $payment_data = array(
            'eco_ref' => $row->eco_ref,
            'operator' => $row->operator,
            'msisdn' => $row->msisdn,
            'transid_operator' => $row->transid_operator,
            'reference_selcom' => $row->reference_selcom,
            'utilityref_card_no' => $row->utilityref_card_no,
            'amount' => $row->amount,
            'prom_amt' => $row->prom_amt,
            'timestamp_selcom' => $row->timestamp_selcom,
            'v_status' => '000',
            'sub_id' => $row->sub_id,
            'remote_ip' => $row->remote_ip,
            'maer_id' => $this->session->userdata('username')
        );
        $this->db->insert('selcom_payments', $payment_data);
    }

    function _callback_operator($value, $row)
    {
        return '<span class="pull-righ">' . $row->operator . ' | Ref. ' . $row->transid_operator . '</span>';
    }

    function _callback_format_timestamp($value, $row)
    {
        $date = date("d-M-y H:i", strtotime($value));
        return $date;
    }

    function _callback_format_timestamp_2($value, $row)
    {
        $date = date("d-M-y H:i:s", strtotime($value));
        return $date;
    }

    function _callback_format_sub_name($value, $row)
    {
        $sub = $this->db->get_where('subscribers', array('card_no' => $row->utilityref_card_no));
        if ($sub->num_rows() >= 1) {
            $sub = $sub->row();
            return '<span class="pull-left">' . $sub->sub_name . '</span>';
        } else {
            return '<span class="pull-left">No subscriber</span>';
        }
    }

    function _callback_format_val_comm_ref($value, $row)
    {
        $row = $this->db->get_where('selcom_payments', array('id' => $row->id))->row();
        if ($row->validator_status == '100' && $row->v_status == '000' && $row->reversed == 'N') {
            return '<span class="badge badge-success">Validated</span>';
        } elseif ($row->validator_status == '104' && $row->v_status == '000' && $row->n_status == '000' && $row->reversed == 'N') {
            return '<span class="badge badge-warning">Pending</span>';
        } elseif ($row->reversed == 'Y' && $row->validator_status == '404') {
            return '<span class="badge badge-light">Reversed</span>';
        } else {
            return '';
        }
    }

    function _callback_format_v_n_status($value, $row)
    {
        if (is_null($value) && $row->v_status === '000') {
            return 'Trn Failed';
        } else {
            $code = $this->db->get_where('selcom_response_code', array('e_code' => $row->v_status))->row();
            return $code->description;
        }
    }

    function _callback_format_read_n_status($value, $primary_key)
    {
        $row = $this->db->get_where('selcom_payments', array('id' => $primary_key))->row();
        if (is_null($value)) {
            return 'Trn Failed';
        } else {
            $code = $this->db->get_where('selcom_response_code', array('e_code' => $row->v_status))->row();
            return $code->description;
        }
    }

    function _callback_format_read_val_comm_ref($value, $primary_key)
    {
        $row = $this->db->get_where('selcom_payments', array('id' => $primary_key))->row();
        //return $row->v_status;
        if ($value != '' && $row->v_status == '000') {
            return '<span class="badge badge-success">Validated</span>';
        } elseif ($value == '' && $row->v_status == '000') {
            return '<span class="badge badge-warning">Pending</span>';
        } else {
            return '';
        }
    }

    function _callback_v_status($value, $row)
    {
//        return $row->v_status;
        if ($row->v_status === '000') {
            return '<span class="badge badge-success">Active</span>';
        } else {
            return '<span class="badge badge-danger">Closed</span>';
        }
    }

    function reverseMobPayment($payment_id = '')
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', 'Access denied. Please contact system admin');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $row = $this->db->get_where('selcom_payments', array('id' => $payment_id))->row();
        if ($row->reversed == 'Y' || $row->validator_status == '404') {
            $this->session->set_flashdata('error', 'Cannot update reversed payments');
            redirect($_SERVER['HTTP_REFERER']);
        }
//        if($row->validator_status == '100'){
//            $this->session->set_flashdata('error','Cannot update validated payments');
//            redirect ($_SERVER['HTTP_REFERER']);
//        }
        $this->data['title'] = 'Payments';
        $this->data['subtitle'] = 'Update Payment';
        $this->data["subview"] = 'topup/update_mobile_payment';
        $this->data['pageurl'] = 'topup/selcomPayments';
        $this->data['payment'] = $row;
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $card_no = $this->input->post('utilityref_card_no');
            $old_card = $this->input->post('old_card');
            $validation_status = $this->input->post('validator_status');
            $old_validation_status = $this->input->post('old_validator_status');
            if ($old_card === $card_no && $this->input->post('payment_state') == 'unvalidated') {
                // no changes made
                redirect('topup/selcomPayments');
            }
            if ($old_validation_status === $validation_status && $this->input->post('payment_state') == 'validated') {
                // no changes made
                redirect('topup/selcomPayments');
            }
            $payment_id = $this->input->post('payment_id');
            $sub_card = $this->db->get_where('sub_card_vw', array('card_luhn' => $card_no));
            if ($sub_card->num_rows() != 1) {
                $this->session->set_flashdata('v_error', 'Card number is either wrong or not assigned to subscriber');
                redirect($_SERVER['HTTP_REFERER']);
            }
            //check if payemnt still not validated
            $payment_data = $this->db->get_where('selcom_payments', array('id' => $payment_id))->row();
            if ($payment_data->validator_status == '100' && $this->input->post('payment_state') == 'unvalidated') {
                $this->session->set_flashdata('error', 'Error occurred payment already validated');
                redirect($_SERVER['HTTP_REFERER']);
            } else {
                $sub_card = $sub_card->row();
                //mark payment as reversed
                $data = array('validator_status' => '404', 'reversed' => 'Y', 'maker_id' => $this->session->userdata('username'));
                $this->db->where('id', $payment_id);
                $this->db->update('selcom_payments', $data);
                $new_payment = array(
                    'eco_ref' => $payment_data->eco_ref,
                    'operator' => $payment_data->operator,
                    'msisdn' => $payment_data->msisdn,
                    'transid_operator' => $payment_data->transid_operator,
                    'reference_selcom' => $payment_data->reference_selcom,
                    'utilityref_card_no' => $card_no,
                    'amount' => $payment_data->amount,
                    'prom_amt' => $payment_data->prom_amt,
                    'timestamp_selcom' => $payment_data->timestamp_selcom,
                    'v_status' => $payment_data->v_status,
                    'n_status' => $payment_data->n_status,
                    'sub_id' => $sub_card->sub_id,
                    'remote_ip' => $payment_data->remote_ip,
                    'comment' => $payment_data->comment,
                    'channel_id' => $payment_data->channel_id,
                    'sweep' => $payment_data->sweep,
                    'maker_id' => $this->session->userdata('username')
                );
                $this->db->insert('selcom_payments', $new_payment);
                //update topup table incase card number changed
                $topup_update = array('card_no' => $card_no, 'sub_id' => $sub_card->sub_id);
                $this->db->where('trn_ref_no', $payment_data->eco_ref);
                $this->db->update('card_topup', $topup_update);
                $this->session->set_flashdata('success', 'Payment reversed successfully');
                redirect('topup/selcomPayments');
            }
        }
        $this->load->view('_layout_main', $this->data);
    }

    function _change_card_number()
    {
        $card_no = $this->input->post('utilityref_card_no');
        $old_card = $this->input->post('old_card');
        if ($old_card === $card_no) {
            // no changes made
            redirect('topup/selcomPayments');
        }
        $payment_id = $this->input->post('payment_id');
        $sub_card = $this->db->get_where('sub_card_vw', array('card_luhn' => $card_no));
        if ($sub_card->num_rows() != 1) {
            $this->session->set_flashdata('v_error', 'Card number is either wrong or not assigned to subscriber');
            redirect($_SERVER['HTTP_REFERER']);
        }
        //check if payemnt still not validated
        $payment_data = $this->db->get_where('selcom_payments', array('id' => $payment_id))->row();
        if ($payment_data->validator_status == '100') {
            $this->session->set_flashdata('error', 'Error occurred payment already validated');
            redirect($_SERVER['HTTP_REFERER']);
        } else {
            $sub_card = $sub_card->row();
            //mark payment as reversed
            $data = array('validator_status' => '404', 'reversed' => 'Y', 'maker_id' => $this->session->userdata('username'));
            $this->db->where('id', $payment_id);
            $this->db->update('selcom_payments', $data);
            $new_payment = array(
                'eco_ref' => $payment_data->eco_ref,
                'operator' => $payment_data->operator,
                'msisdn' => $payment_data->msisdn,
                'transid_operator' => $payment_data->transid_operator,
                'reference_selcom' => $payment_data->reference_selcom,
                'utilityref_card_no' => $card_no,
                'amount' => $payment_data->amount,
                'prom_amt' => $payment_data->prom_amt,
                'timestamp_selcom' => $payment_data->timestamp_selcom,
                'v_status' => $payment_data->v_status,
                'sub_id' => $sub_card->sub_id,
                'remote_ip' => $payment_data->remote_ip,
                'maker_id' => $this->session->userdata('username')
            );
            $this->db->insert('selcom_payments', $new_payment);
            $this->session->set_flashdata('success', 'Payment reversed successfully');
            redirect('topup/selcomPayments');
        }
    }

    function paymentDashboard()
    {
        $this->data['title'] = 'Payments';
        $this->data['subtitle'] = 'Dashboard';
        $this->data["subview"] = 'topup/payment_dashboard';
        $this->data['pageurl'] = 'topup/paymentDashboard';
        $today = date('Y-m-d');
        $yesterday = date('Y-m-d', strtotime('-1 days'));
        $first_dat_last_month = new DateTime('first day of last month');
        $first_dat_last_month = $first_dat_last_month->format('Y-m-d');
        $first_dat_last_year = (date('Y') - 1) . '-01-01';
        $start_date = $today;
        $end_date = $today;
        $start_date_2 = date('Y-m-d', strtotime('-10 days'));
        $this->data['topup_daily'] = $this->Topup_model->get_mobile_recharges($start_date_2, $today);
        $this->data['topup_monthly'] = $this->Topup_model->get_mobile_recharges_monthly($first_dat_last_month, $today);
        $this->data['topup_yearly'] = $this->Topup_model->get_mobile_recharges_yearly($first_dat_last_year, $today);
        $this->data['pending_payments'] = $this->Topup_model->get_pending_payments();
        $this->data['start_date'] = $start_date;
        $this->data['start_date_2'] = $start_date_2;
        $this->data['end_date'] = $end_date;
        $this->data['val_today'] = $this->Topup_model->get_today_validation_group_by_station($start_date, $end_date);
        $this->data['validated'] = $this->Topup_model->get_monthly_validation_group_by_station(date('Ym'));
        //$this->data['mob_tran_count'] = $this->Topup_model->get_mobile_tran_count($start_date_2,$end_date);
        //$this->data['dates'] = $this->db->get_where('dim_dates', array('full_date >='=>$start_date_2,'full_date <='=>$yesterday))->result();
        //$this->data['val_trend'] = $this->db->get_where('bi_station_mob_validation', array('report_date >='=>$start_date_2,'report_date <='=>$yesterday))->result();
        $this->load->view('_layout_main', $this->data);
    }

    function selcomRecon()
    {
        $this->data['title'] = 'Payments';
        $this->data['subtitle'] = 'Reconciliation';
        $this->data["subview"] = 'topup/selcom_recon';
        $this->data['pageurl'] = 'topup/selcomRecon';
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            if (empty($_FILES['file']['name'])) {
                $this->session->set_flashdata('error', 'Please choose file');
                redirect('topup/selcomRecon');
            } else {
                ini_set("memory_limit", "256M");
                $data = array();
                // get file extension
                $extension = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);
                if ($extension == 'csv') {
                    $reader = new \PhpOffice\PhpSpreadsheet\Reader\Csv();
                } elseif ($extension == 'xlsx') {
                    $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
                } else {
                    $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
                }
                // file path
                $spreadsheet = $reader->load($_FILES['file']['tmp_name']);
                $allDataInSheet = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);
                // array Count
                $arrayCount = count($allDataInSheet);
                $flag = 0;
                $createArray = array('report_date', 'transtype', 'transid', 'reference', 'amount', 'obal', 'cbal', 'charge', 'phone', 'Channel');
                $makeArray = array(
                    'report_date' => 'report_date',
                    'transtype' => 'transtype',
                    'transid' => 'transid',
                    'reference' => 'reference',
                    'amount' => 'amount',
                    'obal' => 'obal',
                    'cbal' => 'cbal',
                    'charge' => 'charge',
                    'phone' => 'phone',
                    'Channel' => 'Channel'
                );
                $SheetDataKey = array();
                foreach ($allDataInSheet as $dataInSheet) {
                    foreach ($dataInSheet as $key => $value) {
                        if (in_array(trim($value), $createArray)) {
                            $value = preg_replace('/\s+/', '', $value);
                            $SheetDataKey[trim($value)] = $key;
                        }
                    }
                }
                $dataDiff = array_diff_key($makeArray, $SheetDataKey);
                if (empty($dataDiff)) {
                    $flag = 1;
                }
                // match excel sheet column
                if ($flag == 1) {
                    for ($i = 2; $i <= $arrayCount; $i++) {
                        $report_date = $SheetDataKey['report_date'];
                        $transtype = $SheetDataKey['transtype'];
                        $transid = $SheetDataKey['transid'];
                        $reference = $SheetDataKey['reference'];
                        $amount = $SheetDataKey['amount'];
                        $obal = $SheetDataKey['obal'];
                        $cbal = $SheetDataKey['cbal'];
                        $charge = $SheetDataKey['charge'];
                        $phone = $SheetDataKey['phone'];
                        $Channel = $SheetDataKey['Channel'];
                        $report_date = filter_var(trim($allDataInSheet[$i][$report_date]), FILTER_SANITIZE_STRING);
                        $transtype = filter_var(trim($allDataInSheet[$i][$transtype]), FILTER_SANITIZE_STRING);
                        $transid = filter_var(trim($allDataInSheet[$i][$transid]), FILTER_SANITIZE_STRING);
                        $reference = filter_var(trim($allDataInSheet[$i][$reference]), FILTER_SANITIZE_STRING);
                        $amount = filter_var(trim($allDataInSheet[$i][$amount]), FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
                        $obal = filter_var(trim($allDataInSheet[$i][$obal]), FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
                        $cbal = filter_var(trim($allDataInSheet[$i][$cbal]), FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
                        $charge = filter_var(trim($allDataInSheet[$i][$charge]), FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
                        $phone = filter_var(trim($allDataInSheet[$i][$phone]), FILTER_SANITIZE_STRING);
                        $Channel = filter_var(trim($allDataInSheet[$i][$Channel]), FILTER_SANITIZE_STRING);
                        $fetchData[] = array(
                            'report_date' => $report_date,
                            'transtype' => $transtype,
                            'transid' => $transid,
                            'reference' => $reference,
                            'amount' => $amount,
                            'obal' => $obal,
                            'cbal' => $cbal,
                            'charge' => $charge,
                            'phone' => $phone,
                            'Channel' => $Channel
                        );
                    }
                    $this->db->truncate('selcom_recon');
                    $this->db->insert_batch('selcom_recon', $fetchData);
                    $this->session->set_flashdata('success', 'File upload successfully');
                    redirect('topup/selcomRecon');
                } else {
                    $this->session->set_flashdata('error', 'Please import correct file, did not match excel sheet column');
                    redirect('topup/selcomRecon');
                }
            }
        }
        $this->data['recon'] = $this->db->get('selcom_recon')->result();
        $this->data['on_selcom_not_cloud'] = $this->db->get_where('selcom_recon', array('matched' => 'N'))->result();
        $range = $this->db->query("select max(report_date) as max_date,min(report_date) min_date from eco_selcom_recon")->row();
        $min_date = $range->min_date;
        $max_date = $range->max_date;
        $this->data['on_cloud_not_selcom'] = $this->db->query("SELECT *
        FROM   eco_selcom_payments a
        WHERE  a.timestamp_selcom BETWEEN '$min_date' AND '$max_date'
               AND a.channel_id = 'SELCOM' AND a.v_status = '000' and a.n_status = '000'
               AND NOT EXISTS(SELECT *
                              FROM   eco_selcom_recon bb
                              WHERE  a.reference_selcom = bb.reference)")->result();
        $this->load->view('_layout_main', $this->data);
    }

    function selcomReconSample()
    {
        $this->load->helper('download');
        force_download('/var/www/html/assets/uploads/selcom_recon_sample.zip', NULL);
    }

    function selcomReconTruncate()
    {
        $this->db->truncate('selcom_recon');
        $this->session->set_flashdata('success', 'Selcom Recon stage table for upload truncated');
        redirect('topup/selcomRecon');
    }

    function selcomReconFinish()
    {
        $this->db->update('selcom_recon', array('processed' => 'N', 'matched' => 'N'));
        //update selcom payment table
        $this->db->query("UPDATE eco_selcom_payments a
                            SET a.sweep = 'Y',
                                   a.n_status = '000'
                            WHERE a.v_status = '000' and EXISTS(SELECT reference
                                          FROM eco_selcom_recon bb
                                          WHERE bb.reference = a.reference_selcom) ");
        //update selcom recon table
        $this->db->query("update eco_selcom_recon set processed = 'Y' ");
        /*$range = $this->db->query("select max(cast(report_date as date) + 1) as max_date,min(cast(report_date as date) - 1) min_date from eco_selcom_recon")->row();
        $min_date = $range->min_date;
        $max_date = $range->max_date;*/
        $range = $this->db->query("select max(adddate(cast(report_date as date), interval 1 day))  as max_date,
                                           min(adddate(cast(report_date as date), interval -1 day)) as min_date
                                    from eco_selcom_recon")->row();
        $min_date = $range->min_date;
        $max_date = $range->max_date;
        $this->db->query("UPDATE eco_selcom_recon a
                            SET matched = 'Y'
                            WHERE EXISTS(SELECT reference_selcom
                                          FROM eco_selcom_payments bb
                                          WHERE bb.reference_selcom = a.reference
                                                 AND Cast(bb.timestamp_selcom AS DATE) BETWEEN
                                                     '$min_date' AND '$max_date') ");
        //remove DEBIT transaction
        $this->db->query("delete from eco_selcom_recon where lower(transtype) = 'debit'");
        $this->session->set_flashdata('success', 'Selcom Recon finished');
        redirect('topup/selcomRecon');
    }

    function ajaxPostMissingTransaction()
    {
        $errors = '';
        $recon_id = $this->input->post('recon_id');
        $recon = $this->db->get_where('selcom_recon', array('id' => $recon_id))->row();
        //confirm if selcom reference still missing
        $payment = $this->db->get_where('selcom_payments', array('reference_selcom' => $recon->reference))->num_rows();
        $card_no = '135000' . $this->input->post('card_no');
        $sub = $this->db->get_where('sub_card_vw', array('card_luhn' => $card_no));
        if ($payment >= 1) {
            $errors = $errors . '| Payment already posted <br/>';
        }
        if ($sub->num_rows() != 1) {
            $errors = $errors . '| Card Number is invalid <br/>';
        }

        if ($errors != '') {
            $message = '<div class="alert alert-danger fade show" role="alert"><h6><span class="fa fa-ban"></span> Failed to post, see below error(s)</h6>' . $errors . '</div>';
            $data = array('action' => 'error', 'message' => $message);
            echo json_encode($data);
        } else {
            $sub = $sub->row();
            $result = $this->paymentPostTransaction($recon_id, $card_no);
            if ($result['action'] == 'success') {
                $message = '<div class="alert alert-success fade show" role="alert">Transaction with refence <strong>' . $recon->reference . '</strong> posted</div>';
                $data = array('action' => 'success', 'message' => $message);
            } else {
                $message = '<div class="alert alert-danger fade show" role="alert">Failed to post see error :<br/>' . $result['message'] . '</div>';
                $data = array('action' => 'error', 'message' => $message);
            }
            echo json_encode($data);
        }
    }

    function paymentPostTransaction($recon_id = '', $card_no = '')
    {
        $validation_url = "https://ecowatercloud.com/payments/selcom_validation";
        $notification_url = "https://ecowatercloud.com/payments/selcom_notification";
        $recon = $this->db->get_where('selcom_recon', array('id' => $recon_id))->row();
        $form_data = array(
            "operator" => $recon->Channel,
            "msisdn" => $recon->phone,
            "transid" => $recon->transid,
            "reference" => $recon->reference,
            "utilityref" => $card_no,
            "amount" => $recon->amount,
            "timestamp" => $recon->report_date
        );
        $client = curl_init($validation_url);
        curl_setopt($client, CURLOPT_POST, true);
        curl_setopt($client, CURLOPT_POSTFIELDS, json_encode($form_data));
        curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($client);
        curl_close($client);
        $obj = json_decode($response, TRUE);
        $resultcode = $obj['resultcode'];
        if ($resultcode == '000') {
            $client = curl_init($notification_url);
            curl_setopt($client, CURLOPT_POST, true);
            curl_setopt($client, CURLOPT_POSTFIELDS, json_encode($form_data));
            curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
            $response = curl_exec($client);
            curl_close($client);
            $obj = json_decode($response, TRUE);
            $resultcode = $obj['resultcode'];
            #update recon table
            $recon_data = array('matched' => 'Y');
            $this->db->where('id', $recon_id);
            $this->db->update('selcom_recon', $recon_data);
            #update recon table end
            #update username posted
            $payment_data = array('recon_post' => 'Yes by ' . $this->session->userdata('username'), 'sweep' => 'Y');
            $this->db->where('reference_selcom', $recon->reference);
            $this->db->update('selcom_payments', $payment_data);
            #update username posted end
            return array('action' => 'success', 'message' => $obj['message']);
        } else {
            return array('action' => 'error', 'message' => $obj['message']);
        }
    }

    function onCloudMisingSelcomExport()
    {
        $range = $this->db->query("select max(report_date) as max_date,min(report_date) min_date from eco_selcom_recon")->row();
        $min_date = $range->min_date;
        $max_date = $range->max_date;
        $data['recharge'] = $this->db->query("SELECT *
        FROM   eco_selcom_payments a
        WHERE  a.timestamp_selcom BETWEEN '$min_date' AND '$max_date'
               AND a.channel_id = 'SELCOM' AND a.v_status = '000'             
               AND NOT EXISTS(SELECT *
                              FROM   eco_selcom_recon bb
                              WHERE  a.reference_selcom = bb.reference)")->result();
        $this->load->view('topup/export_missing_on_selcom', $data);
    }

    function posBalances()
    {
        $this->data['title'] = 'TopUp';
        $this->data['subtitle'] = 'POS Balances';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'cbfe61202c372dbcc0208399dbf30cea';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_pos_balances');
        $crud->set_relation('pos_id', 'eco_topup_pos', 'pos_name', array('sort !=' => '999'), 'sort ASC');
        $crud->order_by('date_registered', 'DESC');
        $crud->columns(['report_date', 'pos_id', 'pos_balance', 'pos_balance_net', 'topup_balance', 'variance', 'status']);
        $crud->fields(['report_date', 'pos_id', 'pos_balance', 'pos_balance_net', 'topup_balance', 'variance', 'status', 'maker_id']);
        $crud->field_type('maker_id', 'invisible');
        $crud->callback_column('report_date', array($this, '_callback_trn_date')); //same function
        $crud->callback_column('date_registered', array($this, '_callback_mpesa_date'));
        $crud->callback_column('pos_balance', array($this, '_callback_trn_amount'));
        $crud->callback_column('topup_balance', array($this, '_callback_trn_amount'));
        $crud->callback_column('pos_balance_net', array($this, '_callback_balance_net'));
        $crud->callback_column('variance', array($this, '_callback_pos_bal_variance'));
        $crud->callback_column('status', array($this, '_callback_pos_bal_variance_stat'));
        $crud->required_fields('pos_id', 'pos_balance', 'report_date');
        $crud->set_rules('pos_balance', 'Commulative Balance', 'numeric|callback_validate_posbalance');
        $crud->callback_add_field('pos_balance', function () {
            return '<input type="number" class="form-control" min="0" style="width: 300px" value="" name="pos_balance" autocomplete="off" >';
        });
        $crud->set_rules('report_date', 'Date', 'callback_validate_reportdate');
        $crud->callback_add_field('report_date', function () {
            return '<input type="date" class="form-control" min="0" style="width: 300px" value="" name="report_date" autocomplete="off" >';
        });
        $crud->field_type('maker_id', 'hidden', $this->session->userdata('username'));
        $crud->callback_read_field('pos_balance_opening', function ($value, $primary_key) {
            return number_format($value, 2);
        });
        $crud->callback_read_field('pos_balance', function ($value, $primary_key) {
            return number_format($value, 2);
        });
        $crud->callback_read_field('pos_balance_net', function ($value, $primary_key) {
            $pos_bal_data = $this->db->get_where('pos_balances', array('id' => $primary_key))->row();
            $pos_balance_net = $pos_bal_data->pos_balance - $pos_bal_data->pos_balance_opening;
            return number_format($pos_balance_net, 2);
        });
        $crud->callback_read_field('topup_balance', function ($value, $primary_key) {
            return number_format($value, 2);
        });
        $crud->callback_read_field('variance', function ($value, $primary_key) {
            $pos_bal_data = $this->db->get_where('pos_balances', array('id' => $primary_key))->row();
            $bal_diff = $pos_bal_data->pos_balance - $pos_bal_data->pos_balance_opening;
            $variance = $pos_bal_data->topup_balance - $bal_diff;
            return number_format($variance, 2);
        });
        $crud->callback_read_field('status', function ($value, $primary_key) {
            $pos_bal_data = $this->db->get_where('pos_balances', array('id' => $primary_key))->row();
            $bal_diff = $pos_bal_data->pos_balance - $pos_bal_data->pos_balance_opening;
            $variance = $pos_bal_data->topup_balance - $bal_diff;
            if ($variance > 0) {
                $status = '<span class="badge badge-danger" style="font-size:11px">Unmatched-Surplus</span>';
            } elseif ($variance < 0) {
                $status = '<span class="badge badge-danger" style="font-size:11px">Unmatched-Deficit</span>';
            } else {
                $status = '<span class="badge badge-success" style="font-size:11px">Matched</span>';
            }
            return $status;
        });
        $crud->display_as('report_date', 'Report Date')
            ->display_as('pos_id', 'POS')
            ->display_as('pos_balance', 'Commulative Balance')
            ->display_as('pos_balance_net', 'Net Balance')
            ->display_as('topup_balance', 'Topup');
        $crud->add_fields(['pos_id', 'pos_balance', 'report_date', 'pos_balance_opening', 'topup_balance', 'maker_id']);
        $crud->change_field_type('pos_balance_opening', 'invisible')
            ->change_field_type('topup_balance', 'invisible')
            ->change_field_type('maker_id', 'invisible');
        $crud->callback_insert(array($this, 'callback_insert_pos_balance'));
        $crud->unset_edit();
        $crud->unset_delete();
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->set_crud_url_path(site_url('topup/posBalances'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function callback_insert_pos_balance($post_array)
    {
        $pos_id = $post_array['pos_id'];
        $pos_balance = $post_array['pos_balance'];
        $report_date = date('Y-m-d', strtotime($post_array['report_date']));
        $check = $this->Card_model->get_pos_balances_by_date($pos_id, $report_date);
        $topups = $this->Card_model->get_pos_topups_by_date($pos_id, $report_date);
        if ($topups) {
            $topups = $topups->tamount;
        } else {
            $topups = 0;
        }
        //get closing balance of previos date to assign as opening balance
        $last_bal = $this->Card_model->get_pos_last_balance($pos_id, $report_date);
        if ($last_bal) {
            $opening_bal = $last_bal->pos_balance;
        } else {
            $opening_bal = 0;
        }

        if ($check) {
            $data = array(
                'pos_balance' => $pos_balance,
                'topup_balance' => $topups,
                'pos_balance_opening' => $opening_bal,
                'maker_id' => $this->session->userdata('username')
            );
            return $this->Card_model->update_pos_balance($pos_id, $report_date, $data);
        } else {
            $data = array(
                'pos_id' => $pos_id,
                'report_date' => $report_date,
                'pos_balance' => $pos_balance,
                'pos_balance_opening' => $opening_bal,
                'topup_balance' => $topups,
                'maker_id' => $this->session->userdata('username')
            );
            return $this->Card_model->insert_pos_balance($data);
        }
    }

    function validate_posbalance($str)
    {
        if ($str < 0) {
            $this->form_validation->set_message('validate_posbalance', "Commulative balance cannot be less than zero");
            return FALSE;
        } elseif ($str > 0) {
            return TRUE;
        } elseif ($str == 0) {
            $this->form_validation->set_message('validate_posbalance', "Commulative balance cannot be zero");
            return FALSE;
        } elseif ($str == '') {
            $this->form_validation->set_message('validate_posbalance', "Commulative balance is required");
            return FALSE;
        } else {
            $this->form_validation->set_message('validate_posbalance', "Amount should be number");
            return FALSE;
        }
    }

    function validate_reportdate($str)
    {
        /* $this->form_validation->set_message('validate_reportdate', "Date ".$str);
          return FALSE; */
        $report_date = $str;
        if ($report_date === '') {
            $this->form_validation->set_message('validate_reportdate', "Date is required");
            return FALSE;
        } elseif ($report_date > date('Y-m-d')) {
            $this->form_validation->set_message('validate_reportdate', "Date cannot be greater than current date");
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function _callback_balance_net($value, $row)
    {
        $pos_bal_data = $this->db->get_where('pos_balances', array('id' => $row->id))->row();
        $pos_balance_net = $pos_bal_data->pos_balance - $pos_bal_data->pos_balance_opening;
        return number_format($pos_balance_net, 2);
    }

    function _callback_pos_bal_variance($value, $row)
    {
        $pos_bal_data = $this->db->get_where('pos_balances', array('id' => $row->id))->row();
        $bal_diff = $pos_bal_data->pos_balance - $pos_bal_data->pos_balance_opening;
        $variance = $pos_bal_data->topup_balance - $bal_diff;
        return number_format($variance, 2);
    }

    function _callback_pos_bal_variance_stat($value, $row)
    {
        $pos_bal_data = $this->db->get_where('pos_balances', array('id' => $row->id))->row();
        $bal_diff = $pos_bal_data->pos_balance - $pos_bal_data->pos_balance_opening;
        $variance = $pos_bal_data->topup_balance - $bal_diff;
        if ($variance > 0) {
            $status = '<span class="badge badge-danger" style="font-size:11px">Unmatched-Surplus</span>';
        } elseif ($variance < 0) {
            $status = '<span class="badge badge-danger" style="font-size:11px">Unmatched-Deficit</span>';
        } else {
            $status = '<span class="badge badge-success" style="font-size:11px">Matched</span>';
        }
        return $status;
    }

    function exportTopup()
    {
        $this->data['title'] = 'Topup';
        $this->data['subtitle'] = 'Export';
        $this->data["subview"] = 'topup/export_topup';
        $this->data['pageurl'] = 'topup/exportTopup';
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->form_validation->set_rules('category', 'Category', 'required');
            $this->form_validation->set_rules('dateFrom', 'From', 'required');
            $this->form_validation->set_rules('dateTo', 'To', 'required');
            if ($this->form_validation->run() == TRUE) {
                $category = $this->input->post('category');
                $from_date = date('Y-m-d', strtotime($this->input->post('dateFrom')));
                $to_date = date('Y-m-d', strtotime($this->input->post('dateTo')));
                if ($category == 'all') {
                    $data['topup'] = $this->Topup_model->get_all_racharges($from_date, $to_date);
                    $this->load->view('topup/export_excel', $data);
                } elseif ($category == 'mobile') {
                    $data['recharge'] = $this->Topup_model->get_mobile_val_recharges($from_date, $to_date);
                    $this->load->view('topup/export_mobile_recharges', $data);
                }
            } else {
                $errors = validation_errors();
                $this->session->set_flashdata('error', $errors);
                redirect('topup/exportTopup');
            }
        } else {
            $this->load->view('_layout_main', $this->data);
        }
    }

    function manualUpdateTopupHist()
    {
        $sub = $this->db->get('subscribers')->result();
        foreach ($sub as $s) {
            //$this->db->where('card_no', $s->card_no);
            //$this->db->update('card_topup', array('sub_id'=>$s->id));
        }
        echo 'Finish';
        exit();
    }

    function _callback_status($value, $row)
    {
        if ($value === 'O') {
            return '<span class="badge badge-success">Active</span>';
        } elseif ($value === 'C') {
            return '<span class="badge badge-danger">Closed</span>';
        } elseif ($value === 'Active' || strtoupper($value) === 'SUCCESS') {
            return '<span class="badge badge-success">' . ucfirst(strtolower($value)) . '</span>';
        } elseif ($value === 'Inactive' || strtoupper($value) === 'FAILED') {
            return '<span class="badge badge-danger">' . ucfirst(strtolower($value)) . '</span>';
        } elseif ($value == '000') {
            return '<span class="badge badge-success">Success</span>';
        } else {
            return '<span class="badge badge-dark">' . $value . '</span>';
        }
    }

    function _callback_format_amount($value, $row)
    {
        return '<span class="pull-right">' . number_format($value, 2) . '</span>';
    }

}

class chunkReadFilter implements PHPExcel_Reader_IReadFilter
{

    private $_startRow = 0;
    private $_endRow = 0;

    /**  Set the list of rows that we want to read  */
    public function setRows($startRow, $chunkSize)
    {
        $this->_startRow = $startRow;
        $this->_endRow = $startRow + $chunkSize;
    }

    public function readCell($column, $row, $worksheetName = '')
    {
        //  Only read the heading row, and the rows that are configured in $this->_startRow and $this->_endRow
        if (($row == 1) || ($row >= $this->_startRow && $row < $this->_endRow)) {
            return true;
        }
        return false;
    }

}
