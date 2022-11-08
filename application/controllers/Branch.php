<?php defined('BASEPATH') OR exit('No direct script access allowed');
require_once APPPATH . '/third_party/PHPExcel/IOFactory.php';

class Branch extends CI_Controller
{

    function __construct()
    {
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

    function index()
    {

    }

    function listBranches()
    {
        if (empty($this->session->userdata('branch_view'))) {
            $this->session->set_flashdata('access_denied', 'Access denied, insufficient privileges.');
            redirect($_SERVER['HTTP_REFERER']);
        }
        $this->data['title'] = 'Branch';
        $this->data['subtitle'] = 'All Branches';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = '0064e2dae17ee8627f29554c8045f804'; // branch/listBranches
        $crud = new grocery_CRUD();
        $crud->set_table('eco_branch');
        $crud->columns('branch_code', 'branch_name', 'physical_addr', 'record_stat');
        $crud->fields('branch_code', 'branch_name', 'physical_addr', 'record_stat');
        $crud->required_fields('branch_name', 'physical_addr', 'record_stat');
        $crud->display_as('record_stat', 'Status')
            ->display_as('physical_addr', 'Physical Address');
        $crud->change_field_type('branch_code', 'invisible');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->unset_texteditor('physical_addr');
        $crud->set_crud_url_path(base_url('branch/listBranches'));
        $crud->callback_column('record_stat', array($this, '_callback_record_stat'));
        $crud->callback_read_field('record_stat', array($this, '_callback_record_stat'));
        $crud->callback_read_field('date_registered', array($this, '_callback_date'));
        $crud->callback_read_field('date_updated', array($this, '_callback_date'));
        $crud->callback_before_insert(array($this, '_callback_create_branch_code'));
        //$crud->set_crud_url_path(base_url('branch/listBranches'));
        if (empty($this->session->userdata('branch_add'))) {
            $crud->unset_add();
        }
        if (empty($this->session->userdata('branch_edit'))) {
            $crud->unset_edit();
        }
        if (empty($this->session->userdata('branch_delete'))) {
            $crud->unset_delete();
        }
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_create_branch_code($post_array)
    {
        $this->db->order_by('id', 'DESC');
        $data = $this->db->get('branch')->row();
        //$query  = $this->db->query("SELECT branch_code FROM eco_branch ORDER BY id DESC ");
        $last_branch_code = $data->branch_code;
        $last_branch_code = str_replace('BR-00', '', $last_branch_code); //first remove
        $last_branch_code = str_replace('BR-0', '', $last_branch_code); //second check
        $last_branch_code = str_replace('BR-', '', $last_branch_code); //third remove
        $next_branch_code = $last_branch_code + 1;
        if ($next_branch_code >= 1 && $next_branch_code <= 9) {
            $next_branch_code = 'BR-00' . $next_branch_code;
        } elseif ($next_branch_code >= 10 && $next_branch_code <= 99) {
            $next_branch_code = 'BR-0' . $next_branch_code;
        } else {
            $next_branch_code = 'BR-' . $next_branch_code;
        }
        $post_array['branch_code'] = $next_branch_code;
        return $post_array;
    }

    function _callback_record_stat($value, $row)
    {
        if ($value === 'O') {
            return '<span class="badge badge-success" style="font-size:11px">Open</span>';
        } elseif ($value === 'D' || $value == 'C') {
            return '<span class="badge badge-danger" style="font-size:11px"> Deleted</span>';
        } else {
            return '<span class="badge badge-dark" style="font-size:11px">' . $value . '</span>';
        }
    }

    function _callback_date($value, $row)
    {
        return date("D d-M-Y H:i:s", strtotime($value));
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