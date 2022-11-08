<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Card extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'excel', 'session'));
        $this->form_validation->set_error_delimiters(
            $this->config->item('error_start_delimiter', 'ion_auth'),
            $this->config->item('error_end_delimiter', 'ion_auth')
        );
        $this->lang->load('auth');
        $this->load->model(array('Campus_model', 'Subscriber_model', 'Sms_model'));
        if (!$this->ion_auth->logged_in()) {
            redirect('1b950a2cee305598cdc96de85d706237');   //auth/login          
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

    function updateOldCards()
    {
        $prefix = 135000; // will be used by Selcom
        $cards = $this->db->get_where('cards', array('id <=' => 29717))->result();
        foreach ($cards as $c) {
            $number = substr($c->card_no, 3, 6);
            $luhn = $this->_generate_luhn_check($number);
            $card_no_luhn = $number . $luhn;
            $card_complete = $prefix . $card_no_luhn;
            $data = array(
                'card_luhn' => $card_complete
            );
            $this->db->where('id', $c->id);
            $this->db->update('cards', $data);
        }
        echo 'Finish at ' . date('Y-m-d H:i:s');
    }

    function generateCards()
    {
        echo 'Not allowed';
        exit();
        $prefix = 135000; // will be used by Selcom
        $min = 22001;
        $max = 999999;
        $i = 1;
        $n = 1000;

        while ($i <= $n) {
            $number = rand($min, $max);
            $check_number = $this->db->get_where('cards_luhn', array('card_no_og' => $number))->num_rows();
            if ($check_number == 0) {
                if (strlen($number) == 5) {
                    $number = '0' . $number;
                } elseif (strlen($number) == 4) {
                    $number = '00' . $number;
                } elseif (strlen($number) == 3) {
                    $number = '000' . $number;
                } elseif (strlen($number) == 2) {
                    $number = '0000' . $number;
                } elseif (strlen($number) == 1) {
                    $number = '00000' . $number;
                }

                $luhn = $this->_generate_luhn_check($number); // generate checksum number
                $card_no_og = $number;
                $card_no_luhn = $number . $luhn;
                $card_complete = $prefix . $card_no_luhn;
                $maker_id = $this->session->userdata('username');
                $card_len = strlen($card_complete);
                $data = array(
                    'card_no_og' => $card_no_og,
                    'card_no_luhn' => $card_no_luhn,
                    'card_complete' => $card_complete,
                    'maker_id' => $maker_id,
                    'card_len' => $card_len
                );
                $this->db->insert('cards_luhn', $data);
                $i++; // increment
            } else {
                $i = $i;
            }
        }
        echo 'finish :' . date('d-M-Y H:i:s') . ' Count: ' . $i;
        exit();
    }

    function _generate_luhn_check($value = '')
    {
        if (!is_numeric($value)) {
            throw new \InvalidArgumentException(__FUNCTION__ . ' can only accept numeric values.');
        }
        // Force the value to be a string so we can work with it like a string.
        $value = (string)$value;
        // Set some initial values up.
        $length = strlen($value);
        $parity = $length % 2;
        $sum = 0;
        for ($i = $length - 1; $i >= 0; --$i) {
            // Extract a character from the value.
            $char = $value[$i];
            if ($i % 2 != $parity) {
                $char *= 2;
                if ($char > 9) {
                    $char -= 9;
                }
            }
            // Add the character to the sum of characters.
            $sum += $char;
        }
        // Return the value of the sum multiplied by 9 and then modulus 10.
        return ($sum * 9) % 10;
    }

    function luhnCards()
    {
        if (empty($this->session->userdata('card_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Cards';
        $this->data['subtitle'] = 'Luhn Cards';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'card/luhnCards';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_cards_luhn');
        $crud->unset_clone();
        $crud->unset_edit();
        $crud->unset_delete();
        $crud->unset_add();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function listCards()
    {
        if (empty($this->session->userdata('card_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Cards';
        $this->data['subtitle'] = 'All Cards';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'card/listCards';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_cards');
        $crud->columns('card_no', 'card_luhn', 'curr_balance', 'occupied', 'lost', 'demaged', 'card_stat');
        $crud->fields('card_no', 'curr_balance', 'occupied', 'lost', 'demaged', 'card_stat', 'maker_id');
        $crud->display_as('card_no', 'Card Number')
            ->display_as('curr_balance', 'Balance')
            ->display_as('card_stat', 'Card Status');
        $crud->order_by('id', 'desc');
        $crud->callback_column('occupied', array($this, '_callback_status'));
        $crud->callback_column('lost', array($this, '_callback_status'));
        $crud->callback_column('demaged', array($this, '_callback_status'));
        $crud->callback_column('card_stat', array($this, '_callback_status'));
        $crud->field_type('curr_balance', 'hidden', 0);
        $crud->field_type('maker_id', 'hidden', $this->session->userdata('username'));
        $crud->field_type('curr_balance', 'hidden', 0);
        //$crud->set_rules('card_no', 'integer');
        $crud->required_fields('card_no', 'occupied', 'lost', 'demaged', 'card_stat');
        $crud->set_rules('card_no', 'Card Number', 'integer|callback_validate_card_no');
        $crud->callback_add_field('card_no', function () {
            return 'IC- <input type="number" class="form-control" maxlength="50" min="1" style="width: 20%" value="" name="card_no">';
        });
        $state = $crud->getState();
        if ($state == 'edit') {
            $crud->field_type('card_no', 'readonly');
        }
        $crud->unset_clone();
        //$crud->unset_read();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        if (empty($this->session->userdata('card_add'))) {
            $crud->unset_add();
        }
        if (empty($this->session->userdata('card_edit'))) {
            $crud->unset_edit();
        }
        if (empty($this->session->userdata('card_delete'))) {
            $crud->unset_delete();
        }
        $crud->callback_after_insert(array($this, 'create_card_no'));
        //$crud->callback_before_update(array($this, 'validate_card_before_update'));
        $crud->callback_before_delete(array($this, 'validate_card_before_delete'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function validate_card_no($str)
    {
        $card_no = 'IC-' . $str;
        $result = $this->db->get_where('cards', array('card_no' => $card_no))->num_rows();
        if ($result >= 1) {
            $this->form_validation->set_message('validate_card_no', "Card number already exist");
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function create_card_no($post_array, $primary_key)
    {
        $card_no = 'IC-' . $post_array['card_no'];
        $data = array('card_no' => $card_no);
        $this->db->where('id', $primary_key);
        $this->db->update('cards', $data);
        return TRUE;
    }

    function validate_card_before_update($post_array, $primary_key)
    {
        $new_occupied = $post_array['occupied'];
        $new_demaged = $post_array['demaged'];
        $new_lost = $post_array['lost'];
        $new_status = $post_array['card_stat'];
        $rows = $this->db->get_where('cards', array('id' => $primary_key))->num_rows();
        if ($rows >= 1 && ($new_occupied == 'N' || $new_demaged == 'Y' || $new_lost == 'Y' || $new_status == 'Inactive')) {
            //if($rows >= 1){
            $this->form_validation->set_message('card_no', "Please de-attach card from subscriber first");
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function validate_card_before_delete($primary_key)
    {
        $rows = $this->db->get_where('cards', array('id' => $primary_key))->num_rows();
        if ($rows >= 1) {
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function _callback_status($value, $row)
    {
        if ($value === 'N') {
            return '<span class="badge badge-success" style="font-size:11px">' . $value . '</span>';
        } elseif ($value === 'Y') {
            return '<span class="badge badge-danger" style="font-size:11px">' . $value . '</span>';
        } elseif ($value === 'Active') {
            return '<span class="badge badge-success" style="font-size:11px">' . $value . '</span>';
        } elseif ($value === 'Inactive') {
            return '<span class="badge badge-danger" style="font-size:11px">' . $value . '</span>';
        } else {
            return '<span class="badge badge-dark" style="font-size:11px">' . $value . '</span>';
        }
    }

}
