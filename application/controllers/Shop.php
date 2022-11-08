<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require_once APPPATH . '/third_party/PHPExcel/IOFactory.php';

class Shop extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'excel', 'session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //Call this mysql procedure to change session timezone for all database CRUD
//        $this->db->query("CALL mysql.store_time_zone()");
        //check session
        $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        $this->load->model(array('Card_model', 'Subscriber_model', 'Sms_model', 'Shop_model'));
    }

    function index()
    {

    }

    function bottleDashboard()
    {
        $this->data['title'] = 'Shop';
        $this->data['subtitle'] = 'Bottle Dashboard';
        $this->data['subview'] = 'bottles/bottle_dashboard';
        $this->data['pageurl'] = 'shop/bottleDashboard';
        $today = date('Y-m-d');
        $yesterday = date('Y-m-d', strtotime('-1 days'));
        $past_thirty_days = date('Y-m-d', strtotime('-15 days'));
        $start_of_moth = date('Y-m') . '-01';
        $start_of_year = date('Y') . '-01-01';
        $start_of_last_month = date('Y-m-d', strtotime('first day of last month'));
        $end_of_last_month = date('Y-m-d', strtotime('last day of last month'));
        $start_of_last_year = date('Y-m-d', strtotime('first day of last year'));
        $end_of_last_year = date('Y-m-d', strtotime('last day of last year'));
        $this->data['active_loans_balance'] = $this->Shop_model->get_total_active_loan_balance();
        $this->data['total_loans_balance'] = $this->Shop_model->get_total_loan_balance();
        $this->data['repayment_today'] = $this->Shop_model->get_repayments_amount($today, $today);
        $this->data['bottle_today'] = $this->Shop_model->get_loans_sold($today, $today);
        $this->data['repayment_yesterday'] = $this->Shop_model->get_repayments_amount($yesterday, $yesterday);
        $this->data['repayment_this_month'] = $this->Shop_model->get_repayments_amount($start_of_moth, $today);
        $this->data['bottle_mtd'] = $this->Shop_model->get_loans_sold($start_of_moth, $today);
        $this->data['repayment_last_month'] = $this->Shop_model->get_repayments_amount($start_of_last_month, $end_of_last_month);
        $this->data['repayment_this_year'] = $this->Shop_model->get_repayments_amount($start_of_year, $today);
        $this->data['bottle_ytd'] = $this->Shop_model->get_loans_sold($start_of_year, $today);
        $this->data['repayment_last_year'] = $this->Shop_model->get_repayments_amount($start_of_last_year, $end_of_last_year);
        $this->data['key_details'] = $this->Shop_model->get_bottle_details_aggregate();
        $this->data['key_ratio_data'] = $this->Shop_model->get_key_ration_data();
        $this->data['loan_repayment_trend'] = $this->Shop_model->get_loans_and_repayments_trend($past_thirty_days, $today);
        $this->load->view('_layout_main', $this->data);
    }

    function bottleConfig()
    {
        $this->data['title'] = 'Shop';
        $this->data['subtitle'] = 'Catalogue';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'shop/bottleConfig';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_bottles');
        $crud->columns('bottle_name', 'litres', 'price', 'loan_rate', 'max_sell');
        $crud->fields('bottle_name', 'litres', 'price', 'loan_rate', 'max_sell');
        $crud->required_fields('bottle_name', 'litres', 'price', 'loan_rate', 'max_sell');
        $crud->display_as('loan_rate', 'Loan Rate');
        //$crud->change_field_type('branch_code','invisible');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->callback_column('price', array($this, '_callback_format_amount'));
        $crud->callback_column('loan_rate', array($this, '_callback_format_rate'));
        $crud->callback_column('litres', array($this, '_callback_format_litres'));
        $crud->callback_column('bottle_name', array($this, '_callback_format_bottle_name'));
        $crud->callback_column('max_sell', array($this, '_callback_format_number'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function bottleLoans()
    {
        $this->data['title'] = 'Shop';
        $this->data['subtitle'] = 'Bottle Loans';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'shop/bottleLoans';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_bottles_sold');
        $crud->set_relation('sub_id', 'eco_subscribers', 'sub_name');
        $crud->set_primary_key('sub_id', 'eco_sub_card_vw');
        $crud->set_relation('card_no', 'eco_sub_card_vw', 'card_luhn');
        $crud->set_relation('bottle_id', 'eco_bottles', 'bottle_name');
        $crud->order_by('id', 'DESC');
        $crud->columns('id', 'sub_id', 'card_no', 'bottle_id', 'quantity', 'loan_amount', 'collected_amount', 'mobile', 'cashier', 'sell_date', 'status');
        $crud->fields('id', 'sub_id', 'bottle_id', 'quantity', 'unit_price', 'loan_amount', 'collected_amount', 'mobile', 'rate', 'cashier', 'sell_date', 'loan_end_date', 'status', 'modified_by');
        //$crud->edit_fields('customerName','contactLastName','phone','city','country','salesRepEmployeeNumber','creditLimit');
        $crud->field_type('id', 'readonly')
            ->field_type('quantity', 'readonly')
            ->field_type('sub_id', 'readonly')
            ->field_type('unit_price', 'readonly')
            ->field_type('loan_amount', 'readonly')
            ->field_type('collected_amount', 'readonly')
            ->field_type('mobile', 'readonly')
            ->field_type('cashier', 'readonly')
            ->field_type('sell_date', 'readonly')
            ->field_type('loan_end_date', 'readonly')
            ->field_type('status', 'readonly');
        $crud->display_as('bottle_id', 'Bottle')
            ->display_as('sub_id', 'Subscriber')
            ->display_as('sell_date', 'Loan Date')
            ->display_as('loan_end_date', 'End Date')
            ->display_as('loan_amount', 'Total Loan')
            ->display_as('collected_amount', 'Repayment')
            ->display_as('id', 'ID');
        $crud->set_rules('rate', 'Rate', 'required|greater_than_equal_to[10]|less_than_equal_to[100]');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->unset_add();
        if (!($this->session->userdata('usertypeid') === '1' || $this->session->userdata('usertypeid') === '17')) {
            $crud->unset_edit();
        }
        $crud->unset_delete();
        $crud->unset_read();
        $crud->add_action('', '', base_url('shop/viewLoan/'), 'fa fa-eye');
        $crud->callback_column('unit_price', array($this, '_callback_format_amount'));
        $crud->callback_column('loan_amount', array($this, '_callback_format_amount'));
        $crud->callback_column('collected_amount', array($this, '_callback_format_amount'));
        $crud->callback_column('quantity', array($this, '_callback_format_number'));
        $crud->callback_column('rate', array($this, '_callback_format_rate'));
        $crud->callback_column('card_no', array($this, '_callback_get_card_no'));
        $crud->callback_column('status', array($this, '_callback_status'));
        $crud->callback_column('sell_date', array($this, '_callback_format_date'));
        $crud->callback_edit_field('unit_price', function ($value, $primary_key) {
            return number_format($value, 2);
        });
        $crud->callback_edit_field('loan_amount', function ($value, $primary_key) {
            return number_format($value, 2);
        });
        $crud->callback_edit_field('collected_amount', function ($value, $primary_key) {
            return number_format($value, 2);
        });
        $crud->field_type('modified_by', 'hidden', $this->session->userdata('username'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_validate_rate($post_array, $primary_key)
    {
        $rate = $post_array['password'];
    }

    function viewLoan($loan_id = '')
    {
        $this->data['title'] = 'Bottles';
        $this->data['subtitle'] = 'Loans';
        $this->data['subview'] = 'bottles/view_loan';
        $this->data['pageurl'] = 'shop/bottleLoans';
        //loan detail
        $this->db->select('a.*,b.bottle_name,b.litres,c.sub_name,c.card_no,c.card_luhn');
        $this->db->from('bottles_sold a');
        $this->db->join('bottles b', 'a.bottle_id = b.id', 'LEFT');
        $this->db->join('sub_card_vw c', 'a.sub_id = c.sub_id', 'LEFT');
        $this->db->where('a.id', $loan_id);
        $this->data['loan'] = $this->db->get()->row();
        #installments
        /*
        $this->db->select('a.*,b.amount as mob_amt,b.eco_ref,b.msisdn as mob_paid,b.utilityref_card_no');
        $this->db->from('bottles_repayment a');
        $this->db->join('selcom_payments b', 'a.mobile_payment_id = b.id', 'LEFT');
        $this->db->where(array('a.loan_id' => $loan_id, 'b.v_status' => '000', 'b.n_status' => '000'));
        $this->db->order_by('a.id', 'DESC');
        $this->data['installment'] = $this->db->get()->result();
        */
        $this->data['installment'] = $this->db->query("select x.*
                        from (
                                 select a.*, b.amount as mob_amt, b.eco_ref, b.msisdn as mob_paid, b.utilityref_card_no
                                 from eco_bottles_repayment a,
                                      eco_selcom_payments b
                                 where a.mobile_payment_id = b.id
                                   and a.loan_id = '6'
                                   and b.v_status = '000'
                                   and b.n_status = '000'
                                 union all
                                 select a.*, b.amount as mob_amt, b.eco_ref, b.msisdn as mob_paid, b.utilityref_card_no
                                 from eco_bottles_repayment a,
                                      eco_selcom_payments_arch b
                                 where a.mobile_payment_id = b.id
                                   and a.loan_id = '6'
                                   and b.v_status = '000'
                                   and b.n_status = '000'
                             ) x order by x.id desc")->result();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_format_amount($value, $row)
    {
        return "<span style='width:100%;text-align:right;display:block;'>" . number_format($value, 2) . "</span>";
    }

    function _callback_format_number($value, $row)
    {
        return "<span style='width:100%;text-align:right;display:block;'>" . $value . "</span>";
    }

    function _callback_format_rate($value, $row)
    {
        $rate = number_format($value, 0) . '%';
        return "<span style='width:100%;text-align:right;display:block;'>" . $rate . "</span>";
    }

    function _callback_format_litres($value, $row)
    {
        $litres = $value . ' ltr';
        return "<span style='width:100%;text-align:right;display:block;'>" . $litres . "</span>";
    }

    function _callback_format_bottle_name($value, $row)
    {
        return "<span style='width:100%;text-align:left;display:block;'><strong>" . $value . "</strong></span>";
    }

    function _callback_get_card_no($value, $row)
    {
        $sub_id = $row->sub_id;
        $sub = $this->db->get_where('sub_card_vw', array('sub_id' => $sub_id))->row();
        return $sub->card_no;
    }

    function _callback_format_date($value, $row)
    {
        return date('d/m/Y', strtotime($value));
    }

    function _callback_status($value, $row)
    {
        if ($value === 'Active') {
            return '<span class="badge badge-success" style="font-size:11px">' . $value . '</span>';
        } elseif ($value === 'Full Paid') {
            return '<span class="badge badge-dark" style="font-size:11px">' . $value . '</span>';
        } elseif ($value === 'Fraud') {
            return '<span class="badge badge-danger" style="font-size:11px">' . $value . '</span>';
        } elseif ($value === 'Loss') {
            return '<span class="badge badge-warning" style="font-size:11px">' . $value . '</span>';
        } else {
            return '<span class="badge badge-dark" style="font-size:11px">' . $value . '</span>';
        }
    }

}
