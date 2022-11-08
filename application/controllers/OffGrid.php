<?php
defined('BASEPATH') or exit('No direct script access allowed');

class OffGrid extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        $this->load->model(array('Offgrid_model', 'Settings_model', 'Subscriber_model'));
//        $this->load->model(array('Validators_model'));
        if (!$this->ion_auth->logged_in()) {
            redirect('058cf4d83dc58e2fd7a8a3eeff03c612'); //auth/login
        }
        //Call this mysql procedure to change session timezone for all database CRUD
        //$this->db->query("CALL mysql.store_time_zone()");
        //check session
        $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
    }
// Function to update revenue rank and i already push it on git again
    function custRanking() {
        $to_date = date('Y-m-d');
        $from_date=date('Y-m') . '-01';

        //update all customer set rank null.
        $this->db->set('rank', 'NULL', false);
        //
        //select all customer with deleivery within current month group by delivery amount desc
        $this->db->get_where('eco_deliveries',array('date_collect <='=>$from_date,'date_collect >='=>$to_date));
        $this->db->order_by('total_amount', 'DESC');
        $customer = $this->db->get('eco_offgrid_customers')->result();

        //update off grid cust table with new rank for those customers123 from online
        $i = 1;
        foreach ($customer as $c) {

            $this->db->query("update eco_offgrid_customers set rank = '$i' where id = '$c->id' ");
            $i = $i + 1;
        }

        return true;
    }



