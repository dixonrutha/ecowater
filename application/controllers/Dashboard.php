<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', /*'excel',*/ 'session'));
        $this->load->model('Dashboard_model');
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        if (!$this->ion_auth->logged_in()) {
            redirect('1b950a2cee305598cdc96de85d706237');
        } //auth/login
        //Call this mysql procedure to change session timezone for all database CRUD
        //$this->db->query("CALL mysql.store_time_zone()");
        //check session
        $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
    }

    function index() {
        $usergroup = $this->session->userdata('usertypeid');
        $dashboard_id = $this->db->get_where('usergroups', array('id' => $usergroup))->row()->group_dashboard;
        if ($dashboard_id != '') {
            $dashboard = $this->db->get_where('dashboards', array('id' => $dashboard_id))->row();
            redirect($dashboard->url_link);
        } else {
            redirect('dashboard/defaultDashboard');
        }
    }

    function adminDashboard() {
        $this->data['title'] = 'Dashboard';
        $this->data['subtitle'] = 'eCloud';
        $this->data["subview"] = "dashboard/admin_dash";
        $this->data["pageurl"] = base_url();
        $today = date('Y-m-d');
        $yesterday = date('Y-m-d', strtotime('-1 days'));
        $first_date = date('Y-m-') . '01';
        $past_seven_days = date('Y-m-d', strtotime('-7 days'));
        $past_thirty_days = date('Y-m-d', strtotime('-30 days'));
        $prev_year = date('Y', strtotime('-1 year'));
        $jan_prev_yr = $prev_year . date('-01-01');
        $prev_month = date('Y-m', strtotime('-1 month'));
        $first_date_pmonth = $prev_month . '-01';
        $last_date_pmonth = date('Y-m-d', strtotime('last day of previous month'));
        $this->data['campus_sales'] = $this->Dashboard_model->get_campus_sales_today($today);
        $this->data['campus_sales_month'] = $this->Dashboard_model->get_campus_sales_month($first_date, $today);
        $this->data['campus_t_sales_month'] = $this->Dashboard_model->get_total_campus_sales($first_date, $today);
        $this->data['sub_today'] = $this->Dashboard_model->get_sub_count($today, date('Y-m-d', strtotime('+1 days')));
        $this->data['sub_mtd'] = $this->Dashboard_model->get_sub_count($first_date, $today);
        $this->data['sub_ytd'] = $this->Dashboard_model->get_sub_count(date('Y-' . '01-01'), $today);
        $this->data['active_sub'] = $this->Dashboard_model->get_active_sub_count();
        $this->data['sub_perf'] = $this->Dashboard_model->get_sub_perf();
        $this->data['categories'] = $this->Dashboard_model->get_sub_categories();
        $this->Dashboard_model->create_sub_perf_view(); //create subscriber perfornace view by group
        $this->Dashboard_model->create_revenue_view($first_date, $today); //create revenue view
        $this->data['revenues'] = $this->Dashboard_model->get_revenues($first_date, $today);
        $this->data['revenues_share'] = $this->Dashboard_model->get_revenue_share($first_date, $today);
        $this->Dashboard_model->create_royalty_view($jan_prev_yr, $today); //create royalty view
        $this->data['royalty_today'] = $this->Dashboard_model->get_royalty($today, $today);
        $this->data['royalty_yesterday'] = $this->Dashboard_model->get_royalty($yesterday, $yesterday);
        $this->data['royalty_mtd'] = $this->Dashboard_model->get_royalty($first_date, $today);
        $this->data['royalty_prev_mtd'] = $this->Dashboard_model->get_royalty($first_date_pmonth, $last_date_pmonth);
        $this->data['royalty_ytd'] = $this->Dashboard_model->get_royalty(date('Y') . '-01-01', $today);
        $this->data['royalty_prev_ytd'] = $this->Dashboard_model->get_royalty($prev_year . '-01-01', $prev_year . '-12-31');
        $this->Dashboard_model->create_water_sales_view(date('Y') . '-01-01', $today); //create water sales view
        $this->data['volumes_today'] = $this->Dashboard_model->get_volumes($today, $today);
        $this->data['volumes_mtd'] = $this->Dashboard_model->get_volumes($first_date, $today);
        $this->data['volumes_ytd'] = $this->Dashboard_model->get_volumes(date('Y') . '-01-01', $today);
        $this->data['notifications'] = $this->Dashboard_model->get_station_not_past_seven_days($past_seven_days);
        $this->Dashboard_model->create_topup_view(date('Y') . '-01-01', $today); //create topup/recharge view
        $this->data['topup_today'] = $this->Dashboard_model->get_topups($today, $today);
        $this->data['topup_mtd'] = $this->Dashboard_model->get_topups($first_date, $today);
        $this->data['topup_ytd'] = $this->Dashboard_model->get_topups(date('Y') . '-01-01', $today);
        $this->data['cash_today'] = $this->Dashboard_model->get_cash_sales($today, $today);
        $this->data['cash_mtd'] = $this->Dashboard_model->get_cash_sales($first_date, $today);
        $this->data['cash_ytd'] = $this->Dashboard_model->get_cash_sales(date('Y') . '-01-01', $today);
        $this->data['sub_fee_today'] = $this->Dashboard_model->get_total_subscription_fees($today, $today);
        $this->data['sub_fee_mtd'] = $this->Dashboard_model->get_total_subscription_fees($first_date, $today);
        $this->data['sub_fee_ytd'] = $this->Dashboard_model->get_total_subscription_fees(date('Y') . '-01-01', $today);
        $this->load->view('_layout_main', $this->data);
    }

    function campusManager() {
        $this->data['title'] = 'Dashboard';
        $this->data['subtitle'] = 'eCloud';
        $this->data["subview"] = "dashboard/campus_manager_new";
        $this->data["pageurl"] = base_url();
        //get campus details
        $campus_id = $this->session->userdata('campus');
        $this->data["campus_id"] = $campus_id;
        if ($campus_id === '0') {
            //no campus assigned redirect to empty dashboard
            $this->session->set_flashdata('warning', 'Campus not assigned for this user, please contact system administartor');
            $this->data["subview"] = "dashboard/default_dashboard";
            //redirect('dashboard/defaultDashboard');
            $this->load->view('_layout_topnav', $this->data);
        } else {
            $this->data['subscribers'] = $this->Dashboard_model->get_subscribers_count_by_campus($campus_id);
            $this->data['stations'] = $this->Dashboard_model->get_stations_count_by_campus($campus_id);
            $bills = $this->Dashboard_model->get_utility_bills_by_campus($campus_id);
            $water = 0;
            $electricity = 0;
            if ($bills) {
                foreach ($bills as $b) {
                    if ($b->utility_type === 'EL') {
                        $electricity = $electricity + $b->cost;
                    } elseif ($b->utility_type === 'RW') {
                        $water = $water + $b->cost;
                    }
                }
            }
            $from_date = date('Y-m-d', strtotime('-7 days'));
            $to_date = date('Y-m-d');
            $this->data['electricity'] = $electricity;
            $this->data['water'] = $water;
            $this->data['bill_invoices'] = $this->Dashboard_model->get_campus_utility_pending_bill_invoices($campus_id);
            $this->data['royalty_invoices'] = $this->Dashboard_model->get_campus_pending_royalty_invoices($campus_id);
            $this->data['royalty'] = $this->Dashboard_model->get_campus_royalty($campus_id, $from_date, $to_date);
            $this->data['royalty_ytd'] = $this->Dashboard_model->get_campus_royalty_ytd($campus_id, date('Y') . '-01-01', date('Y-m-d'));
            $this->load->view('_layout_topnav', $this->data);
        }
    }

    function defaultDashboard() {
        $this->data['title'] = 'Dashboard';
        $this->data['subtitle'] = 'EcoWater';
        $this->data["subview"] = "dashboard/default_dashboard";
        $this->data["pageurl"] = base_url();
        $this->data["full_name"] = $this->session->userdata('name');
        $today = date('Y-m-d');
        $yesterday = date('Y-m-d', strtotime('-1 days'));
        $first_date = date('Y-m-') . '01';
        $past_seven_days = date('Y-m-d', strtotime('-7 days'));
        $past_thirty_days = date('Y-m-d', strtotime('-30 days'));
        $prev_year = date('Y', strtotime('-1 year'));
        $jan_prev_yr = $prev_year . date('-01-01');
        $prev_month = date('Y-m', strtotime('-1 month'));
        $first_date_pmonth = $prev_month . '-01';
        $last_date_pmonth = date('Y-m-d', strtotime('last day of previous month'));
        $this->data['campus_sales'] = $this->Dashboard_model->get_campus_sales_today($today);
        $this->data['campus_sales_month'] = $this->Dashboard_model->get_campus_sales_month($first_date, $today);
        $this->data['campus_t_sales_month'] = $this->Dashboard_model->get_total_campus_sales($first_date, $today);
        $this->data['sub_today'] = $this->Dashboard_model->get_sub_count($today, date('Y-m-d', strtotime('+1 days')));
        $this->data['sub_mtd'] = $this->Dashboard_model->get_sub_count($first_date, $today);
        $this->data['sub_ytd'] = $this->Dashboard_model->get_sub_count(date('Y-' . '01-01'), $today);
        $this->data['active_sub'] = $this->Dashboard_model->get_active_sub_count();
        $this->data['sub_perf'] = $this->Dashboard_model->get_sub_perf();
        $this->data['categories'] = $this->Dashboard_model->get_sub_categories();
        $this->Dashboard_model->create_sub_perf_view(); //create subscriber perfornace view by group
        $this->Dashboard_model->create_revenue_view($first_date, $today); //create revenue view
        $this->data['revenues'] = $this->Dashboard_model->get_revenues($first_date, $today);
        $this->Dashboard_model->create_royalty_view($jan_prev_yr, $today); //create royalty view
        $this->data['royalty_today'] = $this->Dashboard_model->get_royalty($today, $today);
        $this->data['royalty_yesterday'] = $this->Dashboard_model->get_royalty($yesterday, $yesterday);
        $this->data['royalty_mtd'] = $this->Dashboard_model->get_royalty($first_date, $today);
        $this->data['royalty_prev_mtd'] = $this->Dashboard_model->get_royalty($first_date_pmonth, $last_date_pmonth);
        $this->data['royalty_ytd'] = $this->Dashboard_model->get_royalty(date('Y') . '-01-01', $today);
        $this->data['royalty_prev_ytd'] = $this->Dashboard_model->get_royalty($prev_year . '-01-01', $prev_year . '-12-31');
        $this->Dashboard_model->create_water_sales_view(date('Y') . '-01-01', $today); //create water sales view
        $this->data['volumes_today'] = $this->Dashboard_model->get_volumes($today, $today);
        $this->data['volumes_mtd'] = $this->Dashboard_model->get_volumes($first_date, $today);
        $this->data['volumes_ytd'] = $this->Dashboard_model->get_volumes(date('Y') . '-01-01', $today);
        $this->data['notifications'] = $this->Dashboard_model->get_station_not_past_seven_days($past_seven_days);
        $this->load->view('_layout_main', $this->data);
    }

    function investorDashboard() {
        $userid = $this->session->userdata('id');
        $result = $this->db->get_where('investors', array('sys_user_id' => $userid));
        if ($result->num_rows() == 0) {
            $this->session->set_flashdata('warning', 'User exist but not assigned profile on investor panel. Please contact system administrator');
            redirect('dashboard/defaultDashboard');
        } else {
            $investor = $result->row();
            $investor_id = $investor->id;
            $this->db->order_by('id', 'DESC');
            $contract = $this->db->get_where('investor_contracts', array('investor_id' => $investor_id));
            if ($contract->num_rows() == 0) {
                $this->session->set_flashdata('warning', 'No contract assigned for this investor. Please contact system administrator');
                redirect('dashboard/defaultDashboard');
            } else {
                $contract = $contract->row();
                //echo $contract->id; exit();
                redirect('investors/dashboard/' . $contract->id);
            }
        }
    }

    function cashierDashboard() {
        $this->data['title'] = 'Cashier';
        $this->data['subtitle'] = 'Dashboard';
        $this->data["subview"] = 'dashboard/cashier_dashboard';
        $username = $this->session->userdata('username');
        //$username = 'marando2021';
        $user_id = $this->session->userdata('id');
        $today = date('Y-m-d');
        $yesterday = date('Y-m-d', strtotime('-1 days'));
        $start_of_month = date('Y-m-') . '01';
        //get subscribers
        $this->data['sub_count'] = $this->db->query("SELECT sub_name,card_no,mobile FROM eco_subscribers WHERE registered_by = '$username' AND CAST(date_registered AS DATE) = '$today' ")->num_rows();
        // get current float balance
        $this->data['cashier'] = $this->db->get_where('cashiers', array('user_id' => $user_id))->row();
        //subscription fee
        $this->data['sub_fee'] = $this->db->query("SELECT sum(sub_fee_amount) as fee FROM eco_subscribers WHERE CAST(date_registered AS date) = '$today' AND registered_by = '$username' ")->row();
        $this->data['sub_fee_yday'] = $this->db->query("SELECT sum(sub_fee_amount) as fee FROM eco_subscribers WHERE CAST(date_registered AS date) BETWEEN '$start_of_month' AND '$today' AND registered_by = '$username' ")->row();
        //recharges
        $this->data['recharges'] = $this->db->query("SELECT sum(amount) as amount FROM eco_card_topup WHERE CAST(date_registered AS date) = '$today' AND maker_id = '$username' AND category = 'RECHARGE'")->row();
        $this->data['recharges_yday'] = $this->db->query("SELECT sum(amount) as amount FROM eco_card_topup WHERE CAST(date_registered AS date) BETWEEN '$start_of_month' AND '$today' AND maker_id = '$username' AND category = 'RECHARGE'")->row();
        $this->load->view('_layout_cashier', $this->data);
    }

    function test() {
        $this->data['title'] = 'Dashboard';
        $this->data['subtitle'] = 'eCloud';
        $this->data["subview"] = "dashboard/campus_manager_new";
        $this->data["pageurl"] = base_url();
        //get campus details
        $campus_id = $this->session->userdata('campus');
        $this->data["campus_id"] = $campus_id;
        if ($campus_id === '0') {
            //no campus assigned redirect to empty dashboard
            $this->session->set_flashdata('warning', 'Campus not assigned for this user, please contact system administartor');
            redirect('dashboard/defaultDashboard');
        }
        $this->data['subscribers'] = $this->Dashboard_model->get_subscribers_count_by_campus($campus_id);
        $this->data['stations'] = $this->Dashboard_model->get_stations_count_by_campus($campus_id);
        $bills = $this->Dashboard_model->get_utility_bills_by_campus($campus_id);
        $water = 0;
        $electricity = 0;
        if ($bills) {
            foreach ($bills as $b) {
                if ($b->utility_type === 'EL') {
                    $electricity = $electricity + $b->cost;
                } elseif ($b->utility_type === 'RW') {
                    $water = $water + $b->cost;
                }
            }
        }
        $from_date = date('Y-m-d', strtotime('-7 days'));
        $to_date = date('Y-m-d');
        $this->data['electricity'] = $electricity;
        $this->data['water'] = $water;
        $this->data['bill_invoices'] = $this->Dashboard_model->get_campus_utility_pending_bill_invoices($campus_id);
        $this->data['royalty_invoices'] = $this->Dashboard_model->get_campus_pending_royalty_invoices($campus_id);
        $this->data['royalty'] = $this->Dashboard_model->get_campus_royalty($campus_id, $from_date, $to_date);
        $this->load->view('_layout_topnav', $this->data);
    }

    function grocerycrud() {
        $this->data['title'] = 'Dashboard';
        $this->data['subtitle'] = 'eCloud';
        $this->data["subview"] = "dashboard/crud";
        $this->data["pageurl"] = base_url();
        //$this->load->library('grocery_CRUD');
        $crud = new grocery_CRUD();
        //$crud->set_theme('bootstrap'); 
        //$crud->set_subject('Customer', 'Customers'); 
        $crud->set_table('eco_cards');
        /* $crud->columns('customerName','contactLastName','phone','city',
          'country','salesRepEmployeeNumber','creditLimit');
          $crud->display_as('salesRepEmployeeNumber','from Employeer')
          ->display_as('customerName','Name')
          ->display_as('contactLastName','Last Name');

          $crud->set_relation('salesRepEmployeeNumber','employees','lastName'); */

        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

}
