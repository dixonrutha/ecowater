<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require '/vendor/autoload.php';

use ElephantIO\Client;
use ElephantIO\Engine\SocketIO\Version1X;

class SocketIO extends CI_Controller {

    function __construct() {
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
    }

    function senddata() {
        $client = new Client(new Version1X('//3.121.69.125:3000'));

        $client->initialize();
        // send message to connected clients
        $client->emit('broadcast', ['type' => 'notification', 'text' => 'Hello There!']);
        $client->close();
    }

    function testfirebase() {
        $acc = ServiceAccount::fromJsonFile(APPPATH . '/config/evalidator-65ac4-firebase-adminsdk-2s5wn-4c1818f190.json');
        $firebase = (new Factory)->withServiceAccount($acc)->create();
        $this->database = $firebase->getDatabase();
        $this->db->get('users');
    }

    function testSocketIO(){
        //code here
    }

}
