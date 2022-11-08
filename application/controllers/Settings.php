<?php

defined('BASEPATH') OR exit('No direct script access allowed');

//PhpSpreadsheet
use PhpOffice\PhpSpreadsheet\Spreadsheet;

class Settings extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->library(array('ion_auth', 'form_validation', 'session'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
        $this->load->helper(array('url', 'language'));
        $this->load->model(array('Settings_model', 'Campus_model', 'Card_model', 'Subscriber_model'));
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

    public function website_analytics()
    {
        $api_url = "https://ecowatercloud.com/api/websiteimpact";
        $form_data = array(
            "username" => "website",
            "certificate" => "8c8559ca06ece0327e142829de98c30ccedc3e7f11b69d28d4a1a425ef8f59f3"
        );
        $client = curl_init($api_url);
        curl_setopt($client, CURLOPT_POST, true);
        curl_setopt($client, CURLOPT_POSTFIELDS, $form_data);
        curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($client);
        curl_close($client);
        echo $response;
    }

    function users()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Configurations';
        $this->data['subtitle'] = 'Users';
        $this->data["subview"] = "settings/user_list";
        $this->data["pageurl"] = 'settings/users';
        $this->data["users"] = $this->Settings_model->get_all_users();
        $this->data['groups'] = $this->db->get('usergroups')->result();
        $this->data['campus'] = $this->db->get('campus')->result();
        $this->load->view('_layout_main', $this->data);
    }

    function ajaxNewUser()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->load->library('form_validation');
        #Start here
        $tables = $this->config->item('tables', 'ion_auth');
        $identity_column = $this->config->item('identity', 'ion_auth');
        $this->data['identity_column'] = $identity_column;
        // validate form input
        $this->form_validation->set_rules('name', 'Full Name', 'trim|required');
        if ($identity_column !== 'email') {
            $this->form_validation->set_rules('identity', 'Username', 'trim|required|is_unique[' . $tables['users'] . '.' . $identity_column . ']');
            $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[users.email]');
        } else {
            $this->form_validation->set_rules('email', $this->lang->line('create_user_validation_email_label'), 'trim|required|valid_email|is_unique[' . $tables['users'] . '.email]');
        }
        $this->form_validation->set_rules('mobile', 'Mobile', 'trim');
        $this->form_validation->set_rules('user_group', 'Group', 'trim|required');
        $this->form_validation->set_rules('password', $this->lang->line('create_user_validation_password_label'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[password_confirm]');
        $this->form_validation->set_rules('password_confirm', $this->lang->line('create_user_validation_password_confirm_label'), 'required');

        if ($this->form_validation->run() === TRUE) {
            $email = strtolower($this->input->post('email'));
            $identity = ($identity_column === 'email') ? $email : $this->input->post('identity');
            $password = $this->input->post('password');
            $campus = $this->input->post('campus');
            $additional_data = array(
                'name' => $this->input->post('name'),
                'user_group' => $this->input->post('user_group'),
                'mobile' => $this->input->post('mobile'),
                'campus' => $this->input->post('campus')
            );
        }
        if ($this->form_validation->run() === TRUE && $this->ion_auth->register($identity, $password, $email, $additional_data)) {
            $data = 'okay';
            echo json_encode($data);
        } else {
            // display the create user form
            // set the flash data error message if there is one
            $error = validation_errors();
            echo json_encode($error);
        }
        #End here
    }

    function ajaxClearLogin()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        //this function has been copied from auth/clear_login_attempt
        if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()) {
            redirect('auth', 'refresh');
        }
        $id = $this->input->post('user_id');
        if ($id == '') {
            $message = '<div class="alert alert-danger fade show" role="alert">User ID is empty</div>';
            $data = array('action' => 'error', 'message' => $message);
            echo json_encode($data);
        } else {
            $user = $this->ion_auth->user($id)->row();
            $identity = $user->username;
            $this->ion_auth->clear_login_attempts($identity);
            $message1 = '<div class="alert alert-success fade show" role="alert">';
            $message2 = '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
            $message3 = 'Login attempt cleared for user <b>' . $identity . '</b>';
            $message4 = '</div>';
            $message = $message1 . $message2 . $message3 . $message4;
            $data = array('action' => 'okay', 'message' => $message);
            echo json_encode($data);
        }
    }

    function ajaxDeactivateUser()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()) {
            redirect('auth', 'refresh');
        }
        $id = $this->input->post('user_id_deact');
        $id = (int)$id;
        if ($id == '') {
            $message = '<div class="alert alert-danger fade show" role="alert">User ID is empty</div>';
            $data = array('action' => 'error', 'message' => $message);
            echo json_encode($data);
        } elseif ($id == '1' || $id == '5') {
            $message = '<div class="alert alert-danger fade show" role="alert">Sorry, can\'t deactivate this user</div>';
            $data = array('action' => 'error', 'message' => $message);
            echo json_encode($data);
        } else {
            $user = $this->ion_auth->user($id)->row();
            $identity = $user->username;
            $this->ion_auth->deactivate($id);
            $message1 = '<div class="alert alert-success fade show" role="alert">';
            $message2 = '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
            $message3 = 'User <b>' . $identity . '</b> deactivated. Refresh page to see effect.';
            $message4 = '</div>';
            $message = $message1 . $message2 . $message3 . $message4;
            $data = array('action' => 'okay', 'message' => $message);
            echo json_encode($data);
        }
    }

    function ajaxActivateUser()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()) {
            redirect('auth', 'refresh');
        }
        $id = $this->input->post('user_id');
        $id = (int)$id;
        if ($id == '') {
            $message = '<div class="alert alert-danger fade show" role="alert">User ID is empty</div>';
            $data = array('action' => 'error', 'message' => $message);
            echo json_encode($data);
        } else {
            $user = $this->ion_auth->user($id)->row();
            $identity = $user->username;
            $this->ion_auth->activate($id);
            $message1 = '<div class="alert alert-success fade show" role="alert">';
            $message2 = '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
            $message3 = 'User <b>' . $identity . '</b> activated. Refresh page to see effect.';
            $message4 = '</div>';
            $message = $message1 . $message2 . $message3 . $message4;
            $data = array('action' => 'okay', 'message' => $message);
            echo json_encode($data);
        }
    }

    function ajaxEditUser()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()) {
            redirect('auth', 'refresh');
        }
        $user_id = $this->input->post('user_id');
        $session_user_id = $this->session->userdata('id');
        if ($user_id === '1') {
            $message = '<div class="alert alert-danger fade show" role="alert">Sorry, can\'t modify this user</div>';
            $data = array('action' => 'error', 'message' => $message);
            echo json_encode($data);
        } elseif ($session_user_id === $user_id) {
            $message = '<div class="alert alert-danger fade show" role="alert">Sorry, you can\'t modify your own account</div>';
            $data = array('action' => 'error', 'message' => $message);
            echo json_encode($data);
        } else {
            $this->form_validation->set_rules('user_name', 'Full Name', 'trim|required');
            $this->form_validation->set_rules('user_edit_group', 'Group', 'trim|required');
            if ($this->input->post('edit_password')) {
                $this->form_validation->set_rules('edit_password', $this->lang->line('edit_user_validation_password_label'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[edit_password_confirm]');
                $this->form_validation->set_rules('edit_password_confirm', $this->lang->line('edit_user_validation_password_confirm_label'), 'required');
            }
            // update the email if it was posted
            if ($this->input->post('user_email')) {
                if ($this->input->post('user_email_old') != $this->input->post('user_email')) {
                    $this->form_validation->set_rules('user_email', 'Email', 'trim|required|valid_email|is_unique[users.email]');
                }
            }
            if ($this->form_validation->run() === TRUE) {
                $data = array(
                    'name' => $this->input->post('user_name'),
                    'user_group' => $this->input->post('user_edit_group'),
                    'campus' => $this->input->post('user_campus'),
                    'mobile_no' => $this->input->post('user_mobile_no')
                );
                // update the password if it was posted
                if ($this->input->post('edit_password')) {
                    $data['password'] = $this->input->post('edit_password');
                }
                // update the email if it was posted
                if ($this->input->post('user_email')) {
                    $data['email'] = $this->input->post('user_email');
                }
                // check to see if we are updating the user
                if ($this->ion_auth->update($user_id, $data)) {
                    // send json success message
                    $message = '<div class="alert alert-success fade show" role="alert">User details updated</div>';
                    $data = array('action' => 'okay', 'message' => $message);
                    echo json_encode($data);
                } else {
                    // redirect them back to the admin page if admin, or to the base url if non admin
                    $message = '<div class="alert alert-danger fade show" role="alert">Oops! Internal error occured please contact system admin</div>';
                    $data = array('action' => 'error', 'message' => $message);
                    echo json_encode($data);
                }
            } else {
                $v_errors = validation_errors();
                $message = '<div class="alert alert-danger fade show" role="alert">' . $v_errors . '</div>';
                $data = array('action' => 'error', 'message' => $message);
                echo json_encode($data);
            }
        }
    }

    function usergroups()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Configurations';
        $this->data['subtitle'] = 'Users Groups';
        $this->data["subview"] = "components/crud";
        $this->data["pageurl"] = 'settings/usergroups';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_usergroups');
        $crud->where('eco_usergroups.id !=', '1');
        $crud->set_relation('group_dashboard', 'eco_dashboards', 'dashboard');
        $crud->required_fields('group_name', 'group_description');
        $crud->unset_texteditor('group_description');
        //$crud->add_action('Access', '', base_url('settings/accessRights/'),'fa fa-key');
        $crud->add_action('Access', '', '', 'fa fa-key', array($this, '_callback_group_access'));
        $crud->callback_after_insert(array($this, '_callback_after_insert_group'));
        $crud->callback_before_delete(array($this, '_callback_before_delete_group'));
        $crud->set_lang_string('delete_error_message', 'Failed to delete, some user(s) mapped to this group.');
        $crud->display_as('group_name', 'Group')
            ->display_as('group_description', 'Description')
            ->display_as('group_dashboard', 'Dashboard');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_read();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_group_access($primary_key, $row)
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        return site_url('settings/usergroupsaccess/') . $primary_key;
    }

    function _callback_after_insert_group($post_array, $primary_key)
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $query = $this->db->query("INSERT INTO eco_access_rights(group_id) VALUES($primary_key)");
        return true;
    }

    function _callback_before_delete_group($primary_key)
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        //Check if there is any user assign this group
        $users = $this->db->get_where('users', array('user_group' => $primary_key))->num_rows();
        if ($users >= 1) {
            return false;
        } else {
            $query = $this->db->query("DELETE FROM eco_access_rights WHERE group_id=$primary_key");
            return true;
        }
    }

    function usergroupsaccess($id = '')
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $group_name = $this->db->get_where('usergroups', array('id' => $id))->row()->group_name;
        $this->data['title'] = 'Groups Access Config';
        $this->data['subtitle'] = 'eCloud " ' . $group_name . ' " Access';
        $this->data["subview"] = "settings/group_access";
        $this->data["pageurl"] = 'settings/usergroups';
        $submitForm = $this->input->post('submitForm');
        if ($submitForm === 'permissions') {
            $this->form_validation->set_rules('group', 'Group', 'is_natural_no_zero');
            $data = array(
                'sub_view' => $this->input->post('sub_view'),
                'sub_add' => $this->input->post('sub_add'),
                'sub_edit' => $this->input->post('sub_edit'),
                'sub_delete' => $this->input->post('sub_delete'),
                'sub_topup' => $this->input->post('sub_topup'),
                'sub_sms' => $this->input->post('sub_sms'),
                'sub_mail' => $this->input->post('sub_mail'),
                'sub_statement' => $this->input->post('sub_statement'),
                'stat_view' => $this->input->post('stat_view'),
                'stat_add' => $this->input->post('stat_add'),
                'stat_edit' => $this->input->post('stat_edit'),
                'stat_delete' => $this->input->post('stat_delete'),
                'stat_sales' => $this->input->post('stat_sales'),
                'stat_statement' => $this->input->post('stat_statement'),
                'stat_start' => $this->input->post('stat_start'),
                'stat_shutdown' => $this->input->post('stat_shutdown'),
                'stat_restart' => $this->input->post('stat_restart'),
                'topup_view' => $this->input->post('topup_view'),
                'topup_add' => $this->input->post('topup_add'),
                'topup_edit' => $this->input->post('topup_edit'),
                'topup_delete' => $this->input->post('topup_delete'),
                'topup_pos' => $this->input->post('topup_pos'),
                'card_view' => $this->input->post('card_view'),
                'card_add' => $this->input->post('card_add'),
                'card_edit' => $this->input->post('card_edit'),
                'card_delete' => $this->input->post('card_delete'),
                'filter_maint_view' => $this->input->post('filter_maint_view'),
                'filter_maint_add' => $this->input->post('filter_maint_add'),
                'filter_maint_edit' => $this->input->post('filter_maint_edit'),
                'filter_maint_delete' => $this->input->post('filter_maint_delete'),
                'filter_view' => $this->input->post('filter_view'),
                'filter_add' => $this->input->post('filter_add'),
                'filter_edit' => $this->input->post('filter_edit'),
                'filter_delete' => $this->input->post('filter_delete'),
                'filter_maint_view' => $this->input->post('filter_maint_view'),
                'filter_maint_add' => $this->input->post('filter_maint_add'),
                'filter_maint_edit' => $this->input->post('filter_maint_edit'),
                'filter_maint_delete' => $this->input->post('filter_maint_delete'),
                'filter_maint_statement' => $this->input->post('filter_maint_statement'),
                'branch_view' => $this->input->post('branch_view'),
                'branch_add' => $this->input->post('branch_add'),
                'branch_edit' => $this->input->post('branch_edit'),
                'branch_delete' => $this->input->post('branch_delete'),
                'campus_view' => $this->input->post('campus_view'),
                'campus_add' => $this->input->post('campus_add'),
                'campus_edit' => $this->input->post('campus_edit'),
                'campus_delete' => $this->input->post('campus_delete'),
                'campus_invoice_add' => $this->input->post('campus_invoice_add'),
                'campus_invoice_pay' => $this->input->post('campus_invoice_pay'),
                'campus_invoice_delete' => $this->input->post('campus_invoice_delete')
            );
            if ($this->Settings_model->update_access_rights($id, $data)) {
                $this->session->set_flashdata('success', 'Group permission updated');
                redirect($_SERVER["HTTP_REFERER"]);
            } else {
                $this->session->set_flashdata('error', 'Failed to update group permission');
                redirect($_SERVER["HTTP_REFERER"]);
            }
        }
        $crud = new grocery_CRUD();
        $crud->set_table('eco_usergroupsaccess');
        $crud->where('eco_usergroupsaccess.group_name', $id);
        $crud->set_relation('menu_name', 'eco_menus', 'menu_name');
        $crud->columns('menu_name');
        $crud->required_fields('menu_name');
        $crud->add_fields('menu_name', 'group_name');
        $crud->field_type('group_name', 'hidden', $id);
        $crud->unset_read();
        $crud->unset_edit();
        $crud->unset_export();
        $crud->unset_print();
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->data['group_name'] = $group_name;
        $this->data['group_id'] = $id;
        $this->data['p'] = $this->Settings_model->get_access_by_id($id);
        $this->load->view('_layout_main', $this->data);
    }

    function userGroupNotificationAccess($id = '', $name = '')
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $group_name = $this->db->get_where('usergroups', array('id' => $id))->row()->group_name;
        $this->data['title'] = 'Users Groups Notification Access Rights';
        $this->data['subtitle'] = 'eCloud " ' . $group_name . ' " Access Rights';
        $this->data["subview"] = "components/page_content";
        $this->data["pageurl"] = 'settings/usergroups';

        $this->load->helper('xcrud');
        $xcrud = xcrud_get_instance();
        $xcrud->table('notification_access');
        $xcrud->relation('user_group', 'usergroups', 'id', 'group_name');
        $xcrud->relation('notification_id', 'eco_notifications', 'id', 'name');
        $xcrud->where('user_group =', $id);
        $xcrud->pass_var('user_group', $id);
        $xcrud->columns('notification_id', false);
        $xcrud->fields('notification_id', false);
        $xcrud->unset_title();
        $xcrud->unset_view();
        $xcrud->unset_edit();
        $this->data['content'] = $xcrud->render();

        $this->load->view('_layout_main', $this->data);
    }

    function subCategories()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Subscribers';
        $this->data['subtitle'] = 'Categories';
        $this->data["subview"] = 'components/crud';
        $this->data['pageurl'] = 'settings/subCategories';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_sub_category');
        $crud->unset_texteditor('description');
        $crud->required_fields('category', 'description');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->callback_before_delete(array($this, '_validate_subgroup_before_delete'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _validate_subgroup_before_delete($primary_key)
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $sub_category = $this->db->get_where('sub_category', array('id' => $primary_key))->row();
        $category = $sub_category->category;
        $rows = $this->db->get_where('subscribers', array('category' => $category))->num_rows();
        if ($rows >= 1) {
            //$this->session->set_flashdata('');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function menutitles()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Configurations';
        $this->data['subtitle'] = 'Menu Titles';
        $this->data["subview"] = 'components/crud';
        $this->data["pageurl"] = 'settings/menutitles';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_menutitles');
        $crud->required_fields('title_name', 'title_icon');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function menus()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Configurations';
        $this->data['subtitle'] = 'Menus';
        $this->data["subview"] = 'components/crud';
        $this->data["pageurl"] = 'settings/menus';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_menus');
        $crud->set_relation('menu_title', 'eco_menutitles', 'title_name');
        $crud->columns('menu_name', 'page_link', 'menu_title', 'sort');
        $crud->fields('menu_name', 'page_link', 'menu_title', 'sort');
        $crud->required_fields('menu_name', 'page_link', 'menu_title');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function userprofile()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Users';
        $this->data['subtitle'] = 'Users List';
        $this->data["subview"] = "components/page_content";
        $this->data["pageurl"] = "settings/userprofile";

        $this->load->helper('xcrud');
        $xcrud = xcrud_get_instance();
        $xcrud->table('users');
        $xcrud->columns('photo, name, mobile_no, email, username, user_group');
        $xcrud->relation('user_group', 'eco_usergroups', 'id', 'group_name');
        $xcrud->where('user_group !=', 5);
        $xcrud->change_type('photo', 'image', '', array('manual_crop' => true, 'width' => 150, 'height' => 150, 'ratio' => 1));
        $xcrud->change_type('password', 'password', 'md5', array('maxlength' => 50, 'placeholder' => 'Enter Password'));
        $xcrud->unset_title();

        //  $xcrud->condition('id','!=','0','disabled_on_edit','user_group');

        $xcrud->fields('name, username, user_group, mobile_no, email, password, photo', false);
        $xcrud->pass_var('updated', date('Y-m-d H:i:s'));

        $xcrud->where('user_group =', 1);
        $xcrud->hide_button('save_new,save_return,return');
        $xcrud->set_lang('save_edit', 'Update Profile');
        $this->data['content'] = $xcrud->render('edit', $this->session->userdata("id"));

        $this->load->view('_layout_main', $this->data);
    }

    function audittrails()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Audit Trails';
        $this->data['subtitle'] = 'eCloud Audit Trails';
        $this->data["subview"] = "components/page_content";
        $this->data["pageurl"] = "settings/audittrails";

        $this->load->helper('xcrud');
        $xcrud = xcrud_get_instance();
        $xcrud->table('pn_audittrails');

        $xcrud->relation('user', 'pn_users', 'id', 'name');
        $xcrud->order_by('pn_audittrails.time', 'desc');

        $xcrud->unset_title();
        $xcrud->unset_view();
        $xcrud->unset_add();

        $xcrud->before_list('afterlist', 'customfunctions.php');
        $xcrud->after_insert('afterinsert', 'customfunctions.php');
        $xcrud->after_update('afterupdate', 'customfunctions.php');
        $xcrud->after_remove('afterdelete', 'customfunctions.php');
        $xcrud->label('ip', 'IP Address');
        $this->data['content'] = $xcrud->render();

        $this->load->view('_layout_main', $this->data);
    }

    function notifications()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Notification';
        $this->data['subtitle'] = 'eCloud notifications';
        $this->data["subview"] = "components/page_content";
        $this->data["pageurl"] = "settings/notifications";

        $this->load->helper('xcrud');
        $xcrud = xcrud_get_instance();
        $xcrud->table('notifications');

        $xcrud->unset_title();
        $xcrud->unset_view();

        $this->data['content'] = $xcrud->render();

        $this->load->view('_layout_main', $this->data);
    }

    function dashboards()
    {
        /*if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }*/
        $this->data['title'] = 'Dashboard';
        $this->data['subtitle'] = 'eCloud dashboard';
        $this->data["subview"] = "components/crud";
        $this->data["pageurl"] = "2feb80ea5126598fd8dfdb428db22ec8";
        $crud = new grocery_CRUD();
        $crud->set_table('eco_dashboards');
        if ($this->session->userdata('usertypeid') == '17') {
            $crud->where('id', 7);
        }
        $crud->columns('dashboard', 'url_link');
        $crud->add_fields('dashboard', 'url_link');
        $crud->edit_fields('dashboard', 'url_link');
        $crud->required_fields('dashboard', 'url_link');
        $crud->unset_clone();
        $crud->unset_read();
        $crud->unset_delete();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->add_action('View', '', '', 'fa fa-search', array($this, '_callback_view_dashboard'));
        $crud->set_crud_url_path(site_url('settings/dashboards'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_view_dashboard($primary_key, $row)
    {
        if ($this->session->userdata('usertypeid') == 1 || $this->session->userdata('usertypeid') == 17) {
            $dash_url = $row->url_link;
            return site_url() . $dash_url . '/' . $primary_key;
        } else {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }

    }

    function departments()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Departments';
        $this->data['subtitle'] = 'eCloud Departments List';
        $this->data["subview"] = "components/page_content";
        $this->data["pageurl"] = "settings/departments";

        $this->load->helper('xcrud');
        $xcrud = xcrud_get_instance();
        $xcrud->table('department');
        $xcrud->unset_title();
        $xcrud->unset_view();

        $this->data['content'] = $xcrud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function branches()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Branches';
        $this->data['subtitle'] = 'eCloud Branch List';
        $this->data["subview"] = "components/page_content";
        $this->data["pageurl"] = "settings/branches";

        $this->load->helper('xcrud');
        $xcrud = xcrud_get_instance();
        $xcrud->table('branches');
        $xcrud->unset_title();
        $xcrud->unset_view();

        $this->data['content'] = $xcrud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function street()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Configuration';
        $this->data['subtitle'] = 'Streets';
        $this->data["subview"] = 'components/crud';
        $this->data["pageurl"] = 'settings/street'; //settings/street
        $crud = new grocery_CRUD();
        $crud->set_table('eco_streets');
        $crud->required_fields('street_name', 'district', 'region');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function subStatus()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Configuration';
        $this->data['subtitle'] = 'Status';
        $this->data["subview"] = 'components/crud';
        $this->data["pageurl"] = 'settings/subStatus'; //settings/subStatus
        $crud = new grocery_CRUD();
        $crud->set_table('eco_sub_inactive_status');
        $crud->required_fields('name', 'record_stat');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function accessRights($id = '')
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $group_name = $this->Settings_model->get_group_by_id($id);
        $this->data['title'] = 'Configuration';
        $this->data['subtitle'] = 'Access Rights';
        $this->data["subview"] = "settings/access_rights";
        $this->data["pageurl"] = "settings/usergroups";

        $this->load->library('form_validation');
        $this->form_validation->set_rules('group', 'Group', 'is_natural_no_zero');
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            //echo 'imefika'; exit();
            $data = array(
                'sub_view' => $this->input->post('sub_view'),
                'sub_add' => $this->input->post('sub_add'),
                'sub_edit' => $this->input->post('sub_edit'),
                'sub_delete' => $this->input->post('sub_delete'),
                'sub_topup' => $this->input->post('sub_topup'),
                'sub_sms' => $this->input->post('sub_sms'),
                'sub_mail' => $this->input->post('sub_mail'),
                'sub_statement' => $this->input->post('sub_statement'),
                'stat_view' => $this->input->post('stat_view'),
                'stat_add' => $this->input->post('stat_add'),
                'stat_edit' => $this->input->post('stat_edit'),
                'stat_delete' => $this->input->post('stat_delete'),
                'stat_sales' => $this->input->post('stat_sales'),
                'stat_statement' => $this->input->post('stat_statement'),
                'stat_start' => $this->input->post('stat_start'),
                'stat_shutdown' => $this->input->post('stat_shutdown'),
                'stat_restart' => $this->input->post('stat_restart'),
                'topup_view' => $this->input->post('topup_view'),
                'topup_add' => $this->input->post('topup_add'),
                'topup_edit' => $this->input->post('topup_edit'),
                'topup_delete' => $this->input->post('topup_delete'),
                'topup_pos' => $this->input->post('topup_pos'),
                'card_view' => $this->input->post('card_view'),
                'card_add' => $this->input->post('card_add'),
                'card_edit' => $this->input->post('card_edit'),
                'card_delete' => $this->input->post('card_delete'),
                'filter_maint_view' => $this->input->post('filter_maint_view'),
                'filter_maint_add' => $this->input->post('filter_maint_add'),
                'filter_maint_edit' => $this->input->post('filter_maint_edit'),
                'filter_maint_delete' => $this->input->post('filter_maint_delete'),
                'filter_view' => $this->input->post('filter_view'),
                'filter_add' => $this->input->post('filter_add'),
                'filter_edit' => $this->input->post('filter_edit'),
                'filter_delete' => $this->input->post('filter_delete'),
                'filter_maint_view' => $this->input->post('filter_maint_view'),
                'filter_maint_add' => $this->input->post('filter_maint_add'),
                'filter_maint_edit' => $this->input->post('filter_maint_edit'),
                'filter_maint_delete' => $this->input->post('filter_maint_delete'),
                'filter_maint_statement' => $this->input->post('filter_maint_statement'),
                'branch_view' => $this->input->post('branch_view'),
                'branch_add' => $this->input->post('branch_add'),
                'branch_edit' => $this->input->post('branch_edit'),
                'branch_delete' => $this->input->post('branch_delete'),
                'campus_view' => $this->input->post('campus_view'),
                'campus_add' => $this->input->post('campus_add'),
                'campus_edit' => $this->input->post('campus_edit'),
                'campus_delete' => $this->input->post('campus_delete'),
                'campus_invoice_add' => $this->input->post('campus_invoice_add'),
                'campus_invoice_pay' => $this->input->post('campus_invoice_pay'),
                'campus_invoice_delete' => $this->input->post('campus_invoice_delete')
            );
            if ($this->Settings_model->update_access_rights($id, $data)) {
                $this->session->set_flashdata('success', 'Group permission updated');
                redirect($_SERVER["HTTP_REFERER"]);
            }
        }

        $this->data['group_name'] = $group_name;
        $this->data['group_id'] = $id;
        $this->data['p'] = $this->Settings_model->get_access_by_id($id);
        $this->load->view('_layout_main', $this->data);
    }

    function updateAccessManually()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $data = array(
            'sub_view' => '1', 'sub_add' => '1', 'sub_edit' => '1', 'sub_delete' => '1', 'sub_topup' => '1', 'sub_statement' => '1',
            'sub_sms' => '1', 'sub_mail' => '1', 'stat_view' => '1', 'stat_add' => '1', 'stat_edit' => '1', 'stat_delete' => '1', 'stat_sales' => '1',
            'stat_statement' => '1', 'stat_start' => '1', 'stat_shutdown' => '1', 'stat_restart' => '1', 'topup_view' => '1', 'topup_add' => '1',
            'topup_edit' => '1', 'topup_delete' => '1', 'topup_pos' => '1', 'filter_maint_view' => '1', 'filter_maint_add' => '1',
            'filter_maint_edit' => '1', 'filter_maint_delete' => '1', 'filter_view' => '1', 'filter_add' => '1', 'filter_edit' => '1',
            'filter_delete' => '1', 'filter_maint_view' => '1', 'filter_maint_add' => '1', 'filter_maint_edit' => '1', 'filter_maint_delete' => '1',
            'filter_maint_statement' => '1', 'branch_view' => '1', 'branch_add' => '1', 'branch_edit' => '1', 'branch_delete' => '1',
            'campus_view' => '1', 'campus_add' => '1', 'campus_edit' => '1', 'campus_delete' => '1',
            'card_view' => '1', 'card_add' => '1', 'card_edit' => '1', 'card_delete' => '1');
        //$this->db->where('id','1'); Admin
        $this->db->update('access_rights', $data);
        echo 'Done';
        exit();
    }

    function changePassword()
    {
        $this->data['title'] = System_Name;
        $this->data['subtitle'] = 'User Profile Management';
        $this->data["subview"] = "general/change_password";
        $this->data["pageurl"] = "settings/users";
        $user_id = $this->session->userdata('id');
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('opass', 'Old Password', 'required');
            $this->form_validation->set_rules('pass', 'New Password', 'required|min_length[5]');
            $this->form_validation->set_rules('cpass', 'Confirm Password', 'required|matches[pass]|min_length[5]');
            $old_pass_form = md5($this->input->post('opass'));
            $old_pass_db = $this->db->get_where('users', array('id' => $user_id))->row()->password;
            if ($old_pass_form != $old_pass_db) {
                $this->session->set_flashdata('old_pass_incorrect', 'Old password is wrong');
                redirect($_SERVER['HTTP_REFERER']);
            }
            if ($this->form_validation->run() == true) {
                $new_pass = md5($this->input->post('pass'));
                $data = array('password' => $new_pass);
                $this->db->set($data);
                $this->db->where('id', $user_id);
                $this->db->update('users');
                redirect(base_url("home/logout"));
            }
        }

        $this->data["profile"] = $this->General_model->get_user_by_id($user_id);
        $this->load->view('_layout_main', $this->data);
    }

    function utilityConfig()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Settings';
        $this->data['subtitle'] = 'Utility Configuration';
        $this->data["subview"] = "settings/utility_config";
        $this->data["pageurl"] = 'settings/utilityConfig';

        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('utility_type', 'Utility Type', 'required');
            $this->form_validation->set_rules('campus_code', 'Campus', 'required');
            $this->form_validation->set_rules('unit_price', 'Unit Price', 'required|numeric');
            if ($this->form_validation->run() == true) {
                $campus_code = $this->input->post('campus_code');
                $utility_type = $this->input->post('utility_type');
                $eff_date = date('Y-m-d', strtotime($this->input->post('eff_date')));
                $data = array(
                    'utility_type' => $utility_type,
                    'campus_code' => $campus_code,
                    'unit_price' => $this->input->post('unit_price'),
                    'effective_date' => $eff_date,
                    'maker_id' => $this->session->userdata('username')
                );
                $this->db->insert('utilities_config', $data);
                $insert_id = $this->db->insert_id();
                $this->db->where(array('id !=' => $insert_id, 'campus_code' => $campus_code, 'utility_type' => $utility_type));
                $this->db->update('utilities_config', array('status' => 'Inactive'));
                $this->session->set_flashdata('success', 'Record created');
                redirect('settings/utilityConfig');
            }
        }

        $this->data["utilities"] = $this->Settings_model->get_active_utilities_config();
        $this->data["utility_types"] = $this->Settings_model->get_utility_types();
        $this->data["campus"] = $this->Campus_model->get_all_campus();
        $this->load->view('_layout_main', $this->data);
    }

    function royaltyConfig()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Royalty';
        $this->data['subtitle'] = 'Config';
        $this->data["subview"] = 'components/crud';
        $this->data["pageurl"] = '27519a766694c2cd37fa6b343e640c23'; //settings/royaltyConfig
        $crud = new grocery_CRUD();
        $crud->set_table('eco_campus_royalty');
        $crud->order_by('status', 'ASC');
        $crud->set_relation('campus_id', 'eco_campus', 'campus_name');
        $crud->columns('campus_id', 'royalty', 'registered_by', 'status', 'date_registered');
        $crud->add_fields('campus_id', 'royalty', 'registered_by');
        $crud->field_type('registered_by', 'hidden', $this->session->userdata('username'));
        $crud->required_fields('campus_id', 'royalty');
        $crud->set_rules('royalty', 'Royalty', 'required|numeric|greater_than_equal_to[0]|less_than_equal_to[100]');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->unset_edit();
        $crud->unset_delete();
        $crud->callback_column('status', array($this, '_callback_status'));
        $crud->callback_column('date_registered', array($this, '_callback_format_datetime'));
        $crud->set_crud_url_path(site_url('settings/royaltyConfig'));
        $crud->callback_after_insert(array($this, '_update_campus_royalty'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _update_campus_royalty($post_array, $primary_key)
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $data = array('status' => 'Inactive');
        $this->db->where('id !=', $primary_key);
        $this->db->where('campus_id', $post_array['campus_id']);
        $this->db->update('campus_royalty', $data);
        return true;
    }

    function subscriptionPlan()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Settings';
        $this->data['subtitle'] = 'Subscription Plans';
        $this->data["subview"] = 'components/crud';
        $this->data["pageurl"] = '2119d6e53554d6165666faed924b84f3'; //settings/subscriptionPlan
        $crud = new grocery_CRUD();
        $crud->set_table('eco_campus_subscription_fee');
        $crud->order_by('status', 'ASC');
        //$crud->order_by('date_registered','DESC');
        $crud->set_relation('campus_id', 'eco_campus', 'campus_name');
        $crud->columns('campus_id', 'fee_amount', 'maker_id', 'status', 'date_registered');
        $crud->add_fields('campus_id', 'fee_amount', 'maker_id');
        $crud->field_type('maker_id', 'hidden', $this->session->userdata('username'));
        $crud->required_fields('campus_id', 'fee_amount');
        $crud->set_rules('fee_amount', 'Fee Amount', 'required|numeric|greater_than_equal_to[0]');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->unset_edit();
        $crud->unset_delete();
        $crud->callback_column('status', array($this, '_callback_status'));
        $crud->callback_column('date_registered', array($this, '_callback_format_datetime'));
        $crud->callback_column('fee_amount', array($this, '_callback_format_amount'));
        $crud->set_crud_url_path(site_url('settings/subscriptionPlan'));
        $crud->callback_after_insert(array($this, '_update_campus_sub_fee'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _update_campus_sub_fee($post_array, $primary_key)
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $data = array('status' => 'Inactive');
        $this->db->where('id !=', $primary_key);
        $this->db->where('campus_id', $post_array['campus_id']);
        $this->db->update('campus_subscription_fee', $data);
        return true;
    }

    function waterPrice()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Settings';
        $this->data['subtitle'] = 'Water Price';
        $this->data["subview"] = 'components/crud';
        $this->data["pageurl"] = 'settings/waterPrice'; //settings/waterPrice
        $crud = new grocery_CRUD();
        $crud->set_table('eco_water_price');
        $crud->order_by('status', 'ASC');
        $crud->set_relation('campus', 'eco_campus', 'campus_name');
        $crud->columns('campus', 'price_per_liter', 'maker_id', 'status', 'date_registered');
        $crud->add_fields(array('campus', 'price_per_liter', 'maker_id'));
        $crud->required_fields('campus', 'price_per_liter');
        $crud->field_type('maker_id', 'hidden', $this->session->userdata('username'));
        $crud->callback_column('status', array($this, '_callback_status'));
        $crud->callback_column('date_registered', array($this, '_callback_format_datetime'));
        $crud->callback_column('date_updated', array($this, '_callback_format_datetime'));
        $crud->callback_column('price_per_liter', array($this, '_callback_format_amount'));
        $crud->set_rules('price_per_liter', 'Price per liter', 'required|numeric|greater_than_equal_to[50]');
        $crud->unset_edit();
        $crud->unset_delete();
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->callback_after_insert(array($this, '_update_waterprice_table'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _update_waterprice_table($post_array, $primary_key)
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $data = array('status' => 'Inactive');
        $this->db->where('id !=', $primary_key);
        $this->db->where('campus', $post_array['campus']);
        $this->db->update('water_price', $data);
        return true;
    }

    function upload()
    {
        //echo date('Y-m-d', strtotime('3-Feb-21')); exit();
        $this->data['title'] = 'Settings';
        $this->data['subtitle'] = 'Table Upload';
        $this->data["subview"] = 'settings/table_uploads';
        $this->data["pageurl"] = '809e41f3c92e39b8a833737c57e29abf';
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->load->library('form_validation');
            if (empty($_FILES['file']['name'])) {
                $this->form_validation->set_rules('file', 'Choose File', 'required');
            }
            $this->form_validation->set_rules('category', 'Category', 'required');
        }
        if ($this->form_validation->run() == TRUE) {
            ini_set("memory_limit", "256M");
            if ($this->input->post('category') === 'subscribers') {
                if (!empty($_FILES['file']['name'])) {
                    //$this->uploadSubscribers();
                    $data = array();
                    // get file extension
                    $extension = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);
                    if ($extension == 'csv') {
                        $reader = new \PhpOffice\PhpSpreadsheet\Reader\Csv();
                    } elseif ($extension == 'xlsx') {
                        $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
                    } else {
                        $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
                    }
                    // file path
                    $spreadsheet = $reader->load($_FILES['file']['tmp_name']);
                    $allDataInSheet = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);
                    // array Count
                    $arrayCount = count($allDataInSheet);
                    $flag = 0;
                    $createArray = array('Mobile', 'Name_CAPS', 'Card_Number', 'Gender1', 'Email', 'Registration_Date', 'Category1', 'Campus1', 'Registration1', 'Topup', 'POS', 'Topup_Category', 'Maker');
                    $makeArray = array(
                        'Mobile' => 'Mobile',
                        'Name_CAPS' => 'Name_CAPS',
                        'Card_Number' => 'Card_Number',
                        'Gender1' => 'Gender1',
                        'Email' => 'Email',
                        'Registration_Date' => 'Registration_Date',
                        'Category1' => 'Category1',
                        'Campus1' => 'Campus1',
                        'Registration1' => 'Registration1',
                        'Topup' => 'Topup',
                        'POS' => 'POS',
                        'Topup_Category' => 'Topup_Category',
                        'Maker' => 'Maker'
                    );
                    $SheetDataKey = array();
                    foreach ($allDataInSheet as $dataInSheet) {
                        foreach ($dataInSheet as $key => $value) {
                            if (in_array(trim($value), $createArray)) {
                                $value = preg_replace('/\s+/', '', $value);
                                $SheetDataKey[trim($value)] = $key;
                            }
                        }
                    }
                    $dataDiff = array_diff_key($makeArray, $SheetDataKey);
                    if (empty($dataDiff)) {
                        $flag = 1;
                    }
                    // match excel sheet column
                    if ($flag == 1) {
                        for ($i = 2; $i <= $arrayCount; $i++) {
                            $mobile = $SheetDataKey['Mobile'];
                            $sub_name = $SheetDataKey['Name_CAPS'];
                            $card_no = $SheetDataKey['Card_Number'];
                            $gender = $SheetDataKey['Gender1'];
                            $email = $SheetDataKey['Email'];
                            $reg_date = $SheetDataKey['Registration_Date'];
                            $category = $SheetDataKey['Category1'];
                            $campus = $SheetDataKey['Campus1'];
                            $reg_plan = $SheetDataKey['Registration1'];
                            $top_up = $SheetDataKey['Topup'];
                            $pos = $SheetDataKey['POS'];
                            $topup_cat = $SheetDataKey['Topup_Category'];
                            $reg_by = $SheetDataKey['Maker'];

                            $mobile = filter_var(trim($allDataInSheet[$i][$mobile]), FILTER_SANITIZE_NUMBER_INT);
                            $sub_name = filter_var(trim($allDataInSheet[$i][$sub_name]), FILTER_SANITIZE_STRING);
                            $card_no = filter_var(trim($allDataInSheet[$i][$card_no]), FILTER_SANITIZE_STRING);
                            $gender = filter_var(trim($allDataInSheet[$i][$gender]), FILTER_SANITIZE_STRING);
                            $email = filter_var(trim($allDataInSheet[$i][$email]), FILTER_SANITIZE_EMAIL);
                            $reg_date = filter_var(trim($allDataInSheet[$i][$reg_date]), FILTER_SANITIZE_STRING);
                            $category = filter_var(trim($allDataInSheet[$i][$category]), FILTER_SANITIZE_STRING);
                            $campus = filter_var(trim($allDataInSheet[$i][$campus]), FILTER_SANITIZE_STRING);
                            $reg_plan = filter_var(trim($allDataInSheet[$i][$reg_plan]), FILTER_SANITIZE_STRING);
                            $top_up = filter_var(trim($allDataInSheet[$i][$top_up]), FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
                            $pos = filter_var(trim($allDataInSheet[$i][$pos]), FILTER_SANITIZE_STRING);
                            $topup_cat = filter_var(trim($allDataInSheet[$i][$topup_cat]), FILTER_SANITIZE_STRING);
                            $reg_by = filter_var(trim($allDataInSheet[$i][$reg_by]), FILTER_SANITIZE_STRING);

                            $fetchData[] = array(
                                'mobile' => $mobile,
                                'sub_name' => $sub_name,
                                'card_no' => $card_no,
                                'gender' => $gender,
                                'email' => $email,
                                'reg_date' => $reg_date,
                                'category' => $category,
                                'campus' => $campus,
                                'reg_plan' => $reg_plan,
                                'top_up' => $top_up,
                                'pos' => $pos,
                                'topup_cat' => $topup_cat,
                                'reg_by' => $reg_by
                            );
                        }
                        //$data['dataInfo'] = $fetchData;
                        //$this->site->setBatchImport($fetchData);
                        //$this->site->importData();
                        $this->db->truncate('subscribers_dump');
                        $this->db->insert_batch('subscribers_dump', $fetchData);
                        $this->session->set_flashdata('success', 'File upload successfully');
                        redirect('809e41f3c92e39b8a833737c57e29abf');
                    } else {
                        $this->session->set_flashdata('error', 'Please import correct file, did not match excel sheet column');
                        redirect('809e41f3c92e39b8a833737c57e29abf');
                    }
                } else {
                    $this->session->set_flashdata('error', 'There is error, please contact system admin');
                    redirect('809e41f3c92e39b8a833737c57e29abf');
                }
            } elseif ($this->input->post('category') === 'topups') {
                if (!empty($_FILES['file']['name'])) {
                    $data = array();
                    // get file extension
                    $extension = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);
                    if ($extension == 'csv') {
                        $reader = new \PhpOffice\PhpSpreadsheet\Reader\Csv();
                    } elseif ($extension == 'xlsx') {
                        $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
                    } else {
                        $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
                    }
                    // file path
                    $spreadsheet = $reader->load($_FILES['file']['tmp_name']);
                    $allDataInSheet = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);
                    // array Count
                    $arrayCount = count($allDataInSheet);
                    $flag = 0;
                    $createArray = array('Card_Number', 'Amount', 'POS', 'Trn_Date', 'Topup_Cat');
                    $makeArray = array(
                        'Card_Number' => 'Card_Number',
                        'Amount' => 'Amount',
                        'POS' => 'POS',
                        'Trn_Date' => 'Trn_Date',
                        'Topup_Cat' => 'Topup_Cat'
                    );
                    $SheetDataKey = array();
                    foreach ($allDataInSheet as $dataInSheet) {
                        foreach ($dataInSheet as $key => $value) {
                            if (in_array(trim($value), $createArray)) {
                                $value = preg_replace('/\s+/', '', $value);
                                $SheetDataKey[trim($value)] = $key;
                            }
                        }
                    }
                    $dataDiff = array_diff_key($makeArray, $SheetDataKey);
                    if (empty($dataDiff)) {
                        $flag = 1;
                    }
                    // match excel sheet column
                    if ($flag == 1) {
                        for ($i = 2; $i <= $arrayCount; $i++) {
                            $card_no = $SheetDataKey['Card_Number'];
                            $amount = $SheetDataKey['Amount'];
                            $pos = $SheetDataKey['POS'];
                            $trn_date = $SheetDataKey['Trn_Date'];
                            $topup_Cat = $SheetDataKey['Topup_Cat'];

                            $card_no = filter_var(trim($allDataInSheet[$i][$card_no]), FILTER_SANITIZE_STRING);
                            $amount = filter_var(trim($allDataInSheet[$i][$amount]), FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
                            $pos = filter_var(trim($allDataInSheet[$i][$pos]), FILTER_SANITIZE_STRING);
                            $trn_date = filter_var(trim($allDataInSheet[$i][$trn_date]), FILTER_SANITIZE_STRING);
                            $topup_Cat = filter_var(trim($allDataInSheet[$i][$topup_Cat]), FILTER_SANITIZE_STRING);

                            $fetchData[] = array(
                                'card_no' => $card_no,
                                'amount' => $amount,
                                'pos' => $pos,
                                'trn_date' => $trn_date,
                                'category' => $topup_Cat
                            );
                        }
                        $this->db->truncate('card_topup_dump');
                        $this->db->insert_batch('card_topup_dump', $fetchData);
                        $this->session->set_flashdata('success', 'File upload successfully');
                        redirect('809e41f3c92e39b8a833737c57e29abf');
                    } else {
                        $this->session->set_flashdata('error', 'Please import correct Topup file, did not match excel sheet column');
                        redirect('809e41f3c92e39b8a833737c57e29abf');
                    }
                } else {
                    $this->session->set_flashdata('error', 'There is error, please contact system admin');
                    redirect('809e41f3c92e39b8a833737c57e29abf');
                }
            } else {
                $this->session->set_flashdata('error', 'There was an error, please contact system admin');
                redirect('809e41f3c92e39b8a833737c57e29abf');
            }
        }
        // form validation end	
        $this->data['subscribers'] = $this->db->get('subscribers_dump')->result();
        $this->data['topup'] = $this->db->get('card_topup_dump')->result();
        $this->load->view('_layout_main', $this->data);
    }

    function finishUploadSubscribers()
    {
        $rows = $this->db->get_where('subscribers_dump', array('upload_status' => 'Pending'))->num_rows();
        if ($rows <= 0) {
            $this->session->set_flashdata('error', 'There is no pending rows to upload, please upload new file');
            redirect('809e41f3c92e39b8a833737c57e29abf');
        }
        $dump = $this->db->get('subscribers_dump');
        if ($dump->num_rows() == 0) {
            $this->session->set_flashdata('error', 'There is no pending rows to upload, please upload new file');
            redirect('809e41f3c92e39b8a833737c57e29abf');
        } else {
            $dump = $dump->result();
            foreach ($dump as $s) {
                $error = '';
                $d_id = $s->id;
                $d_mobile = $s->mobile;
                $d_sub_name = $s->sub_name;
                $d_card_no = $s->card_no;
                $d_gender = $s->gender;
                $d_email = $s->email;
                $d_reg_date = $s->reg_date;
                $d_category = $s->category;
                $d_campus = $s->campus;
                $d_reg_plan = $s->reg_plan;
                $d_sub_fee_amt = $s->sub_fee_amt;
                $d_top_up = $s->top_up;
                $d_pos = $s->pos;
                $d_topup_cat = $s->topup_cat;
                $sub_account = date('ymdHi');
                $subfee = $this->Subscriber_model->get_campus_subscription_plan($d_campus);
                if ($subfee) {
                    $fee = $subfee->fee_amount;
                } else {
                    $fee = 3000;
                }
                if ($d_reg_plan == 'Free') {
                    $d_sub_fee_amt = 0;
                    $free_promo_code = 'PROMO';
                } elseif ($d_reg_plan == 'Fee') {
                    $d_sub_fee_amt = $fee;
                    $free_promo_code = '';
                }
                //Initialize card
                if ($d_card_no <= 0) {
                    $error = $error . ' | Card number cannot be zero, less than zero or character';
                } elseif (is_numeric($d_card_no) != 1) {
                    $error = $error . ' | Card number cannot be character';
                } else {
                    if ($d_card_no > 0 && $d_card_no < 10) {
                        $d_card_no = 'IC-00000' . $d_card_no;
                    } elseif ($d_card_no >= 10 && $d_card_no < 100) {
                        $d_card_no = 'IC-0000' . $d_card_no;
                    } elseif ($d_card_no >= 100 && $d_card_no < 1000) {
                        $d_card_no = 'IC-000' . $d_card_no;
                    } elseif ($d_card_no >= 1000 && $d_card_no < 10000) {
                        $d_card_no = 'IC-00' . $d_card_no;
                    } elseif ($d_card_no >= 10000 && $d_card_no < 100000) {
                        $d_card_no = 'IC-0' . $d_card_no;
                    } else {
                        $d_card_no = 'IC-' . $d_card_no;
                    }
                    //Check card no
                    $card = $this->db->get_where('cards', array('card_no' => $d_card_no));
                    $sub_card = $this->db->get_where('subscribers', array('card_no' => $d_card_no));
                    if ($card->num_rows() == 0) {
                        //card is not in a list of registered cards
                        $error = $error . ' | Card number is not in a list of cards';
                    } elseif ($sub_card->num_rows() != 0) {
                        $sub_card = $sub_card->row();
                        $error = $error . ' | Card number occupied by ' . $sub_card->sub_name . ', Mobile ' . $sub_card->mobile;
                    }
                }
                //Check if mobile is numbers and not text
                if (is_numeric($d_mobile) != 1) {
                    $error = $error . ' | Invalid mobile number';
                }
                //Check for gender
                if (strtoupper($d_gender) == 'M' || strtoupper($d_gender) == 'F') {
                    //do nothing gender is correct
                } else {
                    $error = $error . ' | Invalid gender';
                }
                //validate email
                if ($d_email != '') {
                    if (!filter_var($d_email, FILTER_VALIDATE_EMAIL)) {
                        $error = $error . ' | Invalid email format';
                    }
                }
                //Validate registartion date
                if ($d_reg_date < '2016-01-01') {
                    $error = $error . ' | Invalid registartion date';
                }
                //Validate category
                $num_category = $this->db->get_where('sub_category', array('category' => $d_category))->num_rows();
                if ($num_category != 1) {
                    $error = $error . ' | Invalid sub category';
                }
                //validate campus
                $num_campus = $this->db->get_where('campus', array('campus_code' => $d_campus))->num_rows();
                if ($num_campus != 1) {
                    $error = $error . ' | Invalid campus';
                }
                //Validate registration plan
                if ($d_reg_plan == 'Fee' || $d_reg_plan == 'Free') {
                    //do nothing registation plan is correct
                } else {
                    $error = $error . ' | Invalid registartion plan';
                }
                //validate topup and POS
                if ($d_top_up != '') {
                    if (is_numeric($d_top_up) != 1) {
                        $error = $error . ' | Invalid topup amount';
                    }
                    $num_pos = $this->db->get_where('topup_pos', array('pos_name' => $d_pos))->num_rows();
                    if ($num_pos != 1) {
                        $error = $error . ' | Invalid POS';
                    }
                }
                //validate recharge category
                $num_topup_cat = $this->db->get_where('topup_category', array('category' => $d_topup_cat))->num_rows();
                if ($num_topup_cat != 1) {
                    $error = $error . ' | Invalid Topup category';
                }

                if ($error != '') {
                    $this->db->where('id', $d_id);
                    $this->db->update('subscribers_dump', array('error' => $error, 'upload_status' => 'Failed'));
                } else {
                    $card = $card->row();
                    $card_no = $card->card_no;
                    $data = array(
                        'mobile' => $d_mobile,
                        'sub_name' => $d_sub_name,
                        'gender' => $d_gender,
                        'card_no' => $card_no,
                        'email' => strtolower($d_email),
                        'record_stat' => 'OPEN',
                        'campus_code' => $d_campus,
                        'category' => $d_category,
                        'sub_account' => $sub_account,
                        'registered_by' => $this->session->userdata('username'),
                        'subscription_plan' => $d_reg_plan,
                        'sub_fee_amount' => $d_sub_fee_amt,
                        'free_promo_code' => $free_promo_code,
                        'sub_registration_date' => $d_reg_date
                    );
                    $this->db->trans_start();
                    $insert_id = $this->Subscriber_model->insert_new_subscriber($data);
                    $enc_id = array('enc_id' => MD5(MD5($insert_id)));
                    $this->Subscriber_model->update_subscriber($enc_id, $insert_id);
                    $update_data = array('occupied' => 'Y');
                    $this->Subscriber_model->update_card($update_data, $card_no);
                    $this->db->trans_complete();
                    //Topup
                    if ($d_top_up > 0) {
                        $topup_amount = $d_top_up;
                        $trn_ref_no = 'REG' . $this->session->userdata('user_id') . time() . random_int(10, 99); // Trn reference number
                        $data = array(
                            'card_no' => $card_no,
                            'sub_id' => $insert_id,
                            'amount' => $topup_amount,
                            'trn_date' => $d_reg_date,
                            'trn_ref_no' => $trn_ref_no,
                            'pos' => $d_pos,
                            'trn_status' => 'SUCCESS',
                            'category' => $d_topup_cat,
                            'maker_id' => $this->session->userdata('username')
                        );
                        $this->Card_model->insert_pos_topup($data);
                        $this->db->where('id', $d_id);
                        $this->db->update('subscribers_dump', array('upload_status' => 'Success'));
                    }
                }
            }
        }
        $this->session->set_flashdata('success', 'Subscribers successful registered, please check for unsuccessful records');
        redirect('809e41f3c92e39b8a833737c57e29abf');
    }

    function finishUploadTopup()
    {
        $rows = $this->db->get_where('card_topup_dump', array('upload_status' => 'Pending'))->num_rows();
        if ($rows == 0) {
            $this->session->set_flashdata('error', 'No pending records on topup to upload, please upload new file');
            redirect('809e41f3c92e39b8a833737c57e29abf');
        }
        $dump = $this->db->get('card_topup_dump');
        if ($dump->num_rows() == 0) {
            $this->session->set_flashdata('error', 'There is no pending rows to upload, please upload new file');
            redirect('809e41f3c92e39b8a833737c57e29abf');
        } else {
            $dump = $dump->result();
            $i = 1;
            foreach ($dump as $t) {
                $error = '';
                $t_id = $t->id;
                $t_card_no = $t->card_no;
                $t_amount = $t->amount;
                $t_pos = $t->pos;
                $t_trn_date = $t->trn_date;
                $t_category = $t->category;
                $trn_ref_no = 'POS' . $this->session->userdata('user_id') . time() . random_int(10, 99);
                //initialize card number	
                if ($t_card_no >= 0 && $t_card_no <= 9) {
                    $card_no = 'IC-00000' . $t_card_no;
                } elseif ($t_card_no >= 10 && $t_card_no <= 99) {
                    $card_no = 'IC-0000' . $t_card_no;
                } elseif ($t_card_no >= 100 && $t_card_no <= 999) {
                    $card_no = 'IC-000' . $t_card_no;
                } elseif ($t_card_no >= 1000 && $t_card_no <= 9999) {
                    $card_no = 'IC-00' . $t_card_no;
                } elseif ($t_card_no >= 10000 && $t_card_no <= 99999) {
                    $card_no = 'IC-0' . $t_card_no;
                } elseif ($t_card_no >= 100000) {
                    $card_no = 'IC-' . $t_card_no;
                }
                //validate card number
                $card = $this->db->get_where('subscribers', array('card_no' => $card_no));
                if ($card->num_rows() == 0) {
                    $error = $error . '| Card Number Not Found ';
                    $this->db->where('id', $t_id);
                    $this->db->update('card_topup_dump', array('error' => $error, 'upload_status' => 'Failed', 'note' => $error));
                } else {
                    $sub = $card->row();
                    //check for possible duplicate transaction
                    /*
                      --- Commented to remove duplicate check
                      $cond = array('card_no'=>$card_no,'trn_date'=>$t_trn_date,'pos'=>$t_pos,'category'=>$t_category,'sub_id'=>$sub->id,'amount'=>$t_amount);
                      $is_duplicate = $this->db->get_where('card_topup', $cond)->num_rows();
                      if($is_duplicate != 0){
                      $error = $error.'| Possibly duplicate transaction ';
                      $this->db->where('id',$t_id);
                      $this->db->update('card_topup_dump',array('error'=>$error,'upload_status'=>'Failed','note'=>$error));
                      }else{
                     */
                    //validate trn_date vs subscriber registration date					
                    $sub_reg_date = date('Y-m-d', strtotime($sub->sub_registration_date));
                    if ($t_trn_date < $sub_reg_date) {
                        $error = $error . '| Trn date older than reg date ';
                    }
                    //validate if topup date is greater than today's date	
                    if ($t_trn_date > date('Y-m-d')) {
                        $error = $error . '| Topup date cannot be greater than today ';
                    }
                    //check if amount is not character	
                    if (is_numeric($t_amount) != 1) {
                        $error = $error . '| Invalid topup amount ';
                    }
                    //check if pos is correct	
                    $num_pos = $this->db->get_where('topup_pos', array('pos_name' => $t_pos))->num_rows();
                    if ($num_pos != 1) {
                        $error = $error . '| Invalid POS ';
                    }
                    //validate topup category	
                    $num_topup_cat = $this->db->get_where('topup_category', array('category' => $t_category))->num_rows();
                    if ($num_topup_cat != 1) {
                        $error = $error . '| Invalid Topup category ';
                    }

                    if ($error != '') {
                        $this->db->where('id', $t_id);
                        $this->db->update('card_topup_dump', array('error' => $error, 'upload_status' => 'Failed', 'note' => $error));
                    } else {
                        $data = array(
                            'card_no' => $card_no,
                            'sub_id' => $sub->id,
                            'amount' => $t_amount,
                            'trn_date' => $t_trn_date,
                            'trn_ref_no' => $trn_ref_no,
                            'pos' => $t_pos,
                            'trn_status' => 'SUCCESS',
                            'category' => $t_category,
                            'maker_id' => $this->session->userdata('username')
                        );
                        $insert_id = $this->Card_model->insert_pos_topup($data);
                        $data2 = array('date_last_topup' => $t_trn_date);
                        $this->Subscriber_model->update_subscriber($data2, $sub->id);
                        //mark transaction as success
                        $this->db->where('id', $t_id);
                        $this->db->update('card_topup_dump', array('upload_status' => 'Success', 'note' => 'Recorded on Cloud'));
                    }
                    //	}	Commented to remove duplicate check				
                }
                $i++;
            }
            $this->session->set_flashdata('success', 'Topups successful registered, please check for failed records');
            redirect('809e41f3c92e39b8a833737c57e29abf');
        }
    }

    function truncateTable($table_name = '')
    {
        //echo $table_name; exit();
        if ($table_name == 'subscribers') {
            $this->db->truncate('subscribers_dump');
            $this->session->set_flashdata('success', 'Subscribers stage table for upload truncated');
            redirect('809e41f3c92e39b8a833737c57e29abf');
        } elseif ($table_name == 'topup') {
            $this->db->truncate('card_topup_dump');
            $this->session->set_flashdata('success', 'Topup stage table for upload truncated');
            redirect('809e41f3c92e39b8a833737c57e29abf');
        }
    }

    function downloadSample($sample = '')
    {
        $this->load->helper('download');
        if ($sample == 'subscribers') {
            force_download('/var/www/html/assets/uploads/sub_upload.xlsx', NULL);
        } elseif ($sample == 'topup') {
            force_download('/var/www/html/assets/uploads/topup_upload.zip', NULL);
        }
    }

    function exportSubscriberDump()
    {
        $this->load->helper('download');
        $extension = 'xlsx';
        $empInfo = $this->db->get('subscribers_dump');
        if ($empInfo->num_rows() == 0) {
            $this->session->set_flashdata('error', 'No record(s) to export');
            redirect('809e41f3c92e39b8a833737c57e29abf');
        } else {
            $empInfo = $empInfo->result_array();
            $fileName = 'Subscribers_Dump-' . time();
            $spreadsheet = new Spreadsheet();
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setCellValue('A1', 'Mobile');
            $sheet->setCellValue('B1', 'Sub_name');
            $sheet->setCellValue('C1', 'Card_no');
            $sheet->setCellValue('D1', 'Gender');
            $sheet->setCellValue('E1', 'Email');
            $sheet->setCellValue('F1', 'Reg_date');
            $sheet->setCellValue('G1', 'Category');
            $sheet->setCellValue('H1', 'Campus');
            $sheet->setCellValue('I1', 'Reg_plan');
            $sheet->setCellValue('J1', 'Top_up');
            $sheet->setCellValue('K1', 'Pos');
            $sheet->setCellValue('L1', 'Topup_cat');
            $sheet->setCellValue('M1', 'Upload_status');
            $sheet->setCellValue('N1', 'Error');
            $rowCount = 2;
            foreach ($empInfo as $element) {
                $sheet->setCellValue('A' . $rowCount, $element['mobile']);
                $sheet->setCellValue('B' . $rowCount, $element['sub_name']);
                $sheet->setCellValue('C' . $rowCount, $element['card_no']);
                $sheet->setCellValue('D' . $rowCount, $element['gender']);
                $sheet->setCellValue('E' . $rowCount, $element['email']);
                $sheet->setCellValue('F' . $rowCount, $element['reg_date']);
                $sheet->setCellValue('G' . $rowCount, $element['category']);
                $sheet->setCellValue('H' . $rowCount, $element['campus']);
                $sheet->setCellValue('I' . $rowCount, $element['reg_plan']);
                $sheet->setCellValue('J' . $rowCount, $element['top_up']);
                $sheet->setCellValue('K' . $rowCount, $element['pos']);
                $sheet->setCellValue('L' . $rowCount, $element['topup_cat']);
                $sheet->setCellValue('M' . $rowCount, $element['upload_status']);
                $sheet->setCellValue('N' . $rowCount, $element['error']);
                $rowCount++;
            }
            $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
            $fileName = $fileName . '.xlsx';
            $this->output->set_header('Content-Type: application/vnd.ms-excel');
            $this->output->set_header("Content-type: application/csv");
            $this->output->set_header('Cache-Control: max-age=0');
            $writer->save(ROOT_UPLOAD_PATH . $fileName);
            //redirect(HTTP_UPLOAD_PATH.$fileName); 
            $filepath = file_get_contents(ROOT_UPLOAD_PATH . $fileName);
            force_download($fileName, $filepath);
        }
    }

    function exportTopupDump()
    {
        $this->load->helper('download');
        $extension = 'xlsx';
        $empInfo = $this->db->get('card_topup_dump');
        if ($empInfo->num_rows() == 0) {
            $this->session->set_flashdata('error', 'No record(s) to export');
            redirect('809e41f3c92e39b8a833737c57e29abf');
        } else {
            $empInfo = $empInfo->result_array();
            $fileName = 'Topup_Dump-' . time();
            $spreadsheet = new Spreadsheet();
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setCellValue('A1', 'Card_no');
            $sheet->setCellValue('B1', 'Amount');
            $sheet->setCellValue('C1', 'Pos');
            $sheet->setCellValue('D1', 'Trn_date');
            $sheet->setCellValue('E1', 'Category');
            $sheet->setCellValue('F1', 'Upload_status');
            $sheet->setCellValue('G1', 'Note');
            $rowCount = 2;
            foreach ($empInfo as $element) {
                $sheet->setCellValue('A' . $rowCount, $element['card_no']);
                $sheet->setCellValue('B' . $rowCount, $element['amount']);
                $sheet->setCellValue('C' . $rowCount, $element['pos']);
                $sheet->setCellValue('D' . $rowCount, $element['trn_date']);
                $sheet->setCellValue('E' . $rowCount, $element['category']);
                $sheet->setCellValue('F' . $rowCount, $element['upload_status']);
                $sheet->setCellValue('G' . $rowCount, $element['note']);
                $rowCount++;
            }
            $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
            $fileName = $fileName . '.xlsx';
            $this->output->set_header('Content-Type: application/vnd.ms-excel');
            $this->output->set_header("Content-type: application/csv");
            $this->output->set_header('Cache-Control: max-age=0');
            $writer->save(ROOT_UPLOAD_PATH . $fileName);
            //redirect(HTTP_UPLOAD_PATH.$fileName); 
            $filepath = file_get_contents(ROOT_UPLOAD_PATH . $fileName);
            force_download($fileName, $filepath);
        }
    }

    function studentCourses()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Settings';
        $this->data['subtitle'] = 'System Parameters';
        $this->data["subview"] = 'components/crud';
        $this->data["pageurl"] = 'settings/studentCourses';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_student_courses');
        $crud->columns('course_name', 'id');
        $crud->required_fields('course_name');
        $crud->display_as('id', 'System ID');
        $crud->unset_clone();
        $crud->unset_jquery();
        //$crud->unset_read();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function systemParameters()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $this->data['title'] = 'Settings';
        $this->data['subtitle'] = 'System Parameters';
        $this->data["subview"] = 'components/crud';
        $this->data["pageurl"] = '1e782707d31dbc3ada3b17c533376c16'; //settings/systemParameters
        $crud = new grocery_CRUD();
        $crud->set_table('eco_system_parameters');
        $crud->columns('system_name', 'company_name', 'address_line_1', 'address_line_2', 'address_line_3', 'address_line_4', 'address_line_4', 'physical_address', 'telephone_no', 'email', 'website', 'customer_care_1', 'customer_care_2');
        $crud->required_fields('system_name', 'company_name', 'address_line_1', 'physical_address', 'telephone_no', 'email', 'customer_care_1', 'customer_care_2');
        $crud->edit_fields('system_name', 'company_name', 'address_line_1', 'address_line_2', 'address_line_3', 'address_line_4', 'address_line_4', 'physical_address', 'telephone_no', 'email', 'website', 'customer_care_1', 'customer_care_2', 'maker_id');
        $crud->field_type('maker_id', 'hidden', $this->session->userdata('username'));
        $crud->unset_delete();
        $crud->unset_add();
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->set_crud_url_path(site_url('settings/systemParameters'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function cronjobLogs()
    {
        $this->data['title'] = 'Settings';
        $this->data['subtitle'] = 'Cron Jobs';
        $this->data["subview"] = 'components/crud';
        $this->data["pageurl"] = 'settings/cronjobLogs';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_cronjob_run_hist');
        $crud->columns('id', 'function_run', 'description', 'run_datetime');
        $crud->order_by('id', 'DESC');
        $crud->unset_delete();
        $crud->unset_add();
        $crud->unset_edit();
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $crud->callback_column('run_datetime', array($this, '_callback_format_datetime'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function products()
    {
        $this->data['title'] = 'Settings';
        $this->data['subtitle'] = 'Products';
        $this->data["subview"] = 'components/crud';
        $this->data["pageurl"] = 'settings/products';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_udf_products');
        $crud->add_fields('product_name', 'vat_enabled', 'product_code');
        $crud->edit_fields('product_name', 'vat_enabled');
        $crud->required_fields('product_name', 'vat_enabled', 'product_code');
        $crud->display_as('product_name', 'Product Name')
            ->display_as('vat_enabled', 'VAT Posting')
            ->display_as('product_code', 'Product Code');
        //$crud->order_by('id', 'DESC');
        $crud->unset_delete();
        //$crud->unset_add();
        //$crud->unset_edit();
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        //$crud->callback_column('run_datetime', array($this, '_callback_format_datetime'));
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function blacklistCards()
    {
        $this->data['title'] = 'Settings';
        $this->data['subtitle'] = 'BlackList Cards';
        $this->data['subview'] = 'components/crud';
        $this->data['pageurl'] = 'settings/blacklistCards';
        $crud = new grocery_CRUD();
        $crud->set_table('eco_blacklist_cards');
        $crud->fields('card_luhn');
        $crud->required_fields('card_luhn');
        $crud->unset_clone();
        $crud->unset_jquery();
        $crud->unset_jquery_ui();
        $crud->unset_bootstrap();
        $this->data['content'] = $crud->render();
        $this->load->view('_layout_main', $this->data);
    }

    function _callback_status($value, $row)
    {
        if ($value === '1') {
            return '<span class="badge badge-success" style="font-size:11px">Yes</span>';
        } elseif ($value === '0') {
            return '<span class="badge badge-danger" style="font-size:11px">No</span>';
        } elseif ($value === 'Active' || $value === 'Success') {
            return '<span class="badge badge-success" style="font-size:11px">' . $value . '</span>';
        } elseif ($value === 'Inactive' || $value === 'Failed') {
            return '<span class="badge badge-danger" style="font-size:11px">' . $value . '</span>';
        } else {
            return '<span class="badge badge-dark" style="font-size:11px">' . $value . '</span>';
        }
    }

    function _callback_format_date($value, $row)
    {
        $date = date("d-M-Y", strtotime($value));
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
        $amount = number_format($value, 2);
        return $amount;
    }

    public function sendMail()
    {
        if ($this->session->userdata('usertypeid') != 1) {
            $this->session->set_flashdata('access_denied', "Access denied!");
            redirect('dashboard');
        }
        $config = Array(
            'protocol' => 'smtp',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_port' => 465,
            'smtp_user' => 'rusekeinno@gmail.com', // change it to yours
            'smtp_pass' => 'inno0712821881', // change it to yours
            'mailtype' => 'html',
            'charset' => 'iso-8859-1',
            'wordwrap' => TRUE
        );

        $message = 'The following file has been shared to u';
        $this->load->library('email', $config);
        $this->email->set_newline("\r\n");
        $this->email->from('rusekeinno@gmail.com'); // change it to yours
        $this->email->to('iruseke@yahoo.com'); // change it to yours
        $this->email->subject('Ops Document Share');
        $this->email->message($message);
        if ($this->email->send()) {
            echo 'Email sent.';
        } else {
            show_error($this->email->print_debugger());
        }
    }

}
