<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Investors extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'excel', 'session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        $this->load->model(array('Investor_model', 'Campus_model', 'Settings_model', 'Stations_model'));
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
//        //Call this mysql procedure to change session timezone for all database CRUD
//        $this->db->query("CALL mysql.store_time_zone()");
        //check session
        $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
    }

    function index() {
        
    }

    function listInvestors() {
        $this->data['title'] = 'Investors';
        $this->data['subtitle'] = 'List';
        $this->data["subview"] = 'components/crud';
        $this->data["pageurl"] = '719e5fd2bcdea0c82f8b2d66823a071e';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_investors');
        $crud->set_relation('sys_user_id', 'eco_users', 'username');
        $crud->columns('first_name', 'mobile', 'email', 'physical_addr', 'next_of_kin', 'sys_user_id');
        $crud->add_fields('first_name', 'middle_name', 'surname', 'mobile', 'email', 'physical_addr', 'next_of_kin', 'next_of_kin_mobile', 'next_of_kin_addr', 'sys_user_id');
        $crud->edit_fields('first_name', 'middle_name', 'surname', 'mobile', 'email', 'physical_addr', 'next_of_kin', 'next_of_kin_mobile', 'next_of_kin_addr', 'sys_user_id');
        $crud->display_as('sys_user_id', 'User ID')
                ->display_as('first_name', 'Investor Name');
        $crud->required_fields('first_name', 'surname', 'mobile', 'email', 'physical_addr', 'next_of_kin', 'next_of_kin_mobile', 'next_of_kin_addr', 'sys_user_id');
        $crud->callback_column('first_name', array($this, '_callback_format_name'));
        $crud->callback_column('next_of_kin', array($this, '_callback_next_of_kin'));
        $crud->unset_clone();
        $crud->unset_delete();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->unset_delete();
        $crud->set_crud_url_path(site_url('investors/listInvestors'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_format_name($value, $row) {
        return $value . ' ' . $row->middle_name . ' ' . $row->surname;
    }

    function _callback_next_of_kin($value, $row) {
        return $value . ' | ' . $row->next_of_kin_mobile . ' | ' . $row->next_of_kin_addr;
    }

    function investorContracts() {
        $this->data['title'] = 'Investors';
        $this->data['subtitle'] = 'Contracts';
        $this->data["subview"] = 'components/crud';
        $this->data["pageurl"] = '45e1a84d034d65a00bf29f525110c511';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_investor_contracts');
        $crud->set_relation('investor_id', 'eco_investors', '{first_name} {surname}');
        $crud->columns('contract_no', 'contract_date', 'investor_id', 'invested_amount', 'payback_pref', 'exit_duration', 'exit_start_date', 'inv_curr_stage', 'monthly_rate', 'revise');
        $crud->add_fields('contract_no', 'contract_date', 'investor_id', 'invested_amount', 'payback_pref', 'exit_duration', 'exit_start_date', 'inv_curr_stage', 'monthly_rate', 'revise');
        $crud->edit_fields('contract_no', 'contract_date', 'investor_id', 'invested_amount', 'payback_pref', 'exit_duration', 'exit_start_date', 'inv_curr_stage', 'monthly_rate', 'revise');
        $crud->display_as('investor_id', 'Investor')
                ->display_as('invested_amount', 'Investment');
        $crud->required_fields('contract_no', 'contract_date', 'investor_id', 'invested_amount', 'payback_pref', 'inv_curr_stage', 'monthly_rate', 'revise');
        $crud->callback_column('invested_amount', array($this, '_callback_format_amount'));
        $crud->callback_column('contract_date', array($this, '_callback_format_date'));
        $crud->callback_column('exit_start_date', array($this, '_callback_format_date'));
        $crud->callback_column('monthly_rate', array($this, '_callback_format_rate'));
        $crud->callback_column('exit_duration', array($this, '_callback_format_exit_duration'));
        $crud->set_rules('monthly_rate', 'Monthly Rate', 'required|numeric|greater_than[0]|less_than_equal_to[100]');
        $crud->set_rules('invested_amount', 'Invested Amount', 'required|numeric|greater_than[0]');
        $crud->unset_clone();
        $crud->unset_read();
        $crud->unset_delete();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->unset_delete();
        $crud->add_action('Dashboard', '', '', 'fa fa-eye', array($this, '_callback_view_contract'));
        $crud->add_action('Config', '', '', 'fa fa-cogs', array($this, '_callback_config_contract'));
        $crud->add_action('Syn Sales', '', '', 'fa fa-refresh', array($this, '_callback_sys_sales'));
        $crud->set_crud_url_path(site_url('investors/investorContracts'));
        $this->data['content'] = $crud->render();
        /*
          $xcrud = xcrud_get_instance();
          $xcrud->table('investor_contracts');
          $xcrud->relation ('investor_id', 'eco_investors','id','first_name');
          $xcrud->columns('date_registered, date_updated',true);
          $xcrud->fields('date_registered, date_updated',true);
          $xcrud->change_type('invested_amount','price');
          $xcrud->button(base_url('investors/dashboard/{id}'),'View','fa fa-search','btn btn-info',array('target'=>'_blank'));
          $xcrud->button(base_url('investors/contractSettings/{id}'),'Config','fa fa-cogs','','','');
          $xcrud->button(base_url('investors/synchronizeSales/{id}'),'Sync Sales','fa fa-refresh','btn btn-success','','');
          $xcrud->column_callback('contract_date, exit_start_date', 'format_date', 'customfunctions.php');
          $xcrud->unset_title();
          $xcrud->unset_remove();
          $xcrud->unset_view();
          $this->data['content'] = $xcrud->render();
         */
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_view_contract($primary_key, $row) {
        return site_url('investors/dashboard/') . $primary_key;
    }

    function _callback_sys_sales($primary_key, $row) {
        return site_url('investors/synchronizeSales/') . $primary_key;
    }

    function _callback_config_contract($primary_key, $row) {
        return site_url('investors/contractSettings/') . $primary_key;
    }

    function _callback_format_rate($value, $row) {
        return $value . '%';
    }

    function _callback_format_exit_duration($value, $row) {
        return $value . ' Year(s)';
    }

    function synchronizeSales($contract_id = FALSE) {
        $contract = $this->Investor_model->get_contract_details($contract_id);
        #Check if contract need to be revised
        if ($contract->revise === 'Y') {
            redirect('investors/synchronizeSalesRev/' . $contract_id);
        }
        #Check if contract need to be revised		
        if ($contract->payback_pref === 'Single') {
            $sales = $this->Investor_model->get_contract_station_sales($contract->exit_start_date, date('Y-m-d'), $contract_id);
        } elseif ($contract->payback_pref === 'Monthly') {
            $sales = $this->Investor_model->get_contract_station_sales($contract->contract_date, date('Y-m-d'), $contract_id);
        } elseif ($contract->payback_pref === 'Refund') {
            $sales = $this->Investor_model->get_contract_station_sales($contract->contract_date, date('Y-m-d'), $contract_id);
        } else {
            $this->session->set_flashdata('error', 'Internal error, please contact system administator');
            redirect('investors/investorContracts');
        }
        $start_date = $contract->contract_date;
        $sales = $this->Investor_model->get_contract_station_sales($contract->contract_date, date('Y-m-d'), $contract_id);
        if ($sales->num_rows() >= 1) {
            $result = $sales->result();
            $inv_amount = $contract->invested_amount;
            $payments = 0;
            $initial_end_date = date('Y-m-d');
            #delete all records in investor_station_sales for this contract		
            $this->db->where('contract_id', $contract_id);
            $this->db->delete('investor_station_sales');
            #delete end here
            #insert into investor sales table for initial stage sales
            foreach ($result as $r) {
                if ($payments <= $inv_amount) {
                    //investor payments is still less than invested amount hence still in initial stage
                    $rate = $contract->monthly_rate;
                    $stage = 'Initial';
                    $total_sales = $r->total_sale;
                    $inv_payment = $total_sales * $rate / 100;
                    $data = array(
                        'sale_date' => $r->sale_date,
                        'total_sales' => $total_sales,
                        'contract_id' => $contract_id,
                        'inv_rate' => $rate,
                        'inv_payment' => $inv_payment,
                        'stage' => $stage,
                        'Status' => 'Untransfered'
                    );
                    $this->db->insert('investor_station_sales', $data);
                    $payments = $payments + $inv_payment;
                    $initial_end_date = $r->sale_date; // set new initial stage end date 
                } else {
                    //payment amount is greater than invested amount, now exit stage start
                    //year 1 data
                    $year1_start_date = date('Y-m-d', strtotime($initial_end_date . '+1 day'));
                    $year1_end_date = date('Y-m-d', strtotime($year1_start_date . '+1 year'));
                    $year1 = array('start_date' => $year1_start_date, 'end_date' => $year1_end_date);
                    $this->Investor_model->update_contract_exit_rates($year1, $contract_id, '1');
                    //year 2 data
                    $year2_start_date = date('Y-m-d', strtotime($year1_end_date . '+1 day'));
                    $year2_end_date = date('Y-m-d', strtotime($year2_start_date . '+1 year'));
                    $year2 = array('start_date' => $year2_start_date, 'end_date' => $year2_end_date);
                    $this->Investor_model->update_contract_exit_rates($year2, $contract_id, '2');
                    //year 3 data
                    $year3_start_date = date('Y-m-d', strtotime($year2_end_date . '+1 day'));
                    $year3_end_date = date('Y-m-d', strtotime($year3_start_date . '+1 year'));
                    $year3 = array('start_date' => $year3_start_date, 'end_date' => $year3_end_date);
                    $this->Investor_model->update_contract_exit_rates($year3, $contract_id, '3');
                    break; // leave this loop
                }
            }
            #insert for initial stage end here
            //now start inserting for exit stages
            //get sales starting from initial exit date and above
            $exit_start_date = date('Y-m-d', strtotime($initial_end_date . '+1 day'));
            $exit_sales = $this->Investor_model->get_contract_station_sales($exit_start_date, date('Y-m-d'), $contract_id);
            $exit_rates = $this->Investor_model->get_contract_exit_rates($contract_id);
            $exit_rates_result = $exit_rates->result();
            //inititialize year_no rates
            $rate_1 = 0;
            $rate_2 = 0;
            $rate_n = 0;
            $year_1_start = '';
            $year_2_start = '';
            $year_n_start = '';
            $year_1_end = '';
            $year_2_end = '';
            $year_n_end = '';
            //re-initialize rates
            if ($exit_rates->num_rows() >= 1) {
                foreach ($exit_rates_result as $ext) {
                    if ($ext->year_no == 1) {
                        $rate_1 = $ext->int_rate;
                        $year_1_start = $ext->start_date;
                        $year_1_end = $ext->end_date;
                    } elseif ($ext->year_no == 2) {
                        $rate_2 = $ext->int_rate;
                        $year_2_start = $ext->start_date;
                        $year_2_end = $ext->end_date;
                    } else {
                        $rate_n = $ext->int_rate;
                        $year_n_start = $ext->start_date;
                        $year_n_end = $ext->end_date;
                    }
                }
            }
            //start inserting exit sales
            if ($exit_sales->num_rows() >= 1) {
                $exit_sales_result = $exit_sales->result();
                foreach ($exit_sales_result as $ex_sales) {
                    if ($ex_sales->sale_date >= $year_1_start && $ex_sales->sale_date <= $year_1_end) {
                        $sale_rate = $rate_1;
                    } elseif ($ex_sales->sale_date >= $year_2_start && $ex_sales->sale_date <= $year_2_end) {
                        $sale_rate = $rate_2;
                    } else {
                        $sale_rate = $rate_n;
                    }
                    $stage = 'Exit';
                    $total_sales = $ex_sales->total_sale;
                    $inv_payment = $total_sales * $sale_rate / 100;
                    $exit_data = array(
                        'sale_date' => $ex_sales->sale_date,
                        'total_sales' => $total_sales,
                        'contract_id' => $contract_id,
                        'inv_rate' => $sale_rate,
                        'inv_payment' => $inv_payment,
                        'stage' => $stage,
                        'Status' => 'Untransfered'
                    );
                    $this->db->insert('investor_station_sales', $exit_data);
                }
            } else {
                //echo 'no sales for exit stages'; exit();
            }
            $this->session->set_flashdata('success', 'Payments synchronized successfully');
            redirect('investors/investorContracts');
        } else {
            //echo no sales for this contract'; exit();
            $this->session->set_flashdata('warning', 'No station(s) sales for this contract');
            redirect('investors/investorContracts');
        }
    }

    /*
      Revised function for synchronize Investor contract sales
     */

    function synchronizeSalesRev($contract_id = FALSE) {
        $contract = $this->Investor_model->get_contract_details($contract_id);
        //Create view for revised sales
        $this->Investor_model->create_station_sales_view_revised();
        if ($contract->payback_pref === 'Single') {
            $sales = $this->Investor_model->get_contract_station_sales_rev($contract->exit_start_date, date('Y-m-d'), $contract_id);
        } elseif ($contract->payback_pref === 'Monthly') {
            $sales = $this->Investor_model->get_contract_station_sales_rev($contract->contract_date, date('Y-m-d'), $contract_id);
        } elseif ($contract->payback_pref === 'Refund') {
            $sales = $this->Investor_model->get_contract_station_sales_rev($contract->contract_date, date('Y-m-d'), $contract_id);
        } else {
            $this->session->set_flashdata('error', 'Internal error, please contact system administator');
            redirect('investors/investorContracts');
        }
        $start_date = $contract->contract_date;
        $sales = $this->Investor_model->get_contract_station_sales_rev($contract->contract_date, date('Y-m-d'), $contract_id);
        if ($sales->num_rows() >= 1) {
            $result = $sales->result();
            $inv_amount = $contract->invested_amount;
            $payments = 0;
            $initial_end_date = date('Y-m-d');
            #delete all records in investor_station_sales for this contract		
            $this->db->where('contract_id', $contract_id);
            $this->db->delete('eco_investor_station_sales_rev');
            #delete end here
            #insert into investor sales table for initial stage sales
            foreach ($result as $r) {
                if ($payments <= $inv_amount) {
                    //investor payments is still less than invested amount hence still in initial stage
                    $rate = $contract->monthly_rate;
                    $stage = 'Initial';
                    $total_sales = $r->total_sale;
                    $inv_payment = $total_sales * $rate / 100;
                    $data = array(
                        'sale_date' => $r->sale_date,
                        'total_sales' => $total_sales,
                        'contract_id' => $contract_id,
                        'inv_rate' => $rate,
                        'inv_payment' => $inv_payment,
                        'stage' => $stage,
                        'Status' => 'Untransfered'
                    );
                    $this->db->insert('investor_station_sales_rev', $data);
                    $payments = $payments + $inv_payment;
                    $initial_end_date = $r->sale_date; // set new initial stage end date 
                } else {
                    //payment amount is greater than invested amount, now exit stage start
                    //year 1 data
                    $year1_start_date = date('Y-m-d', strtotime($initial_end_date . '+1 day'));
                    $year1_end_date = date('Y-m-d', strtotime($year1_start_date . '+1 year'));
                    $year1 = array('start_date' => $year1_start_date, 'end_date' => $year1_end_date);
                    $this->Investor_model->update_contract_exit_rates($year1, $contract_id, '1');
                    //year 2 data
                    $year2_start_date = date('Y-m-d', strtotime($year1_end_date . '+1 day'));
                    $year2_end_date = date('Y-m-d', strtotime($year2_start_date . '+1 year'));
                    $year2 = array('start_date' => $year2_start_date, 'end_date' => $year2_end_date);
                    $this->Investor_model->update_contract_exit_rates($year2, $contract_id, '2');
                    //year 3 data
                    $year3_start_date = date('Y-m-d', strtotime($year2_end_date . '+1 day'));
                    $year3_end_date = date('Y-m-d', strtotime($year3_start_date . '+1 year'));
                    $year3 = array('start_date' => $year3_start_date, 'end_date' => $year3_end_date);
                    $this->Investor_model->update_contract_exit_rates($year3, $contract_id, '3');
                    break; // leave this loop
                }
            }
            #insert for initial stage end here
            //now start inserting for exit stages
            //get sales starting from initial exit date and above
            $exit_start_date = date('Y-m-d', strtotime($initial_end_date . '+1 day'));
            $exit_sales = $this->Investor_model->get_contract_station_sales_rev($exit_start_date, date('Y-m-d'), $contract_id);
            $exit_rates = $this->Investor_model->get_contract_exit_rates($contract_id);
            $exit_rates_result = $exit_rates->result();
            //inititialize year_no rates
            $rate_1 = 0;
            $rate_2 = 0;
            $rate_n = 0;
            $year_1_start = '';
            $year_2_start = '';
            $year_n_start = '';
            $year_1_end = '';
            $year_2_end = '';
            $year_n_end = '';
            //re-initialize rates
            if ($exit_rates->num_rows() >= 1) {
                foreach ($exit_rates_result as $ext) {
                    if ($ext->year_no == 1) {
                        $rate_1 = $ext->int_rate;
                        $year_1_start = $ext->start_date;
                        $year_1_end = $ext->end_date;
                    } elseif ($ext->year_no == 2) {
                        $rate_2 = $ext->int_rate;
                        $year_2_start = $ext->start_date;
                        $year_2_end = $ext->end_date;
                    } else {
                        $rate_n = $ext->int_rate;
                        $year_n_start = $ext->start_date;
                        $year_n_end = $ext->end_date;
                    }
                }
            }
            //start inserting exit sales
            if ($exit_sales->num_rows() >= 1) {
                $exit_sales_result = $exit_sales->result();
                foreach ($exit_sales_result as $ex_sales) {
                    if ($ex_sales->sale_date >= $year_1_start && $ex_sales->sale_date <= $year_1_end) {
                        $sale_rate = $rate_1;
                    } elseif ($ex_sales->sale_date >= $year_2_start && $ex_sales->sale_date <= $year_2_end) {
                        $sale_rate = $rate_2;
                    } else {
                        $sale_rate = $rate_n;
                    }
                    $stage = 'Exit';
                    $total_sales = $ex_sales->total_sale;
                    $inv_payment = $total_sales * $sale_rate / 100;
                    $exit_data = array(
                        'sale_date' => $ex_sales->sale_date,
                        'total_sales' => $total_sales,
                        'contract_id' => $contract_id,
                        'inv_rate' => $sale_rate,
                        'inv_payment' => $inv_payment,
                        'stage' => $stage,
                        'Status' => 'Untransfered'
                    );
                    $this->db->insert('investor_station_sales_rev', $exit_data);
                }
            } else {
                //echo 'no sales for exit stages'; exit();
            }
            $this->session->set_flashdata('success', 'Payments synchronized successfully');
            redirect('investors/investorContracts');
        } else {
            //echo no sales for this contract'; exit();
            $this->session->set_flashdata('warning', 'No station(s) sales for this contract');
            redirect('investors/investorContracts');
        }
    }

    function dashboard($contract_id = FALSE) {
        $contract_details = $this->Investor_model->get_contract_details($contract_id);
        //$contract_id = $this->encryption->decrypt(str_replace(array('-', '_', '~'), array('+', '/', '='), $contract_id));
        #Check if contract need to be revised
        if ($contract_details->revise === 'Y') {
            redirect('investors/dashboardRev/' . $contract_id);
        }
        #Check if contract need to be revised
        $this->data['title'] = 'Dashboard';
        $this->data['subtitle'] = 'eCloud';
        $this->data["subview"] = "investors/dashboard";
        $this->data["pageurl"] = base_url();
        $this->data['stations'] = $this->Investor_model->get_contract_stations($contract_id);
        $this->data['sales'] = $this->Investor_model->get_contract_sales($contract_id);
        $this->data['contract'] = $contract_details;
        $contract_date = $contract_details->contract_date;
        $today = date('Y-m-d');
        $start_month = date('Y-m-') . '01';
        $start_year = date('Y-') . '01-01';
        if ($contract_date > $start_month) {
            $start_month = $contract_date;
        }
        if ($contract_date > $start_year) {
            $start_year = $contract_date;
        }
        $this->data['contract_id'] = $contract_id;
        $this->data['month_sales'] = $this->Investor_model->get_sum_of_contract_sales($contract_id, $start_month, $today);
        $this->data['year_sales'] = $this->Investor_model->get_sum_of_contract_sales($contract_id, $start_year, $today);
        $this->data['month_earn'] = $this->Investor_model->get_all_investor_earnings($contract_id, $start_month, $today);
        $this->data['year_earn'] = $this->Investor_model->get_all_investor_earnings($contract_id, $start_year, $today);
        $this->load->view('_layout_topnav', $this->data);
    }

    /*
      Revised dashboard for investor
     */

    function dashboardRev($contract_id = FALSE) {
        //$contract_id = $this->encryption->decrypt(str_replace(array('-', '_', '~'), array('+', '/', '='), $contract_id));
        $this->data['title'] = 'Dashboard';
        $this->data['subtitle'] = 'eCloud';
        $this->data["subview"] = "investors/dashboard";
        $this->data["pageurl"] = base_url();
        $this->data['stations'] = $this->Investor_model->get_contract_stations($contract_id);
        $this->data['sales'] = $this->Investor_model->get_contract_salesRev($contract_id);
        $contract_details = $this->Investor_model->get_contract_details($contract_id);
        $this->data['contract'] = $contract_details;
        $contract_date = $contract_details->contract_date;
        $today = date('Y-m-d');
        $start_month = date('Y-m-') . '01';
        $start_year = date('Y-') . '01-01';
        if ($contract_date > $start_month) {
            $start_month = $contract_date;
        }
        if ($contract_date > $start_year) {
            $start_year = $contract_date;
        }
        $this->data['contract_id'] = $contract_id;
        $this->data['month_sales'] = $this->Investor_model->get_sum_of_contract_salesRev($contract_id, $start_month, $today);
        $this->data['year_sales'] = $this->Investor_model->get_sum_of_contract_salesRev($contract_id, $start_year, $today);
        $this->data['month_earn'] = $this->Investor_model->get_all_investor_earningsRev($contract_id, $start_month, $today);
        $this->data['year_earn'] = $this->Investor_model->get_all_investor_earningsRev($contract_id, $start_year, $today);
        $this->load->view('_layout_topnav', $this->data);
    }

    function viewStation($sid = FALSE, $gsm = FALSE, $contract_id = FALSE) {
        $this->data['title'] = 'Stations';
        $this->data['subtitle'] = 'View Station';
        $this->data["subview"] = 'investors/view_station';
        $this->data['pageurl'] = 'dashboard'; //stations/listStations
        $station = $this->Stations_model->get_station_details_by_id($sid);
        $contract_details = $this->Investor_model->get_contract_details($contract_id);
        #Check if contract need to be revised
        if ($contract_details->revise === 'Y') {
            redirect('investors/viewStationRev/' . $sid . '/' . $gsm . '/' . $contract_id);
        }
        #Check if contract need to be revised		
        $this->data['station'] = $station;
        $from_date = $contract_details->exit_start_date;
        $to_date = date('Y-m-d');
        $this->data['sales_hist'] = $this->Investor_model->get_sales_hist_by_station_gsm($gsm, $from_date, $to_date);
        $to = date('Y-m-d') . ' 23:59:59';
        $from = date('Y-m-d', strtotime('-6 days', strtotime($to)));
        $this->data['sales_hist_graph'] = $this->Investor_model->get_sales_hist_by_station_gsm_asc($gsm, $from);
        $sale_price = $this->Stations_model->get_station_sale_price($station->campus_id);
        if ($sale_price) {
            $this->data['water_price'] = $sale_price->price_per_liter;
        } else {
            $this->data['water_price'] = 0;
        }
        $this->data['sid'] = $sid;
        $this->data['gsm'] = $gsm;
        $this->load->view('_layout_side_bar_collapse_old', $this->data);
    }

    # Revised function for revised sales

    function viewStationRev($sid = FALSE, $gsm = FALSE, $contract_id = FALSE) {
        $this->data['title'] = 'Stations';
        $this->data['subtitle'] = 'View Station';
        $this->data["subview"] = 'investors/view_station';
        $this->data['pageurl'] = 'dashboard'; //stations/listStations
        $station = $this->Stations_model->get_station_details_by_id($sid);
        $contract_details = $this->Investor_model->get_contract_details($contract_id);
        $this->data['station'] = $station;
        $from_date = $contract_details->exit_start_date;
        $to_date = date('Y-m-d');
        $this->data['sales_hist'] = $this->Investor_model->get_sales_hist_by_station_gsm_Rev($gsm, $from_date, $to_date);
        $to = date('Y-m-d') . ' 23:59:59';
        $from = date('Y-m-d', strtotime('-6 days', strtotime($to)));
        $this->data['sales_hist_graph'] = $this->Investor_model->get_sales_hist_by_station_gsm_asc_Rev($gsm, $from);
        $sale_price = $this->Stations_model->get_station_sale_price($station->campus_id);
        if ($sale_price) {
            $this->data['water_price'] = $sale_price->price_per_liter;
        } else {
            $this->data['water_price'] = 0;
        }
        $this->data['sid'] = $sid;
        $this->data['gsm'] = $gsm;
        $this->load->view('_layout_side_bar_collapse_old', $this->data);
    }

    # Revised function for revised sales END

    function updateInvestorDetails_1() {
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('investor_mobile', 'Mobile', 'required');
            $this->form_validation->set_rules('next_kin_name', 'Next of Kin Name', 'required');
            $this->form_validation->set_rules('next_kin_mobile', 'Next of Kin Mobile', 'required');
            $contract_id = $this->input->post('contract_id');
            if ($this->form_validation->run() == TRUE) {
                $investor = $this->Investor_model->get_investor_by_contract($contract_id);
                $investor_id = $investor->id;
                $data = array(
                    'mobile' => $this->input->post('investor_mobile'),
                    'next_of_kin' => $this->input->post('next_kin_name'),
                    'next_of_kin_mobile' => $this->input->post('next_kin_mobile')
                );
                $this->Investor_model->update_investor($data, $investor_id);
                if ($this->db->trans_status() === TRUE) {
                    $this->session->set_flashdata('success', 'Investor details updated');
                    redirect('investors/dashboard/' . $contract_id); // back to investor dashboard
                } else {
                    $this->session->set_flashdata('error', 'Error during updating details, please contact system admin');
                    redirect('investors/dashboard/' . $contract_id); // back to investor dashboard
                }
            } else {
                $this->session->set_flashdata('error', validation_errors());
                redirect('investors/dashboard/' . $contract_id); // back to investor dashboard
            }
        }
    }

    function transfers() {
        $this->data['title'] = 'Investor';
        $this->data['subtitle'] = 'Transfers';
        $this->data["subview"] = "investors/transfers";
        $this->data["pageurl"] = '058cf4d83dc58e2fd7a8a3eeff03c61a'; //investors/transfers

        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('contract_id', 'Contract', 'required');
            $this->form_validation->set_rules('start_date', 'Start Date', 'required|callback_date_check');
            $this->form_validation->set_rules('end_date', 'End Date', 'required');
            if ($this->form_validation->run() == TRUE) {
                $start_date = date('Y-m-d', strtotime($this->input->post('start_date')));
                $end_date = date('Y-m-d', strtotime($this->input->post('end_date')));
                $contract_id = $this->input->post('contract_id');
                $sales = $this->Investor_model->get_contract_sales_rev($contract_id, $start_date, $end_date, 'Untransfered');
                //check if no record returned
                if ($sales->num_rows() == 0) {
                    $this->session->set_flashdata('error', 'No sales record or Untransfered sales for a specified date and contract');
                    redirect('058cf4d83dc58e2fd7a8a3eeff03c61a'); //investors/transfers
                }
                //record exist
                $results = $sales->result();
                //first insert transfer hist to get transfer id
                $maker_id = $this->session->userdata('username');
                $hist_data = array('contract_id' => $contract_id, 'start_date' => $start_date, 'end_date' => $end_date, 'maker_id' => $maker_id);
                $this->db->insert('investor_transfers_hist', $hist_data);
                $insert_id = $this->db->insert_id();
                //update sales status to Transfered
                $total_amount = 0;
                foreach ($results as $r) {
                    $data = array('status' => 'Transfered', 'transfer_id' => $insert_id);
                    $this->db->where('id', $r->id);
                    $this->db->update('investor_station_sales_rev', $data);
                    $total_amount = $total_amount + $r->inv_payment;
                }
                //update balance in transfer hist table
                $hist_data_2 = array('amount' => $total_amount);
                $this->db->where('id', $insert_id);
                $this->db->update('investor_transfers_hist', $hist_data_2);

                $this->session->set_flashdata('success', 'Status updated for all sales on selected contract');
                redirect('058cf4d83dc58e2fd7a8a3eeff03c61a'); //investors/transfers
            } else {
                $this->session->set_flashdata('error', validation_errors());
                redirect('058cf4d83dc58e2fd7a8a3eeff03c61a'); //investors/transfers
            }
        }

        $this->data['tran_hist'] = $this->Investor_model->get_all_transfer_hist();
        $this->data['contracts'] = $this->Investor_model->get_all_contracts();
        $this->load->view('_layout_main', $this->data);
    }

    function date_check($str) {
        $start_date = date('Y-m-d', strtotime($this->input->post('start_date')));
        $end_date = date('Y-m-d', strtotime($this->input->post('end_date')));
        if ($start_date > $end_date) {
            $this->form_validation->set_message('date_check', 'Start date cannot be grater than end date');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function investorStatement() {
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $contract_id = $this->input->post('contract_id');
            $this->load->library('form_validation');
            $this->form_validation->set_rules('start_date', 'Start Date', 'required');
            $this->form_validation->set_rules('end_date', 'End Date', 'required');
            if ($this->form_validation->run() == FALSE) {
                $this->session->set_flashdata('stat_error', validation_errors());
                redirect('investors/dashboard/' . $contract_id); // back to investor dashboard
            }
            $this->load->library('Pdf');
            $pdf = new Pdf('P', 'mm', 'A4', true, 'UTF-8', false);
            $pdf->SetTitle('Investor Statement');
            $pdf->SetHeaderMargin(30);
            $pdf->setPrintHeader(false);
            $pdf->SetTopMargin(5);
            $pdf->setFooterMargin(15);
            $pdf->SetAutoPageBreak(true, 12);
            $pdf->SetAuthor('Author');
            $pdf->SetDisplayMode('real', 'default');
            $start_date = date('Y-m-d', strtotime($this->input->post('start_date')));
            $end_date = date('Y-m-d', strtotime($this->input->post('end_date')));
            $system_par = $this->Settings_model->get_system_parameters();
            $contract = $this->Investor_model->get_contract_details($contract_id);
            $investor_name = $contract->first_name . ' ' . $contract->middle_name . ' ' . $contract->surname;
            $stations = $this->db->get_where('investor_stations', array('contract_id' => $contract_id))->num_rows();
            if ($contract->inv_curr_stage === 'Exit') {
                $this->db->order_by('year_no', 'DESC');
                $exit = $this->db->get_where('investor_exit_rates', array('contract_id' => $contract_id))->row();
                $exit_date = strtotime($exit->end_date);
                $now = time();
                $days_to_exit = round(($now - $exit_date) / (60 * 60 * 24));
            } else {
                $days_to_exit = '          ';
            }
            //For statement log hist
            $statement_data = array(
                'contract_id' => $contract_id,
                'maker_id' => $this->session->userdata('username'),
                'start_date' => $start_date,
                'end_date' => $end_date
            );
            $statement_id = $this->Investor_model->insert_investor_statement_record($statement_data);
            if ($statement_id >= 1 && $statement_id <= 9) {
                $statement_id = 'EC00000000' . $statement_id;
            } elseif ($statement_id >= 10 && $statement_id <= 99) {
                $statement_id = 'EC0000000' . $statement_id;
            } elseif ($statement_id >= 100 && $statement_id <= 999) {
                $statement_id = 'EC000000' . $statement_id;
            } elseif ($statement_id >= 1000 && $statement_id <= 9999) {
                $statement_id = 'EC00000' . $statement_id;
            } elseif ($statement_id >= 10000 && $statement_id <= 99999) {
                $statement_id = 'EC0000' . $statement_id;
            } elseif ($statement_id >= 100000 && $statement_id <= 999999) {
                $statement_id = 'EC000' . $statement_id;
            } elseif ($statement_id >= 1000000 && $statement_id <= 9999999) {
                $statement_id = 'EC00' . $statement_id;
            } elseif ($statement_id >= 10000000 && $statement_id <= 99999999) {
                $statement_id = 'EC0' . $statement_id;
            } else {
                $statement_id = 'EC' . $statement_id;
            }
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
			<p style="text-align: center; font-size: 10px; font-weight: bold; padding: 10px;">INVESTOR EARNINGS STATEMENT</p>
			<table style="width:100%; font-size: 9px; line-height: 1.7;">
				<tr>
					<td style="width: 15%; text-align: right">Investor Name :</td>
					<td style="width: 5px"></td>
					<td style="width: 30%; padding: 3px">' . $investor_name . '</td>
					<td style="width: 25%"></td>
					<td style="width: 30%; text-align: right">Statement ID : ' . $statement_id . '</td>
				</tr>
				<tr>
					<td style="width: 15%; text-align: right">Contract #. :</td>
					<td style="width: 5px"></td>
					<td style="width: 15%; padding: 3px">' . $contract->contract_no . '</td>
					<td style="width: 40%"></td>
					<td style="width: 30%; text-align: right">Run Date : ' . date('d-M-Y') . '</td>
				</tr>
				<tr>
					<td style="width: 15%; text-align: right">Amount Invested :</td>
					<td style="width: 5px"></td>
					<td style="width: 15%; padding: 3px">TZS ' . number_format($contract->invested_amount, 0) . '</td>
					<td style="width: 40%"></td>
					<td style="width: 30%; text-align: right">Run Time : ' . date('h:i A') . '</td>
				</tr>
				<tr>
					<td style="width: 15%; text-align: right">Date Invested :</td>
					<td style="width: 5px"></td>
					<td style="width: 15%; padding: 3px">' . date('d-M-Y', strtotime($contract->contract_date)) . '</td>
					<td style="width: 40%"></td>
					<td style="width: 30%; text-align: right">Contract Stage : ' . $contract->inv_curr_stage . '</td>
				</tr>
				<tr>
					<td style="width: 15%; text-align: right">Exit Duration :</td>
					<td style="width: 5px"></td>
					<td style="width: 15%; padding: 3px">' . $contract->exit_duration . ' Years</td>
					<td style="width: 40%"></td>
					<td style="width: 30%; text-align: right">Days to Exit : ' . $days_to_exit . '</td>
				</tr>
			</table>
			<p style="text-align: center; font-size: 10px; font-weight: bold; padding: 10px;">STATEMENT SUMMARY</p>';
            $total_sales = 0;
            $total_earnings = 0;
            $total_transfer = 0;
            $pending_transfer = 0;
            $percentage_earning_transferred = 0;
            $sales = $this->Investor_model->get_contract_sales_group_by_status($contract_id, $start_date, $end_date);
            if ($sales->num_rows() >= 1) {
                $result = $sales->result();
                foreach ($result as $r) {
                    if ($r->status === 'Untransfered') {
                        $un_sales = $r->total_sales;
                        $un_earnings = $r->earnings;
                        $total_sales = $total_sales + $un_sales;
                        $total_earnings = $total_earnings + $un_earnings;
                        $pending_transfer = $un_earnings;
                    } else {
                        $tran_sales = $r->total_sales;
                        $tran_earnings = $r->earnings;
                        $total_sales = $total_sales + $tran_sales;
                        $total_earnings = $total_earnings + $tran_earnings;
                        $total_transfer = $tran_earnings;
                    }
                }
                $percentage_earning_transferred = $total_transfer / $total_earnings;
            }
            $html .= '<table style="width:100%">
				<tr>
					<td style="width: 47.5%">
						<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
							<tr>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Total Sales for the Period</td>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">TZS ' . number_format($total_sales, 2) . '</td>
							</tr>
							<tr>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Total Earnings for the Period</td>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">TZS ' . number_format($total_earnings, 2) . '</td>
							</tr>
							<tr>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Total Transfers for the Period</td>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">TZS ' . number_format($total_transfer, 2) . '</td>
							</tr>
						</table>
					</td>
					<td style="width: 5%"></td>
					<td style="width: 47.5%">
						<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
							<tr>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Pending Transfers for the Period</td>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">TZS ' . number_format($pending_transfer, 2) . '</td>
							</tr>
							<tr>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Number of Active Stations</td>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">' . $stations . '</td>
							</tr>
							<tr>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Percentage Earning Transferred</td>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">' . round($percentage_earning_transferred, 1) . '%</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<p style="text-align: center; font-size: 10px; font-weight: bold; padding: 10px;">EARNINGS HISTORY</p>
			<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
				<tr>
					<th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Date</th>
					<th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Status</th>       
					<th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Sale</th>
					<th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Rate</th>
					<th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Earnings</th>
				</tr>';
            $list_sales = $this->Investor_model->get_contract_sales_for_period($contract_id, $start_date, $end_date);
            foreach ($list_sales as $s) {
                $html .= '<tr>
					<td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . date('D d-M-Y', strtotime($s->sale_date)) . '</td>
					<td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; text-align: center;">' . $s->status . '</td>					
					<td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; text-align: right;">' . number_format($s->total_sales, 2) . '</td>
					<td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; text-align: center;">' . $s->inv_rate . '%</td>
					<td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; text-align: right;">' . number_format($s->inv_payment, 2) . '</td>
				</tr>';
            }
            $html .= '</table>';
            $pdf->AddPage();
            $pdf->SetFont('helvetica', '', 20);
            $pdf->writeHTML($html, true, 0, true, 0);
            $pdf->Output('Investor_Statement-' . date('YmdHis') . '.pdf', 'D');
        }
    }

    #Function for revised statement

    function investorStatementRev() {
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $contract_id = $this->input->post('contract_id');
            $this->load->library('form_validation');
            $this->form_validation->set_rules('start_date', 'Start Date', 'required');
            $this->form_validation->set_rules('end_date', 'End Date', 'required');
            if ($this->form_validation->run() == FALSE) {
                $this->session->set_flashdata('stat_error', validation_errors());
                redirect('investors/dashboard/' . $contract_id); // back to investor dashboard
            }
            $this->load->library('Pdf');
            $pdf = new Pdf('P', 'mm', 'A4', true, 'UTF-8', false);
            $pdf->SetTitle('Investor Statement');
            $pdf->SetHeaderMargin(30);
            $pdf->setPrintHeader(false);
            $pdf->SetTopMargin(5);
            $pdf->setFooterMargin(15);
            $pdf->SetAutoPageBreak(true, 12);
            $pdf->SetAuthor('Author');
            $pdf->SetDisplayMode('real', 'default');
            $start_date = date('Y-m-d', strtotime($this->input->post('start_date')));
            $end_date = date('Y-m-d', strtotime($this->input->post('end_date')));
            $system_par = $this->Settings_model->get_system_parameters();
            $contract = $this->Investor_model->get_contract_details($contract_id);
            $investor_name = $contract->first_name . ' ' . $contract->middle_name . ' ' . $contract->surname;
            $stations = $this->db->get_where('investor_stations', array('contract_id' => $contract_id))->num_rows();
            if ($contract->inv_curr_stage === 'Exit') {
                $this->db->order_by('year_no', 'DESC');
                $exit = $this->db->get_where('investor_exit_rates', array('contract_id' => $contract_id))->row();
                $exit_date = strtotime($exit->end_date);
                $now = time();
                $days_to_exit = round(($now - $exit_date) / (60 * 60 * 24));
            } else {
                $days_to_exit = '          ';
            }
            //For statement log hist
            $statement_data = array(
                'contract_id' => $contract_id,
                'maker_id' => $this->session->userdata('username'),
                'start_date' => $start_date,
                'end_date' => $end_date
            );
            $statement_id = $this->Investor_model->insert_investor_statement_record($statement_data);
            if ($statement_id >= 1 && $statement_id <= 9) {
                $statement_id = 'EC00000000' . $statement_id;
            } elseif ($statement_id >= 10 && $statement_id <= 99) {
                $statement_id = 'EC0000000' . $statement_id;
            } elseif ($statement_id >= 100 && $statement_id <= 999) {
                $statement_id = 'EC000000' . $statement_id;
            } elseif ($statement_id >= 1000 && $statement_id <= 9999) {
                $statement_id = 'EC00000' . $statement_id;
            } elseif ($statement_id >= 10000 && $statement_id <= 99999) {
                $statement_id = 'EC0000' . $statement_id;
            } elseif ($statement_id >= 100000 && $statement_id <= 999999) {
                $statement_id = 'EC000' . $statement_id;
            } elseif ($statement_id >= 1000000 && $statement_id <= 9999999) {
                $statement_id = 'EC00' . $statement_id;
            } elseif ($statement_id >= 10000000 && $statement_id <= 99999999) {
                $statement_id = 'EC0' . $statement_id;
            } else {
                $statement_id = 'EC' . $statement_id;
            }
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
			<p style="text-align: center; font-size: 10px; font-weight: bold; padding: 10px;">INVESTOR EARNINGS STATEMENT</p>
			<table style="width:100%; font-size: 9px; line-height: 1.7;">
				<tr>
					<td style="width: 15%; text-align: right">Investor Name :</td>
					<td style="width: 5px"></td>
					<td style="width: 30%; padding: 3px">' . $investor_name . '</td>
					<td style="width: 25%"></td>
					<td style="width: 30%; text-align: right">Statement ID : ' . $statement_id . '</td>
				</tr>
				<tr>
					<td style="width: 15%; text-align: right">Contract #. :</td>
					<td style="width: 5px"></td>
					<td style="width: 15%; padding: 3px">' . $contract->contract_no . '</td>
					<td style="width: 40%"></td>
					<td style="width: 30%; text-align: right">Run Date : ' . date('d-M-Y') . '</td>
				</tr>
				<tr>
					<td style="width: 15%; text-align: right">Amount Invested :</td>
					<td style="width: 5px"></td>
					<td style="width: 15%; padding: 3px">TZS ' . number_format($contract->invested_amount, 0) . '</td>
					<td style="width: 40%"></td>
					<td style="width: 30%; text-align: right">Run Time : ' . date('h:i A') . '</td>
				</tr>
				<tr>
					<td style="width: 15%; text-align: right">Date Invested :</td>
					<td style="width: 5px"></td>
					<td style="width: 15%; padding: 3px">' . date('d-M-Y', strtotime($contract->contract_date)) . '</td>
					<td style="width: 40%"></td>
					<td style="width: 30%; text-align: right">Contract Stage : ' . $contract->inv_curr_stage . '</td>
				</tr>
				<tr>
					<td style="width: 15%; text-align: right">Exit Duration :</td>
					<td style="width: 5px"></td>
					<td style="width: 15%; padding: 3px">' . $contract->exit_duration . ' Years</td>
					<td style="width: 40%"></td>
					<td style="width: 30%; text-align: right">Days to Exit : ' . $days_to_exit . '</td>
				</tr>
			</table>
			<p style="text-align: center; font-size: 10px; font-weight: bold; padding: 10px;">STATEMENT SUMMARY</p>';
            $total_sales = 0;
            $total_earnings = 0;
            $total_transfer = 0;
            $pending_transfer = 0;
            $percentage_earning_transferred = 0;
            $sales = $this->Investor_model->get_contract_sales_group_by_status_Rev($contract_id, $start_date, $end_date);
            if ($sales->num_rows() >= 1) {
                $result = $sales->result();
                foreach ($result as $r) {
                    if ($r->status === 'Untransfered') {
                        $un_sales = $r->total_sales;
                        $un_earnings = $r->earnings;
                        $total_sales = $total_sales + $un_sales;
                        $total_earnings = $total_earnings + $un_earnings;
                        $pending_transfer = $un_earnings;
                    } else {
                        $tran_sales = $r->total_sales;
                        $tran_earnings = $r->earnings;
                        $total_sales = $total_sales + $tran_sales;
                        $total_earnings = $total_earnings + $tran_earnings;
                        $total_transfer = $tran_earnings;
                    }
                }
                $percentage_earning_transferred = $total_transfer / $total_earnings;
            }
            $html .= '<table style="width:100%">
				<tr>
					<td style="width: 47.5%">
						<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
							<tr>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Total Sales for the Period</td>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">TZS ' . number_format($total_sales, 2) . '</td>
							</tr>
							<tr>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Total Earnings for the Period</td>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">TZS ' . number_format($total_earnings, 2) . '</td>
							</tr>
							<tr>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Total Transfers for the Period</td>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">TZS ' . number_format($total_transfer, 2) . '</td>
							</tr>
						</table>
					</td>
					<td style="width: 5%"></td>
					<td style="width: 47.5%">
						<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
							<tr>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Pending Transfers for the Period</td>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">TZS ' . number_format($pending_transfer, 2) . '</td>
							</tr>
							<tr>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Number of Active Stations</td>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">' . $stations . '</td>
							</tr>
							<tr>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Percentage Earning Transferred</td>
								<td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">' . round($percentage_earning_transferred, 1) . '%</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<p style="text-align: center; font-size: 10px; font-weight: bold; padding: 10px;">EARNINGS HISTORY</p>
			<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
				<tr>
					<th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Date</th>
					<th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Status</th>       
					<th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Sale</th>
					<th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Rate</th>
					<th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Earnings</th>
				</tr>';
            $list_sales = $this->Investor_model->get_contract_sales_for_period_Rev($contract_id, $start_date, $end_date);
            foreach ($list_sales as $s) {
                $html .= '<tr>
					<td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . date('D d-M-Y', strtotime($s->sale_date)) . '</td>
					<td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; text-align: center;">' . $s->status . '</td>					
					<td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; text-align: right;">' . number_format($s->total_sales, 2) . '</td>
					<td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; text-align: center;">' . $s->inv_rate . '%</td>
					<td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; text-align: right;">' . number_format($s->inv_payment, 2) . '</td>
				</tr>';
            }
            $html .= '</table>';
            $pdf->AddPage();
            $pdf->SetFont('helvetica', '', 20);
            $pdf->writeHTML($html, true, 0, true, 0);
            $pdf->Output('Investor_Statement-' . date('YmdHis') . '.pdf', 'D');
        }
    }

    #Function for revised statement END

    function contractSettings($contract_id = '') {
        $this->data['title'] = 'Investors';
        $this->data['subtitle'] = 'Contract Settings';
        $this->data["subview"] = 'investors/contract_settings';
        $this->data["pageurl"] = '45e1a84d034d65a00bf29f525110c511';
        $this->data['stations'] = $this->Investor_model->get_contract_stations($contract_id);
        $this->data['stations_add'] = $this->db->query("SELECT * from eco_stations WHERE id NOT IN (SELECT station_id FROM eco_investor_stations WHERE contract_id='$contract_id')")->result();
        $rates = $this->Investor_model->get_contract_exit_rates($contract_id);
        $this->data['rates'] = $rates->result();
        $this->data['contract_id'] = $contract_id;
        $this->data['contract'] = $this->Investor_model->get_contract_details($contract_id);
        $this->load->view('_layout_main', $this->data);
    }

    function ajaxAddStation() {
        $this->form_validation->set_rules('station_add', 'Station', 'required');
        if ($this->form_validation->run() === TRUE) {
            $contract_id = $this->input->post('contract_id');
            $station_id = $this->input->post('station_add');
            $inv_stat = array('station_id' => $station_id, 'contract_id' => $contract_id);
            $this->db->insert('investor_stations', $inv_stat);
            $message = '<div class="alert alert-success fade show" role="alert">New station added</div>';
            $data = array('action' => 'okay', 'message' => $message);
            echo json_encode($data);
        } else {
            $v_errors = validation_errors();
            $message = '<div class="alert alert-danger fade show" role="alert">' . $v_errors . '</div>';
            $data = array('action' => 'error', 'message' => $message);
            echo json_encode($data);
        }
    }

    function ajaxRemoveStation() {
        $contract_id = $this->input->post('remove_contract_id');
        $station_id = $this->input->post('remove_station_id');
        $this->db->where(array('station_id' => $station_id, 'contract_id' => $contract_id));
        $this->db->delete('investor_stations');
        $message = '<div class="alert alert-success fade show" role="alert">Station removed</div>';
        $data = array('action' => 'okay', 'message' => $message);
        echo json_encode($data);
    }

    function ajaxAddRate() {
        $this->form_validation->set_rules('rate_year', 'Year No.', 'required|greater_than[0]');
        $this->form_validation->set_rules('rate_int_rate', 'Rate', 'required|greater_than[0]|less_than_equal_to[100]');
        $start_date = $this->input->post('rate_start_date');
        $end_date = $this->input->post('rate_end_date');
        if ($this->form_validation->run() === TRUE) {
            if ($end_date < $start_date) {
                $v_errors = 'End date cannot be less than Start date';
                $message = '<div class="alert alert-danger fade show" role="alert">' . $v_errors . '</div>';
                $data = array('action' => 'error', 'message' => $message);
                echo json_encode($data);
            } else {
                $contract_id = $this->input->post('rate_contract_id');
                $year_no = $this->input->post('rate_year');
                $int_rate = $this->input->post('rate_int_rate');
                $check = $this->db->get_where('investor_exit_rates', array('year_no' => $year_no, 'contract_id' => $contract_id));
                if ($check->num_rows() >= 1) {
                    //upate record
                    $row = $check->row();
                    $id = $row->id;
                    $rate_data = array('int_rate' => $int_rate, 'start_date' => $start_date, 'end_date' => $end_date);
                    $this->db->where('id', $id);
                    $this->db->update('investor_exit_rates', $rate_data);
                    $message = '<div class="alert alert-success fade show" role="alert">Rate updated</div>';
                } else {
                    $rate_data = array('contract_id' => $contract_id, 'year_no' => $year_no, 'int_rate' => $int_rate, 'start_date' => $start_date, 'end_date' => $end_date);
                    $this->db->insert('investor_exit_rates', $rate_data);
                    $message = '<div class="alert alert-success fade show" role="alert">Rate Added</div>';
                }
                $data = array('action' => 'okay', 'message' => $message);
                echo json_encode($data);
            }
        } else {
            $v_errors = validation_errors();
            $message = '<div class="alert alert-danger fade show" role="alert">' . $v_errors . '</div>';
            $data = array('action' => 'error', 'message' => $message);
            echo json_encode($data);
        }
    }

    function ajaxRemoveRate() {
        $rate_id = $this->input->post('rate_id');
        $this->db->where('id', $rate_id);
        $this->db->delete('investor_exit_rates');
        $message = '<div class="alert alert-success fade show" role="alert">Rate removed</div>';
        $data = array('action' => 'okay', 'message' => $message);
        echo json_encode($data);
    }

    function _callback_format_date($value, $row) {
        $date = date("d-M-Y", strtotime($value));
        return $date;
    }

    function _callback_format_date_2($value, $row) {
        $date = date("D d-M-Y", strtotime($value));
        return $date;
    }

    function _callback_format_datetime($value, $row) {
        $date = date("d-M-Y H:i", strtotime($value));
        return $date;
    }

    function _callback_format_datetime_2($value, $row) {
        $date = date("D d-M-Y H:i", strtotime($value));
        return $date;
    }

    function _callback_format_amount($value, $row) {
        $amount = number_format($value, 2);
        return $amount;
    }

}

?>