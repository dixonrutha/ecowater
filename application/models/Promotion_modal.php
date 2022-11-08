<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Promotion_modal extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }


    function get_all_sub_categories(){
        return $this->db->get('eco_sub_category')->result();


    }
    function insert_new_promotion($data)
    {
        $this->db->insert('promotion', $data);

    }
    function update_promotion($data)
    {
        $this->db->where('id');
        $this->db->update('promotion', $data);
    }
    function multisave($category)
    {
        $query="insert into eco_promotion values($category)";
        $this->db->query($query);
    }
    function get_data($table_name = '', $condition = '')
    {
        if (!empty($condition)) {
            $this->db->where($condition);
        }
        return $this->db->get($table_name);
    }


    function insert_data($table = '', $data = '')
    {
        $this->db->insert($table, $data);
        return $this->db->insert_id();
    }


    function get_data_all($table_name = '')
    {
        return $this->db->get($table_name);
    }


}