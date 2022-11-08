<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Signin_m extends CI_Model {

	function __construct() {
		parent::__construct();
	}

	public function signin() {
		//$tables = array('users' => 'users');
		//$array = array();
		//$i = 0;
		$username = $this->input->post('username');
		$password = md5($this->input->post('password'));
		$result = $this->db->get_where('users', array("username" => $username, "password" => $password));
		if($result->num_rows() == 1){
			$userdata = $result->row();
			$permit = 'yes';
		}else{
			$permit = 'no';
		}
/*
		$userdata = '';
		foreach ($tables as $table) {
			$user = $this->db->get_where($table, array("username" => $username, "password" => $password));
			$alluserdata = $user->row();

			if(count($alluserdata)) {
				$userdata = $alluserdata;
				$array['permition'][$i] = 'yes';
			} else {
				$array['permition'][$i] = 'no';
			}
			$i++;
		} */

		if($permit == 'yes') {
                    $p = $this->db->get_where('access_rights', array('group_id' => $userdata->user_group))->row();
			$data = array(
                            "id" => $userdata->id,
                            "name" => $userdata->name,
                            "email" => $userdata->email,
                            "usertypeid" => $userdata->user_group,
                            "usertype" => $this->db->get_where('usergroups', array("id" => $userdata->user_group))->row()->group_name,
                            "username" => $userdata->username,
                            "department" => $userdata->department,
                            "photo" => $userdata->photo,
                            "created" => $userdata->created,
                            "banceasy_view" => $p->banceasy_view,
                            "banceasy_add" => $p->banceasy_add,
                            "banceasy_edit" => $p->banceasy_edit,
                            "banceasy_delete" => $p->banceasy_delete,
                            "banceasy_zone" => $p->banceasy_zone,
                            "banceasy_mandateshelf" => $p->banceasy_mandateshelf,
                            "banceasy_recon" => $p->banceasy_recon,
                            "banceasy_customer_view" => $p->banceasy_customer_view,
                            "banceasy_customer_add" => $p->banceasy_customer_add,
                            "banceasy_customer_edit" => $p->banceasy_customer_edit,
                            "banceasy_customer_delete" => $p->banceasy_customer_delete,
                            "banceasy_loan_view" => $p->banceasy_loan_view,
                            "banceasy_loan_add" => $p->banceasy_loan_add,
                            "banceasy_loan_edit" => $p->banceasy_loan_edit,
                            "banceasy_loan_delete" => $p->banceasy_loan_delete,
                            "creditadmin_view" => $p->creditadmin_view,
                            "creditadmin_add" => $p->creditadmin_add,
                            "creditadmin_edit" => $p->creditadmin_edit,
                            "creditadmin_delete" => $p->creditadmin_delete,
                            "opsdocs_admin" => $p->opsdocs_admin,
                            "opsdocs_view" => $p->opsdocs_view,
                            "opsdocs_add" => $p->opsdocs_add,
                            "opsdocs_edit" => $p->opsdocs_edit,
                            "opsdocs_delete" => $p->opsdocs_delete,
                            "opsdocs_delete" => $p->opsdocs_delete,
                            "opsdocscategory_all" => $p->opsdocscategory_all,
                            "opsdocssubcategory_all" => $p->opsdocssubcategory_all,
                            "referencenumber_view" => $p->referencenumber_view,
                            "referencenumber_add" => $p->referencenumber_add,
                            "referencenumber_edit" => $p->referencenumber_edit,
                            "referencenumber_delete" => $p->referencenumber_delete,
                            "cib_client_view" => $p->cib_client_view,
                            "cib_client_add" => $p->cib_client_add,
                            "cib_client_edit" => $p->cib_client_edit,
                            "cib_client_delete" => $p->cib_client_delete,
                            "cib_staff" => $p->cib_staff,
                            "cib_product" => $p->cib_product,
                            "cib_ticket_view" => $p->cib_ticket_view,
                            "cib_ticket_add" => $p->cib_ticket_add,
                            "cib_ticket_edit" => $p->cib_ticket_edit,
                            "cib_ticket_delete" => $p->cib_ticket_delete,
                            "cib_ticket_comment" => $p->cib_ticket_comment,
                            "cib_ticket_close" => $p->cib_ticket_close,
                            "loggedin" => TRUE
			);
			$this->session->set_userdata($data);
            $_SESSION['id'] = $userdata->id;
			return TRUE;
		} else {
			return FALSE;
		}			
	}

	public function change_password() {

		$table = "users";
		
		$username = $this->session->userdata("username");
		$old_password = md5($this->input->post('old_password'));
		$new_password = md5($this->input->post('new_password'));

		$user = $this->db->get_where($table, array("username" => $username, "password" => $old_password));

		$alluserdata = $user->row();

		if(count($alluserdata)) {
			if($alluserdata->password == $old_password){
				$array = array(
					"password" => $new_password
				);
				$this->db->where(array("username" => $username, "password" => $old_password));
				$this->db->update($table, $array);
				$this->session->set_flashdata('success', 'Success');
				return TRUE; 
			}
		} else {
			return FALSE;
		}
	}

	public function signout() {
		$this->session->sess_destroy();
	}

	public function loggedin() {
		return (bool) $this->session->userdata("loggedin");
	}
}

/* End of file signin_m.php */
/* Location: .//D/xampp/htdocs/school/mvc/models/signin_m.php */