<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Reports extends CI_Controller
{
    function __construct(){
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation','excel','session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        $this->load->helper('xcrud');
        if (!$this->ion_auth->logged_in()){ redirect('auth/login'); }
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
}