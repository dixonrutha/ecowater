<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require_once APPPATH . '/third_party/PHPExcel/IOFactory.php';

class Campus extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'excel', 'session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        $this->load->model(array('Campus_model', 'Subscriber_model', 'Sms_model', 'Maintenance_model', 'Stations_model', 'Settings_model'));
        if (!$this->ion_auth->logged_in()) {
            redirect('1b950a2cee305598cdc96de85d706237');
        } //auth/login
//        //Call this mysql procedure to change session timezone for all database CRUD
//        $this->db->query("CALL mysql.store_time_zone()");
        $this->load->library('encryption');
        //check session
        $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
    }

    function index()
    {

    }

    function listCampus()
    {
        if (empty($this->session->userdata('campus_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Campus';
        $this->data['subtitle'] = 'All Campus';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = '69908164272db3c3ecb3958c51e814ab'; //campus/listCampus  
        $crud = new grocery_CRUD();
        $crud->set_table('eco_campus');
        $crud->order_by('id', 'ASC');
        $crud->set_primary_key('branch_code', 'eco_branch');
        $crud->set_relation('branch_code', 'eco_branch', 'branch_name');
        $crud->columns('campus_code', 'campus_name', 'branch_code', 'physical_addr', 'contacts', 'record_stat');
        $crud->fields('campus_code', 'campus_name', 'branch_code', 'physical_addr', 'address_line1', 'address_line2', 'email', 'telephone', 'record_stat');
        $crud->add_fields(array('campus_code', 'campus_name', 'branch_code', 'physical_addr', 'address_line1', 'address_line2', 'email', 'telephone', 'bank_acc_no', 'bank_acc_name', 'bank_name', 'record_stat', 'inc_num'));
        $crud->edit_fields(array('campus_name', 'branch_code', 'physical_addr', 'address_line1', 'address_line2', 'email', 'telephone', 'bank_acc_no', 'bank_acc_name', 'bank_name', 'record_stat'));
        $crud->change_field_type('campus_code', 'invisible');
        $crud->change_field_type('inc_num', 'invisible');
        $crud->display_as('record_stat', 'Status')
            ->display_as('id', 'Contacts')
            ->display_as('physical_addr', 'Physical Addr');
        $crud->set_crud_url_path(base_url('campus/listCampus'));
        $crud->callback_column('record_stat', array($this, '_callback_record_stat'));
        $crud->callback_read_field('record_stat', array($this, '_callback_record_stat'));
        $crud->callback_before_insert(array($this, '_callback_create_campus_code'));
        $crud->unset_texteditor('physical_addr');
        $crud->required_fields('campus_name', 'branch_code', 'physical_addr', 'record_stat');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        if (empty($this->session->userdata('branch_add'))) {
            $crud->unset_add();
        }
        if (empty($this->session->userdata('branch_edit'))) {
            $crud->unset_edit();
        }
        if (empty($this->session->userdata('branch_delete'))) {
            $crud->unset_delete();
        }
        $crud->callback_column('contacts', array($this, '_callback_campus_address'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    public function _callback_campus_address($value, $row)
    {
        $data = $this->db->get_where('campus', array('id' => $row->id))->row();
        if (!empty($data->address_line1) || !empty($data->address_line2) || !empty($data->telephone) || !empty($data->email)) {
            return $data->address_line1 . ', ' . $data->address_line2 . ' <b>Mobile:</b> ' . $data->telephone . ' <b>Email:</b> ' . $data->email;
        } else {
            return '';
        }
    }

    function _callback_create_campus_code($post_array)
    {
        $this->db->order_by('inc_num', 'DESC');
        $data = $this->db->get('campus')->row();
        $last_inc = $data->inc_num;
        $next_inc = $last_inc + 1;
        if ($next_inc >= 1 && $next_inc <= 9) {
            $campus_code = 'CA-00000' . $next_inc;
        } elseif ($next_inc >= 10 && $next_inc <= 99) {
            $campus_code = 'CA-0000' . $next_inc;
        } elseif ($next_inc >= 100 && $next_inc <= 999) {
            $campus_code = 'CA-000' . $next_inc;
        } elseif ($next_inc >= 1000 && $next_inc <= 9999) {
            $campus_code = 'CA-00' . $next_inc;
        } elseif ($next_inc >= 10000 && $next_inc <= 99999) {
            $campus_code = 'CA-0' . $next_inc;
        } else {
            $campus_code = 'CA-' . $next_inc;
        }
        $post_array['campus_code'] = $campus_code;
        $post_array['inc_num'] = $next_inc;
        return $post_array;
    }

    function royalty()
    {
        $this->data['title'] = 'Royalt';
        $this->data['subtitle'] = 'Campus Royalty';
        $this->data["subview"] = 'components/page_content';
        $this->data['pageurl'] = '6b02549c5e3b0bb66286901b2a4f3021'; //campus/royaltyConfig
        $xcrud = xcrud_get_instance();
        $xcrud->table('campus');
        $xcrud->columns('campus_name');
        $xcrud->button(base_url('campus/viewCampusRoyalty/' . str_replace(array('+', '/', '='), array('-', '_', '~'), $this->encryption->encrypt('{id}'))), 'View', 'fa fa-search', '', array('class' => 'btn btn-sm btn-info'));
        $xcrud->unset_title();
        $xcrud->unset_view();
        $xcrud->unset_add();
        $xcrud->unset_remove();
        $xcrud->unset_edit();
        $this->data['content'] = $xcrud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function viewCampusRoyalty($campus_id = '', $layout = '')
    {
        if (empty($this->session->userdata('campus_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $campus_id = $this->encryption->decrypt(str_replace(array('-', '_', '~'), array('+', '/', '='), $campus_id));
        // echo $campus_id; exit();
        $this->data['title'] = 'Royalty';
        $this->data['subtitle'] = 'Royalty View';
        if ($layout === 'campus_manager') {
            $this->data["subview"] = 'campus/royalty_view_old';
        } else {
            $this->data["subview"] = 'campus/royalty_view';
        }
        $this->data['pageurl'] = 'e306393ad4d44b6d58d18545a6b2be52'; //campus/royalty
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            $action = $this->input->post('invoice');
            if ($action === 'generate') {
                $this->form_validation->set_rules('from_date', 'From Date', 'required');
                $this->form_validation->set_rules('to_date', 'To Date', 'required');
                if ($this->form_validation->run() == TRUE) {
                    $this->db->trans_start();
                    //insert first invoice data and return insert id
                    $from_date2 = date('Y-m-d', strtotime($this->input->post('from_date')));
                    $to_date2 = date('Y-m-d', strtotime($this->input->post('to_date')));
                    if ($to_date2 < $from_date2) {
                        $this->session->set_flashdata('error2', 'Date range not correct');
                        redirect('campus/campus_royalty/' . $campus_id);
                    }
                    $data = array(
                        'from_date' => $from_date2,
                        'to_date' => $to_date2,
                        'campus_id' => $campus_id,
                        'maker_id' => $this->session->userdata('username')
                    );
                    $id = $this->Campus_model->insert_invoice_data($data);
                    //create invoice number
                    $invoice_no = 'R-' . date('Ymd') . '-' . $id;
                    //update royalty in sales table                
                    $this->Campus_model->update_royalty_data($from_date2, $to_date2, $id, $campus_id);
                    //get invoice amount from sales data
                    $amount = $this->Campus_model->get_invoice_amount_from_sales($id);
                    //update invoice details
                    $data2 = array('invoice_no' => $invoice_no, 'amount' => $amount);
                    $this->Campus_model->update_invoice_data($data2, $id);
                    $this->db->trans_complete();
                    $this->session->set_flashdata('success', 'Invoice created');
                }
            } elseif ($action === 'pay') {
                $this->form_validation->set_rules('invoice_id', 'Invoice', 'required');
                if ($this->form_validation->run() == TRUE) {
                    $invoice_id = $this->input->post('invoice_id');
                    $data = array('status' => 'Paid');
                    $this->db->trans_start();
                    $this->Campus_model->update_invoice_data($data, $invoice_id);
                    $data = array('royalty_status' => 'Paid');
                    $this->Campus_model->update_royalty_data2($data, $invoice_id);
                    $this->db->trans_complete();
                    $this->session->set_flashdata('success', 'Invoice paid');
                }
            }
        }
        $from_date = '2017-01-01';
        //	$from_date = date('Y-m-d', strtotime( date( 'Y-m-d', strtotime( date('Y-m-d') ) ) . '-180 days' ));
        $to_date = date('Y-m-d');
        $this->data['campus_id'] = $campus_id;
        $this->data['royalty'] = $this->Campus_model->get_campus_royalty($campus_id, $from_date, $to_date);
        $this->data['invoices'] = $this->Campus_model->get_campus_invoice($campus_id, $from_date, $to_date);
        $this->data['unpaid_invoices'] = $this->Campus_model->get_campus_unpaid_invoice($campus_id);
        $this->data['campus'] = $this->Campus_model->get_campus_details($campus_id);
        $this->data['layout'] = $layout;
        if ($layout === 'campus_manager') {
            $this->load->view('_layout_topnav', $this->data);
        } else {
            $this->load->view('_layout_main', $this->data);
        }
    }

    function invoiceDownload($invoice_id = FALSE)
    {
        // Royalty invoice template
        $this->load->library('Pdf_invoice');
        $pdf = new Pdf_invoice('P', 'mm', 'A4', true, 'UTF-8', false);
        $pdf->SetTitle('Royalty Invoice');
        $pdf->SetHeaderMargin(30);
        $pdf->setPrintHeader(false);
        $pdf->SetTopMargin(5);
        $pdf->setFooterMargin(15);
        $pdf->SetAutoPageBreak(true, 12);
        $pdf->SetAuthor('Author');
        $pdf->SetDisplayMode('real', 'default');
        $invoice = $this->Campus_model->get_royalty_invoice_details($invoice_id);
        $iamount = $invoice->amount;
        $wht = $iamount * 0.15;
        $net = $iamount - $wht;
        //$invoice_no = 'R-'.date('Ymd', strtotime($invoice->date_registered)).'-'.$invoice->id;
        $system_par = $this->db->get('system_parameters')->row();
        $stations = $this->Campus_model->get_royalty_by_stations($invoice_id);
        $s_sales = '';
        $total_sales = 0;
        $total_royalty = 0;
        foreach ($stations as $s) {
            $total_sales = $total_sales + $s->sales;
            $total_royalty = $total_royalty + $s->royalty;
            $s_sales = $s_sales . '<tr><td style="border: 1px solid #dddddd;">' . $s->station_name . '</td><td style="border: 1px solid #dddddd; text-align: right">' . number_format($s->sales, 2) . '</td><td style="border: 1px solid #dddddd; text-align: right">' . number_format($s->royalty, 2) . '</td></tr>';
        }
//layout start
        $html = '
<table style="width: 100%; line-height: 1.5;">
	<tr>
		<td style="text-align: right;  padding: 1px; font-size: 30px; font-weight: 900">INVOICE</td>
    </tr>
</table>
<table style="width: 100%">
	<tr>
        <td style="width: 60%;">
			<table style="width:100%; font-size: 11px; line-height: 1.7;">
				<tr>
					<td>' . $invoice->campus_name . '</td>
				</tr>
				<tr>
					<td>' . $invoice->address_line1 . '</td>
				</tr>
				<tr>
					<td>' . $invoice->address_line2 . '</td>
				</tr>
			</table>
		</td>
        <td style="width: 40%">
			<table style="width:100%; font-size: 11px; line-height: 1.7; border-collapse: collapse; border: 1px solid #dddddd;">
				<tr>
                    <th style="border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">INVOICE #</th>
                    <th style="border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">DATE</th>
                </tr>
				<tr>
                    <td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . $invoice->invoice_no . '</td>
                    <td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . date('d-M-Y', strtotime($invoice->date_registered)) . '</td>
                </tr>
				<tr>
                    <td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">Status</td>
                    <td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . $invoice->status . '</td>
                </tr>
			</table>
		</td>
    </tr>
</table>
<br/>
<br/>
<table style="width:100%; font-size: 11px; line-height: 1.7;">
	<tr>
		<td style="width:60%; font-size: 11px; margin-left: 10px"><strong>Bill To :</strong></td>		
		<td style="width:40%; font-size: 11px; margin-left: 10px" colspan="2"><strong>Pay To :</strong></td>
	</tr>
	<tr>
		<td style="width:60%">' . $system_par->company_name . '</td>
		<td style="width:15%">Acc No.</td>
		<td style="width:25%">' . $invoice->bank_acc_no . '</td>
	</tr>
	<tr>
		<td style="width:60%">' . $system_par->address_line_2 . '</td>
		<td style="width:15%">Acc Name</td>
		<td style="width:25%">' . $invoice->bank_acc_name . '</td>
	</tr>
	<tr>
		<td style="width:60%">' . $system_par->address_line_1 . '</td>
		<td style="width:15%">Bank</td>
		<td style="width:25%">' . $invoice->bank_name . '</td>
	</tr>
	<tr>
		<td>' . $system_par->address_line_3 . '</td>
	</tr>
</table>
<br/>
<br/>
<table style="width:100%; font-size: 11px; line-height: 1.7; border-collapse: collapse; border: 1px solid #dddddd;">
	<tr>
        <th style="width:70%; border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">DESCRIPTION</th>
        <th style="width:30%; border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">AMOUNT (TZS)</th>
    </tr>
	<tr>
        <td style="width:70%; border: 1px solid #dddddd; text-align: left; padding: 2px; height: 300px; line-height: 7;">Being Royalty payments from ' . date('F d, Y ', strtotime($invoice->from_date)) . ' to ' . date('F d, Y ', strtotime($invoice->to_date)) . '</td>
        <td style="width:30%; border: 1px solid #dddddd; text-align: right; padding: 2px; height: 300px; line-height: 7;">' . number_format($invoice->amount, 2) . '</td>
    </tr>
    <tr>
        <th style="width:70%; border: 1px solid #dddddd; text-align: left; padding: 2px">TOTAL</th>
        <th style="width:30%; border: 1px solid #dddddd; text-align: right; padding: 2px;">' . number_format($iamount, 2) . '</th>
    </tr>    
</table>
<br/>
<br/>
<table style="width:100%; font-size: 11px; line-height: 1.7; border-collapse: collapse; border: 1px solid #dddddd;">
    <tr>
        <td colspan="3"  style="border: 1px solid #dddddd; text-align: left; padding: 2px">Campus Sales Breakdown</td>
    </tr>
    <tr>
        <td style="border: 1px solid #dddddd; font-weight: bold">Station Name</td>
        <td style="border: 1px solid #dddddd; font-weight: bold">Total Sales (TZS)</td>
        <td style="border: 1px solid #dddddd; font-weight: bold">Total Royalty</td>
    </tr>' . $s_sales
            . '
  <tr>
        <td style="border: 1px solid #dddddd; font-weight: bold">Total</td>
        <td style="border: 1px solid #dddddd; font-weight: bold; text-align: right;">' . number_format($total_sales, 2) . '</td>
        <td style="border: 1px solid #dddddd; font-weight: bold; text-align: right;">' . number_format($total_royalty, 2) . '</td>
    </tr>
   </table>';
//layout end
        $pdf->AddPage();
        $pdf->SetFont('helvetica', '', 20);
        $pdf->writeHTML($html, true, 0, true, 0);
        $pdf->Output('My-File-Name.pdf', 'I');
    }

#Utility Bills for campus start

    function utilityBills()
    {
        $this->data['title'] = 'Utility';
        $this->data['subtitle'] = 'Bills';
        $this->data["subview"] = 'campus/list_utility_bills';
        $this->data['pageurl'] = 'cb063fe2c1ad14dc432e56c55ee9b331'; //campus/utilityBills

        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('utility_type', 'Utility Type', 'required');
            $this->form_validation->set_rules('station_id', 'Station', 'required');
            $this->form_validation->set_rules('meter_readings', 'meter Readings', 'required|numeric');
            $this->form_validation->set_rules('charge_month', 'Month', 'required');
            if ($this->form_validation->run() == TRUE) {
                $station_id = $this->input->post('station_id');
                $charge_month = $this->input->post('charge_month');
                $utility_type = $this->input->post('utility_type');
                $meter_readings = $this->input->post('meter_readings');
                $yearmonth = date('Ym', strtotime($charge_month));
                //get last meter readings
                $result2 = $this->Campus_model->get_station_last_utility_bill($station_id, $utility_type, $yearmonth);
                if ($result2->num_rows() >= 1) {
                    $data = $result2->row();
                    $meter_readings_opening = $data->meter_readings;
                } else {
                    $meter_readings_opening = 0;
                }
                $units = $meter_readings - $meter_readings_opening;
                //get utility unit price
                $result3 = $this->Campus_model->get_utility_price_for_station($station_id, $utility_type);
                if ($result3->num_rows() >= 1) {
                    $data = $result3->row();
                    $unit_price = $data->unit_price;
                } else {
                    $this->session->set_flashdata('error', 'Unit price for campus not configured');
                    redirect('campus/utilityBills');
                }
                $total_cost = $unit_price * $units;
                //Check if record exist
                $result = $this->Campus_model->get_utility_bill_by_station_month($station_id, $charge_month, $utility_type);
                if ($result) {
                    //check if user is attempting to update old record
                    $result4 = $this->Campus_model->get_utility_bill_yearmonth_greater($station_id, $yearmonth, $utility_type);
                    if ($result4->num_rows() >= 1) {
                        $this->session->set_flashdata('error', 'Sorry, old bills cannot be updated. Please contact system admin');
                        redirect('campus/utilityBills');
                    }
                    //update
                    $data_u = array(
                        'meter_readings_opening' => $meter_readings_opening,
                        'meter_readings' => $meter_readings,
                        'units' => $units,
                        'unit_price' => $unit_price,
                        'total_cost' => $total_cost,
                        'maker_id' => $this->session->userdata('username')
                    );
                    $this->db->where(array('station_id' => $station_id, 'charge_month' => $charge_month, 'utility_type' => $utility_type));
                    $this->db->update('station_utility_bills', $data_u);
                    $this->session->set_flashdata('success', 'Bill already exist hence updated');
                    redirect('campus/utilityBills');
                } else {
                    //insert record
                    $data = array(
                        'station_id' => $station_id,
                        'utility_type' => $utility_type,
                        'meter_readings_opening' => $meter_readings_opening,
                        'meter_readings' => $meter_readings,
                        'units' => $units,
                        'unit_price' => $unit_price,
                        'total_cost' => $total_cost,
                        'charge_month' => $charge_month,
                        'yearmonth' => $yearmonth,
                        'maker_id' => $this->session->userdata('username')
                    );
                    $this->db->insert('station_utility_bills', $data);
                    $this->session->set_flashdata('success', 'Bill created');
                    redirect('campus/utilityBills');
                }
            }
        }

        $this->data["types"] = $this->Settings_model->get_utility_types();
        $this->data["stations"] = $this->Stations_model->get_all_stations();
        $crud = new grocery_CRUD();
        $crud->set_table('eco_station_utility_bills');
        $crud->order_by('yearmonth', 'DESC');
        $crud->set_relation('station_id', 'eco_stations', 'station_name');
        $crud->set_primary_key('code', 'eco_utility_types');
        $crud->set_relation('utility_type', 'eco_utility_types', 'type');
        $crud->columns('charge_month', 'station_id', 'utility_type', 'meter_readings', 'units', 'unit_price', 'total_cost', 'status', 'maker_id', 'date_registered');
        $crud->display_as('charge_month', 'Month')
            ->display_as('station_id', 'Station')
            ->display_as('utility_type', 'Utility')
            ->display_as('meter_readings', 'Readings')
            ->display_as('total_cost', 'Total Cost')
            ->display_as('maker_id', 'Entered By')
            ->display_as('date_registered', 'Entry Date');
        $crud->callback_column('status', array($this, '_callback_record_stat'));
        $crud->callback_column('total_cost', array($this, '_callback_currency_format'));
        $crud->callback_column('unit_price', array($this, '_callback_currency_format'));
        $crud->callback_column('units', array($this, '_callback_number_format2'));
        $crud->callback_column('meter_readings', array($this, '_callback_number_format2'));
        $crud->callback_column('date_registered', array($this, '_callback_format_date'));
        $crud->unset_add();
        $crud->unset_edit();
        $crud->unset_delete();
        //$crud->unset_read();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->set_crud_url_path(base_url('campus/utilityBills'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_crud', $this->data);
    }

    function utilityInvoices()
    {
        $this->data['title'] = 'Utility';
        $this->data['subtitle'] = 'Campus Utility';
        $this->data["subview"] = 'components/page_content';
        $this->data['pageurl'] = 'e306393ad4d44b6d58d18545a6b2be52'; //campus/
        $xcrud = xcrud_get_instance();
        $xcrud->table('campus');
        $xcrud->columns('campus_name');
        $xcrud->button(base_url('campus/viewCampusUtility/{id}'), 'View', 'fa fa-search', '', array('class' => 'btn btn-sm btn-info'));
        $xcrud->unset_title();
        $xcrud->unset_view();
        $xcrud->unset_add();
        $xcrud->unset_remove();
        $xcrud->unset_edit();
        $this->data['content'] = $xcrud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function viewCampusUtility($campus_id = '', $layout = '')
    {
        $campus_id = $this->encryption->decrypt(str_replace(array('-', '_', '~'), array('+', '/', '='), $campus_id));
        $this->data['title'] = 'Utility';
        $this->data['subtitle'] = 'Campus Utility';
        $this->data['pageurl'] = 'e306393ad4d44b6d58d18545a6b2be52'; //campus/utilityInvoices
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            //echo $this->input->post('bill_month'); exit();
            $this->load->library('form_validation');
            $action = $this->input->post('action');
            if ($action === 'generate') {
                $this->form_validation->set_rules('bill_month', 'Month', 'required');
                if ($this->form_validation->run() == TRUE) {
                    $this->db->trans_start();
                    $bill_month = $this->input->post('bill_month');
                    $bill_month = date('M-Y', strtotime($bill_month));
                    $yearmonth = date('Ym', strtotime($bill_month));
                    //$yearmonth = '01-'.$bill_month;
                    //$yearmonth = date('Ym', strtotime($yearmonth));
                    //check if there bills for campus and selected month exist
                    $bills = $this->Campus_model->get_campus_bills_by_month($campus_id, $bill_month);
                    if ($bills) {
                        //check if invoice already exist
                        $invoice = $this->Campus_model->get_campus_utility_bill_invoices_by_month($campus_id, $bill_month);
                        if ($invoice) {
                            $this->session->set_flashdata('error', 'Error! Invoice for selected month already exist');
                        } else {
                            $data = array(
                                'campus_id' => $campus_id,
                                'bill_month' => $bill_month,
                                'bill_yearmonth' => $yearmonth,
                                'maker_id' => $this->session->userdata('username')
                            );
                            $invoice_id = $this->Campus_model->insert_invoice_data_utility_bill($data);
                            $invoice_no = 'U-' . date('Ymd') . '-' . $invoice_id;
                            //get all bills for campus for a specified month
                            $water = 0;
                            $electricity = 0;
                            //$bills = $this->Campus_model->get_campus_bills_by_month($campus_id, $bill_month);
                            if ($bills) {
                                foreach ($bills as $b) {
                                    if ($b->utility_type === 'RW') {
                                        $water = $b->cost;
                                    } elseif ($b->utility_type === 'EL') {
                                        $electricity = $b->cost;
                                    }
                                }
                            }
                            $data_update = array('invoice_no' => $invoice_no, 'water' => $water, 'electricity' => $electricity);
                            $this->Campus_model->update_utility_invoice_bill($data_update, $invoice_id);
                            //update station utility bills set invoice id
                            $this->Campus_model->update_station_utility_bills($invoice_id, $campus_id, $bill_month);
                            $this->session->set_flashdata('success', 'Invoice created');
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Error! Please enter utility bills first');
                    }
                    $this->db->trans_complete();
                }
            }
        }
        $this->data['campus_id'] = $campus_id;
        $this->data['campus'] = $this->Campus_model->get_campus_details($campus_id);
        $this->data['bills'] = $this->Campus_model->get_all_campus_utility_bills($campus_id);
        $this->data['invoices'] = $this->Campus_model->get_campus_utility_bill_invoices($campus_id);
        $this->data['layout'] = $layout;
        if ($layout === 'campus_manager') {
            $this->data["subview"] = 'campus/utility_invoices_old';
            $this->load->view('_layout_topnav', $this->data);
        } else {
            $this->data["subview"] = 'campus/utility_invoices';
            $this->load->view('_layout_main', $this->data);
        }
    }

    function payUtilityInvoice($invoice_id = '', $campus_id = '', $layout = '')
    {
        $invoice_id = $this->encryption->decrypt(str_replace(array('-', '_', '~'), array('+', '/', '='), $invoice_id));
        //update utility invoices
        $data = array('status' => 'Paid');
        $this->Campus_model->update_utility_invoice_bill($data, $invoice_id);
        //update station utility bills
        $this->Campus_model->update_station_utility_bills_2($data, $invoice_id);
        $this->session->set_flashdata('success', 'Invoice marked as paid');
        redirect('campus/viewCampusUtility/' . str_replace(array('+', '/', '='), array('-', '_', '~'), $this->encryption->encrypt($campus_id)) . '/' . $layout);
    }

    function deleteUtilityInvoice($invoice_id = '', $campus_id = '', $bill_month = '', $layout = '')
    {
        $invoice_id = $this->encryption->decrypt(str_replace(array('-', '_', '~'), array('+', '/', '='), $invoice_id));
        //check if invoice already paid
        $invoice = $this->Campus_model->get_campus_utility_bill_invoices_by_month($campus_id, $bill_month);
        if ($invoice->status === 'Paid') {
            $this->session->set_flashdata('error', 'Cannot delete paid invoice');
            redirect('campus/viewCampusUtility/' . str_replace(array('+', '/', '='), array('-', '_', '~'), $this->encryption->encrypt($campus_id)) . '/' . $layout);
        } else {
            //remove invoice data
            $this->db->delete('campus_utility_invoices', array('id' => $invoice_id));
            //mark station bills as Unpaid
            $data = array('status' => 'Unpaid');
            $this->Campus_model->update_station_utility_bills_2($data, $invoice_id);
            $this->session->set_flashdata('success', 'Invoice deleted');
            redirect('campus/viewCampusUtility/' . str_replace(array('+', '/', '='), array('-', '_', '~'), $this->encryption->encrypt($campus_id)) . '/' . $layout);
        }
    }

    function downloadUtilityInvoice($invoice_id = '', $campus_id = '')
    {
        $campus_id = $this->encryption->decrypt(str_replace(array('-', '_', '~'), array('+', '/', '='), $campus_id));
        $this->load->library('Pdf_invoice');
        $pdf = new Pdf_invoice('P', 'mm', 'A4', true, 'UTF-8', false);
        $pdf->SetTitle('Utility Invoice');
        $pdf->SetHeaderMargin(30);
        $pdf->setPrintHeader(false);
        $pdf->SetTopMargin(5);
        $pdf->setFooterMargin(15);
        $pdf->SetAutoPageBreak(true, 12);
        $pdf->SetAuthor('Author');
        $pdf->SetDisplayMode('real', 'default');
        $invoice = $this->db->get_where('campus_utility_invoices', array('id' => $invoice_id))->row();
        $campus = $this->Campus_model->get_campus_details($campus_id);
        //$invoice_no = 'U-'.date('Ymd', strtotime($invoice->date_registered)).'-'.$invoice->id;
        $system_par = $this->db->get('system_parameters')->row();
//layout start
        $html = '
<table style="width: 100%; line-height: 1.5;">
	<tr>
		<td style="text-align: right;  padding: 1px; font-size: 30px; font-weight: 900">INVOICE</td>
    </tr>
</table>
<table style="width: 100%">
	<tr>
        <td style="width: 60%;">
			<table style="width:100%; font-size: 11px; line-height: 1.7;">
				<tr>
					<td>' . $campus->campus_name . '</td>
				</tr>
				<tr>
					<td>' . $campus->address_line1 . '</td>
				</tr>
				<tr>
					<td>' . $campus->address_line2 . '</td>
				</tr>
			</table>
		</td>
        <td style="width: 40%">
			<table style="width:100%; font-size: 11px; line-height: 1.7; border-collapse: collapse; border: 1px solid #dddddd;">
				<tr>
                    <th style="border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">INVOICE #</th>
                    <th style="border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">DATE</th>
                </tr>
				<tr>
                    <td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . $invoice->invoice_no . '</td>
                    <td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . date('d-M-Y', strtotime($invoice->date_registered)) . '</td>
                </tr>
				<tr>
                    <td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">Status</td>
                    <td style="border: 1px solid #dddddd; text-align: left; padding: 2px;">' . $invoice->status . '</td>
                </tr>
			</table>
		</td>
    </tr>
</table>
<br/>
<br/>
<table style="width:100%; font-size: 11px; line-height: 1.7;">
	<tr>
		<td style="width:60%; font-size: 11px; margin-left: 10px"><strong>Bill To :</strong></td>		
		<td style="width:40%; font-size: 11px; margin-left: 10px" colspan="2"><strong>Pay To :</strong></td>
	</tr>
	<tr>
		<td style="width:60%">' . $system_par->company_name . '</td>
		<td style="width:15%">Acc No.</td>
		<td style="width:25%">' . $campus->bank_acc_no . '</td>
	</tr>
	<tr>
		<td style="width:60%">' . $system_par->address_line_2 . '</td>
		<td style="width:15%">Acc Name</td>
		<td style="width:25%">' . $campus->bank_acc_name . '</td>
	</tr>
	<tr>
		<td style="width:60%">' . $system_par->address_line_1 . '</td>
		<td style="width:15%">Bank</td>
		<td style="width:25%">' . $campus->bank_name . '</td>
	</tr>
	<tr>
		<td>' . $system_par->address_line_3 . '</td>
	</tr>
</table>
<br/>
<br/>
<table style="width:100%; font-size: 11px; line-height: 1.7; border-collapse: collapse; border: 1px solid #dddddd;">
	<tr>
        <th style="width:70%; border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">DESCRIPTION</th>
        <th style="width:30%; border: 1px solid #dddddd; text-align: left; padding: 2px; font-weight: bold">AMOUNT</th>
    </tr>
	<tr>
        <td style="width:70%; border: 1px solid #dddddd; text-align: left; padding: 2px; height: 400px; line-height: 10;">
			<table style="width:100%; font-size: 11px; line-height: 5;">
				<tr>
					<td>Raw water usage for a month of ' . $invoice->bill_month . '</td>
				</tr>
				<tr>
					<td>Electricity usage for a month of ' . $invoice->bill_month . '</td>
				</tr>
			</table>
		</td>
        <td style="width:30%; border: 1px solid #dddddd; text-align: right; padding: 2px; height: 400px; line-height: 10;">
			<table style="width:100%; font-size: 11px; line-height: 5;">
				<tr>
					<td>TZS ' . number_format($invoice->water, 2) . '</td>
				</tr>
				<tr>
					<td>TZS ' . number_format($invoice->electricity, 2) . '</td>
				</tr>
			</table>
		</td>
    </tr>
	<tr>
        <th style="width:70%; border: 1px solid #dddddd; text-align: left; padding: 2px">Thank you for your business!        <strong>TOTAL</strong></th>
        <th style="width:30%; border: 1px solid #dddddd; text-align: right; padding: 2px; font-weight: bold">TZS ' . number_format($invoice->water + $invoice->electricity, 2) . '</th>
    </tr>
</table>
';
//layout end
        $pdf->AddPage();
        $pdf->SetFont('helvetica', '', 20);
        $pdf->writeHTML($html, true, 0, true, 0);
        $pdf->Output('My-File-Name.pdf', 'I');
    }

#Utility Bills for campus end

    function campusListTwo()
    {
        $this->data['title'] = 'Campus';
        $this->data['subtitle'] = 'Invoices';
        $this->data["subview"] = 'campus/campus_list';
        $this->data['pageurl'] = 'e306393ad4d44b6d58d18545a6b2be52'; //campus/invoices
        $this->data['campus'] = $this->Campus_model->get_all_campus();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_record_stat($value, $row)
    {
        if ($value === 'O') {
            return '<span class="badge badge-success" style="font-size:11px">Open</span>';
        } elseif ($value === 'D' || $value == 'C') {
            return '<span class="badge badge-danger" style="font-size:11px"> Deleted</span>';
        } elseif ($value == 'Paid') {
            return '<span class="badge badge-success" style="font-size:11px">' . $value . '</span>';
        } elseif ($value == 'Unpaid') {
            return '<span class="badge badge-warning" style="font-size:11px">' . $value . '</span>';
        } else {
            return '<span class="badge badge-dark" style="font-size:11px">' . $value . '</span>';
        }
    }

    function _callback_number_format($value, $row)
    {
        return number_format($value, 0);
    }

    function _callback_number_format2($value, $row)
    {
        return number_format($value, 2);
    }

    function _callback_currency_format($value, $row)
    {
        return number_format($value, 2);
    }

    function _callback_format_date($value, $row)
    {
        $date = date("d/m/Y", strtotime($value));
        return $date;
    }

    function _callback_format_timestamp($value, $row)
    {
        $date = date("d-M-Y H:i", strtotime($value));
        return $date;
    }

    function test()
    {
        $this->data['title'] = 'Campus';
        $this->data['subtitle'] = 'Invoices';
        $this->data["subview"] = 'campus/campus_list';
        $this->data['pageurl'] = 'e306393ad4d44b6d58d18545a6b2be52';
        $this->data["subview"] = 'campus/test';
        $this->data['campus'] = $this->Campus_model->get_all_campus();
        $this->load->view('_layout_main', $this->data);
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
