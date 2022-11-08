<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Validators_model extends CI_Model{
	function __construct(){
        parent::__construct();
    }

    function get_validators_by_id($id){
    	$this->db->select('a.*, b.station_name');
        $this->db->where('a.id', $id);
        $this->db->from('val_validators a');
        $this->db->join('stations b','b.id = a.station_id','LEFT');
        return  $this->db->get()->row();
    }
}