// Function All To register Customers
    function Allcustomers()
    {
        $this->data['title'] = 'Customers ';
        $this->data['subtitle'] = 'All Off Grid Customers ';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'OffGrid/Allcustomers'; // 
        $username = $this->session->userdata('username');
        $crud = new grocery_CRUD();
        $crud->set_table('eco_offgrid_customers');
        $crud->order_by('rank', 'asc');
        $crud->set_relation('category_id', 'eco_sub_category', 'category');
        $crud->set_relation('branch_id', ' eco_branch', 'branch_name');
        $crud->columns('customer_name', 'category_id', 'phone_number', 'location', 'current_stock','rank');
        $crud->add_fields('customer_name', 'tin_Number', 'category_id', 'phone_number', 'phone_number2', 'email', 'location', 'branch_id',  'registration_date', 'modified_by');
        $crud->edit_fields('customer_name', 'tin_Number', 'category_id', 'phone_number', 'phone_number2', 'email', 'location', 'branch_id', 'registration_date');
        $crud->field_type('id', 'hidden');
        $crud->field_type('total_amount', 'hidden');
        $crud->field_type('net_total_amount', 'hidden');
        $crud->field_type('modified_by', 'hidden', $this->session->userdata('username'));
        $crud->set_rules('registration_date', 'Registration Date', 'required|callback_validate_reg_date');
        $crud->display_as('customer_name', 'Customer Name')
            ->display_as('location', 'Street')
            ->display_as('tin_Number', 'Tin Number')
            ->display_as('category_id', 'Category')
            ->display_as('phone_number', 'Office Phone')
            ->display_as('phone_number_2', 'Mobile Phone')
            ->display_as('email', 'email')
            ->display_as('branch_id', 'Region')
            ->display_as('current_stock', 'Empties')
            ->display_as('total_amount', 'Total Amount')
            ->display_as('registration_date', 'Registration date');

        $crud->required_fields('category_id', 'customer_name', 'phone_number', 'current_stock', 'location', 'branch_id', 'registration_date');
        $crud->add_action('View', '', base_url('OffGrid/viewOffGridCust/'), 'fa fa-search', '');

        $crud->set_subject('Customers');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->unset_clone();


        $crud->unset_read();
        $crud->unset_delete();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
//        $crud->callback_after_insert(array($this, '_callback_after_insert_update_cashier'));
//        $crud->callback_after_update(array($this, '_callback_after_insert_update_cashier'));
        //   $crud->set_crud_url_path(base_url('30d5a20a5cd8d6782789e5bbd5d58862ac0f8ecd1f817c8e1cc082a5ec4082fa'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);

    }

    function viewOffGridCust($customer_id = FALSE)
    {
        $sub_id = $this->encryption->decrypt(str_replace(array('-', '_', '~'), array('+', '/', '='), $customer_id));
        $this->data['title'] = 'Offgrid';
        $this->data['subtitle'] = 'View Offgrid Customers';
        $this->data["subview"] = 'Offgrid/Viewoffgrid';
        $this->data['pageurl'] = 'OffGrid/Allcustomers';
        $this->load->helper('date');

        $sub_data = $this->Offgrid_model->get_sub_data_by_id($customer_id);
        $deliver_id = $sub_data->tin_Number;
        $to_date = date('Y-m-d');
        $today = date('Y-m-d');

        $this->load->helper('date');
        $format = "%d ";
        $this->data['delivered'] = $this->Offgrid_model->get_all_deleiveries($deliver_id, $customer_id);
        //Total Revenue
        $this->data['totalsales'] = $this->Offgrid_model->get_total_total($customer_id);
        //Total revenue year
        $this->data['sales_thisyear'] = $this->Offgrid_model->get_total(date('Y') . '-01-01', $to_date, $customer_id);
        //Total revenue monthly
        $this->data['sales_thismonth'] = $this->Offgrid_model->get_total(date('Y-m') . '-01', $to_date, $customer_id);
        //Total Revenue Daily
        //$this->data['sales_today'] = $this->Offgrid_model->get_total(date('Y-m-d') . '+01', $to_date, $customer_id);
        $this->data['sales_today'] = $this->Offgrid_model->get_total($today, date('Y-m-d', strtotime('+1 days')),$customer_id);

        //Total deliveries

        $this->data['totaldeliveries'] = $this->Offgrid_model->get_all_deliveries($customer_id);

        //Total Delivery Yearly
        $this->data['delivery_yearly'] = $this->Offgrid_model->get_all_deliveries_specific(date('Y') . '-01-01', $to_date, $customer_id);

        //Total Delivery Monthly
        $this->data['delivery_monthly'] = $this->Offgrid_model->get_all_deliveries_specific(date('Y-m') . '-01', $to_date, $customer_id);

        // Total Ddaily
        $this->data['deliver_day'] = $this->Offgrid_model->get_all_deliveries_specific($to_date, $to_date, $customer_id);

        //Total Stock
        $this->data['totalstocks'] = $this->Offgrid_model->get_all_stock($customer_id);

        // Total stock year
        $this->data['totalstocks_yearl'] = $this->Offgrid_model->get_total_stock(date('Y') . '-01-01', $to_date, $customer_id);

        // Total Stock Month
        $this->data['totalstocksmonth'] = $this->Offgrid_model->get_total_stock(date('Y-m') . '-01', $to_date, $customer_id);

        //Total Stock daily
        $this->data['totalstockday'] = $this->Offgrid_model->get_total_stock($to_date, $to_date, $customer_id);

        //Revenue rank call model//Revenue Rank
        $this->data['revenue_rank'] = $this->Offgrid_model->get_all_revenue_rank(date('Y-m') . '-01', $to_date, $customer_id);

        $this->data['count_rows'] = $this->Offgrid_model->count_rows();


        $this->data['sub_data'] = $sub_data;
        $this->data['date'] = $format;
        $this->data['customer_id'] = $customer_id;


        $this->load->view('_layout_main', $this->data);
    }


    function Product()
    {

        $this->data['title'] = 'Customers ';
        $this->data['subtitle'] = 'Off Grid Product ';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'OffGrid/Product'; // 
        $username = $this->session->userdata('username');
        $crud = new grocery_CRUD();

        $crud->set_table('eco_offgrid_product');

        $crud->field_type('id', 'hidden');
        $crud->field_type('product_id', 'hidden');
        $crud->columns('product_name', 'product_price');
        $crud->add_fields('product_name', 'product_price', 'modified_by');
        $crud->edit_fields('product_name', 'product_price', 'modified_by');
        $crud->display_as('product_name', 'Product Name')
            ->display_as('product_price', 'Product Price');
        $crud->field_type('modified_by', 'hidden', $this->session->userdata('username'));
        $crud->required_fields('product_name', 'product_price');
        $crud->set_subject('Product');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->unset_clone();

        //$crud->unset_edit();
        //$crud->unset_delete(); 
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();

        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);


    }

    function Alldelivers()
    {

        $this->data['title'] = 'deliveries';
        $this->data['subtitle'] = 'Deliveries List';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'OffGrid/Alldelivers';

        $crud = new grocery_CRUD();
        $crud->set_table('eco_deliveries');
        $crud->field_type('id', 'hidden');
        $crud->field_type('current_stock', 'hidden');
        $crud->field_type('date_deliver', 'hidden');
        $crud->field_type('bottle_Stock', 'hidden');
        $crud->field_type('current_stock_id', 'hidden');
        $crud->field_type('current_stock', 'hidden');
        $crud->field_type('amount_id', 'hidden');

        $crud->set_relation('off_grid_id', 'eco_offgrid_customers', 'Customer_name');
//      $crud->set_relation('current_stock_id', 'eco_offgrid_customers', 'Current_stock');
        $crud->set_relation('product_id', 'eco_offgrid_product', 'product_name');
        $crud->columns('off_grid_id', 'product_id', 'date_collect', 'left_bottle', 'collect_bottle', 'current_stock_id', 'amount_id', 'modified_by');
        $crud->add_fields('off_grid_id', 'product_id', 'date_collect', 'left_bottle', 'collect_bottle', 'current_stock_id', 'amount_id', 'modified_by');
        $crud->edit_fields('off_grid_id', 'product_id', 'date_collect', 'left_bottle', 'collect_bottle', 'amount_id', 'modified_by');
        $crud->field_type('modified_by', 'hidden', $this->session->userdata('username'));
        $crud->order_by('date_collect', 'DESC');
        $crud->display_as('off_grid_id', 'Customer Name')
            ->display_as('product_id', 'Product Type')
            ->display_as('date_collect', 'Delivered date')
            ->display_as('left_bottle', 'Left Empties')
            ->display_as('collect_bottle', 'Collected Empties')
            ->display_as('current_stock_id', 'Empties')
            ->display_as('amount_id', 'Amount')
            ->display_as('modified_by', 'Maker');
        $crud->set_rules('date_collect', 'Date Collect', 'required|callback_validate_collect_date');
        $crud->callback_column('date_collect', array($this, '_callback_format_date'));
        $crud->required_fields('off_grid_id', 'product_id', 'date_collect', 'left_bottle', 'collect_bottle');
        $crud->set_rules('collect_bottle', 'Collect Bottle', 'required|integer|greater_than_equal_to[0]|callback_validate_collect_bottle');
        $crud->callback_after_insert(array($this, '_callback_after_insert_deliveries'));
        $crud->callback_before_delete(array($this, '_callback_before_delete_delivery'));
        $crud->callback_column('amount_id', array($this, '_callback_format_amount'));

        $crud->set_subject('Deliveries');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->unset_clone();
        $crud->unset_edit();

        //$crud->unset_read();
//        $crud->unset_delete();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();

        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }


    //Dashboard start here

    function Dashboard(){

        $this->data['title'] = 'OffGrid dashboard ';
        $this->data['subtitle'] = 'dashboard';
        $this->data["subview"] = 'Offgrid/dashboard';
        $this->data['pageurl'] = 'Offgrid/Dashboard';

        $crud = new grocery_CRUD();
        $crud->set_table('eco_offgrid_customers');
        $username = $this->session->userdata('username');
        $today = date('Y-m-d');
        $yesterday = date('Y-m-d', strtotime('-1 days'));
        $first_date = date('Y-m-') . '01';
        $past_seven_days = date('Y-m-d', strtotime('-7 days'));
        $past_thirty_days = date('Y-m-d', strtotime('-30 days'));
        $prev_year = date('Y', strtotime('-1 year'));
        $jan_prev_yr = $prev_year . date('-01-01');
        $prev_month = date('Y-m', strtotime('-1 month'));
        $first_date_pmonth = $prev_month . '-01';

        $this->data['off_today'] = $this->Offgrid_model->get_off_count($today, date('Y-m-d', strtotime('+1 days')));
        $this->data['off_mtd'] = $this->Offgrid_model->get_off_count($first_date, $today);
        $this->data['off_ytd'] = $this->Offgrid_model->get_off_count(date('Y-' . '01-01'), $today);
        $this->data['active_off'] = $this->Offgrid_model->get_active_off_count();
        $this->data['revenue_today'] = $this->Offgrid_model->get_revenue($today, $today);
        $this->data['revenue_mtd'] = $this->Offgrid_model->get_revenue(date('Y-m') . '-01',  $today);
        $this->data['revenue_ytd'] = $this->Offgrid_model->get_revenue(date('Y') . '-01-01', $today);
        $this->data['deliveries_today'] = $this->Offgrid_model->get_deliveries($today, $today);
        $this->data['deliveries_mtd'] = $this->Offgrid_model->get_deliveries($first_date, $today);
        $this->data['deliveries_ytd'] = $this->Offgrid_model->get_deliveries(date('Y') . '-01-01', $today);
        $this->data['empties'] = $this->Offgrid_model->get_empties_count();
        $this->data['revenu_top_3'] = $this->Offgrid_model->get_revenue_top_3($first_date, $today);
        $this->data['delivery_top_3'] = $this->Offgrid_model->get_deliveries_top_3(date('Y-m') . '-01',  $today);
        $this->data['customers'] = $this->Offgrid_model->get_all_customers();

        $this->load->view('_layout_main', $this->data);

    }
    //Dashboard Ends Here

