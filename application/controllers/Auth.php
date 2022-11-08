<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Class Auth
 * @property Ion_auth|Ion_auth_model $ion_auth        The ION Auth spark
 * @property CI_Form_validation      $form_validation The form validation library
 */
class Auth extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->library(array('ion_auth', 'form_validation'));
        $this->load->helper(array('url', 'language'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));

        $this->lang->load('auth');
        //Call this mysql procedure to change session timezone for all database CRUD
        //$this->db->query("CALL mysql.store_time_zone()");
    }

    /**
     * Redirect if needed, otherwise display the user list
     */
    public function index()
    {
        if (!$this->ion_auth->logged_in()) {
            // redirect them to the login page
            redirect('1b950a2cee305598cdc96de85d706237'); // auth/login
        } else {
            // set the flash data error message if there is one
            $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');
            redirect(base_url('dc7161be3dbf2250c8954e560cc35060')); //dashboard
        }
    }

    /**
     * Log the user in
     */
    public function login()
    {
               $data = date('Y-M-d H:i:s');
        //$this->db->query("INSERT INTO eco_test(name) VALUES('$data')");
        //$this->data['title'] = $this->lang->line('login_heading');
        // validate form input
        $this->form_validation->set_rules('identity', str_replace(':', '', $this->lang->line('login_identity_label')), 'required');
        $this->form_validation->set_rules('password', str_replace(':', '', $this->lang->line('login_password_label')), 'required');

        if ($this->form_validation->run() === TRUE) {
            // check to see if the user is logging in
            // check for "remember me"                    
            $remember = (bool)$this->input->post('remember');
            if ($this->ion_auth->login($this->input->post('identity'), $this->input->post('password'), $remember)) {
                //if the login is successful
                //redirect them back to the home page
                $this->session->set_flashdata('message', $this->ion_auth->messages());
                #Set session data start
                $username = $this->input->post('identity');
                $password = $this->input->post('password');
                $result = $this->db->get_where('users', array('username' => $username));
                $userdata = $result->row();
                //Check if password has expired
                if ($userdata->next_pass_change <= date('Y-m-d')) {
                    $this->ion_auth->logout();
                    redirect('auth/password_expired/' . $username); // auth/password_expired
                }
                //echo $userdata; exit();
                $p = $this->db->get_where('access_rights', array('group_id' => $userdata->user_group))->row();
                //generate user id
                if ($userdata->id < 10) {
                    $user_id = '0' . $userdata->id;
                } else {
                    $user_id = $userdata->id;
                }
                $session_id = session_id();
                $data = array(
                    "id" => $userdata->id,
                    "user_id" => $user_id,
                    "name" => $userdata->name,
                    "email" => $userdata->email,
                    "usertypeid" => $userdata->user_group,
                    "usertype" => $this->db->get_where('usergroups', array("id" => $userdata->user_group))->row()->group_name,
                    "username" => $userdata->username,
                    "identity" => $userdata->username,
                    "campus" => $userdata->campus,
                    "photo" => $userdata->photo,
                    "created" => $userdata->created,
                    'sub_view' => $p->sub_view,
                    'sub_add' => $p->sub_add,
                    'sub_edit' => $p->sub_edit,
                    'sub_delete' => $p->sub_delete,
                    'sub_topup' => $p->sub_topup,
                    'sub_sms' => $p->sub_sms,
                    'sub_mail' => $p->sub_mail,
                    'sub_statement' => $p->sub_statement,
                    'stat_view' => $p->stat_view,
                    'stat_add' => $p->stat_add,
                    'stat_edit' => $p->stat_edit,
                    'stat_delete' => $p->stat_delete,
                    'stat_sales' => $p->stat_sales,
                    'stat_statement' => $p->stat_sales,
                    'stat_start' => $p->stat_start,
                    'stat_shutdown' => $p->stat_shutdown,
                    'stat_restart' => $p->stat_sales,
                    'topup_view' => $p->topup_view,
                    'topup_add' => $p->topup_add,
                    'topup_edit' => $p->topup_edit,
                    'topup_delete' => $p->topup_delete,
                    'topup_pos' => $p->topup_pos,
                    'topup_view' => $p->topup_view,
                    'topup_add' => $p->topup_add,
                    'topup_edit' => $p->topup_edit,
                    'topup_delete' => $p->topup_delete,
                    'card_view' => $p->card_view,
                    'card_add' => $p->card_add,
                    'card_edit' => $p->card_edit,
                    'card_delete' => $p->card_delete,
                    'filter_view' => $p->filter_view,
                    'filter_add' => $p->filter_add,
                    'filter_edit' => $p->filter_edit,
                    'filter_delete' => $p->filter_delete,
                    'filter_maint_view' => $p->filter_maint_view,
                    'filter_maint_add' => $p->filter_maint_add,
                    'filter_maint_edit' => $p->filter_maint_edit,
                    'filter_maint_delete' => $p->filter_maint_delete,
                    'filter_maint_statement' => $p->filter_maint_statement,
                    'branch_view' => $p->branch_view,
                    'branch_add' => $p->branch_add,
                    'branch_edit' => $p->branch_edit,
                    'branch_delete' => $p->branch_delete,
                    'campus_view' => $p->campus_view,
                    'campus_add' => $p->campus_add,
                    'campus_edit' => $p->campus_edit,
                    'campus_delete' => $p->campus_delete,
                    'campus_invoice_add' => $p->campus_invoice_add,
                    'campus_invoice_pay' => $p->campus_invoice_pay,
                    'campus_invoice_delete' => $p->campus_invoice_delete,
                    'session_id' => $session_id,
                    "loggedin" => TRUE
                );
                $this->session->set_userdata($data);
                $_SESSION['id'] = $userdata->id;
                #Set session data end
                //update last login, IP and active session
                $this->db->where('id', $userdata->id);
                $this->db->update('users', array('date_last_login' => date('Y-m-d H:i:s'), 'last_login_ip' => $_SERVER['REMOTE_ADDR']));
                //map new session id to user and destroy previous session
                $this->setSessionId($userdata->id, $session_id);
                redirect(base_url('dc7161be3dbf2250c8954e560cc35060')); //dashboard
            } else {
                // if the login was un-successful
                // redirect them back to the login page
                $this->session->set_flashdata('message', $this->ion_auth->errors());
                redirect('auth/login'); // (auth/login) use redirects instead of loading views for compatibility with MY_Controller libraries
            }
        } else {
            // the user is not logging in so display the login page
            // set the flash data error message if there is one
            //echo 'here'; exit();
            $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');
            $this->load->view('_layout_login', $this->data);
        }
    }

    function blocked()
    {
        $this->load->view('blocked');
    }

    function setSessionId($user_id, $session_id)
    {
        //get previous session
        $oldSessionId = $this->db->select('session_id')
            ->where(array('id' => $user_id))
            ->get('users')
            ->row('session_id');
        //destroy old session which was mapped to user
        $this->db->where(array('id' => $oldSessionId));
        $this->db->delete('ci_sessions');
        //map new session to user
        $this->db->where('id', $user_id);
        $this->db->update('users', array('session_id' => $session_id));
    }

    /**
     * User password has expired
     */
    function password_expired($username = '')
    {
        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $this->form_validation->set_rules('identity', 'Username', 'required');
            $this->form_validation->set_rules('pass_old', $this->lang->line('change_password_validation_old_password_label'), 'required');
            $this->form_validation->set_rules('pass_new', $this->lang->line('change_password_validation_new_password_label'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[pass_confirm]');
            $this->form_validation->set_rules('pass_confirm', $this->lang->line('change_password_validation_new_password_confirm_label'), 'required');
            if ($this->form_validation->run() == TRUE) {
                $identity = $this->input->post('identity');
                //check if password has been used in past 90 days
                $password = MD5($this->input->post('pass_new'));
                $is_pass_exist = $this->db->get_where('users_password', array('username' => $identity, 'password' => $password))->num_rows();
                if ($is_pass_exist >= 1) {
                    $this->session->set_flashdata('error', 'This password has been used within past 90 days');
                    redirect('24892d8b923b1c76a0352812932d840a', 'refresh'); // auth/password_expired
                }
                if ($this->input->post('pass_old') == $this->input->post('pass_new')) {
                    $this->session->set_flashdata('error', 'New password cannot be same as current password');
                    redirect('24892d8b923b1c76a0352812932d840a', 'refresh'); // auth/password_expired
                }
                $change = $this->ion_auth->change_password($identity, $this->input->post('pass_old'), $this->input->post('pass_new'));
                if ($change) {
                    //if the password was successfully changed
                    //update last password change date
                    $last_pass_change = date('Y-m-d');
                    $next_pass_change = date('Y-m-d', strtotime('+30 days'));
                    $this->db->where('username', $identity);
                    $this->db->update('users', array('next_pass_change' => $next_pass_change, 'last_pass_change' => $last_pass_change));
                    //insert into previous password table
                    $this->db->insert('users_password', array('username' => $identity, 'password' => $password));
                    $this->session->set_flashdata('success', 'Password changed.');
                    redirect('1b950a2cee305598cdc96de85d706237', 'refresh'); // auth/login
                } else {
                    $this->session->set_flashdata('error', $this->ion_auth->errors());
                    redirect('24892d8b923b1c76a0352812932d840a', 'refresh'); // auth/password_expired
                }
            } else {
                $this->session->set_flashdata('error', validation_errors());
                redirect('24892d8b923b1c76a0352812932d840a', 'refresh'); // auth/password_expired
            }
        }
        $this->ion_auth->logout();
        $this->data['username'] = $username;
        $this->load->view('_layout_pass_expired', $this->data);
    }

    /**
     * Log the user out
     */
    public function logout()
    {
        // log the user out
        $logout = $this->ion_auth->logout();
        // redirect them to the login page
        $this->session->set_flashdata('success', $this->ion_auth->messages());
        redirect('1b950a2cee305598cdc96de85d706237', 'refresh'); //auth/login
    }

    function changePassword()
    {

    }

    /**
     * Change password
     */
    public function change_password()
    {
        $this->form_validation->set_rules('c_pass_old', $this->lang->line('change_password_validation_old_password_label'), 'required');
        $this->form_validation->set_rules('c_pass_new', $this->lang->line('change_password_validation_new_password_label'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[c_pass_confirm]');
        $this->form_validation->set_rules('c_pass_confirm', $this->lang->line('change_password_validation_new_password_confirm_label'), 'required');
        if (!$this->ion_auth->logged_in()) {
            redirect('1b950a2cee305598cdc96de85d706237', 'refresh'); // auth/login
        }
        $user = $this->ion_auth->user()->row();
        if ($this->form_validation->run() === FALSE) {
            $v_errors = validation_errors();
            $message = '<div class="alert alert-danger fade show" role="alert">' . $v_errors . '</div>';
            $data = array('action' => 'error', 'message' => $message);
            echo json_encode($data);
        } else {
            $identity = $this->session->userdata('identity');
            $password = MD5($this->input->post('c_pass_new'));
            $is_pass_exist = $this->db->get_where('users_password', array('username' => $identity, 'password' => $password))->num_rows();
            if ($is_pass_exist >= 1) {
                $v_errors = 'This password has been used within past 90 days';
                $message = '<div class="alert alert-danger fade show" role="alert">' . $v_errors . '</div>';
                $data = array('action' => 'error', 'message' => $message);
                echo json_encode($data);
            } elseif ($this->input->post('c_pass_old') == $this->input->post('c_pass_new')) {
                $v_errors = 'New password cannot be same as current password';
                $message = '<div class="alert alert-danger fade show" role="alert">' . $v_errors . '</div>';
                $data = array('action' => 'error', 'message' => $message);
                echo json_encode($data);
            } else {
                $change = $this->ion_auth->change_password($identity, $this->input->post('c_pass_old'), $this->input->post('c_pass_new'));
                if ($change) {
                    //if the password was successfully changed
                    //update last password change date
                    $last_pass_change = date('Y-m-d');
                    $next_pass_change = date('Y-m-d', strtotime('+30 days'));
                    $this->db->where('username', $identity);
                    $this->db->update('users', array('next_pass_change' => $next_pass_change, 'last_pass_change' => $last_pass_change));
                    //insert into previous password table
                    $this->db->insert('users_password', array('username' => $identity, 'password' => $password));
                    $message = '<div class="alert alert-success fade show" role="alert">Password changed</div>';
                    $data = array('action' => 'okay', 'message' => $message);
                    $logout = $this->ion_auth->logout();
                    $this->session->set_flashdata('success', 'Password changed');
                    echo json_encode($data);
                } else {
                    $v_errors = $this->ion_auth->errors();
                    $message = '<div class="alert alert-danger fade show" role="alert">' . $v_errors . '</div>';
                    $data = array('action' => 'error', 'message' => $message);
                    echo json_encode($data);
                }
            }
        }
    }

    /**
     * Forgot password
     */
    public function forgot_password()
    {
        // setting validation rules by checking whether identity is username or email
        if ($this->config->item('identity', 'ion_auth') != 'email') {
            $this->form_validation->set_rules('identity', $this->lang->line('forgot_password_identity_label'), 'required');
        } else {
            $this->form_validation->set_rules('identity', $this->lang->line('forgot_password_validation_email_label'), 'required|valid_email');
        }


        if ($this->form_validation->run() === FALSE) {
            $this->data['type'] = $this->config->item('identity', 'ion_auth');
            // setup the input
            $this->data['identity'] = array('name' => 'identity',
                'id' => 'identity',
            );

            if ($this->config->item('identity', 'ion_auth') != 'email') {
                $this->data['identity_label'] = $this->lang->line('forgot_password_identity_label');
            } else {
                $this->data['identity_label'] = $this->lang->line('forgot_password_email_identity_label');
            }

            // set any errors and display the form
            $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');
            $this->_render_page('auth/forgot_password', $this->data);
        } else {
            $identity_column = $this->config->item('identity', 'ion_auth');
            $identity = $this->ion_auth->where($identity_column, $this->input->post('identity'))->users()->row();

            if (empty($identity)) {

                if ($this->config->item('identity', 'ion_auth') != 'email') {
                    $this->ion_auth->set_error('forgot_password_identity_not_found');
                } else {
                    $this->ion_auth->set_error('forgot_password_email_not_found');
                }

                $this->session->set_flashdata('message', $this->ion_auth->errors());
                redirect("auth/forgot_password", 'refresh');
            }

            // run the forgotten password method to email an activation code to the user
            $forgotten = $this->ion_auth->forgotten_password($identity->{$this->config->item('identity', 'ion_auth')});

            if ($forgotten) {
                // if there were no errors
                $this->session->set_flashdata('message', $this->ion_auth->messages());
                redirect("auth/login", 'refresh'); //we should display a confirmation page here instead of the login page
            } else {
                $this->session->set_flashdata('message', $this->ion_auth->errors());
                redirect("auth/forgot_password", 'refresh');
            }
        }
    }

    /**
     * Reset password - final step for forgotten password
     *
     * @param string|null $code The reset code
     */
    public function reset_password($code = NULL)
    {
        if (!$code) {
            show_404();
        }

        $user = $this->ion_auth->forgotten_password_check($code);

        if ($user) {
            // if the code is valid then display the password reset form

            $this->form_validation->set_rules('new', $this->lang->line('reset_password_validation_new_password_label'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[new_confirm]');
            $this->form_validation->set_rules('new_confirm', $this->lang->line('reset_password_validation_new_password_confirm_label'), 'required');

            if ($this->form_validation->run() === FALSE) {
                // display the form
                // set the flash data error message if there is one
                $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');

                $this->data['min_password_length'] = $this->config->item('min_password_length', 'ion_auth');
                $this->data['new_password'] = array(
                    'name' => 'new',
                    'id' => 'new',
                    'type' => 'password',
                    'pattern' => '^.{' . $this->data['min_password_length'] . '}.*$',
                );
                $this->data['new_password_confirm'] = array(
                    'name' => 'new_confirm',
                    'id' => 'new_confirm',
                    'type' => 'password',
                    'pattern' => '^.{' . $this->data['min_password_length'] . '}.*$',
                );
                $this->data['user_id'] = array(
                    'name' => 'user_id',
                    'id' => 'user_id',
                    'type' => 'hidden',
                    'value' => $user->id,
                );
                $this->data['csrf'] = $this->_get_csrf_nonce();
                $this->data['code'] = $code;

                // render
                $this->_render_page('auth/reset_password', $this->data);
            } else {
                // do we have a valid request?
                if ($this->_valid_csrf_nonce() === FALSE || $user->id != $this->input->post('user_id')) {

                    // something fishy might be up
                    $this->ion_auth->clear_forgotten_password_code($code);

                    show_error($this->lang->line('error_csrf'));
                } else {
                    // finally change the password
                    $identity = $user->{$this->config->item('identity', 'ion_auth')};

                    $change = $this->ion_auth->reset_password($identity, $this->input->post('new'));

                    if ($change) {
                        // if the password was successfully changed
                        $this->session->set_flashdata('message', $this->ion_auth->messages());
                        redirect("auth/login", 'refresh');
                    } else {
                        $this->session->set_flashdata('message', $this->ion_auth->errors());
                        redirect('auth/reset_password/' . $code, 'refresh');
                    }
                }
            }
        } else {
            // if the code is invalid then send them back to the forgot password page
            $this->session->set_flashdata('message', $this->ion_auth->errors());
            redirect("auth/forgot_password", 'refresh');
        }
    }

    /**
     * Activate the user
     *
     * @param int $id The user ID
     * @param string|bool $code The activation code
     */
    public function activate($id, $code = FALSE)
    {
        $this->ion_auth->activate($id);
        redirect('settings/users');
        /* 	if ($code !== FALSE)
          {
          $activation = $this->ion_auth->activate($id, $code);
          }
          else if ($this->ion_auth->is_admin())
          {
          $activation = $this->ion_auth->activate($id);
          }

          if ($activation)
          {
          // redirect them to the auth page
          $this->session->set_flashdata('message', $this->ion_auth->messages());
          redirect("auth", 'refresh');
          }
          else
          {
          // redirect them to the forgot password page
          $this->session->set_flashdata('message', $this->ion_auth->errors());
          redirect("auth/forgot_password", 'refresh');
          } */
    }

    /**
     * Deactivate the user
     *
     * @param int|string|null $id The user ID
     */
    public function deactivate($id = NULL)
    {
        $id = (int)$id;
        $this->ion_auth->deactivate($id);
        redirect('settings/users');
    }

    public function clear_login_attempt($id)
    {
        if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()) {
            redirect('auth', 'refresh');
        }
        $user = $this->ion_auth->user($id)->row();
        $identity = $user->username;
        $this->ion_auth->clear_login_attempts($identity);
        $this->session->set_flashdata('message', 'Login attempt cleared');
        redirect('settings/users');
    }

    /**
     * Create a new user
     */
    public function create_user()
    {
        //$this->data['title'] = $this->lang->line('create_user_heading');
//		if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin())
//		{
//			redirect('auth', 'refresh');
//		}

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
            // check to see if we are creating the user
            // redirect them back to the admin page
            $this->session->set_flashdata('message', $this->ion_auth->messages());
            redirect('settings/users');
        } else {
            // display the create user form
            // set the flash data error message if there is one
            $this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));
            $this->data['title'] = 'EcoWater';
            $this->data['subtitle'] = 'Create New User';
            $this->data['subview'] = 'general/add_user';
            $this->data['pageurl'] = 'settings/users';
            $this->data['groups'] = $this->db->get('usergroups')->result();
            $this->data['campus'] = $this->db->get('campus')->result();
            $this->load->view('_layout_main', $this->data);
        }
    }

    /**
     * Redirect a user checking if is admin
     */
    public function redirectUser()
    {
        if ($this->ion_auth->is_admin()) {
            redirect('auth', 'refresh');
        }
        redirect('/', 'refresh');
    }

    /**
     * Edit a user
     *
     * @param int|string $id
     */
    public function edit_user($id)
    {
        $user = $this->ion_auth->user($id)->row();
        $this->data['user'] = $user;
        // validate form input
        $this->form_validation->set_rules('name', 'Full Name', 'trim|required');
        $this->form_validation->set_rules('user_group', 'Group', 'trim|required');

        if (isset($_POST) && !empty($_POST)) {
            // update the password if it was posted
            if ($this->input->post('password')) {
                $this->form_validation->set_rules('password', $this->lang->line('edit_user_validation_password_label'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[password_confirm]');
                $this->form_validation->set_rules('password_confirm', $this->lang->line('edit_user_validation_password_confirm_label'), 'required');
            }
            // update the email if it was posted
            if ($this->input->post('email')) {
                if ($this->input->post('old_email') != $this->input->post('email')) {
                    $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[users.email]');
                }
            }
            if ($this->form_validation->run() === TRUE) {
                $data = array(
                    'name' => $this->input->post('name'),
                    'user_group' => $this->input->post('user_group'),
                    'campus' => $this->input->post('campus')
                );
                // update the password if it was posted
                if ($this->input->post('password')) {
                    $data['password'] = $this->input->post('password');
                }
                // update the email if it was posted
                if ($this->input->post('email')) {
                    $data['email'] = $this->input->post('email');
                }
                // check to see if we are updating the user
                if ($this->ion_auth->update($user->id, $data)) {
                    // redirect them back to the admin page if admin, or to the base url if non admin
                    $this->session->set_flashdata('message', $this->ion_auth->messages());
                    redirect('settings/users');
                } else {
                    // redirect them back to the admin page if admin, or to the base url if non admin
                    $this->session->set_flashdata('message', $this->ion_auth->errors());
                    $this->redirectUser();
                }
            }
        }
        // set the flash data error message if there is one
        $this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));
        $this->data['title'] = 'EcoWater';
        $this->data['subtitle'] = 'User Profile Management';
        $this->data['subview'] = 'general/edit_user';
        $this->data['pageurl'] = 'settings/users';
        $this->data['groups'] = $this->db->get('usergroups')->result();
        $this->data['campus'] = $this->db->get('campus')->result();
        $this->load->view('_layout_main', $this->data);
    }

    /**
     * Create a new group
     */
    public function create_group()
    {
        $this->data['title'] = $this->lang->line('create_group_title');

        if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()) {
            redirect('auth', 'refresh');
        }

        // validate form input
        $this->form_validation->set_rules('group_name', $this->lang->line('create_group_validation_name_label'), 'trim|required|alpha_dash');

        if ($this->form_validation->run() === TRUE) {
            $new_group_id = $this->ion_auth->create_group($this->input->post('group_name'), $this->input->post('description'));
            if ($new_group_id) {
                // check to see if we are creating the group
                // redirect them back to the admin page
                $this->session->set_flashdata('message', $this->ion_auth->messages());
                redirect("auth", 'refresh');
            }
        } else {
            // display the create group form
            // set the flash data error message if there is one
            $this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));

            $this->data['group_name'] = array(
                'name' => 'group_name',
                'id' => 'group_name',
                'type' => 'text',
                'value' => $this->form_validation->set_value('group_name'),
            );
            $this->data['description'] = array(
                'name' => 'description',
                'id' => 'description',
                'type' => 'text',
                'value' => $this->form_validation->set_value('description'),
            );

            $this->_render_page('auth/create_group', $this->data);
        }
    }

    /**
     * Edit a group
     *
     * @param int|string $id
     */
    public function edit_group($id)
    {
        // bail if no group id given
        if (!$id || empty($id)) {
            redirect('auth', 'refresh');
        }

        $this->data['title'] = $this->lang->line('edit_group_title');

        if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()) {
            redirect('auth', 'refresh');
        }

        $group = $this->ion_auth->group($id)->row();

        // validate form input
        $this->form_validation->set_rules('group_name', $this->lang->line('edit_group_validation_name_label'), 'required|alpha_dash');

        if (isset($_POST) && !empty($_POST)) {
            if ($this->form_validation->run() === TRUE) {
                $group_update = $this->ion_auth->update_group($id, $_POST['group_name'], $_POST['group_description']);

                if ($group_update) {
                    $this->session->set_flashdata('message', $this->lang->line('edit_group_saved'));
                } else {
                    $this->session->set_flashdata('message', $this->ion_auth->errors());
                }
                redirect("auth", 'refresh');
            }
        }

        // set the flash data error message if there is one
        $this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));

        // pass the user to the view
        $this->data['group'] = $group;

        $readonly = $this->config->item('admin_group', 'ion_auth') === $group->name ? 'readonly' : '';

        $this->data['group_name'] = array(
            'name' => 'group_name',
            'id' => 'group_name',
            'type' => 'text',
            'value' => $this->form_validation->set_value('group_name', $group->name),
            $readonly => $readonly,
        );
        $this->data['group_description'] = array(
            'name' => 'group_description',
            'id' => 'group_description',
            'type' => 'text',
            'value' => $this->form_validation->set_value('group_description', $group->description),
        );

        $this->_render_page('auth/edit_group', $this->data);
    }

    /**
     * @return array A CSRF key-value pair
     */
    public function _get_csrf_nonce()
    {
        $this->load->helper('string');
        $key = random_string('alnum', 8);
        $value = random_string('alnum', 20);
        $this->session->set_flashdata('csrfkey', $key);
        $this->session->set_flashdata('csrfvalue', $value);

        return array($key => $value);
    }

    /**
     * @return bool Whether the posted CSRF token matches
     */
    public function _valid_csrf_nonce()
    {
        $csrfkey = $this->input->post($this->session->flashdata('csrfkey'));
        if ($csrfkey && $csrfkey === $this->session->flashdata('csrfvalue')) {
            return TRUE;
        }
        return FALSE;
    }

    /**
     * @param string $view
     * @param array|null $data
     * @param bool $returnhtml
     *
     * @return mixed
     */
    public function _render_page($view, $data = NULL, $returnhtml = FALSE)
    {//I think this makes more sense
        $this->viewdata = (empty($data)) ? $this->data : $data;

        $view_html = $this->load->view($view, $this->viewdata, $returnhtml);

        // This will return html on 3rd argument being true
        if ($returnhtml) {
            return $view_html;
        }
    }

}
