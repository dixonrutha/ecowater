<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Settings_model extends CI_Model {

	function __construct() {
		parent::__construct();
	}
	
	function get_all_users(){
	   $this->db->select('a.*, b.id as group_id,b.group_name,b.group_dashboard');
	    $this->db->from('users a');
	    $this->db->join('usergroups b','a.user_group = b.id', 'left');
		return $this->db->get()->result();
	}

        function get_group_by_id($id)
	{
		$this->db->where('id',$id);
		return $this->db->get('usergroups')->row()->group_name;
	}
        
        function get_access_by_id($gid)
	{
            $this->db->where('group_id',$gid);
            return $this->db->get('access_rights')->row();
	}
        
   public function update_access_rights($id, $data = array())
    {
        if ($this->db->update('access_rights', $data, array('group_id' => $id))) {
            return true;
        }
        return false;
    }
    
function get_active_utilities_config(){
	$this->db->select('a.*,b.campus_name,c.type');
    $this->db->where('a.status','Active');
	$this->db->from('utilities_config a');
	$this->db->join('campus b','a.campus_code = b.campus_code', 'left');
	$this->db->join('utility_types c','a.utility_type = c.id', 'left');
	return $this->db->get()->result();
	}

function get_utility_types(){
	return $this->db->get('utility_types')->result();
}

   function get_system_parameters(){
	 return $this->db->get('system_parameters')->row();	
	}
        
    function get_cashier_details_by_id($user_id){
        $this->db->select('a.*,b.name as cashier_name,b.username,c.campus_code,c.campus_name,d.pos_name');
        $this->db->where('a.user_id',$user_id);
        $this->db->from('cashiers a');
        $this->db->join('users b','a.user_id = b.id','LEFT');
        $this->db->join('campus c','a.campus_id = c.id','LEFT');
        $this->db->join('topup_pos d','a.pos_id = d.id','LEFT');
        return $this->db->get()->row();
    }

}