// Download Off Grid Customer deliveries Deteails  Function start Here

    function DeliveriesDownload()
    {

        //echo 'here'; exit();
        $this->load->library('form_validation');
        $this->form_validation->set_rules('from_date', 'From', 'required');
        $this->form_validation->set_rules('to_date', 'To', 'required');
        $customer_id = $this->input->post('sub_id');
        $deliver_id = $this->input->post('id');
        if ($this->form_validation->run() == FALSE) {
            $this->session->set_flashdata('error', validation_errors());
            redirect($_SERVER['HTTP_REFERER']);
        }
        $from_date = date('Y-m-d', strtotime($this->input->post('from_date')));
        $to_date = date('Y-m-d', strtotime($this->input->post('to_date')));
        $customer_details = $this->Offgrid_model->get_sub_data_by_id($customer_id);
        $total_revenue = $this->Offgrid_model->get_total_delivery_statment($from_date, $to_date,$customer_id);
        $delivered = $this->Offgrid_model->get_deliveries_statment($deliver_id, $customer_id,$from_date,$to_date);
        $totaldeliveries = $this->Offgrid_model->get_all_deliveries_specific( $from_date, $to_date,$customer_id);


//        $curr_topup = $this->Card_model->get_curr_topup_data($customer_id, $from_date, $to_date);
//        $old_topup = $this->Card_model->get_old_topup_data($customer_id, $from_date, $to_date);
        $date1 = date_create($from_date);
        $date2 = date_create($to_date);
        $diff = date_diff($date1, $date2);
        $days = $diff->days + 1;
        $statement_data = array(
            'delivery_id' => $customer_id,
            'user_id' => $this->session->userdata('username'),
            'year' => date('Y'),
            'start_date' => $from_date,
            'end_date' => $to_date
        );
        $statement_id = $this->Offgrid_model->insert_deliver_statement_record($statement_data);
        $system_par = $this->Settings_model->get_system_parameters();
        //$statement_id = 1;
        if ($statement_id >= 1 && $statement_id <= 9) {
            $statement_id = 'OS00000000' . $statement_id;
        } elseif ($statement_id >= 10 && $statement_id <= 99) {
            $statement_id = 'OS0000000' . $statement_id;
        } elseif ($statement_id >= 100 && $statement_id <= 999) {
            $statement_id = 'OS000000' . $statement_id;
        } elseif ($statement_id >= 1000 && $statement_id <= 9999) {
            $statement_id = 'OS00000' . $statement_id;
        } elseif ($statement_id >= 10000 && $statement_id <= 99999) {
            $statement_id = 'OS0000' . $statement_id;
        } elseif ($statement_id >= 100000 && $statement_id <= 999999) {
            $statement_id = 'OS000' . $statement_id;
        } elseif ($statement_id >= 1000000 && $statement_id <= 9999999) {
            $statement_id = 'OS00' . $statement_id;
        } elseif ($statement_id >= 10000000 && $statement_id <= 99999999) {
            $statement_id = 'OS0' . $statement_id;
        } else {
            $statement_id = 'OS' . $statement_id;
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
        <td style="width: 30%; padding: 3px">' . $customer_details->customer_name . '</td>
        <td style="width: 25%"></td>
        <td style="width: 30%; text-align: right">Statement ID : ' . $statement_id . '</td>
    </tr>
    <tr>
        <td style="width: 15%; text-align: right">Email. :</td>
        <td style="width: 5px"></td>
        <td style="width: 15%; padding: 3px">' . $customer_details->email . '</td>
        <td style="width: 40%"></td>
        <td style="width: 30%; text-align: right">Run Date : ' . date('D d-M-Y') . '</td>
    </tr>
    <tr>
        <td style="width: 15%; text-align: right">Mobile Number :</td>
        <td style="width: 5px"></td>
        <td style="width: 15%; padding: 3px">' . $customer_details->phone_number . '</td>
        <td style="width: 40%"></td>
        <td style="width: 30%; text-align: right">Run Time : ' . date('h:i A') . '</td>
    </tr>
	<tr>
        <td style="width: 15%; text-align: right">Start date :</td>
        <td style="width: 5px"></td>
        <td style="width: 15%; padding: 3px">' . date('D d-M-Y', strtotime($from_date)) . '</td>
        <td style="width: 40%"></td>
       <td style="width: 15%; text-align: right">Location:</td>
        <td style="width: 5px"></td>
        <td style="width: 15%; padding: 3px">' . $customer_details->location . '</td>
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


        $html .= '<p style="text-align: center; font-size: 10px; font-weight: bold; padding: 10px;">STATEMENT SUMMARY</p>
<table style="width:100%">
	<tr>
		<td style="width: 47.5%">
			<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
				<tr>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Total Volume Purchased</td>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">' . number_format($total_revenue->amount_id / 200, 2) . ' Litres</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Total Purchase</td>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">TZS ' . number_format($total_revenue->amount_id, 2) . '</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Current Empties</td>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;"> ' . number_format($customer_details->current_stock) . '</td>
                </tr>
			</table>
		</td>
		<td style="width: 5%"></td>
		<td style="width: 47.5%">
			<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
                <tr>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Total Deliveries</td>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">' . round($totaldeliveries ) . ' </td>
                </tr>
                <tr>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Avarage Cost </td>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">TZS ' . number_format(($total_revenue->amount_id / $days) , 0) .' / Day</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">Average consumption</td>
                    <td style="border: 1px solid #dddddd; text-align: right; padding-right: 5px; line-height: 1.3;">' . number_format((($total_revenue->amount_id/ 200)/$days), 0) . ' / Day</td>
                </tr>
            </table>
		</td>
	</tr>
</table>
<p style="text-align: center; font-size: 10px; font-weight: bold; padding: 10px;">DELIVERIES HISTORY</p>
<table style="font-size: 7px; border-collapse: collapse; border: 1px solid #dddddd;">
	<tr>
        <th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Date.</th>
        <th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Delivery ID.</th>
        <th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Amount</th>
        <th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Bottles Left</th>
        <th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Empties Collected</th>
        <th style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3; font-weight:bold">Empties Stock</th>
    </tr>';
        foreach ($delivered as $del) {
            $html .= '<tr>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . $del->date_collect . '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;"></td>
                   <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . number_format($del->amount_id ,2). '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . $del->left_bottle . '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . $del->collect_bottle . '</td>
                <td style="border: 1px solid #dddddd; padding-right: 5px; line-height: 1.3;">' . $del->current_stock_id . '</td>

        </tr>';
        }

        $html .= '</table>';

        $pdf->AddPage();
        $pdf->SetFont('helvetica', '', 20);
        $pdf->writeHTML($html, true, 0, true, 0);
        $pdf->Output('Statement-' . date('YmdHis') . '.pdf', 'D');
    }

//Download Off Grid Customer deliveries Deteails  Function End  Here


    function validate_collect_bottle($collect_bottle)
    {
        $cust_id = $this->input->post('off_grid_id');
        $customer = $this->db->get_where('offgrid_customers', array('id' => $cust_id))->row();
        if ($collect_bottle > $customer->current_stock) {
            $this->form_validation->set_message('validate_collect_bottle', 'Collected bottles cannot be greater than current stock.');
            return FALSE;
        } else {
            return TRUE;
        }
    }


    function  _callback_before_delete_delivery($primary_key)
    {
        $off_grid_id = $this->input->post('off_grid_id');

        $check = $this->db->query("SELECT * FROM eco_deliveries WHERE date_collect >(SELECT date_collect FROM eco_deliveries WHERE id='$primary_key') AND off_grid_id='$off_grid_id' ");
        if ($check->num_rows() >= 1) {
            return FALSE;
        } else {
            $stock = $this->db->get_where('eco_deliveries', array('id' => $primary_key))->row();
            $product_id = $stock->product_id;
            $cust_id = $stock->off_grid_id;
            $cust_data = $this->db->get_where('offgrid_customers', array('id' => $cust_id))->row();
            $product_data = $this->db->get_where('eco_offgrid_product', array('id' => $product_id))->row();

            $Stock_balance = ($cust_data->current_stock + $stock->collect_bottle) - $stock->left_bottle;
            $total_amount1 = $cust_data->total_amount - $product_data->product_price * $stock->left_bottle;

            $this->db->query(" update eco_offgrid_customers set current_stock = '$Stock_balance',total_amount='$total_amount1' where id = '$cust_id'");
        }

    }


    function _callback_before_insert_deliveries($post_array)

    {

        $cust_id = $post_array['off_grid_id'];
        $cust_data = $this->db->get_where('offgrid_customers', array('id' => $cust_id))->row();


        if ($post_array['collect_bottle'] > $cust_data->current_stock) {
            $this->form_validation->set_rules('collect_bottle', 'Chupa ', 'Insufficient water bottle Stock ');

            return false;


        }

        return true;

    }


    function _callback_after_insert_deliveries($post_array, $primary_key)

    {


        $stock = $this->db->get_where('deliveries', array('id' => $primary_key))->row();
        $cust_id = $stock->off_grid_id;
        $product_id = $stock->product_id;
        $cust_data = $this->db->get_where('offgrid_customers', array('id' => $cust_id))->row();
        $product_data = $this->db->get_where('eco_offgrid_product', array('id' => $product_id))->row();


        $Stock_balance = ($cust_data->current_stock + $stock->left_bottle) - $stock->collect_bottle;

        $total_amount = $product_data->product_price * $stock->left_bottle;
        $total_amount1 = $cust_data->total_amount + $product_data->product_price * $stock->left_bottle;

        if ($Stock_balance < 0) {
            $Stock_balance = 0;
        }

        $this->db->query("update eco_offgrid_customers set current_stock = '$Stock_balance',total_amount='$total_amount1' where id = '$cust_id'");

        $this->db->query("update eco_deliveries set current_stock_id = '$Stock_balance',amount_id='$total_amount' where id = '$primary_key'");

        //loop to update column rank

        //Start to Check Revenue Rank for each Customer



    }

    function _callback_format_amount($value, $row)
    {
        return "<span style='width:100%;text-align:right;display:block;'>" . number_format($value, 0) . "</span>";
    }


    function _callback_trn_date($value, $row)
    {
        $date = date("d-M-y", strtotime($value));
        return $date;
    }

    function validate_reg_date($date = '')
    {
        //$db_date = date('Y-m-d', strtotime($date));
        $today = date('Y-m-d');
        if ($date > $today) {
            $this->form_validation->set_message('validate_reg_date', "Registration date cannot be greater than current date");
            return FALSE;
        } else {
            return TRUE;
        }
    }

    // Date Validation.
    function validate_collect_date()
    {
        $to_date = date('Y-m-d');
        if ($this->input->post('date_collect') > $to_date) {
            $this->form_validation->set_message('validate_collect_date', 'Data should be less or equal to current date .');
            return FALSE;
        } else {
            return TRUE;
        }

    }
    function _callback_format_date($value, $row)
    {
        $date = date("d-M-Y", strtotime($value));
        return $date;
    }




}
