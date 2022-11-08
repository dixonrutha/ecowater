<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Ecobox extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'excel', 'session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        $this->load->model(array('Validators_model'));
        if (!$this->ion_auth->logged_in()) {
            redirect('1b950a2cee305598cdc96de85d706237'); //auth/login
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

    function couponPurchased()
    {
        $this->data['title'] = 'ecoBox';
        $this->data['subtitle'] = 'Purchased Coupons';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'ecobox/couponPurchased';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_meal_coupon_buy');
        $crud->set_relation('payment_id', 'eco_selcom_payments', 'eco_ref');
        $crud->order_by('id', 'desc');
        $crud->columns('purchase_id', 'sub_id', 'card_no', 'coupon_name', 'amount', 'coupon_date', 'status', 'payment_id', 'date_registered');
        $crud->display_as('purchase_id', 'Purchase ID')
            ->display_as('sub_id', 'Subscriber')
            ->display_as('card_no', 'Card No.')
            ->display_as('coupon_name', 'Coupon')
            ->display_as('coupon_date', 'Purchase Date')
            ->display_as('payment_id', 'Payment Ref.')
            ->display_as('date_registered', 'Timestamp');
        $crud->unset_clone();
        $crud->unset_add();
        $crud->unset_edit();
        $crud->unset_delete();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->callback_column('status', array($this, '_callback_status'));
        $crud->callback_column('sub_id', array($this, '_callback_get_sub_name_by_id'));
        /*$crud->callback_column('payment_id', array($this, '_callback_payment_ref_by_id'));*/
        $crud->callback_column('amount', array($this, '_callback_format_amount'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function cafeteriaLogs()
    {
        $this->data['title'] = 'ecoBox';
        $this->data['subtitle'] = 'Purchased Coupons';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'ecobox/cafeteriaLogs';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_meal_purchase');
        $crud->set_primary_key('terminal_id', 'eco_meal_terminal');
        //$crud->set_relation('terminal_id', 'eco_meal_terminal', 'terminal_code');
        $crud->set_relation('cafeteria_id', 'eco_meal_cafeteria', 'cafeteria_name');
        $crud->set_primary_key('code', 'eco_meal_term_res_code');
        $crud->set_relation('res_code', 'eco_meal_term_res_code', 'description');
        $crud->order_by('id', 'DESC');
        $crud->columns('log_id', 'card_no', 'amount', 'sub_id', 'terminal_id', 'cafeteria_id', 'res_code', 'date_registered');
        $crud->display_as('log_id', 'Log ID')
            ->display_as('card_no', 'Card No.')
            ->display_as('sub_id', 'Subscriber')
            ->display_as('terminal_id', 'Terminal')
            ->display_as('cafeteria_id', 'Cafeteria')
            ->display_as('res_code', 'Response')
            ->display_as('date_registered', 'Timestamp');
        $crud->unset_clone();
        $crud->unset_add();
        $crud->unset_edit();
        $crud->unset_delete();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->callback_column('amount', array($this, '_callback_format_amount'));
        $crud->callback_column('sub_id', array($this, '_callback_get_sub_name_by_id'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function cafeteria()
    {
        $this->data['title'] = 'ecoBox';
        $this->data['subtitle'] = 'Purchased Coupons';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'ecobox/cafeteria';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_meal_cafeteria');
        $crud->set_relation('campus_id', 'eco_campus', 'campus_name');
        $crud->fields('cafeteria_name', 'address', 'campus_id', 'status');
        $crud->required_fields('cafeteria_name', 'address', 'campus_id', 'status');
        $crud->unset_texteditor('address', 'full_text');
        $crud->unset_clone();
        //$crud->unset_add();
        //$crud->unset_edit();
        $crud->unset_delete();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function terminals()
    {
        $this->data['title'] = 'ecoBox';
        $this->data['subtitle'] = 'Purchased Coupons';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'ecobox/terminals';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_meal_terminal');
        $crud->set_relation('cafeteria_id', 'eco_meal_cafeteria', 'cafeteria_name');
        $crud->order_by('id', 'desc');
        $crud->fields('terminal_id', 'terminal_code', 'cafeteria_id', 'status');
        $crud->required_fields('terminal_id', 'terminal_code', 'cafeteria_id', 'status');
        $crud->display_as('terminal_id', 'Terminal ID')
            ->display_as('terminal_code', 'Terminal Code')
            ->display_as('cafeteria_id', 'Cafeteria');
        $crud->unset_clone();
        //$crud->unset_add();
        //$crud->unset_edit();
        $crud->unset_delete();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_get_sub_name_by_id($value, $row)
    {
        $sub = $this->db->get_where('sub_card_vw', array('sub_id' => $value));
        if ($sub->num_rows() == 1) {
            $sub = $sub->row();
            return $sub->sub_name;
        } else {
            return '';
        }
    }

    function _callback_payment_ref_by_id($value, $row)
    {
        $sub = $this->db->get_where('selcom_payments', array('id' => $value))->row();
        return $sub->eco_ref;
    }

    function _callback_format_amount($value, $row)
    {
        return '<span class="pull-right">' . number_format($value, 0) . '</span>';
    }

    function _callback_status($value, $row)
    {
        if ($value == 'Paid') {
            return '<span class="badge badge-success" style="font-size:11px">' . $value . '</span>';
        } elseif ($value === 'Unpaid') {
            return '<span class="badge badge-warning" style="font-size:11px">' . $value . '</span>';
        } else {
            return '<span class="badge badge-dark" style="font-size:11px">' . $value . '</span>';
        }
    }

}