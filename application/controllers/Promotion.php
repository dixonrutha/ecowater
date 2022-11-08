<?php

defined('BASEPATH') OR exit('No direct script access allowed');


class Promotion extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        $this->load->model(array('Promotion_modal', 'Subscriber_model'));
//        $this->load->model(array('Validators_model'));
        if (!$this->ion_auth->logged_in()) {
            redirect('058cf4d83dc58e2fd7a8a3eeff03c612'); //auth/login
        }
        //Call this mysql procedure to change session timezone for all database CRUD
//        $this->db->query("CALL mysql.store_time_zone()");
        //check session
        $session = $this->db->get_where('users', array('session_id' => $this->session->userdata('session_id')))->num_rows();
        if ($session == 0) {
            redirect('auth/logout');
        }
    }

// Function All To Campaigns
    function allpromotions()
    {
        if (empty($this->session->userdata('sub_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'promotion ';
        $this->data['subtitle'] = 'Promotion List';
        $this->data["subview"] = 'promotion/all_promotion_module';
        $this->data['pageurl'] = 'Promotion/allpromotions'; //All campaign
        $username = $this->session->userdata('username');

        $this->load->view('_layout_main', $this->data);

    }

    function addnewpromotion()
    {

        if (empty($this->session->userdata('sub_add'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = ' promotion';
        $this->data['subtitle'] = 'Add new promotion';
        $this->data["subview"] = 'promotion/add_new_promotion';
        $this->data['pageurl'] = 'Promotion/allpromotions'; //promotion/promotion

        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('offer_name', 'Offer Name', 'trim|required');
            $this->form_validation->set_rules('start_date', 'Start Date ', 'trim|required');
            $this->form_validation->set_rules('end_date', 'End  Date', 'trim|required');
            $this->form_validation->set_rules('rate', 'Rate', 'trim|required');
            if ($this->form_validation->run() == TRUE) {
                $this->db->trans_start();
                $data = array(
                    'offer_name' => $this->input->post('offer_name'),
                    'end_date' => $this->input->post('end_date'),
                    'start_date' => $this->input->post('start_date'),
                    'rate' => $this->input->post('rate'),
                    'description' => $this->input->post('description'),
                    'maker_id' => $this->session->userdata('username')
                );
                $offer_id = $this->Promotion_modal->insert_data('eco_offer_master', $data);
                /*
                 * data for offer rate  start
                 */
                $result = $this->Promotion_modal->get_data_all('sub_category');
                $loop_end = $result->num_rows();
                $i = 1;
                while ($i <= $loop_end) {

                    $campus_id = $this->input->post('campus_' . $i);
                    $category = $this->input->post('category_' . $i);
                    $performance = $this->input->post('performance');
                    $recharge = $this->input->post('recharge');
                    $tittle_data = array(
                        'offer_id' => $offer_id,
                        'campus_id ' => $campus_id,
                        'performance' => $performance,
                        'category ' => $category,
                        'recharge_modal ' => $recharge,
                    );

                    if (!empty($campus_id) && !empty($category)) {
                        $this->Promotion_modal->insert_data('eco_offer_rates', $tittle_data);

                    }
                    $i++;

                }

                $view_url = base_url('Promotion/allpromotions' . $offer_id);
                $this->db->trans_complete();
                $this->session->set_flashdata('success', 'Record updated');
                redirect('Promotion/allpromotions');
            }
        }
        //modals
        //$this->data['campuses'] = $this->Subscriber_model->get_all_open_campus();
        $this->data['campuses'] = $this->Promotion_modal->get_data('campus', '');
        $this->data['categor'] = $this->Promotion_modal->get_data('sub_category', '');
        $this->load->view('_layout_main', $this->data);
    }


}