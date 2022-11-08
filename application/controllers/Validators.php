<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Validators extends CI_Controller{
	function __construct(){
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation','excel','session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        $this->load->model(array('Validators_model'));
        if (!$this->ion_auth->logged_in()){ 
        	redirect('1b950a2cee305598cdc96de85d706237'); //auth/login
        	}
        //Call this mysql procedure to change session timezone for all database CRUD
//		$this->db->query("CALL mysql.store_time_zone()");
        //check session
        $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if($session == 0){
            redirect('auth/logout');
        }
    }

    function index(){

    }

    function listValidators(){
        $this->data['title'] = 'Validators';
        $this->data['subtitle'] = 'All Validators';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'validators/listValidators';
        $crud = new grocery_CRUD(); 
        $crud->set_table('eco_val_validators');
        $crud->set_relation('station_id','eco_stations','station_name');        
        $crud->order_by('id','desc');
        $crud->columns('validator_id','gsm','station_id','status');
        $crud->fields('id','validator_id','gsm','station_id','status','comments');
        //$crud->edit_fields('gsm','station_id','status');
        $crud->required_fields('validator_id','gsm','station_id','status'); 
        $crud->field_type('id', 'hidden');
        //$state = $crud->getState();
        //$state_info = $crud->getStateInfo();
        $crud->set_rules('validator_id','Validator ID','required|callback_validate_validator_vid');
        $crud->set_rules('gsm','GSM','required|callback_validate_validator_gsm');
        $crud->set_rules('station_id','Station','required|callback_validate_validator_station'); 
        $crud->display_as('validator_id','Validator ID')
            ->display_as('gsm','GSM')
            ->display_as('station_id','Station');
        $crud->add_action('View', '', '','fa fa-eye',array($this,'_callback_view_validator'));
        $crud->unset_clone();
        $crud->unset_read();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->callback_before_insert(array($this,'_callback_before_insert_validator'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function validate_validator_vid($vid){
        $validator_id = $this->input->post('validator_id');
        $pkey = $this->input->post('id');
        $result = $this->db->get_where('val_validators', array('validator_id'=>$vid, 'status'=>'Operating', 'id !='=>$pkey) );
        if($result->num_rows() > 0 ){
            $this->form_validation->set_message('validate_validator_vid', "Validator ID already registered and operating");
            return FALSE;
        }else{
            return TRUE;                    
        } 
    }

    function validate_validator_gsm($gsm){
        $pkey = $this->input->post('id');
        $rows = $this->db->get_where('val_validators', array('gsm'=>$gsm, 'status'=>'Operating','id <>'=>$pkey))->num_rows();                    
        if($rows > 0 ){
            $this->form_validation->set_message('validate_validator_gsm', "GSM already mapped to operating validator");
            return FALSE;
        }else{
            return TRUE;                    
        }        
    }

    function validate_validator_station($station_id){
        $pkey = $this->input->post('id');
        $rows = $this->db->get_where('val_validators', array('station_id'=>$station_id, 'status'=>'Operating', 'id <>'=>$pkey))->num_rows();        
        if($rows > 0 ){
            $this->form_validation->set_message('validate_validator_station', "Station already mapped to operating validator");
            return FALSE;
        }else{
            return TRUE;                    
        }        
    }

    function _callback_view_validator($primary_key , $row){
        $enc_id = str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($primary_key));
        return base_url('validators/viewValidator/').$enc_id;
    }

    function viewValidator($enc_id){
        $primary_key = $this->encryption->decrypt(str_replace(array('-', '_', '~'), array('+', '/', '='), $enc_id));   
        $this->data['title'] = 'Validators';
        $this->data['subtitle'] = 'View Validators';
        $this->data['subview'] = 'validators/view_validator';
        $this->data['pageurl'] = 'validators/listValidators';
        $this->data['validator'] = $this->Validators_model->get_validators_by_id($primary_key);
        $this->load->view('_layout_main', $this->data);
    }
    
    function validatorLogs() {
        $this->data['title'] = 'Validators';
        $this->data['subtitle'] = 'Logs';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'validators/validatorLogs';
        $crud = new grocery_CRUD(); 
        $crud->set_table('eco_val_validator_logs');
        $crud->order_by('id','DESC');
        $crud->set_primary_key('code','eco_val_messages');
        $crud->set_relation('request_status','eco_val_messages','message');
        $crud->set_relation('callback_status','eco_val_messages','message');
        $crud->columns('validator_id','card_no','curr_bal','recharge','new_bal','request_status','callback_status','date_registered');
        $crud->display_as('validator_id','Validator')
            ->display_as('curr_bal','Current Balance')
            ->display_as('new_bal','New Balance')
            ->display_as('card_no','Card Number')
            ->display_as('request_status','Request Status')
            ->display_as('callback_status','Callback Status')
            ->display_as('date_registered','Timestamp')
            ->display_as('recharge','Pending Recharge')
            ->display_as('comm_ref','Communication Reference');
        $crud->callback_column('validator_id',array($this,'_callback_validator_id'));
        $crud->callback_column('date_registered',array($this,'_callback_timestamp'));
        $crud->callback_column('curr_bal',array($this,'_callback_trn_amount'));
        $crud->callback_column('recharge',array($this,'_callback_trn_amount'));
        $crud->callback_column('new_bal',array($this,'_callback_trn_amount'));
        $crud->unset_clone();
        $crud->unset_add();
        $crud->unset_edit();
        $crud->unset_export();
        $crud->unset_print();
        $crud->unset_delete();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }
    
    function _callback_validator_id($value, $row){        
        $this->db->select('c.station_name');
        $this->db->from('val_validator_logs a');
        $this->db->join('val_validators b','a.validator_id = b.validator_id','LEFT');
        $this->db->join('stations c','b.station_id = c.id','LEFT');
        $this->db->where('a.validator_id',$value);
        $data = $this->db->get()->row();
        $validator = $value.' - '.$data->station_name;
        return $validator;
    }
    
    function _callback_timestamp($value, $row){
        $date = date("d-M-y H:i", strtotime($value));
        return $date;
    }
    
    function _callback_trn_amount($value, $row){
        return "<span style='width:100%;text-align:right;display:block;'>".number_format($value,2)."</span>";
    }
}