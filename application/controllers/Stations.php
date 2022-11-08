<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require_once APPPATH . '/third_party/PHPExcel/IOFactory.php';

class Stations extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'excel', 'session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        $this->load->model(array('Stations_model', 'sms_model', 'Maintenance_model'));
        //if (!$this->ion_auth->logged_in()){ redirect('auth/login'); }
        //Call this mysql procedure to change session timezone for all database CRUD
//        $this->db->query("CALL mysql.store_time_zone()");
    }

    function index()
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
    }

    # RECEIVING INCOMING SMS FROM ANDOID APK

    function incomingsmsapk()
    {
        if ($_SERVER['REQUEST_METHOD'] == "POST") {
            $data = json_decode(file_get_contents('php://input'), true);
            # You can parse more variables from Body here
            $phoneNumber = $data['data']['phoneNumber'];
            $smsContent = $data['data']['sms'];
            $smsContentPro = substr($smsContent, 0, -27);
            $sender = str_replace('+', '', $phoneNumber);
            # From here, you can process Body content further
            $data = array("sender" => $sender, "message" => $smsContent, 'message_pro' => $smsContentPro);
            $this->db->insert('incoming_message', $data);
            # MACHINES COMMANDS PROCESSING HERE
            $station = $this->db->get_where('stations', array('gsm' => $sender));
            $station_data = $station->row();
            if ($station->num_rows() == 1 && $station_data->category === '2 Doors' && substr($smsContentPro, 1, 6) === '>>Card') {
                #extract balances
                $code = $smsContentPro;
                $pos_cash = strpos($code, 'Cash:');
                $pos_card = strpos($code, 'Card:');
                $closing_card = substr($code, $pos_card + 5, $pos_cash - 12);
                $closing_cash = substr($code, $pos_cash + 5);
                $door = substr($code, 0, 1);
                /*if ($door === '1') {
                    $shdata['d1_closing_bal_card'] = $closing_card;
                    $shdata['d1_closing_bal_cash'] = $closing_cash;
                } elseif ($door === '2') {
                    $shdata['d2_closing_bal_card'] = $closing_card;
                    $shdata['d2_closing_bal_cash'] = $closing_cash;
                }

                $shdata['code'] = $smsContentPro;
                $shdata['sender'] = $sender;
                $shdata['door'] = $door;*/
                //$this->processSalesData($sender, $smsContentPro);
                #extract balance END
                $this->processSalesAPK($sender, $door, $closing_card, $closing_cash);
            } elseif ($station->num_rows() == 1 && $station_data->category === '1 Door' && substr($smsContentPro, 0, 4) === 'Card') {
                $code = $smsContentPro;
                $pos_cash = strpos($code, 'Cash:');
                $pos_card = strpos($code, 'Card:');
                $closing_card = substr($code, $pos_card + 5, $pos_cash - 6);
                $closing_cash = substr($code, $pos_cash + 5);
                $door = 1;
                $this->processSalesAPK($sender, $door, $closing_card, $closing_cash);
            }
            # MACHINES COMMANDS PROCESSING END
        } else {
            $json = array("status" => 0, "msg" => "Request method not accepted");
        }
        /* Output header */
        header('Content-type: application/json');
        echo json_encode($json);
    }

    function testsales()
    {
        // for door 1
        $sms = $this->db->get_where('incoming_message', array('id' => '5714'))->row();
        $code = $sms->message_pro;
        $pos_cash = strpos($code, 'Cash:');
        $pos_card = strpos($code, 'Card:');
        $closing_card = substr($code, $pos_card + 5, $pos_cash - 6);
        $closing_cash = substr($code, $pos_cash + 5);
        $door = 1;
        echo 'Card :<br/>' . $closing_card . '<br/>Cash :<br/>' . $closing_cash . '<br/>Door :<br/>' . $door;

        echo '<br/><br/><br/>';

        //for door 2
        $sms = $this->db->get_where('incoming_message', array('id' => '6282'))->row();
        $code = $sms->message_pro;
        $pos_cash = strpos($code, 'Cash:');
        $pos_card = strpos($code, 'Card:');
        $closing_card = substr($code, $pos_card + 5, $pos_cash - 12);
        $closing_cash = substr($code, $pos_cash + 5);
        $door = substr($code, 0, 1);
        echo 'Card : ' . $closing_card . '<br/>Cash : ' . $closing_cash . '<br/>Door : ' . $door;
    }

    # RECEIVING INCOMING SMS FROM ANDOID APK END

    function processSalesAPK($sender = '', $door = '', $closing_card = '', $closing_cash = '')
    {
        //get royalty rate
        $query = $this->db->query("SELECT * FROM eco_campus_royalty WHERE campus_id = (SELECT a.id FROM eco_campus a,eco_stations b WHERE a.campus_code = b.campus_code AND b.gsm = '$sender') AND status = 'Active'");
        // $result = $query->row();
        $royalty = 0;
        if ($query->num_rows() >= 1) {
            $result = $query->row();
            $royalty = $result->royalty;
        }
        //check if sender exist in station list
        $station = $this->db->get_where('stations', array('gsm' => $sender))->num_rows();
        if ($station >= 1) {
            //get station last sales
            $today = date('Y-m-d');
            $this->db->order_by('date', 'DESC');
            $last_sales = $this->db->get_where('station_sales_hist', array('station_gsm' => $sender, 'date <' => $today));
            if ($last_sales->num_rows() >= 1) {
                $last_sales = $last_sales->row();
                $d1_open_bal_card = $last_sales->d1_closing_bal_card;
                $d1_open_bal_cash = $last_sales->d1_closing_bal_cash;
                $d2_open_bal_card = $last_sales->d2_closing_bal_card;
                $d2_open_bal_cash = $last_sales->d2_closing_bal_cash;
                $d1_closing_bal_card = $last_sales->d1_closing_bal_card;
                $d1_closing_bal_cash = $last_sales->d1_closing_bal_cash;
                $d2_closing_bal_card = $last_sales->d2_closing_bal_card;
                $d2_closing_bal_cash = $last_sales->d2_closing_bal_cash;
            } else {
                $d1_open_bal_card = 0;
                $d1_open_bal_cash = 0;
                $d2_open_bal_card = 0;
                $d2_open_bal_cash = 0;
                $d1_closing_bal_card = 0;
                $d1_closing_bal_cash = 0;
                $d2_closing_bal_card = 0;
                $d2_closing_bal_cash = 0;
            }
            if ($door === '1') {
                $d1_closing_bal_card = $closing_card;
                $d1_closing_bal_cash = $closing_cash;
            } elseif ($door === '2') {
                $d2_closing_bal_card = $closing_card;
                $d2_closing_bal_cash = $closing_cash;
            }
            //check if today record exist            
            $today_sales = $this->db->get_where('station_sales_hist', array('date' => $today, 'station_gsm' => $sender));
            if ($today_sales->num_rows() == 1) {
                //update
                if ($door === '1') {
                    $data_update = array(
                        'd1_open_bal_card' => $d1_open_bal_card,
                        'd1_closing_bal_card' => $d1_closing_bal_card,
                        'd1_open_bal_cash' => $d1_open_bal_cash,
                        'd1_closing_bal_cash' => $d1_closing_bal_cash,
                        'royalty' => $royalty
                    );
                } elseif ($door === '2') {
                    $data_update = array(
                        'd2_open_bal_card' => $d2_open_bal_card,
                        'd2_closing_bal_card' => $d2_closing_bal_card,
                        'd2_open_bal_cash' => $d2_open_bal_cash,
                        'd2_closing_bal_cash' => $d2_closing_bal_cash,
                        'royalty' => $royalty
                    );
                }
                $this->db->where(array('date' => $today, 'station_gsm' => $sender));
                $this->db->update('station_sales_hist', $data_update);
            } elseif ($today_sales->num_rows() == 0) {
                $data_insert = array(
                    'date' => $today,
                    'station_gsm' => $sender,
                    'd1_open_bal_card' => $d1_open_bal_card,
                    'd1_closing_bal_card' => $d1_closing_bal_card,
                    'd1_open_bal_cash' => $d1_open_bal_cash,
                    'd1_closing_bal_cash' => $d1_closing_bal_cash,
                    'd2_open_bal_card' => $d2_open_bal_card,
                    'd2_closing_bal_card' => $d2_closing_bal_card,
                    'd2_open_bal_cash' => $d2_open_bal_cash,
                    'd2_closing_bal_cash' => $d2_closing_bal_cash,
                    'royalty' => $royalty
                );
                $this->db->insert('station_sales_hist', $data_insert);
            }
        }
    }

    function sendCommands()
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        $this->load->library('form_validation');
        $this->form_validation->set_rules('mobile', 'Mobile', 'required');
        if ($this->form_validation->run() == FALSE) {
            $derror = 'error';
            echo json_encode($derror);
        } else {
            $mobile = $this->input->post('mobile');
            $action = $this->input->post('action');
            $sid = $this->input->post('sid');
            //For sales request
            if ($action == 'sales') {
                $this->_request_sales($sid, $mobile);
            } elseif ($action == 'shutdown') {
                $this->_request_shutdown($sid, $mobile);
            } elseif ($action == 'start') {
                $this->_request_start($sid, $mobile);
            } elseif ($action == 'reboot') {
                $this->_request_reboot($sid, $mobile);
            } elseif ($action == 'status') {
                $this->_request_status($sid, $mobile);
            }
            $data = 'okay';
            echo json_encode($data);
        }
    }

    function sendCommandsAllStations()
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        $command = $this->input->post('command_form');
        $stations = $this->db->get_where('stations', array('operational_status' => 'OP', 'record_stat' => 'O'))->result();
        if ($command == 'status') {
            foreach ($stations as $s) {
                //$this->_request_status($s->id, $s->gsm);
            }
            $message = '<div class="alert alert-success fade show" role="alert"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Request sent successfully to all stations</div>';
            $data = array('action' => 'okay', 'message' => $message);
            echo json_encode($data);
        } elseif ($command == 'sales') {
            foreach ($stations as $s) {
                $this->_request_sales($s->id, $s->gsm);
            }
            $message = '<div class="alert alert-success fade show" role="alert"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Request sent successfully to all stations</div>';
            $data = array('action' => 'okay', 'message' => $message);
            echo json_encode($data);
        } elseif ($command == 'shutdown') {
            foreach ($stations as $s) {
                $this->_request_shutdown($s->id, $s->gsm);
            }
            $message = '<div class="alert alert-success fade show" role="alert"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Request sent successfully to all stations</div>';
            $data = array('action' => 'okay', 'message' => $message);
            echo json_encode($data);
        } elseif ($command == 'start') {
            foreach ($stations as $s) {
                $this->_request_start($s->id, $s->gsm);
            }
            $message = '<div class="alert alert-success fade show" role="alert"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Request sent successfully to all stations</div>';
            $data = array('action' => 'okay', 'message' => $message);
            echo json_encode($data);
        } elseif ($command == 'reboot') {
            foreach ($stations as $s) {
                $this->_request_reboot($s->id, $s->gsm);
            }
            $message = '<div class="alert alert-success fade show" role="alert"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Request sent successfully to all stations</div>';
            $data = array('action' => 'okay', 'message' => $message);
            echo json_encode($data);
        } else {
            $message = '<div class="alert alert-danger fade show" role="alert"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Failed to send request. Please contact system admin</div>';
            $data = array('action' => 'error', 'message' => $message);
            echo json_encode($data);
        }
    }

    function _request_sales($sid, $mno)
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        //get last sales data
        $last_sales = $this->Stations_model->get_station_last_sales_data($mno);
        $yday = date('Y-m-d', strtotime('-1 days'));
        if ($last_sales->date < $yday) {
            //first get campus royalty
            $royalty = 0;
            $query = $this->db->query("SELECT * FROM eco_campus_royalty WHERE campus_id=(SELECT a.id FROM eco_campus a JOIN eco_stations b WHERE a.campus_code=b.campus_code AND b.id='$sid') AND status='Active'");
            $result = $query->row();
            if ($result) {
                $royalty = $result->royalty;
            }
            //no data for yesterday need to insert
            $data = array(
                'date' => $yday,
                'station_gsm' => $mno,
                'd1_open_bal_card' => $last_sales->d1_closing_bal_card,
                'd1_closing_bal_card' => $last_sales->d1_closing_bal_card,
                'd1_open_bal_cash' => $last_sales->d1_closing_bal_cash,
                'd1_closing_bal_cash' => $last_sales->d1_closing_bal_cash,
                'd2_open_bal_card' => $last_sales->d2_closing_bal_card,
                'd2_closing_bal_card' => $last_sales->d2_closing_bal_card,
                'd2_open_bal_cash' => $last_sales->d2_closing_bal_cash,
                'd2_closing_bal_cash' => $last_sales->d2_closing_bal_cash,
                'royalty' => $royalty
            );
            $this->db->insert('station_sales_hist', $data);
        }
        //print_r($last_sales); exit();
        $msms = '123456inquire amount';
        $data = array(
            'receiver' => $mno,
            'message' => $msms,
            'maker_id' => $this->session->userdata('username')
        );
        $this->sms_model->insertOutgoingSMS($data);
        $this->sms_model->sendsms($msms, $mno);
    }

    function _request_shutdown($sid, $mno)
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        $msms = '123456shutdown';
        $data = array(
            'receiver' => $mno,
            'message' => $msms,
            'maker_id' => $this->session->userdata('username')
        );
        $this->db->trans_start();
        $this->sms_model->insertOutgoingSMS($data);
        $this->sms_model->sendsms($msms, $mno);
        $this->db->trans_complete();
    }

    function _request_start($sid, $mno)
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
        $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        $msms = '123456start';
        $this->load->model('sms_model');
        $data = array(
            'receiver' => $mno,
            'message' => $msms,
            'maker_id' => $this->session->userdata('username')
        );
        $this->db->trans_start();
        $this->sms_model->insertOutgoingSMS($data);
        $this->sms_model->sendsms($msms, $mno);
        $this->db->trans_complete();
    }

    function _request_reboot($sid, $mno)
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        $msms = '123456reboot';
        $this->load->model('sms_model');
        $data = array(
            'receiver' => $mno,
            'message' => $msms,
            'maker_id' => $this->session->userdata('username')
        );
        $this->db->trans_start();
        $this->sms_model->insertOutgoingSMS($data);
        $this->sms_model->sendsms($msms, $mno);
        $this->db->trans_complete();
    }

    function _request_status($sid, $mno)
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        $msms = '123456inquire status';
        $this->load->model('sms_model');
        $data = array(
            'receiver' => $mno,
            'message' => $msms,
            'maker_id' => $this->session->userdata('username')
        );
        $this->sms_model->insertOutgoingSMS($data);
        $this->sms_model->sendsms($msms, $mno);
    }

    function stationDashboard()
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        $stat_view = $this->session->userdata('stat_view');
        $sub_add = $this->session->userdata('sub_add');
        $sub_edit = $this->session->userdata('sub_edit');
        $sub_delete = $this->session->userdata('sub_delete');
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        if (empty($stat_view)) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Stations';
        $this->data['subtitle'] = 'All Stations';
        $this->data["subview"] = 'stations/stations_dashboard';
        $this->data['pageurl'] = 'stations/stationDashboard';
        $past_thirty_days = date('Y-m-d', strtotime('-30 days'));
        $this->data['stations_count'] = $this->db->get('stations')->num_rows();
        $this->data['inst_count'] = $this->Stations_model->count_station_installation_types();
        $this->data['sms'] = $this->Stations_model->get_stations_sms($past_thirty_days);
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_get_station_name($value, $row)
    {
        $station_name = $this->db->get_where('stations', array('gsm' => $value))->row()->station_name;
        return $station_name;
    }

    function listStations()
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        $stat_view = $this->session->userdata('stat_view');
        $sub_add = $this->session->userdata('sub_add');
        $sub_edit = $this->session->userdata('sub_edit');
        $sub_delete = $this->session->userdata('sub_delete');
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        if (empty($stat_view)) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Stations';
        $this->data['subtitle'] = 'All Stations';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'stations/listStations'; //stations/listStations
        $crud = new grocery_CRUD();
        $crud->set_table('eco_stations');
        $crud->set_primary_key('campus_code', 'eco_campus');
        $crud->set_relation('campus_code', 'eco_campus', 'campus_name');
        $crud->set_primary_key('code', 'eco_station_operate_stat');
        $crud->set_relation('operational_status', 'eco_station_operate_stat', 'name');
        $crud->columns('gsm', 'station_name', 'tfda_permit_no', 'campus_code', 'inst_type', 'operational_status', 'record_stat');
        $crud->fields('gsm', 'station_name', 'tfda_permit_no', 'category', 'campus_code', 'inst_type', 'input_water', 'operational_status', 'record_stat');
        $crud->display_as('tfda_permit_no', 'Permit Number')
            ->display_as('record_stat', 'Station Status')
            ->display_as('gsm', 'Station GSM')
            ->display_as('campus_code', 'Campus')
            ->display_as('inst_type', 'Installation Type');
        $crud->required_fields('gsm', 'station_name', 'category', 'campus_code', 'inst_type', 'input_water', 'operational_status', 'record_stat');
        $crud->callback_column('record_stat', array($this, '_callback_status'));
        $crud->callback_column('operational_status', array($this, '_callback_status'));
        //$crud->set_crud_url_path(base_url('stations/listStations'));
        $crud->unset_clone();
        $crud->unset_read();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        if (empty($sub_add)) {
            $crud->unset_add();
        }
        if (empty($sub_edit)) {
            $crud->unset_edit();
        }
        if (empty($sub_delete)) {
            $crud->unset_delete();
        }
        $crud->add_action('View', '', '', 'fa fa-search', array($this, '_callback_tran_url'));
        $crud->callback_after_insert(array($this, '_callback_after_insert_station'));
        $crud->callback_before_delete(array($this, '_callback_remove_filter_maint'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_tran_url($primary_key)
    {
        $station_id = str_replace(array('+', '/', '='), array('-', '_', '~'), $this->encryption->encrypt($primary_key));
        return base_url('stations/viewStation/') . $station_id;
    }

    function _callback_after_insert_station($post_array, $primary_key)
    {
        $this->db->query("LOCK TABLES eco_stations WRITE");
        $max = $this->db->query("SELECT MAX(station_no) as last_id FROM eco_stations")->row();
        $nex_code = $max->last_id + 1;
        if ($nex_code < 10) {
            $station_code = 'ST-00' . $nex_code;
        } elseif ($nex_code < 100) {
            $station_code = 'ST-0' . $nex_code;
        } else {
            $station_code = 'ST-' . $nex_code;
        }
        $data1 = array('station_code' => $station_code, 'station_no' => $nex_code);
        $this->db->where('id', $primary_key);
        $this->db->update('stations', $data1);
        $this->db->query("UNLOCK TABLES");

        $filters = $this->db->get('filters')->result();
        $station = $this->db->get_where('stations', array('id' => $primary_key))->row();
        foreach ($filters as $f) {
            $filter_code = $f->filter_code;
            $station_gsm = $station->gsm;
            $station_id = $primary_key;
            $data = array('filter_code' => $filter_code, 'station_gsm' => $station_gsm, 'station_id' => $station_id);
            $this->db->insert('filters_maintenance', $data);
        }
        //insert sales
        $royalty = 0;
        $royalty_query = $this->db->query("select *
                from eco_campus_royalty a
                         inner join eco_campus b on a.campus_id = b.id and b.campus_code = '$station->campus_code'
                    and a.status = 'Active'
                order by a.id desc");
        if ($royalty_query->num_rows() >= 1) {
            $royalty_query = $royalty_query->row();
            $royalty = $royalty_query->royalty;
        }
        $data = array(
            'date' => date('Y-m-d'),
            'station_gsm' => $station->gsm,
            'd1_open_bal_card' => 0,
            'd1_closing_bal_card' => 0,
            'd1_open_bal_cash' => 0,
            'd1_closing_bal_cash' => 0,
            'd2_open_bal_card' => 0,
            'd2_closing_bal_card' => 0,
            'd2_open_bal_cash' => 0,
            'd2_closing_bal_cash' => 0,
            'royalty' => $royalty
        );
        $this->db->insert('station_sales_hist', $data);
        return true;
    }

    function _callback_remove_filter_maint($primary_key)
    {
        $station = $this->db->get_where('stations', array('id' => $primary_key))->row();
        $this->db->delete('filters_maintenance', array('station_gsm' => $station->gsm));
    }

    function viewStation($sid = FALSE)
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        $sid = $this->encryption->decrypt(str_replace(array('-', '_', '~'), array('+', '/', '='), $sid));
        $stat_view = $this->session->userdata('stat_view');
        if (empty($stat_view)) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Stations';
        $this->data['subtitle'] = 'View Station';
        $this->data["subview"] = 'stations/view_station';
        $this->data['pageurl'] = 'stations/listStations'; //stations/listStations
        $station = $this->Stations_model->get_station_details_by_id($sid);
        $gsm = $station->gsm;
        $this->data['station'] = $station;
        $from_date = date('Y-m-d', strtotime(date('Y-m-d', strtotime(date('Y-m-d'))) . '-29 days'));
        $to_date = date('Y-m-d');
        $this->data['sales_hist'] = $this->Stations_model->get_sales_hist_by_station_gsm($gsm, $from_date, $to_date);
        $this->data['sales_hist_graph'] = $this->Stations_model->get_sales_hist_by_station_gsm_asc($gsm);
        $this->data['stat_filter_maint'] = $this->Maintenance_model->get_station_filter_maintenance($gsm);
        $to = date('Y-m-d') . ' 23:59:59';
        $from = date('Y-m-d', strtotime('-5 days', strtotime($to)));
        $this->data['sms'] = $this->Stations_model->get_incoming_commands_by_station($gsm, $from, $to);
        $sale_price = $this->Stations_model->get_station_sale_price($station->campus_id);
        if ($sale_price) {
            $this->data['water_price'] = $sale_price->price_per_liter;
        } else {
            $this->data['water_price'] = 0;
        }
        $this->data['sid'] = $sid;
        $this->data['gsm'] = $gsm;
        $this->Stations_model->create_sales_view();
        #Sales and volume
        $this->data['sales_inst_todate'] = $this->Stations_model->get_sales('', '', $gsm);
        $this->data['sales_thisyear'] = $this->Stations_model->get_sales(date('Y') . '-01-01', $to_date, $gsm);
        $this->data['sales_thismonth'] = $this->Stations_model->get_sales(date('Y-m') . '-01', $to_date, $gsm);
        $this->data['sales_today'] = $this->Stations_model->get_sales($to_date, $to_date, $gsm);
        $this->data['filters'] = $this->Maintenance_model->get_all_filters();
        #Sales and volume
        $this->load->view('_layout_main', $this->data);
    }

    function updateStationFilter()
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $sid_plain = $this->input->post('sid');
            $sid_encypt = str_replace(array('+', '/', '='), array('-', '_', '~'), $this->encryption->encrypt($sid_plain));
            $station_gsm = $this->input->post('station_gsm');
            $this->load->library('form_validation');
            $this->form_validation->set_rules('filter_code', 'Filter', 'required');
            if ($this->input->post('cleaned_on') == '' && $this->input->post('replaced_on') == '') {
                $this->form_validation->set_rules('x', 'Cleaned on/Replaced on', 'required');
            }
            if ($this->form_validation->run() == FALSE) {
                $this->session->set_flashdata('error', validation_errors());
                redirect('stations/viewStation/' . $sid_encypt);
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
            redirect('stations/viewStation/' . $sid_encypt);
        }
    }

    function moveFilterMaintToHistory($station_gsm = '', $filter_code = '', $filter_details = '')
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
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

    function salesHistory()
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        if (empty($this->session->userdata('stat_sales'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Stations';
        $this->data['subtitle'] = 'Sales History';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'stations/salesHistory';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_station_sales_hist');
        $crud->order_by('date', 'DESC');
        $crud->set_primary_key('gsm', 'eco_stations');
        $crud->set_relation('station_gsm', 'eco_stations', 'station_name');
        $crud->columns('date', 'station_gsm', 'd1_open_bal_card', 'd1_closing_bal_card', 'd1_open_bal_cash', 'd1_closing_bal_cash', 'd2_open_bal_card', 'd2_closing_bal_card', 'd2_open_bal_cash', 'd2_closing_bal_cash', 'total_sales', 'royalty');
        $crud->add_fields('date', 'station_gsm', 'd1_open_bal_card', 'd1_closing_bal_card', 'd1_open_bal_cash', 'd1_closing_bal_cash', 'd2_open_bal_card', 'd2_closing_bal_card', 'd2_open_bal_cash', 'd2_closing_bal_cash', 'royalty', 'maker_id');
        $crud->set_rules('d1_closing_bal_card', 'D1 Card Close', 'required|greater_than_equal_to[0]');
        $crud->set_rules('d1_closing_bal_cash', 'D1 Cash Close', 'required|greater_than_equal_to[0]');
        $crud->set_rules('d2_closing_bal_card', 'D2 Card Close', 'required|greater_than_equal_to[0]');
        $crud->set_rules('d2_closing_bal_cash', 'D2 Cash Close', 'required|greater_than_equal_to[0]');
        $crud->set_rules('date', 'Report Date', 'required|callback_validate_sale_date');
        $crud->set_rules('date', 'Report Date', 'required|callback_validate_trn_date');
        $crud->callback_add_field('date', function () {
            return '<input type="date" class="form-control" value="" name="date" autocomplete="off" >';
        });
        $crud->callback_edit_field('date', function ($value, $primary_key) {
            return '<input type="date" class="form-control" value="' . $value . '" name="date" autocomplete="off" >';
        });
        $crud->display_as('date', 'Report Date')
            ->display_as('station_gsm', 'Station')
            ->display_as('d1_open_bal_card', 'D1 Card Open')
            ->display_as('d1_closing_bal_card', 'D1 Card Close')
            ->display_as('d1_open_bal_cash', 'D1 Cash Open')
            ->display_as('d1_closing_bal_cash', 'D1 Cash Close')
            ->display_as('d2_open_bal_card', 'D2 Card Open')
            ->display_as('d2_closing_bal_card', 'D2 Card Close')
            ->display_as('d2_open_bal_cash', 'D2 Cash Open')
            ->display_as('d2_closing_bal_cash', 'D2 Cash Close');
        $crud->field_type('maker_id', 'hidden', $this->session->userdata('username'));
        $crud->field_type('d1_open_bal_card', 'invisible')
            ->field_type('d1_open_bal_cash', 'invisible')
            ->field_type('d2_open_bal_card', 'invisible')
            ->field_type('d2_open_bal_cash', 'invisible')
            ->field_type('royalty', 'invisible');
        $crud->required_fields('date', 'station_gsm', 'd1_closing_bal_card', 'd1_closing_bal_cash', 'd2_closing_bal_card', 'd2_closing_bal_cash');
        $crud->callback_column('d1_open_bal_card', array($this, '_callback_format_amount'))
            ->callback_column('d1_closing_bal_card', array($this, '_callback_format_amount'))
            ->callback_column('d1_open_bal_cash', array($this, '_callback_format_amount'))
            ->callback_column('d1_closing_bal_cash', array($this, '_callback_format_amount'))
            ->callback_column('d2_open_bal_card', array($this, '_callback_format_amount'))
            ->callback_column('d2_closing_bal_card', array($this, '_callback_format_amount'))
            ->callback_column('d2_open_bal_cash', array($this, '_callback_format_amount'))
            ->callback_column('d2_closing_bal_cash', array($this, '_callback_format_amount'))
            ->callback_column('date', array($this, '_callback_format_sale_date'))
            ->callback_column('total_sales', array($this, '_callback_total_sales'));
        $crud->unset_clone();
        $crud->unset_edit();
        $crud->unset_export();
        $crud->unset_print();
        $crud->unset_read();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->callback_before_insert(array($this, '_callback_before_insert_sale'));
        $crud->callback_before_delete(array($this, '_callback_before_delete_sale'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_total_sales($value, $row)
    {
        $row = $this->db->get_where('station_sales_hist', array('id' => $row->id))->row();
        $total_sales = ($row->d1_closing_bal_card - $row->d1_open_bal_card) + ($row->d1_closing_bal_cash - $row->d1_open_bal_cash) + ($row->d2_closing_bal_card - $row->d2_open_bal_card) + ($row->d2_closing_bal_cash - $row->d2_open_bal_cash);
        return '<span class="pull-right">' . number_format($total_sales, 2) . '</span>';
    }

    function validate_sale_date($str)
    {
        $trn_date = $str;
        if ($trn_date > date('d/m/Y')) {
            $this->form_validation->set_message('validate_sale_date', "Report Date cannot be greater than current date");
            return FALSE;
        } else {
            return TRUE;
        }
    }

    /*function validate_closing_balance($balance)
    {
        $station_gsm = $this->input->post('station_gsm');
        $station_data = $this->db->get_where('stations', array('gsm' => $station_gsm))->row();
        if ($station_data->category === '2 Doors' && $balance <= 0) {
            $this->form_validation->set_message('validate_closing_balance', "Door two balance cannot should be");
            return FALSE;
        } else {
            return TRUE;
        }
    }*/

    function _callback_before_insert_sale($post_array)
    {
        $station_gsm = $post_array['station_gsm'];
        $date = $post_array['date'];
        //$check_date = date('Y-m-d', strtotime(str_replace('/', '-', $date)));
        $check_date = $date;
        $check = $this->db->get_where('station_sales_hist', array('date' => $check_date, 'station_gsm' => $station_gsm));
        if ($check->num_rows() >= 1) {
            return FALSE;
        } else {
            //get opening balance
            $query1 = $this->db->query("SELECT * FROM eco_station_sales_hist WHERE station_gsm = '$station_gsm' AND date=(SELECT MAX(date) FROM eco_station_sales_hist WHERE station_gsm = '$station_gsm')");
            if ($query1->num_rows() == 0) {
                $post_array['d1_open_bal_card'] = 0;
                $post_array['d1_open_bal_cash'] = 0;
                $post_array['d2_open_bal_card'] = 0;
                $post_array['d2_open_bal_cash'] = 0;
            } else {
                $prev_sale_data = $query1->row();
                $post_array['d1_open_bal_card'] = $prev_sale_data->d1_closing_bal_card;
                $post_array['d1_open_bal_cash'] = $prev_sale_data->d1_closing_bal_cash;
                $post_array['d2_open_bal_card'] = $prev_sale_data->d2_closing_bal_card;
                $post_array['d2_open_bal_cash'] = $prev_sale_data->d2_closing_bal_cash;
            }
            //get royalty			
            $query2 = $this->db->query("SELECT * FROM eco_campus_royalty WHERE campus_id=(SELECT a.id FROM eco_campus a JOIN eco_stations b WHERE a.campus_code=b.campus_code AND b.gsm='$station_gsm') AND status='Active'");
            if ($query2->num_rows() == 0) {
                $post_array['royalty'] = 0;
            } else {
                $royalty_data = $query2->row();
                $post_array['royalty'] = $royalty_data->royalty;
            }
            $post_array['maker_id'] = $this->session->userdata('username');
            return $post_array;
        }
    }

    function _callback_before_delete_sale($primary_key)
    {
        $check = $this->db->query("SELECT * FROM eco_station_sales_hist WHERE date >(SELECT date FROM eco_station_sales_hist WHERE id='$primary_key') AND station_gsm = (SELECT station_gsm FROM eco_station_sales_hist WHERE id='$primary_key')");
        if ($check->num_rows() >= 1) {
            return FALSE;
        } else {
            return TRUE;
        }
    }

    #For revising sales

    function salesHistoryRev()
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        if (empty($this->session->userdata('stat_sales'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Stations';
        $this->data['subtitle'] = 'Sales History';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'stations/salesHistoryRev';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_station_sales_hist_rev');
        $crud->order_by('date', 'DESC');
        $crud->set_primary_key('gsm', 'eco_stations');
        $crud->set_relation('station_gsm', 'eco_stations', 'station_name');
        $crud->columns('date', 'station_gsm', 'd1_open_bal_card', 'd1_closing_bal_card', 'd1_open_bal_cash', 'd1_closing_bal_cash', 'd2_open_bal_card', 'd2_closing_bal_card', 'd2_open_bal_cash', 'd2_closing_bal_cash', 'total_sales');
        $crud->add_fields('date', 'station_gsm', 'd1_open_bal_card', 'd1_closing_bal_card', 'd1_open_bal_cash', 'd1_closing_bal_cash', 'd2_open_bal_card', 'd2_closing_bal_card', 'd2_open_bal_cash', 'd2_closing_bal_cash', 'maker_id');
        $crud->set_rules('d1_closing_bal_card', 'D1 Card Close', 'required|greater_than[0]');
        $crud->set_rules('d1_closing_bal_cash', 'D1 Cash Close', 'required|greater_than[0]');
        $crud->set_rules('d2_closing_bal_card', 'D2 Card Close', 'required|greater_than[0]');
        $crud->set_rules('d2_closing_bal_cash', 'D2 Cash Close', 'required|greater_than[0]');
        $crud->set_rules('date', 'Report Date', 'required|callback_validate_sale_date');
        $crud->display_as('date', 'Report Date')
            ->display_as('station_gsm', 'Station')
            ->display_as('d1_open_bal_card', 'D1 Card Open')
            ->display_as('d1_closing_bal_card', 'D1 Card Close')
            ->display_as('d1_open_bal_cash', 'D1 Cash Open')
            ->display_as('d1_closing_bal_cash', 'D1 Cash Close')
            ->display_as('d2_open_bal_card', 'D2 Card Open')
            ->display_as('d2_closing_bal_card', 'D2 Card Close')
            ->display_as('d2_open_bal_cash', 'D2 Cash Open')
            ->display_as('d2_closing_bal_cash', 'D2 Cash Close');
        $crud->field_type('maker_id', 'hidden', $this->session->userdata('username'));
        $crud->field_type('d1_open_bal_card', 'invisible')
            ->field_type('d1_open_bal_cash', 'invisible')
            ->field_type('d2_open_bal_card', 'invisible')
            ->field_type('d2_open_bal_cash', 'invisible')
            ->field_type('royalty', 'invisible');
        $crud->required_fields('date', 'station_gsm', 'd1_closing_bal_card', 'd1_closing_bal_cash', 'd2_closing_bal_card', 'd2_closing_bal_cash');
        $crud->callback_column('d1_open_bal_card', array($this, '_callback_format_amount'))
            ->callback_column('d1_closing_bal_card', array($this, '_callback_format_amount'))
            ->callback_column('d1_open_bal_cash', array($this, '_callback_format_amount'))
            ->callback_column('d1_closing_bal_cash', array($this, '_callback_format_amount'))
            ->callback_column('d2_open_bal_card', array($this, '_callback_format_amount'))
            ->callback_column('d2_closing_bal_card', array($this, '_callback_format_amount'))
            ->callback_column('d2_open_bal_cash', array($this, '_callback_format_amount'))
            ->callback_column('d2_closing_bal_cash', array($this, '_callback_format_amount'))
            ->callback_column('date', array($this, '_callback_format_sale_date'))
            ->callback_column('total_sales', array($this, '_callback_total_sales_rev'));
        $crud->unset_clone();
        $crud->unset_edit();
        $crud->unset_read();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->callback_before_insert(array($this, '_callback_before_insert_sale_rev'));
        $crud->callback_before_delete(array($this, '_callback_before_delete_sale_rev'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_total_sales_rev($value, $row)
    {
        $row = $this->db->get_where('station_sales_hist_rev', array('id' => $row->id))->row();
        $total_sales = ($row->d1_closing_bal_card - $row->d1_open_bal_card) + ($row->d1_closing_bal_cash - $row->d1_open_bal_cash) + ($row->d2_closing_bal_card - $row->d2_open_bal_card) + ($row->d2_closing_bal_cash - $row->d2_open_bal_cash);
        return '<span class="pull-right">' . number_format($total_sales, 2) . '</span>';
    }

    function _callback_before_insert_sale_rev($post_array)
    {
        $station_gsm = $post_array['station_gsm'];
        $date = $post_array['date'];
        $check_date = date('Y-m-d', strtotime(str_replace('/', '-', $date)));
        $check = $this->db->get_where('station_sales_hist_rev', array('date' => $check_date, 'station_gsm' => $station_gsm));
        if ($check->num_rows() >= 1) {
            return FALSE;
        } else {
            //get opening balance
            $query1 = $this->db->query("SELECT * FROM eco_station_sales_hist_rev WHERE station_gsm = '$station_gsm' AND date=(SELECT MAX(date) FROM eco_station_sales_hist_rev WHERE station_gsm = '$station_gsm')");
            if ($query1->num_rows() == 0) {

                $post_array['d1_open_bal_card'] = 0;
                $post_array['d1_open_bal_cash'] = 0;
                $post_array['d2_open_bal_card'] = 0;
                $post_array['d2_open_bal_cash'] = 0;
            } else {

                $prev_sale_data = $query1->row();
                $post_array['d1_open_bal_card'] = $prev_sale_data->d1_closing_bal_card;
                $post_array['d1_open_bal_cash'] = $prev_sale_data->d1_closing_bal_cash;
                $post_array['d2_open_bal_card'] = $prev_sale_data->d2_closing_bal_card;
                $post_array['d2_open_bal_cash'] = $prev_sale_data->d2_closing_bal_cash;
            }
            //get royalty			
            $query2 = $this->db->query("SELECT * FROM eco_campus_royalty WHERE campus_id=(SELECT a.id FROM eco_campus a JOIN eco_stations b WHERE a.campus_code=b.campus_code AND b.gsm='$station_gsm') AND status='Active'");
            if ($query2->num_rows() == 0) {
                $post_array['royalty'] = 0;
            } else {
                $royalty_data = $query2->row();
                $post_array['royalty'] = $royalty_data->royalty;
            }
            return $post_array;
        }
    }

    function _callback_before_delete_sale_rev($primary_key)
    {
        $check = $this->db->query("SELECT * FROM eco_station_sales_hist_rev WHERE date >(SELECT date FROM eco_station_sales_hist_rev WHERE id='$primary_key') AND station_gsm = (SELECT station_gsm FROM eco_station_sales_hist_rev WHERE id='$primary_key')");
        if ($check->num_rows() >= 1) {
            return FALSE;
        } else {
            return TRUE;
        }
    }

    #For revising sales end

    function downloadSalesSMS()
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        if (empty($this->session->userdata('stat_statement'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        //$from_date = substr($this->input->post('daterange'),0,10);
        $from_date = '2019-06-01';
        $to_date = substr($this->input->post('daterange'), 13, 10) . ' 23:59:59';
        $station_id = $this->input->post('station_id');
        $gsm = $this->input->post('station_gsm');
        $type = $this->input->post('type');
        $this->data['gsm'] = $gsm;
        $this->data['type'] = $type;
        if ($type === 'sales') {
            $this->data['sales'] = $this->Stations_model->get_sales_hist_by_station_gsm($gsm, $from_date, $to_date);
            $this->load->view('stations/export_sales', $this->data);
        } elseif ($type === 'sms') {
            $this->data['sms'] = $this->Stations_model->get_incoming_commands_by_station($gsm, $from_date, $to_date);
            $this->load->view('stations/export_sms', $this->data);
        }
    }

    function _callback_status($value, $row)
    {
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

    function _callback_format_date($value, $row)
    {
        $date = date("d-M-y", strtotime($value));
        return $date;
    }

    function _callback_format_sale_date($value, $row)
    {
        $date = date("d/m/Y", strtotime($value));
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
        //$amount = number_format($value,2);
        // return $amount;
        return '<span class="pull-right">' . number_format($value, 2) . '</span>';
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

    function salesExport()
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login');
        }
        //check session
       $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->form_validation->set_rules('dateFrom', 'From', 'required');
            $this->form_validation->set_rules('dateTo', 'To', 'required');
            if ($this->form_validation->run() == TRUE) {
                //echo 'here'; exit();
                $from_date = date('Y-m-d', strtotime($this->input->post('dateFrom')));
                $to_date = date('Y-m-d', strtotime($this->input->post('dateTo')));
                $this->db->select('a.*,b.station_name');
                $this->db->where('a.date >=', $from_date);
                $this->db->where('a.date <=', $to_date);
                $this->db->from('sales_vw a');
                $this->db->join('stations b', 'a.station_gsm = b.gsm', 'LEFT');
                $data['sales'] = $this->db->get()->result();
                $this->load->view('stations/export_excel', $data);
            } else {
                $errors = validation_errors();
                $this->session->set_flashdata('error', $errors);
                redirect('stations/stationDashboard');
            }
        } else {
            redirect('stations/stationDashboard');
        }
    }

    function test()
    {
        $x = $this->db->get_where('commands_incoming', array('id' => 38))->row();
        $codea = explode(' ', $x->code);
        //echo $pos; exit();
        $code = preg_replace('/\s+/', '', $x->code);
        //$codea = explode(' ',$code); 
        $pos_cash = strpos($code, 'Cash:');
        $c_card = substr($code, 8, $pos_cash - 8);
        //echo $c_card; exit();
        // Cash
        $c_cash = substr($code, $pos_cash + 5);

        $door = substr($code, 0, 1);
        echo $door;
        exit();
        //print_r($codea); exit();
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
