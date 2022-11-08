<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require_once APPPATH . '/third_party/PHPExcel/IOFactory.php';

class Quality_controls extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'excel', 'session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        $this->load->model(array('Maintenance_model', 'Stations_model', 'Settings_model'));
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
    }

    function index() {
        
    }

    function listFilters() {
        if (empty($this->session->userdata('filter_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Maintenance';
        $this->data['subtitle'] = 'All Filters';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'quality_controls/listFilters';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_filters');
        $crud->columns('filter_code', 'filter_desc', 'clean_days', 'replace_days', 'record_stat');
        $crud->fields('filter_code', 'filter_desc', 'clean_days', 'replace_days', 'record_stat');
        $crud->required_fields('filter_code', 'filter_desc', 'clean_days', 'replace_days', 'record_stat');
        $crud->callback_column('record_stat', array($this, '_callback_status'));
        $crud->set_crud_url_path(base_url('maintenancecentre/listFilters'));
        $crud->unset_clone();
        $crud->unset_read();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        if (empty($this->session->userdata('filter_add'))) {
            $crud->unset_add();
        }
        if (empty($this->session->userdata('filter_edit'))) {
            $crud->unset_edit();
        }
        if (empty($this->session->userdata('filter_delete'))) {
            $crud->unset_delete();
        }
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function filtersMaintenance($station_gsm = '') {
        if (empty($this->session->userdata('filter_maint_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Maintenance';
        $this->data['subtitle'] = 'Filters Maintenance';
        $this->data["subview"] = 'maintenance/filters_maintenance';
        $this->data['pageurl'] = 'inno';

        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('station', 'Station', 'required');
            if ($this->form_validation->run() == FALSE) {
                $this->session->set_flashdata('error', validation_errors());
                redirect('maintenancecentre/filtersMaintenance');
            }
            $gsm = $this->input->post('station');
            $this->data['selected_station'] = $this->Maintenance_model->get_single_station_details($gsm);
            $this->data['stations'] = $this->Maintenance_model->get_all_station_details();
            $this->data['filters'] = $this->Maintenance_model->get_all_filters();
            $this->data['stat_filter_maint'] = $this->Maintenance_model->get_station_filter_maintenance($gsm);
            $this->data['single_station'] = 'Single';
            $this->load->view('_layout_main', $this->data);
        } elseif ($station_gsm !== '') {
            $gsm = $station_gsm;
            $this->data['selected_station'] = $this->Maintenance_model->get_single_station_details($gsm);
            $this->data['stations'] = $this->Maintenance_model->get_all_station_details();
            $this->data['filters'] = $this->Maintenance_model->get_all_filters();
            $this->data['stat_filter_maint'] = $this->Maintenance_model->get_station_filter_maintenance($gsm);
            $this->data['single_station'] = 'Single';
            $this->load->view('_layout_main', $this->data);
        } else {
            $this->data['single_station'] = 'All';
            $this->data['stations'] = $this->Maintenance_model->get_all_station_details();
            $this->data['clean'] = $this->Maintenance_model->get_all_filter_need_clean_main();
            $this->data['replace'] = $this->Maintenance_model->get_all_filter_need_replace_main();
            $this->load->view('_layout_main', $this->data);
        }
    }

    function updateStationFilter() {
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $station_gsm = $this->input->post('station_gsm');
            $this->load->library('form_validation');
            $this->form_validation->set_rules('filter_code', 'Filter', 'required');
            if ($this->input->post('cleaned_on') == '' && $this->input->post('replaced_on') == '') {
                $this->form_validation->set_rules('x', 'Cleaned on/Replaced on', 'required');
            }
            if ($this->form_validation->run() == FALSE) {
                $this->session->set_flashdata('error', validation_errors());
                redirect('maintenancecentre/filtersMaintenance/' . $station_gsm);
            }
            $filter_code = $this->input->post('filter_code');
            //$cleaned_on = date('Y-m-d', strtotime($this->input->post('cleaned_on')));
            //$replaced_on = date('Y-m-d', strtotime($this->input->post('replaced_on')));
            $cleaned_on = $this->input->post('cleaned_on');
            $replaced_on = $this->input->post('replaced_on');
            $filter_details = $this->Maintenance_model->get_filter_details_by_code($filter_code);

            #Check is clean days is neither NULL nor zero start
            if (!empty($filter_details->clean_days) || $filter_details->clean_days > 0) {
                if ($cleaned_on != '') {
                    //Clean days field is not empty
                    $cleaned_on = date('Y-m-d', strtotime($cleaned_on)); //Change to MySQL supported date format
                    $this->data['date_cleaned'] = $cleaned_on;
                    $clean_days = $filter_details->clean_days;
                    $next_cleaning = date('Y-m-d', strtotime($cleaned_on . " +$clean_days days"));
                    $this->data['next_cleaning'] = $next_cleaning;
                }
            }
            #Check is clean days is neither NULL nor zero end
            #Check is replace days is neither NULL nor zero start
            if (!empty($filter_details->replace_days) || $filter_details->replace_days > 0) {
                if ($replaced_on != '') {
                    //check if replace days field is not empty
                    $replaced_on = date('Y-m-d', strtotime($replaced_on)); //Change to MySQL supported date format
                    $this->data['date_replaced'] = $replaced_on;
                    $replace_days = $filter_details->replace_days;
                    $next_replacement = date('Y-m-d', strtotime($replaced_on . " +$replace_days days"));
                    $this->data['next_replacement'] = $next_replacement;
                }
            }
            #Check is replace days is neither NULL nor zero end
            //Check first if data available into maintenance table
            $is_maint_present = $this->Maintenance_model->check_if_filter_maint_available_gsm_filter($station_gsm, $filter_code);
            $this->data['maker_id'] = $this->session->userdata('username');
            $this->db->trans_start();
            if ($is_maint_present > 0) {
                $this->moveFilterMaintToHistory($station_gsm, $filter_code, $filter_details);
                //update existing record
                $this->Maintenance_model->update_filter_maint_gsm_filter($station_gsm, $filter_code, $this->data);
            } else {
                $this->moveFilterMaintToHistory($station_gsm, $filter_code, $filter_details);
                //insert new record
                $this->data['filter_code'] = $filter_code;
                $this->data['station_gsm'] = $station_gsm;
                $this->Maintenance_model->insert_filter_maint_gsm_filter($this->data);
            }
            $this->db->trans_complete();
            $this->session->set_flashdata('success', 'Successfully updated');
            redirect('maintenancecentre/filtersMaintenance/' . $station_gsm);
        }
    }

    function moveFilterMaintToHistory($station_gsm = '', $filter_code = '', $filter_details = '') {
        // get filter maintenance details
        $filter_main_detail = $this->Maintenance_model->get_filter_maintenance_details_by_gsm($station_gsm, $filter_code);
        $table = 'filters_maint_history';
        if (!empty($filter_main_detail->date_cleaned)) {
            $data_clean = array(
                'filter_code' => $filter_code,
                'station_gsm' => $station_gsm,
                'action' => 'Cleaned',
                'date_serviced' => $filter_main_detail->date_cleaned,
                'maker_id' => $filter_main_detail->maker_id
            );
            $this->Maintenance_model->insert_data($table, $data_clean);
        }

        if (!empty($filter_main_detail->date_replaced)) {
            $data_replace = array(
                'filter_code' => $filter_code,
                'station_gsm' => $station_gsm,
                'action' => 'Replaced',
                'date_serviced' => $filter_main_detail->date_replaced,
                'maker_id' => $filter_main_detail->maker_id
            );
            $this->Maintenance_model->insert_data($table, $data_replace);
        }
    }

    function qualityControlMeasurements() {
        $this->data['title'] = 'Quality Control';
        $this->data['subtitle'] = 'Measurements';
        $this->data["subview"] = 'quality_controls/qc_test_reports';
        $this->data['pageurl'] = 'quality_controls/qualityControlMeasurements';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_quality_control');
        $crud->order_by('id', 'desc');
        $crud->set_relation('station_id', 'eco_stations', 'station_name');
        $crud->columns('station_id', 'qc_category', 'lab_name', 'qc_date', 'tds', 'ph', 'tss'/* , 'alkalinity', 'chloride', 'calcium' */);
        $crud->add_fields('station_id', 'maker_id', 'qc_category', 'lab_name', 'qc_date', 'tds', 'ph', 'tss', 'alkalinity', 'chloride', 'calcium', 'hardness', 'conductivity', 'fluoride', 'zinc', 'iron', 'copper', 'coliforms', 'e_coli', 'salmonella', 'enterococcus', 'staphylococcus_aureus', 'pseudomonas_aeruginosa');
        $crud->edit_fields('id', 'maker_id', 'station_id', 'qc_category', 'lab_name', 'qc_date', 'tds', 'ph', 'tss', 'alkalinity', 'chloride', 'calcium', 'hardness', 'conductivity', 'fluoride', 'zinc', 'iron', 'copper', 'coliforms', 'e_coli', 'salmonella', 'enterococcus', 'staphylococcus_aureus', 'pseudomonas_aeruginosa');
        $crud->required_fields('tds', 'station_id', 'lab_name', 'qc_category', 'qc_date', 'tds', 'ph');
        $state = $crud->getState();
        $state_info = $crud->getStateInfo();
        if ($state == 'edit') {
            $primary_key = $state_info->primary_key;
            $crud->field_type('id', 'hidden', $primary_key);
            $crud->field_type('maker_id', 'hidden', $this->session->userdata('username'));
        } elseif ($state == 'add') {
            $crud->field_type('maker_id', 'hidden', $this->session->userdata('username'));
        }

        $crud->display_as('station_id', 'Station')
                ->display_as('qc_category', 'Category')
                ->display_as('qc_date', 'Date')
                ->display_as('tds', 'TDS (Mg/L)')
                ->display_as('ph', 'pH')
                ->display_as('tss', 'TSS (Mg/L)')
                ->display_as('alkalinity', 'Alkalinity as CaCO3 (Mg/L)')
                ->display_as('chloride', 'Chloride (Mg/L)')
                ->display_as('calcium', 'Calcium (Mg/L)')
                ->display_as('hardness', 'Total Hardness (Mg/L)')
                ->display_as('conductivity', 'Conductivity (us/cm)')
                ->display_as('fluoride', 'Fluoride (Mg/L)')
                ->display_as('zinc', 'Zinc (Mg/L)')
                ->display_as('copper', 'Copper (Mg/L)')
                ->display_as('iron', 'Iron (Mg/L)')
                ->display_as('coliforms', 'Coliforms cfu per 100ml')
                ->display_as('e_coli', 'E,coli, cfu per 100ml')
                ->display_as('salmonella', 'Salmonella per 100ml')
                ->display_as('enterococcus', 'Enterococcus cfu per 100ml')
                ->display_as('staphylococcus_aureus', 'Staphylococcus aureus  cfu per 100ml')
                ->display_as('pseudomonas_aeruginosa', 'Pseudomonas aeruginosa cfu per 100ml');
        $crud->set_rules('qc_date', 'Date', 'required|callback_validate_qc_date');
        $crud->set_rules('tds', 'TDS (Mg/L)', 'required|numeric');
        $crud->set_rules('ph', 'pH', 'required|numeric');
        $crud->set_rules('tss', 'TSS (Mg/L)', 'numeric|callback_validate_qc_external');
        $crud->set_rules('alkalinity', 'Alkalinity as CaCO3 (Mg/L)', 'numeric|callback_validate_qc_external');
        $crud->set_rules('chloride', 'Chloride (Mg/L)', 'numeric|callback_validate_qc_external');
        $crud->set_rules('calcium', 'Calcium (Mg/L)', 'numeric|callback_validate_qc_external');
        $crud->set_rules('hardness', 'Total Hardness (Mg/L', 'numeric|callback_validate_qc_external');
        $crud->set_rules('conductivity', 'Conductivity (us/cm)', 'numeric|callback_validate_qc_external');
        $crud->set_rules('fluoride', 'Fluoride (Mg/L)', 'numeric|callback_validate_qc_external');
        $crud->set_rules('zinc', 'Zinc (Mg/L)', 'numeric|callback_validate_qc_external');
        $crud->set_rules('iron', 'Iron (Mg/L)', 'numeric|callback_validate_qc_external');
        $crud->set_rules('copper', 'Copper (Mg/L)', 'numeric|callback_validate_qc_external');
        $crud->set_rules('coliforms', 'Coliforms cfu per 100ml', 'numeric|callback_validate_qc_external');
        $crud->set_rules('e_coli', 'E,coli, cfu per 100ml', 'numeric|callback_validate_qc_external');
        $crud->set_rules('salmonella', 'Salmonella per 100ml', 'numeric|callback_validate_qc_external');
        $crud->set_rules('enterococcus', 'Enterococcus cfu per 100ml', 'numeric|callback_validate_qc_external');
        $crud->set_rules('staphylococcus_aureus', 'Staphylococcus aureus  cfu per 100ml', 'numeric|callback_validate_qc_external');
        $crud->set_rules('pseudomonas_aeruginosa', 'Pseudomonas aeruginosa cfu per 100ml', 'numeric|callback_validate_qc_external');
        $crud->callback_column('qc_date', array($this, '_callback_format_date'));
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['stations'] = $this->Stations_model->get_all_stations();
        $this->data['content'] = $crud->render();
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $from_date = date('Y-m-d', strtotime($this->input->post('dateFrom')));
            $to_date = date('Y-m-d', strtotime($this->input->post('dateTo')));
            $station_id = $this->input->post('station_id');
            $result = $this->Maintenance_model->get_test_report_by_station($station_id, $from_date, $to_date);
            $data['qc_data'] = $result->result();
            $this->load->view('quality_controls/export_test_report', $data);
        } else {
            $this->load->view('_layout_main', $this->data);
        }
    }

    function validate_qc_external($value) {
        $category = $this->input->post('qc_category');
        if ($category == 'External' && empty($value)) {
            $this->form_validation->set_message('validate_qc_external', 'Field {field} is required for external readings.');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function validate_qc_date($value) {
        $station_id = $this->input->post('station_id');
        $qc_category = $this->input->post('qc_category');
        $qc_id = $this->input->post('id');
        $qc_date = date('Y-m-d', strtotime($value));
        $this->db->select('b.station_name');
        $this->db->where(array('a.station_id' => $station_id, 'a.qc_date' => $qc_date, 'qc_category' => $qc_category, 'a.id <>' => $qc_id));
        $this->db->from('quality_control a');
        $this->db->join('stations b', 'a.station_id = b.id', 'LEFT');
        $result = $this->db->get();
        if ($result->num_rows() != 0) {
            $row = $result->row();
            $this->form_validation->set_message('validate_qc_date', $qc_category . ' Reading for ' . $row->station_name . ' at ' . $qc_date . ' already exist.');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function downloadStatement() {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('start_date', 'Start Date', 'required');
        $this->form_validation->set_rules('end_date', 'End Date', 'required');
        $station_gsm = $this->input->post('station_gsm');
        if ($this->form_validation->run() == FALSE) {
            $this->session->set_flashdata('error', validation_errors());
            redirect('maintenancecentre/filtersMaintenance/' . $station_gsm);
        }
        $this->load->library('Pdf');
        $pdf = new Pdf('P', 'mm', 'A4', true, 'UTF-8', false);
        $pdf->SetTitle('My Title');
        $pdf->SetHeaderMargin(30);
        $pdf->setPrintHeader(false);
        $pdf->SetTopMargin(5);
        $pdf->setFooterMargin(15);
        $pdf->SetAutoPageBreak(true, 12);
        $pdf->SetAuthor('Author');
        $pdf->SetDisplayMode('real', 'default');
        $test = 'test';
        $start_date = $this->input->post('start_date');
        $end_date = $this->input->post('end_date');
        $c_filters = $this->Maintenance_model->get_all_filters_clean_replace('clean');
        $r_filters = $this->Maintenance_model->get_all_filters_clean_replace('replace');
        $station = $this->Stations_model->get_station_details_by_gsm($station_gsm);
        $system_par = $this->Settings_model->get_system_parameters();
        $statement_data = array(
            'station_gsm' => $station_gsm,
            'user_id' => $this->session->userdata('username'),
            'year' => date('Y'),
            'start_date' => date('Y-m-d', strtotime($start_date)),
            'end_date' => date('Y-m-d', strtotime($end_date))
        );
        $statement_id = $this->Maintenance_model->insert_statement_record($statement_data);
        if ($statement_id >= 1 && $statement_id <= 9) {
            //$data['report_id'] = 'QC/'.date('Y').'/000'.$statement_id;
            $report_id = 'QC00000000' . $statement_id;
        } elseif ($statement_id >= 10 && $statement_id <= 99) {
            $report_id = 'QC0000000' . $statement_id;
        } elseif ($statement_id >= 100 && $statement_id <= 999) {
            $report_id = 'QC000000' . $statement_id;
        } elseif ($statement_id >= 1000 && $statement_id <= 9999) {
            $report_id = 'QC00000' . $statement_id;
        } elseif ($statement_id >= 10000 && $statement_id <= 99999) {
            $report_id = 'QC0000' . $statement_id;
        } elseif ($statement_id >= 100000 && $statement_id <= 999999) {
            $report_id = 'QC000' . $statement_id;
        } elseif ($statement_id >= 1000000 && $statement_id <= 9999999) {
            $report_id = 'QC00' . $statement_id;
        } elseif ($statement_id >= 10000000 && $statement_id <= 99999999) {
            $report_id = 'QC0' . $statement_id;
        } else {
            $report_id = 'QC' . $statement_id;
        }
        $html = '<table style="width: 100%; font-size: 8px; line-height: 1.5;">
    <tr>
        <td style="text-align: center;  padding: 1px; font-size: 10px"><strong>' . strtoupper($system_par->company_name) . '</strong></td>
    </tr>
    <tr>
        <td style="text-align: center; padding: 1px;">' . $system_par->physical_address . ', ' . $system_par->address_line_1 . '. <b>Mob:</b> ' . $system_par->telephone_no . '</td>
    </tr>
    <tr>
        <td style="text-align: center; padding: 1px;"><strong>Email</strong> : ' . $system_par->email . ' | <strong>Website</strong> : ' . $system_par->website . '</td>
    </tr>
    <tr>
        <td style="text-align: center; padding: 15px; font-weight: bold; font-size: 10px; line-height: 3;">DEPARTMENT OF QUALITY CONTROL AND QUALITY ASSURANCE</td>
    </tr>
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
<p style="text-align: center; font-size: 10px; padding: 10px;">FILTERS CLEANING AND REPLACEMENT REPORT</p>
<table style="width:100%; font-size: 9px; line-height: 1.7;">
    <tr>
        <td style="width: 15%;">Station name :</td>
        <td style="width: 5px"></td>
        <td style="width: 35%; padding: 3px">' . $station->station_name . '</td>
        <td style="width: 10%"></td>
        <td style="width: 15%; text-align: right">Report ID :</td>
        <td style="width: 25%; padding: 3px">' . $report_id . '</td>
    </tr>
    <tr>
        <td style="width: 15%;">TFDA Permit No :</td>
        <td style="width: 5px"></td>
        <td style="width: 35%; padding: 3px">' . $station->tfda_permit_no . '</td>
        <td style="width: 10%"></td>
        <td style="width: 15%; text-align: right">Run Date :</td>
        <td style="width: 25%; padding: 3px">' . date('D d-M-Y') . '</td>
    </tr>
    <tr>
        <td style="width: 15%;">Campus name :</td>
        <td style="width: 5px"></td>
        <td style="width: 35%; padding: 3px">' . $station->campus_name . '</td>
        <td style="width: 10%"></td>
        <td style="width: 15%; text-align: right">Run Time :</td>
        <td style="width: 25%; padding: 3px">' . date('h:i A') . '</td>
    </tr>
    <tr>
        <td style="width: 15%;">Start date :</td>
        <td style="width: 5px"></td>
        <td style="width: 35%; padding: 3px">' . date('D d-M-Y', strtotime($start_date)) . '</td>
        <td style="width: 10%"></td>
        <td style="width: 15%; text-align: right"></td>
        <td style="width: 25%; padding: 3px"></td>
    </tr>
    <tr>
        <td style="width: 15%;">End date :</td>
        <td style="width: 5px"></td>
        <td style="width: 35%; padding: 3px">' . date('D d-M-Y', strtotime($end_date)) . '</td>
        <td style="width: 10%"></td>
        <td style="width: 15%; text-align: right"></td>
        <td style="width: 25%; padding: 3px"></td>
    </tr>
</table>
<br />
<br />
<table style="width:100%; font-size: 9px;">
	<tr>
        <td style="width: 47.5%; line-height: 1.7; text-align: center;">Cleaning Logs for the selected Period</td>
        <td style="width: 5%;"></td>
        <td style="width: 47.5%; line-height: 1.7; text-align: center;">Replacement Logs for the selected Period</td>
    </tr>
	<tr><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td></tr>
	<tr>
		<td style="width: 47.5%;" valign="top">
			<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
				<tr>
                    <th style="border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">Filters</th>
                    <th style="border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">Cleaning Logs</th>
                    <th style="border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">Technician</th>
                </tr>';
        foreach ($c_filters as $f) {
            //Change date to MySQL date format
            $start_date = date('Y-m-d', strtotime($start_date));
            $end_date = date('Y-m-d', strtotime($end_date));
            // Check if no record in both history and main table
            $query = $this->db->query("SELECT DISTINCT cdate,fullname FROM (SELECT x.date_cleaned as cdate,y.name as fullname FROM eco_filters_maintenance x JOIN eco_users y ON x.maker_id=y.username WHERE x.filter_code='$f->filter_code' AND x.station_gsm='$station->gsm' AND x.date_cleaned BETWEEN '$start_date' AND '$end_date' UNION SELECT z.date_serviced as cdate,w.name as fullname FROM eco_filters_maint_history z JOIN eco_users w ON z.maker_id=w.username WHERE z.filter_code='$f->filter_code' AND z.station_gsm='$station->gsm' AND z.date_serviced BETWEEN '$start_date' AND '$end_date' AND z.action='Cleaned') xx ORDER BY 1 DESC");
            $count = $query->num_rows();
            if ($count == 0) {
                $html .= '<tr>
                                <td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . $f->filter_desc . '</td>
                                <td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">No record</td>
                                <td style="border: 1px solid #dddddd; text-align: left; padding: 2px; text-align: center;">NA</td>
                            </tr>';
            } elseif ($count >= 2) {
                $query = $this->db->query("SELECT DISTINCT cdate,fullname FROM (SELECT x.date_cleaned as cdate,y.name as fullname FROM eco_filters_maintenance x JOIN eco_users y ON x.maker_id=y.username WHERE x.filter_code='$f->filter_code' AND x.station_gsm='$station->gsm' AND x.date_cleaned BETWEEN '$start_date' AND '$end_date' UNION SELECT z.date_serviced as cdate,w.name as fullname FROM eco_filters_maint_history z JOIN eco_users w ON z.maker_id=w.username WHERE z.filter_code='$f->filter_code' AND z.station_gsm='$station->gsm' AND z.date_serviced BETWEEN '$start_date' AND '$end_date' AND z.action='Cleaned') xx ORDER BY 1 DESC");
                $data = $query->result();
                foreach (array_slice($data, 0, 1) as $d1) {
                    $html .= '<tr>
									<td rowspan=" ' . $count . ' " style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . $f->filter_desc . '</td>
									<td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . date('D d-M-Y', strtotime($d1->cdate)) . '</td>
									<td style="border: 1px solid #dddddd; padding: 2px; text-align: center;">' . $d1->fullname . '</td>
								</tr>';
                }
                foreach (array_slice($data, 1) as $d2) {
                    $html .= '<tr>
									<td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . date('D d-M-Y', strtotime($d2->cdate)) . '</td>
									<td style="border: 1px solid #dddddd; padding: 2px; text-align: center;">' . $d2->fullname . '</td>
								</tr>';
                }
            } elseif ($count == 1) {
                $query = $this->db->query("SELECT cdate,fullname FROM (SELECT DISTINCT x.date_cleaned as cdate,y.name as fullname FROM eco_filters_maintenance x JOIN eco_users y ON x.maker_id=y.username WHERE x.filter_code='$f->filter_code' AND x.station_gsm='$station->gsm' AND x.date_cleaned BETWEEN '$start_date' AND '$end_date' UNION SELECT DISTINCT z.date_serviced as cdate,w.name as fullname FROM eco_filters_maint_history z JOIN eco_users w ON z.maker_id=w.username WHERE z.filter_code='$f->filter_code' AND z.station_gsm='$station->gsm' AND z.date_serviced BETWEEN '$start_date' AND '$end_date') xx ORDER BY 1 DESC");
                $datax = $query->result();
                foreach ($datax as $dx) {
                    $html .= '<tr>
									<td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . $f->filter_desc . '</td>
									<td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . date('D d-M-Y', strtotime($dx->cdate)) . '</td>
									<td style="border: 1px solid #dddddd; padding: 2px; text-align: center;">' . $dx->fullname . '</td>
								</tr>';
                }
            }
        }
        $html .= '
			</table>
		</td>
		<td style="width: 5%;"></td>
		<td style="width: 47.5%;" valign="top">
			<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
				<tr>
                    <th style="border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">Filters</th>
                    <th style="border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">Replacement Logs</th>
                    <th style="border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">Technician</th>
                </tr>';
        foreach ($r_filters as $f) {
            //Change date to MySQL date format
            $start_date = date('Y-m-d', strtotime($start_date));
            $end_date = date('Y-m-d', strtotime($end_date));
            // Check if no record in both history and main table
            $query = $this->db->query("SELECT DISTINCT cdate,fullname FROM (SELECT x.date_replaced as cdate,y.name as fullname FROM eco_filters_maintenance x JOIN eco_users y ON x.maker_id=y.username WHERE x.filter_code='$f->filter_code' AND x.station_gsm='$station->gsm' AND x.date_replaced BETWEEN '$start_date' AND '$end_date' UNION SELECT z.date_serviced as cdate,w.name as fullname FROM eco_filters_maint_history z JOIN eco_users w ON z.maker_id=w.username WHERE z.filter_code='$f->filter_code' AND z.station_gsm='$station->gsm' AND z.date_serviced BETWEEN '$start_date' AND '$end_date' AND z.action='Replaced') xx ORDER BY 1 DESC");
            $count = $query->num_rows();
            if ($count == 0) {
                $html .= ' <tr>
									<td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . $f->filter_desc . '</td>
									<td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">No record</td>
									<td style="border: 1px solid #dddddd; padding: 2px;text-align: center;">NA</td>
								</tr>';
            } elseif ($count >= 2) {
                $query = $this->db->query("SELECT DISTINCT cdate,fullname FROM (SELECT x.date_replaced as cdate,y.name as fullname FROM eco_filters_maintenance x JOIN eco_users y ON x.maker_id=y.username WHERE x.filter_code='$f->filter_code' AND x.station_gsm='$station->gsm' AND x.date_replaced BETWEEN '$start_date' AND '$end_date' UNION SELECT z.date_serviced as cdate,w.name as fullname FROM eco_filters_maint_history z JOIN eco_users w ON z.maker_id=w.username WHERE z.filter_code='$f->filter_code' AND z.station_gsm='$station->gsm' AND z.date_serviced BETWEEN '$start_date' AND '$end_date' AND z.action='Replaced') xx ORDER BY 1 DESC");
                $data = $query->result();
                foreach (array_slice($data, 0, 1) as $d1) {
                    $html .= '<tr>
									<td rowspan=" ' . $count . ' " style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . $f->filter_desc . '</td>
									<td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . date('D d-M-Y', strtotime($d1->cdate)) . '</td>
									<td style="border: 1px solid #dddddd; padding: 2px; text-align: center;">' . $d1->fullname . '</td>
								</tr>';
                }
                foreach (array_slice($data, 1) as $d2) {
                    $html .= '<tr>
									<td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . date('D d-M-Y', strtotime($d2->cdate)) . '</td>
									<td style="border: 1px solid #dddddd; padding: 2px; text-align: center;">' . $d2->fullname . '</td>
								</tr>';
                }
            } elseif ($count == 1) {
                $query = $this->db->query("SELECT DISTINCT cdate,fullname FROM (SELECT x.date_replaced as cdate,y.name as fullname FROM eco_filters_maintenance x JOIN eco_users y ON x.maker_id=y.username WHERE x.filter_code='$f->filter_code' AND x.station_gsm='$station->gsm' AND x.date_replaced BETWEEN '$start_date' AND '$end_date' UNION SELECT z.date_serviced as cdate,w.name as fullname FROM eco_filters_maint_history z JOIN eco_users w ON z.maker_id=w.username WHERE z.filter_code='$f->filter_code' AND z.station_gsm='$station->gsm' AND z.date_serviced BETWEEN '$start_date' AND '$end_date' AND z.action='Replaced') xx ORDER BY 1 DESC");
                $datax = $query->result();
                foreach ($datax as $dx) {
                    $html .= '<tr>
									<td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . $f->filter_desc . '</td>
									<td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . date('D d-M-Y', strtotime($dx->cdate)) . '</td>
									<td style="border: 1px solid #dddddd; padding: 2px; text-align: center;">' . $dx->fullname . '</td>
								</tr>';
                }
            }
        }
        $html .= '			
			</table>
		</td>
	</tr>
</table>
';
        $pdf->AddPage();
        $pdf->SetFont('helvetica', '', 20);
        $pdf->writeHTML($html, true, 0, true, 0);
        $pdf->Output('Statement-' . date('YmdHis') . '.pdf', 'D');
    }

    function insertFilterStationData($station_gsm) {
        $is_data_exist = $this->Maintenance_model->check_maintenance_existing($station_gsm);
        if ($is_data_exist > 0) {
            $this->session->set_flashdata('error', 'Data already exist');
            redirect('maintenancecentre/filtersMaintenance');
        } else {
            $filters = $this->Maintenance_model->get_all_filters();
            foreach ($filters as $f) {
                $data = array(
                    'filter_code' => $f->filter_code,
                    'station_gsm' => $station_gsm,
                    'maker_id' => $this->session->userdata('username')
                );
                $this->Maintenance_model->insert_filter($data);
            }
            $this->session->set_flashdata('success', 'Data inserted');
            redirect('maintenancecentre/filtersMaintenance');
        }
    }

    function _callback_format_date($value) {
        if (!empty($value)) {
            return date('d-M-Y', strtotime($value));
        } else {
            return '';
        }
    }

    function _callback_status($value, $row) {
        if ($value === 'O') {
            return '<span class="badge badge-success" style="font-size:11px">Open</span>';
        } elseif ($value === 'D' || $value == 'C') {
            return '<span class="badge badge-danger" style="font-size:11px"> Deleted</span>';
        } elseif ($value == 'Paid') {
            return '<span class="badge badge-success" style="font-size:11px">' . $value . '</span>';
        } elseif ($value == 'Unpaid') {
            return '<span class="badge badge-warning" style="font-size:11px">' . $value . '</span>';
        } elseif ($value === 'OP') {
            return '<span class="badge badge-success" style="font-size:11px">' . $value . '</span>';
        } elseif ($value === 'FA') {
            return '<span class="badge badge-danger" style="font-size:11px">' . $value . '</span>';
        } else {
            return '<span class="badge badge-dark" style="font-size:11px">' . $value . '</span>';
        }
    }

#============================================================
#Custom code for cronjob copy available to Cronjob controller

    function cleanFilterHistoryTable() {
        $start = date('Y-m-d', strtotime('-1 days')) . ' 01:00:00';
        $rows = $this->db->get_where('filters_maint_history', array('date_registered >=' => $start))->num_rows();
        if ($rows >= 1) {
            $this->db->trans_start();
            $data = $this->Maintenance_model->get_filter_history_data_by_date($start);
            $this->db->truncate('filters_maint_history_dump');
            $this->db->insert_batch('filters_maint_history_dump', $data);
            $this->db->delete('filters_maint_history', array('date_registered >=' => $start));
            $revised_data = $this->db->get('filters_maint_history_dump')->result();
            $this->db->insert_batch('filters_maint_history', $revised_data);
            $this->db->trans_complete();
        }
    }

#============================================================
}

class chunkReadFilter implements PHPExcel_Reader_IReadFilter {

    private $_startRow = 0;
    private $_endRow = 0;

    /**  Set the list of rows that we want to read  */
    public function setRows($startRow, $chunkSize) {
        $this->_startRow = $startRow;
        $this->_endRow = $startRow + $chunkSize;
    }

    public function readCell($column, $row, $worksheetName = '') {
        //  Only read the heading row, and the rows that are configured in $this->_startRow and $this->_endRow
        if (($row == 1) || ($row >= $this->_startRow && $row < $this->_endRow)) {
            return true;
        }
        return false;
    }

}
