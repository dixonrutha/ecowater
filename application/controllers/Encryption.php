<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Encryption extends CI_Controller {

     public function __construct() {
          parent::__construct();
	$this->load->library('encryption');
	$this->load->library('my_encryption'); 
    }

     public function index() {
		$plain_text = 'This is a plain-text message!';
          $ency_data = $this->my_encryption->encode($plain_text);
          $data['encode'] = $ency_data;
          $data['decode'] = $this->my_encryption->decode($ency_data);

          $this->load->view('encryption', $data);
     }

}