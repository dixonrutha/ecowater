<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require_once APPPATH . '/third_party/PHPExcel/IOFactory.php';

//PhpSpreadsheet
use PhpOffice\PhpSpreadsheet\Spreadsheet;

class Analytics extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'excel', 'session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        $this->load->model(array('Analytics_model'));
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

    function index()
    {

    }

    function reports()
    {
        $username = $this->session->userdata('username');
        $this->data['title'] = 'Analytics';
        $this->data['subtitle'] = 'Main BI Reports';
        $this->data["subview"] = 'analytics/main_page';
        $this->data['pageurl'] = 'analytics/reports';
        $this->db->order_by('report_name', 'ASC');
        $this->data['reports'] = $this->db->get('bi_report_names')->result();
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->form_validation->set_rules('report_name', 'Report', 'required');
            //$this->form_validation->set_rules('end_month', 'Date', 'callback_validate_date');            
            if ($this->form_validation->run() == TRUE) {
                $end_month_yearmonth = date('Ym', strtotime('-1 Months')); //default previous month
                $heading_end = date('M-y', strtotime('-1 Months'));
                $start_month_yearmonth = date('Ym', strtotime('-1 Months'));
                // $heading_start = date('M-y', strtotime('-1 Months'));
                $heading_start = date('M-y', strtotime('last day of previous month'));
                $end_month = $this->input->post('end_month');
                if (!empty($end_month)) {
                    $end_month_yearmonth = date('Ym', strtotime($this->input->post('end_month')));
                    $this->db->select('MAX(yearmonth) as max_yearmonth, MAX(as_on_date) as max_as_on_date');
                    $check_date = $this->db->get('bi_campus_reports')->row();
                    if (($check_date->max_yearmonth - $end_month_yearmonth) < 0) {
                        $this->session->set_flashdata('error', 'No records exist for the specified End Month, Max report date available is <strong>' . date('d-M-Y', strtotime($check_date->max_as_on_date)) . '</strong>');
                        redirect($_SERVER['HTTP_REFERER']);
                    }
                    $heading_end = date('M-y', strtotime($this->input->post('end_month')));
                }
                $start_month = $this->input->post('start_month');
                if (!empty($start_month)) {
                    $start_month_yearmonth = date('Ym', strtotime($this->input->post('start_month')));
                    $heading_start = date('M-y', strtotime($this->input->post('start_month')));
                }
                $this->data['heading_start'] = $heading_start;
                $this->data['heading_end'] = $heading_end;
                //echo $start_month_yearmonth; exit();
                //check which report to query
                $report_name = $this->input->post('report_name');
                //workings for number of days                    
                $forDate = $this->Analytics_model->get_campus_bi_max_min_date($start_month_yearmonth, $end_month_yearmonth);
                if ($forDate->num_rows() >= 1) {
                    $forDate = $forDate->row();
                    $min_date = substr($forDate->min_date, 0, -2) . '01';
                    $min_date = strtotime($min_date);
                    $max_date = strtotime($forDate->max_date);
                    $datediff = $max_date - $min_date;
                    $days = round($datediff / (60 * 60 * 24));
                    //echo $min_date ; exit();
                } else {
                    $days = 0;
                }
                $this->data['show_hide_landing'] = 'none';
                $this->data['show_hide_other'] = 'show';
                if ($report_name === 'revenue') {
                    //for export to excel
                    $export = array('report_name' => 'revenue', 'start_yearmonth' => $start_month_yearmonth, 'end_yearmonth' => $end_month_yearmonth);
                    $this->db->where('username', $username);
                    $this->db->update('bi_report_export', $export);
                    //$this->get_revenue($start_month_yearmonth, $end_month_yearmonth);                                        
                    $campus_data = $this->Analytics_model->get_campus_bi_data($start_month_yearmonth, $end_month_yearmonth);
                    $this->data['campus_data'] = $campus_data;
                    $data = array(
                        'show_hide_landing' => 'none',
                        'show_hide_other' => 'show',
                        'campus_data' => $campus_data,
                        'heading_start' => $heading_start,
                        'heading_end' => $heading_end,
                        'days_in_month' => $days + 1,
                    );
                    $this->data['report_layout'] = $this->load->view('analytics/revenue', $data, TRUE);
                    $this->load->view('_layout_main', $this->data);
                } elseif ($report_name === 'recharges') {
                    //for export to excel
                    $export = array('report_name' => 'recharges', 'start_yearmonth' => $start_month_yearmonth, 'end_yearmonth' => $end_month_yearmonth);
                    $this->db->where('username', $username);
                    $this->db->update('bi_report_export', $export);
                    $recharges = $this->Analytics_model->get_campus_bi_recharges($start_month_yearmonth, $end_month_yearmonth);
                    $recharges = $recharges->result();
                    $data = array(
                        'show_hide_landing' => 'none',
                        'show_hide_other' => 'show',
                        'recharges' => $recharges,
                        'heading_start' => $heading_start,
                        'heading_end' => $heading_end,
                        'days' => $days + 1,
                    );
                    $this->data['report_layout'] = $this->load->view('analytics/recharges', $data, TRUE);
                    $this->load->view('_layout_main', $this->data);
                } elseif ($report_name === 'pos_recharges') {
                    //for export to excel
                    $export = array('report_name' => 'pos_recharges', 'start_yearmonth' => $start_month_yearmonth, 'end_yearmonth' => $end_month_yearmonth);
                    $this->db->where('username', $username);
                    $this->db->update('bi_report_export', $export);
                    $recharges = $this->Analytics_model->get_pos_bi_recharges($start_month_yearmonth, $end_month_yearmonth);
                    $recharges = $recharges->result();
                    $data = array(
                        'show_hide_landing' => 'none',
                        'show_hide_other' => 'show',
                        'recharges' => $recharges,
                        'heading_start' => $heading_start,
                        'heading_end' => $heading_end,
                        'days' => $days + 1,
                    );
                    $this->data['report_layout'] = $this->load->view('analytics/pos_recharges', $data, TRUE);
                    $this->load->view('_layout_main', $this->data);
                } elseif ($report_name === 'campus_sales') {
                    //for export to excel
                    $export = array('report_name' => 'campus_sales', 'start_yearmonth' => $start_month_yearmonth, 'end_yearmonth' => $end_month_yearmonth);
                    $this->db->where('username', $username);
                    $this->db->update('bi_report_export', $export);
                    $campus_data = $this->Analytics_model->get_campus_bi_data($start_month_yearmonth, $end_month_yearmonth);
                    $data = array(
                        'show_hide_landing' => 'none',
                        'show_hide_other' => 'show',
                        'campus_data' => $campus_data,
                        'heading_start' => $heading_start,
                        'heading_end' => $heading_end,
                        'days' => $days + 1,
                    );
                    $this->data['report_layout'] = $this->load->view('analytics/campus_sales', $data, TRUE);
                    $this->load->view('_layout_main', $this->data);
                } elseif ($report_name === 'acquisitions') {
                    //for export to excel
                    $export = array('report_name' => 'acquisitions', 'start_yearmonth' => $start_month_yearmonth, 'end_yearmonth' => $end_month_yearmonth);
                    $this->db->where('username', $username);
                    $this->db->update('bi_report_export', $export);
                    $acquisitions = $this->Analytics_model->get_campus_bi_data($start_month_yearmonth, $end_month_yearmonth);
                    $data = array(
                        'show_hide_landing' => 'none',
                        'show_hide_other' => 'show',
                        'acquisitions' => $acquisitions,
                        'heading_start' => $heading_start,
                        'heading_end' => $heading_end,
                        'days' => $days + 1,
                    );
                    $this->data['report_layout'] = $this->load->view('analytics/acquisitions', $data, TRUE);
                    $this->load->view('_layout_main', $this->data);
                } elseif ($report_name === 'volume_campus') {
                    //for export to excel
                    $export = array('report_name' => 'volume_campus', 'start_yearmonth' => $start_month_yearmonth, 'end_yearmonth' => $end_month_yearmonth);
                    $this->db->where('username', $username);
                    $this->db->update('bi_report_export', $export);
                    $campus_data = $this->Analytics_model->get_campus_bi_data($start_month_yearmonth, $end_month_yearmonth);
                    $data = array(
                        'show_hide_landing' => 'none',
                        'show_hide_other' => 'show',
                        'volume' => $campus_data,
                        'heading_start' => $heading_start,
                        'heading_end' => $heading_end,
                        'days' => $days + 1,
                    );
                    $this->data['report_layout'] = $this->load->view('analytics/volume_campus', $data, TRUE);
                    $this->load->view('_layout_main', $this->data);
                } elseif ($report_name === 'impact_campus') {
                    //for export to excel
                    $export = array('report_name' => 'impact_campus', 'start_yearmonth' => $start_month_yearmonth, 'end_yearmonth' => $end_month_yearmonth);
                    $this->db->where('username', $username);
                    $this->db->update('bi_report_export', $export);
                    $campus_data = $this->Analytics_model->get_campus_bi_data($start_month_yearmonth, $end_month_yearmonth);
                    $data = array(
                        'show_hide_landing' => 'none',
                        'show_hide_other' => 'show',
                        'impacts' => $campus_data,
                        'heading_start' => $heading_start,
                        'heading_end' => $heading_end,
                        'days' => $days + 1,
                    );
                    $this->data['report_layout'] = $this->load->view('analytics/impact_campus', $data, TRUE);
                    $this->load->view('_layout_main', $this->data);
                } else {
                    $this->session->set_flashdata('error', 'Unkown report please contact system admin');
                    redirect($_SERVER['HTTP_REFERER']);
                }
            } else {
                $this->session->set_flashdata('error', validation_errors());
                redirect($_SERVER['HTTP_REFERER']);
            }
        } else {
            $today = date('Y-m-d');
            $prev_month = date('Ym', strtotime('-1 Months'));
            $days_in_month = cal_days_in_month(CAL_GREGORIAN, date('m', strtotime('-1 Months')), date('Y', strtotime('-1 Months')));
            #data for export            
            $export = array('report_name' => 'revenue', 'start_yearmonth' => $prev_month, 'end_yearmonth' => $prev_month, 'username' => $username);
            $export_exist = $this->db->get_where('bi_report_export', array('username' => $username));
            if ($export_exist->num_rows() != 0) {
                $this->db->where('username', $username);
                $this->db->update('bi_report_export', $export);
            } else {
                $this->db->insert('bi_report_export', $export);
            }
            #data for export end
            $this->data['prev_month'] = date('M-y', strtotime('-1 Months')); //for heading range
            $this->data['days_in_month'] = $days_in_month;
            $this->data['show_hide_landing'] = 'show'; // for hidding or displaying landing page
            $this->data['show_hide_other'] = 'none';
            $this->data['report_layout'] = 'analytics/empty';
            $this->data['campus_data'] = $this->db->get_where('bi_campus_reports', array('yearmonth' => $prev_month))->result();
            $this->load->view('_layout_main', $this->data);
        }
    }

    function validate_date($str)
    {
        if ($str == 'test') {
            $this->form_validation->set_message('validate_date', 'The {field} field can not be the word "test"');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function get_revenue($start_month_yearmonth, $end_month_yearmonth)
    {
        $this->data['show_hide_landing'] = 'none';
        $this->data['show_hide_other'] = 'show';
        $cond = array('yearmonth >=' => $start_month_yearmonth, 'yearmonth <=' => $end_month_yearmonth);
        $this->data['campus_data'] = $this->db->get_where('bi_campus_reports', $cond)->result();
    }

    function exportReport()
    {
        $username = $this->session->userdata('username');
        $this->load->helper('download');
        $extension = 'xlsx';
        $report = $this->db->get_where('bi_report_export', array('username' => $username))->row();
        //workings for number of days                    
        $forDate = $this->Analytics_model->get_campus_bi_max_min_date($report->start_yearmonth, $report->end_yearmonth);
        if ($forDate->num_rows() >= 1) {
            $forDate = $forDate->row();
            $min_date = substr($forDate->min_date, 0, -2) . '01';
            $min_date = strtotime($min_date);
            $max_date = strtotime($forDate->max_date);
            $datediff = $max_date - $min_date;
            $days = round($datediff / (60 * 60 * 24));
            //echo $min_date ; exit();
        } else {
            $days = 0;
        }
        //echo $days; exit();
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        if ($report->report_name = 'revenue') {
            $campus_data = $this->Analytics_model->get_campus_bi_data($report->start_yearmonth, $report->end_yearmonth);
            $fileName = 'Campuses Revenue-' . time();
            $sheet->setTitle("Revenue");
            $sheet->setCellValue('A1', 'Report Name');
            $sheet->setCellValue('B1', 'Campuses Revenue');
            $sheet->setCellValue('A2', 'Start Month');
            $sheet->setCellValue('B2', substr_replace($report->start_yearmonth, '-', 4, 0));
            $sheet->setCellValue('A3', 'End Month');
            $sheet->setCellValue('B3', substr_replace($report->end_yearmonth, '-', 4, 0));

            $sheet->setCellValue('A5', 'SN');
            $sheet->setCellValue('B5', 'Campus Name');
            $sheet->setCellValue('C5', 'Recharges');
            $sheet->setCellValue('D5', 'Cash Sales');
            $sheet->setCellValue('E5', 'Subscription Fees');
            $sheet->setCellValue('F5', 'Total Revenue');
            $sheet->setCellValue('G5', 'Average per Day');
            $sheet->setCellValue('H5', 'Percentage of Total');
            $rowCount = 6;
            $total_revenue = 0;
            foreach ($campus_data as $cc) {
                $total_revenue = $total_revenue + $cc->recharge + $cc->cash_sale + $cc->sub_fee;
            }
            $total_revenue_div = $total_revenue;
            if ($total_revenue == 0) {
                $total_revenue_div = 1;
            }
            $i = 1;
            foreach ($campus_data as $data) {
                $campus_revenue = $data->recharge + $data->cash_sale + $data->sub_fee;
                $days_div = $days + 1;
                if ($days == 0) {
                    $days_div = 1;
                }
                $revenue_per_day = $campus_revenue / $days_div;
                $percentage_of_total = ($campus_revenue / $total_revenue_div);
                $sheet->setCellValue('A' . $rowCount, $i);
                $sheet->setCellValue('B' . $rowCount, $data->campus_name);
                $sheet->setCellValue('C' . $rowCount, $data->recharge);
                $sheet->setCellValue('D' . $rowCount, $data->cash_sale);
                $sheet->setCellValue('E' . $rowCount, $data->sub_fee);
                $sheet->setCellValue('F' . $rowCount, $campus_revenue);
                $sheet->setCellValue('G' . $rowCount, round($revenue_per_day, 2));
                $sheet->setCellValue('H' . $rowCount, number_format($percentage_of_total * 100, 2) . '%');
                $rowCount++;
                $i++;
            }

            $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
            $fileName = $fileName . '.xlsx';
            $this->output->set_header('Content-Type: application/vnd.ms-excel');
            $this->output->set_header("Content-type: application/csv");
            $this->output->set_header('Cache-Control: max-age=0');
            $writer->save(ROOT_UPLOAD_PATH . $fileName);
            //redirect(HTTP_UPLOAD_PATH.$fileName); 
            $filepath = file_get_contents(ROOT_UPLOAD_PATH . $fileName);
            force_download($fileName, $filepath);
        }
    }

    function exportCampusAcquisation()
    {
        $username = $this->session->userdata('username');
        $this->load->helper('download');
        $extension = 'xlsx';
        $report = $this->db->get_where('bi_report_export', array('username' => $username))->row();
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $campus_data = $this->Analytics_model->get_campus_bi_data($report->start_yearmonth, $report->end_yearmonth);
        $fileName = 'Subscribers Acquisitions-' . time();
        $sheet->setTitle("Acquisitions");
        $sheet->setCellValue('A1', 'Report Name');
        $sheet->setCellValue('B1', 'Subscribers Acquisitions');
        $sheet->setCellValue('A2', 'Start Month');
        $sheet->setCellValue('B2', substr_replace($report->start_yearmonth, '-', 4, 0));
        $sheet->setCellValue('A3', 'End Month');
        $sheet->setCellValue('B3', substr_replace($report->end_yearmonth, '-', 4, 0));

        $sheet->setCellValue('A5', 'SN');
        $sheet->setCellValue('B5', 'Campus Name');
        $sheet->setCellValue('C5', 'Total Subscriptions');
        $sheet->setCellValue('D5', 'Percentage of Total');
        $sheet->setCellValue('E5', 'Paid Subscriptions');
        $sheet->setCellValue('F5', 'Free Subscriptions');
        $sheet->setCellValue('G5', 'Total Subscriptions Fees');
        $rowCount = 6;
        $i = 1;
        $total_sub_count_new = 0;
        foreach ($campus_data as $aa) {
            $total_sub_count_new = $total_sub_count_new + $aa->sub_count_new;
        }
        $total_sub_count_new_div = $total_sub_count_new;
        if ($total_sub_count_new == 0) {
            $total_sub_count_new_div = 1;
        }
        foreach ($campus_data as $data) {
            $perc_of_total = ($data->sub_count_new / $total_sub_count_new_div);
            $sheet->setCellValue('A' . $rowCount, $i);
            $sheet->setCellValue('B' . $rowCount, $data->campus_name);
            $sheet->setCellValue('C' . $rowCount, $data->sub_count_new);
            $sheet->setCellValue('D' . $rowCount, number_format($perc_of_total * 100, 2) . '%');
            $sheet->setCellValue('E' . $rowCount, $data->paid_sub_count);
            $sheet->setCellValue('F' . $rowCount, $data->free_sub_count);
            $sheet->setCellValue('G' . $rowCount, $data->sub_fee);
            $rowCount++;
            $i++;
        }
        $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
        $fileName = $fileName . '.xlsx';
        $this->output->set_header('Content-Type: application/vnd.ms-excel');
        $this->output->set_header("Content-type: application/csv");
        $this->output->set_header('Cache-Control: max-age=0');
        $writer->save(ROOT_UPLOAD_PATH . $fileName);
        //redirect(HTTP_UPLOAD_PATH.$fileName); 
        $filepath = file_get_contents(ROOT_UPLOAD_PATH . $fileName);
        force_download($fileName, $filepath);
    }

    function exportImpactCampus()
    {
        $username = $this->session->userdata('username');
        $this->load->helper('download');
        $extension = 'xlsx';
        $report = $this->db->get_where('bi_report_export', array('username' => $username))->row();
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $campus_data = $this->Analytics_model->get_campus_bi_data($report->start_yearmonth, $report->end_yearmonth);
        $fileName = 'Campuses Impact-' . time();
        $sheet->setTitle("Campuses Impact");
        $sheet->setCellValue('A1', 'Report Name');
        $sheet->setCellValue('B1', 'Campuses Impact');
        $sheet->setCellValue('A2', 'Start Month');
        $sheet->setCellValue('B2', substr_replace($report->start_yearmonth, '-', 4, 0));
        $sheet->setCellValue('A3', 'End Month');
        $sheet->setCellValue('B3', substr_replace($report->end_yearmonth, '-', 4, 0));

        $sheet->setCellValue('A5', 'SN');
        $sheet->setCellValue('B5', 'Campus Name');
        $sheet->setCellValue('C5', 'Bottles Saved');
        $sheet->setCellValue('D5', 'Money Saved');
        $sheet->setCellValue('E5', 'Carbon Mitigated (g)');
        $rowCount = 6;
        $i = 1;
        foreach ($campus_data as $data) {
            $sheet->setCellValue('A' . $rowCount, $i);
            $sheet->setCellValue('B' . $rowCount, $data->campus_name);
            $sheet->setCellValue('C' . $rowCount, $data->bottle_saved);
            $sheet->setCellValue('D' . $rowCount, $data->money_saved);
            $sheet->setCellValue('E' . $rowCount, $data->carbon_avoid);
            $rowCount++;
            $i++;
        }
        $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
        $fileName = $fileName . '.xlsx';
        $this->output->set_header('Content-Type: application/vnd.ms-excel');
        $this->output->set_header("Content-type: application/csv");
        $this->output->set_header('Cache-Control: max-age=0');
        $writer->save(ROOT_UPLOAD_PATH . $fileName);
        //redirect(HTTP_UPLOAD_PATH.$fileName); 
        $filepath = file_get_contents(ROOT_UPLOAD_PATH . $fileName);
        force_download($fileName, $filepath);
    }

    function exportCampusRecharges()
    {
        $username = $this->session->userdata('username');
        $this->load->helper('download');
        $extension = 'xlsx';
        $report = $this->db->get_where('bi_report_export', array('username' => $username))->row();
        //workings for number of days                    
        $forDate = $this->Analytics_model->get_campus_bi_max_min_date($report->start_yearmonth, $report->end_yearmonth);
        if ($forDate->num_rows() >= 1) {
            $forDate = $forDate->row();
            $min_date = substr($forDate->min_date, 0, -2) . '01';
            $min_date = strtotime($min_date);
            $max_date = strtotime($forDate->max_date);
            $datediff = $max_date - $min_date;
            $days = round($datediff / (60 * 60 * 24));
            //echo $min_date ; exit();
        } else {
            $days = 0;
        }
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $recharges = $this->Analytics_model->get_campus_bi_recharges($report->start_yearmonth, $report->end_yearmonth);
        $fileName = 'Campus Recharges-' . time();
        $sheet->setTitle("Campus Recharges");
        $sheet->setCellValue('A1', 'Report Name');
        $sheet->setCellValue('B1', 'Campus Recharges');
        $sheet->setCellValue('A2', 'Start Month');
        $sheet->setCellValue('B2', substr_replace($report->start_yearmonth, '-', 4, 0));
        $sheet->setCellValue('A3', 'End Month');
        $sheet->setCellValue('B3', substr_replace($report->end_yearmonth, '-', 4, 0));

        $sheet->setCellValue('A5', 'SN');
        $sheet->setCellValue('B5', 'Campus Name');
        $sheet->setCellValue('C5', 'Total recharges');
        $sheet->setCellValue('D5', 'AVG per day');
        $sheet->setCellValue('E5', 'Perc. of total');
        $sheet->setCellValue('F5', 'Performing Subscribers');
        $sheet->setCellValue('G5', 'AVG per Subscriber');
        $sheet->setCellValue('H5', 'No. of Transactions');
        $rowCount = 6;
        $i = 1;
        if ($days == 0) {
            $days_div = 1;
        } else {
            $days_div = $days + 1;
        }
        $total_recharge = 0;
        foreach ($recharges->result() as $rr) {
            $total_recharge = $total_recharge + $rr->recharge;
        }
        if ($total_recharge == 0) {
            $total_recharge = 1;
        }
        foreach ($recharges->result() as $data) {
            $avg_per_day = $data->recharge / $days_div;
            $per_of_total = ($data->recharge / $total_recharge) * 100;
            $sub_perf_count = $data->sub_perf_count;
            if ($sub_perf_count == 0) {
                $sub_perf_count = 1;
            }
            $avg_per_sub = $data->recharge / $sub_perf_count;
            $sheet->setCellValue('A' . $rowCount, $i);
            $sheet->setCellValue('B' . $rowCount, $data->campus_name);
            $sheet->setCellValue('C' . $rowCount, round($data->recharge, 2));
            $sheet->setCellValue('D' . $rowCount, round($avg_per_day, 2));
            $sheet->setCellValue('E' . $rowCount, number_format($per_of_total, 2) . '%');
            $sheet->setCellValue('F' . $rowCount, $data->sub_perf_count);
            $sheet->setCellValue('G' . $rowCount, round($avg_per_sub, 2));
            $sheet->setCellValue('H' . $rowCount, $data->trans_count);
            $rowCount++;
            $i++;
        }
        $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
        $fileName = $fileName . '.xlsx';
        $this->output->set_header('Content-Type: application/vnd.ms-excel');
        $this->output->set_header("Content-type: application/csv");
        $this->output->set_header('Cache-Control: max-age=0');
        $writer->save(ROOT_UPLOAD_PATH . $fileName);
        //redirect(HTTP_UPLOAD_PATH.$fileName); 
        $filepath = file_get_contents(ROOT_UPLOAD_PATH . $fileName);
        force_download($fileName, $filepath);
    }

    function exportPOSRecharges()
    {
        $username = $this->session->userdata('username');
        $this->load->helper('download');
        $extension = 'xlsx';
        $report = $this->db->get_where('bi_report_export', array('username' => $username))->row();
        //workings for number of days                    
        $forDate = $this->Analytics_model->get_campus_bi_max_min_date($report->start_yearmonth, $report->end_yearmonth);
        if ($forDate->num_rows() >= 1) {
            $forDate = $forDate->row();
            $min_date = substr($forDate->min_date, 0, -2) . '01';
            $min_date = strtotime($min_date);
            $max_date = strtotime($forDate->max_date);
            $datediff = $max_date - $min_date;
            $days = round($datediff / (60 * 60 * 24));
            //echo $min_date ; exit();
        } else {
            $days = 0;
        }
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $recharges = $this->Analytics_model->get_pos_bi_recharges($report->start_yearmonth, $report->end_yearmonth);
        $recharges = $recharges->result();
        $fileName = 'POS Recharges-' . time();
        $sheet->setTitle("POS Recharges");
        $sheet->setCellValue('A1', 'Report Name');
        $sheet->setCellValue('B1', 'POS Recharges');
        $sheet->setCellValue('A2', 'Start Month');
        $sheet->setCellValue('B2', substr_replace($report->start_yearmonth, '-', 4, 0));
        $sheet->setCellValue('A3', 'End Month');
        $sheet->setCellValue('B3', substr_replace($report->end_yearmonth, '-', 4, 0));

        $sheet->setCellValue('A5', 'SN');
        $sheet->setCellValue('B5', 'POS');
        $sheet->setCellValue('C5', 'Total recharges');
        $sheet->setCellValue('D5', 'AVG per day');
        $sheet->setCellValue('E5', 'Perc. of total');
        $sheet->setCellValue('F5', 'No. of Transactions');
        $rowCount = 6;
        $i = 1;
        if ($days == 0) {
            $days_div = 1;
        } else {
            $days_div = $days + 1;
        }
        $total_recharge = 0;
        foreach ($recharges as $rr) {
            $total_recharge = $total_recharge + $rr->recharge;
        }
        if ($total_recharge == 0) {
            $total_recharge = 1;
        }
        foreach ($recharges as $data) {
            $avg_per_day = $data->recharge / $days_div;
            $per_of_total = ($data->recharge / $total_recharge) * 100;
            $sheet->setCellValue('A' . $rowCount, $i);
            $sheet->setCellValue('B' . $rowCount, $data->pos_name . ' - ' . $data->campus_name);
            $sheet->setCellValue('C' . $rowCount, round($data->recharge, 2));
            $sheet->setCellValue('D' . $rowCount, round($avg_per_day, 2));
            $sheet->setCellValue('E' . $rowCount, number_format($per_of_total, 2) . '%');
            $sheet->setCellValue('F' . $rowCount, $data->trans_count);
            $rowCount++;
            $i++;
        }
        $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
        $fileName = $fileName . '.xlsx';
        $this->output->set_header('Content-Type: application/vnd.ms-excel');
        $this->output->set_header("Content-type: application/csv");
        $this->output->set_header('Cache-Control: max-age=0');
        $writer->save(ROOT_UPLOAD_PATH . $fileName);
        //redirect(HTTP_UPLOAD_PATH.$fileName); 
        $filepath = file_get_contents(ROOT_UPLOAD_PATH . $fileName);
        force_download($fileName, $filepath);
    }

    function exportCampusSales()
    {
        $username = $this->session->userdata('username');
        $this->load->helper('download');
        $extension = 'xlsx';
        $report = $this->db->get_where('bi_report_export', array('username' => $username))->row();
        //workings for number of days                    
        $forDate = $this->Analytics_model->get_campus_bi_max_min_date($report->start_yearmonth, $report->end_yearmonth);
        if ($forDate->num_rows() >= 1) {
            $forDate = $forDate->row();
            $min_date = substr($forDate->min_date, 0, -2) . '01';
            $min_date = strtotime($min_date);
            $max_date = strtotime($forDate->max_date);
            $datediff = $max_date - $min_date;
            $days = round($datediff / (60 * 60 * 24));
            //echo $min_date ; exit();
        } else {
            $days = 0;
        }
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $campus_data = $this->Analytics_model->get_campus_bi_data($report->start_yearmonth, $report->end_yearmonth);
        $fileName = 'Campus Sales-' . time();
        $sheet->setTitle('Campus Sales');
        $sheet->setCellValue('A1', 'Report Name');
        $sheet->setCellValue('B1', 'Campus Sales');
        $sheet->setCellValue('A2', 'Start Month');
        $sheet->setCellValue('B2', substr_replace($report->start_yearmonth, '-', 4, 0));
        $sheet->setCellValue('A3', 'End Month');
        $sheet->setCellValue('B3', substr_replace($report->end_yearmonth, '-', 4, 0));

        $sheet->setCellValue('A5', 'SN');
        $sheet->setCellValue('B5', 'Campus Name');
        $sheet->setCellValue('C5', 'Card Sales');
        $sheet->setCellValue('D5', 'Cash Sales');
        $sheet->setCellValue('E5', 'Total Sales');
        $sheet->setCellValue('F5', 'Perc. of Total');
        $sheet->setCellValue('G5', 'AVG per day');
        $rowCount = 6;
        $i = 1;
        if ($days == 0) {
            $days_div = 1;
        } else {
            $days_div = $days + 1;
        }
        $total_sales = 0;
        foreach ($campus_data as $cc) {
            $total_sales = $total_sales + $cc->card_sale + $cc->cash_sale;
        }
        if ($total_sales == 0) {
            $total_sales = 1;
        }
        foreach ($campus_data as $data) {
            $campus_sales = $data->card_sale + $data->cash_sale;
            $avg_per_day = $campus_sales / $total_sales;
            $sheet->setCellValue('A' . $rowCount, $i);
            $sheet->setCellValue('B' . $rowCount, $data->campus_name);
            $sheet->setCellValue('C' . $rowCount, round($data->card_sale, 2));
            $sheet->setCellValue('D' . $rowCount, round($data->cash_sale, 2));
            $sheet->setCellValue('E' . $rowCount, round($campus_sales, 2));
            $sheet->setCellValue('F' . $rowCount, round($campus_sales / $total_sales * 100, 2) . '%');
            $sheet->setCellValue('G' . $rowCount, round($campus_sales / $days_div, 2));
            $rowCount++;
            $i++;
        }
        $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
        $fileName = $fileName . '.xlsx';
        $this->output->set_header('Content-Type: application/vnd.ms-excel');
        $this->output->set_header("Content-type: application/csv");
        $this->output->set_header('Cache-Control: max-age=0');
        $writer->save(ROOT_UPLOAD_PATH . $fileName);
        //redirect(HTTP_UPLOAD_PATH.$fileName); 
        $filepath = file_get_contents(ROOT_UPLOAD_PATH . $fileName);
        force_download($fileName, $filepath);
    }

    function exportCampusVolume()
    {
        $username = $this->session->userdata('username');
        $this->load->helper('download');
        $extension = 'xlsx';
        $report = $this->db->get_where('bi_report_export', array('username' => $username))->row();
        //workings for number of days                    
        $forDate = $this->Analytics_model->get_campus_bi_max_min_date($report->start_yearmonth, $report->end_yearmonth);
        if ($forDate->num_rows() >= 1) {
            $forDate = $forDate->row();
            $min_date = substr($forDate->min_date, 0, -2) . '01';
            $min_date = strtotime($min_date);
            $max_date = strtotime($forDate->max_date);
            $datediff = $max_date - $min_date;
            $days = round($datediff / (60 * 60 * 24));
            //echo $min_date ; exit();
        } else {
            $days = 0;
        }
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $campus_data = $this->Analytics_model->get_campus_bi_data($report->start_yearmonth, $report->end_yearmonth);
        $fileName = 'Volume Sold by Campuses-' . time();
        $sheet->setTitle('Volume by Campuses');
        $sheet->setCellValue('A1', 'Report Name');
        $sheet->setCellValue('B1', 'Volume Sold by Campuses');
        $sheet->setCellValue('A2', 'Start Month');
        $sheet->setCellValue('B2', substr_replace($report->start_yearmonth, '-', 4, 0));
        $sheet->setCellValue('A3', 'End Month');
        $sheet->setCellValue('B3', substr_replace($report->end_yearmonth, '-', 4, 0));

        $sheet->setCellValue('A5', 'SN');
        $sheet->setCellValue('B5', 'Campus Name');
        $sheet->setCellValue('C5', 'Volume Sold (Ltr)');
        $sheet->setCellValue('D5', 'AVG per Day (Ltr)');
        $sheet->setCellValue('E5', 'Perc. of Total');
        $rowCount = 6;
        $i = 1;
        if ($days == 0) {
            $days_div = 1;
        } else {
            $days_div = $days + 1;
        }
        $total_volume = 0;
        foreach ($campus_data as $vv) {
            $total_volume = $total_volume + $vv->water_volume;
        }
        if ($total_volume == 0) {
            $total_volume = 1;
        }
        foreach ($campus_data as $data) {
            $sheet->setCellValue('A' . $rowCount, $i);
            $sheet->setCellValue('B' . $rowCount, $data->campus_name);
            $sheet->setCellValue('C' . $rowCount, round($data->water_volume, 2));
            $sheet->setCellValue('D' . $rowCount, round($data->water_volume / $days_div, 2));
            $sheet->setCellValue('E' . $rowCount, round($data->water_volume / $total_volume * 100, 2) . '%');
            $rowCount++;
            $i++;
        }
        $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
        $fileName = $fileName . '.xlsx';
        $this->output->set_header('Content-Type: application/vnd.ms-excel');
        $this->output->set_header("Content-type: application/csv");
        $this->output->set_header('Cache-Control: max-age=0');
        $writer->save(ROOT_UPLOAD_PATH . $fileName);
        //redirect(HTTP_UPLOAD_PATH.$fileName); 
        $filepath = file_get_contents(ROOT_UPLOAD_PATH . $fileName);
        force_download($fileName, $filepath);
    }

    function dailyRevenue()
    {
        $this->data['title'] = 'Analytics';
        $this->data['subtitle'] = 'Daily Revenue';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'analytics/dailyRevenue';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_bi_daily_revenue');
        $crud->order_by('report_date', 'DESC');
        $crud->columns('report_date', 'sub_fee', 'sub_fee_count', 'pos_recharges', 'pos_recharges_count', 'mob_recharges', 'mob_recharges_count', 'val_recharge', 'val_recharge_count', 'cash_sales', 'card_renewal', 'card_renewal_count', 'total_rev');
        $crud->display_as('sub_fee', 'A. Sub. Fees')
            ->display_as('sub_fee_count', 'A. Count')
            ->display_as('pos_recharges', 'B. POS Rech')
            ->display_as('pos_recharges_count', 'B. Count')
            ->display_as('mob_recharges', 'C. Mob Rech')
            ->display_as('mob_recharges_count', 'C. Count')
            ->display_as('val_recharge', 'D. VAL Rech')
            ->display_as('val_recharge_count', 'D. Count')
            ->display_as('cash_sales', 'Cash Sales')
            ->display_as('card_renewal', 'E. Card Renewal')
            ->display_as('card_renewal_count', 'E. Count')
            ->display_as('total_rev', 'Total');
        $crud->unset_clone();
        $crud->unset_add();
        $crud->unset_edit();
        $crud->unset_delete();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->callback_column('sub_fee', array($this, '_callback_format_amount'));
        $crud->callback_column('sub_fee_count', array($this, '_callback_format_count'));
        $crud->callback_column('pos_recharges', array($this, '_callback_format_amount'));
        $crud->callback_column('pos_recharges_count', array($this, '_callback_format_count'));
        $crud->callback_column('mob_recharges', array($this, '_callback_format_amount'));
        $crud->callback_column('mob_recharges_count', array($this, '_callback_format_count'));
        $crud->callback_column('val_recharge', array($this, '_callback_format_amount'));
        $crud->callback_column('val_recharge_count', array($this, '_callback_format_count'));
        $crud->callback_column('card_renewal', array($this, '_callback_format_amount'));
        $crud->callback_column('card_renewal_count', array($this, '_callback_format_count'));
        $crud->callback_column('cash_sales', array($this, '_callback_format_amount'));
        $crud->callback_column('report_date', array($this, '_callback_format_date'));
        $crud->callback_column('total_rev', array($this, '_callback_total_revenue'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_format_amount($value, $row)
    {
        return '<span class="pull-right">' . number_format($value, 2) . '</span>';
    }

    function _callback_format_count($value, $row)
    {
        return '<span class="pull-right">' . number_format($value, 0) . '</span>';
    }

    function _callback_format_date($value, $row)
    {
        $date = date("d/m/Y", strtotime($value));
        return $date;
    }

    function _callback_total_revenue($value, $row)
    {
        $data = $this->db->get_where('bi_daily_revenue', array('id' => $row->id))->row();
        $total = $data->sub_fee + $data->pos_recharges + $data->mob_recharges + $data->val_recharge + $data->cash_sales + $data->card_renewal;
        return '<span class="pull-right">' . number_format($total, 2) . '</span>';
    }

}
