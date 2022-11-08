<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Sms extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'excel', 'session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        $this->load->model(array('Subscriber_model', 'Sms_model'));
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

    function subscribersBulkSMS()
    {
        if (empty($this->session->userdata('sub_sms'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Subscribers';
        $this->data['subtitle'] = 'Bulk SMS';
        $this->data["subview"] = 'subscribers/bulk_sms';
        $this->data['pageurl'] = 'sms/subscribersBulkSMS';
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('message', 'Message', 'required');
            if ($this->form_validation->run() == TRUE) {
                $message = $this->input->post('message');
                $category = $this->input->post('category');
                $campus_code = $this->input->post('campus_code');
                $sub_stat_dormancy = $this->input->post('sub_stat_dormancy');
                $subscribers = $this->Subscriber_model->get_subscriber($category, $campus_code, $sub_stat_dormancy);
                //print_r($subscribers); exit();               
                foreach ($subscribers as $s) {
                    $data = array(
                        'receiver' => $s->mobile,
                        'message' => $message,
                        'maker_id' => $this->session->userdata('username')
                    );
                    $this->Sms_model->insertOutgoingSMS($data);
                    $this->Sms_model->sendsms($message, $s->mobile);
                }
                $this->session->set_flashdata('success', 'SMS sent');
                redirect('sms/subscribersBulkSMS');
            }
        }
        $this->data['sub_cat'] = $this->Subscriber_model->get_all_sub_categories();
        $this->data['campus'] = $this->Subscriber_model->get_all_open_campus();
        $this->load->view('_layout_main', $this->data);
    }

    function subscribersBulkEmail()
    {
        if (empty($this->session->userdata('sub_mail'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Subscribers';
        $this->data['subtitle'] = 'Bulk e-Mail';
        $this->data["subview"] = 'subscribers/bulk_email';
        $this->data['pageurl'] = 'sms/subscribersBulkEmail';

        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $subject = $this->input->post('subject');
            $email = $this->input->post('email');
            $category = $this->input->post('category');
            $campus_code = $this->input->post('campus_code');
            $sub_stat_dormancy = $this->input->post('sub_stat_dormancy');
            $subscribers = $this->Subscriber_model->get_subscriber($category, $campus_code, $sub_stat_dormancy);
            $this->load->library('email');
            $this->email->from('ecowater@smartfittanzania.co.tz', 'eCloud');
            $this->email->set_mailtype("html");
            //$this->email->cc('another@another-example.com');
            //$this->email->bcc('them@their-example.com');
            foreach ($subscribers as $s) {
                $this->email->to($s->email);
                $this->email->subject($subject);
                $this->email->message($email);
                $this->email->send();
            }
            $this->session->set_flashdata('success', 'eMail sent');
            redirect('sms/subscribersBulkEmail');
        }
        $this->data['sub_cat'] = $this->Subscriber_model->get_all_sub_categories();
        $this->data['campus'] = $this->Subscriber_model->get_all_open_campus();
        $this->load->view('_layout_main', $this->data);
    }

    function sendMessage($message = '', $phone = '')
    {
        $phone = '255767821881';
        $message = 'Test SMS';
        $url = 'https://messaging-service.co.tz/api/sms/v1/text/single';
        $sID = 'eCloud';
        // Base64 encoded string of Next SMS username and password
        $auth = 'ZWNvd2F0ZXJfYWRtaW46RG9kb21hMjAyMiE=';
        $send = '{
                "from":"' . $sID . '",
                "to":"' . $phone . '",
                "text":"' . $message . '"
             }';

        $sms = curl_init($url);
        curl_setopt($sms, CURLOPT_POST, 1);
        curl_setopt($sms, CURLOPT_POSTFIELDS, $send);
        curl_setopt($sms, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($sms, CURLOPT_HTTPHEADER, array(
            'Authorization: Basic ' . $auth . '',
            'Content-Type: application/json',
            'accept: application/json',
        ));
        curl_setopt($sms, CURLOPT_RETURNTRANSFER, 1);
        $response = curl_exec($sms);
        echo $response;
    }

}