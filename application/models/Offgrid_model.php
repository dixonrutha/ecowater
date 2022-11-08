<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Offgrid_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function get_sub_data_by_id($customer_id)
    {
        $this->db->where('id', $customer_id);
        return $this->db->get('eco_offgrid_customers')->row();
    }

    // Rank model
    function  get_all_revenue_rank1($from_date = '', $to_date = '', $customer_id){

        $this->db->select('a.rank');
        $this->db->from('eco_offgrid_customers a');
        $this->db->join('eco_deliveries b', 'a.id = b.off_grid_id','left');
        if($from_date != '' && $to_date != '')
        {
            $this->db->where('b.date_collect >=', $from_date);
            $this->db->where('b.date_collect <=', $to_date);
        }

        $this->db->where('a.id', $customer_id);
        return $this->db->get('eco_offgrid_customers')->row();

    }

    function  get_all_revenue_rank($from_date = '', $to_date = '', $customer_id)
    {

        $this->db->select('a.rank');
        $this->db->from('eco_deliveries b');
        $this->db->join('eco_offgrid_customers a', 'a.id = b.off_grid_id','left');
        if($from_date != '' && $to_date != '')
        {
            $this->db->where('b.date_collect >=', $from_date);
            $this->db->where('b.date_collect <=', $to_date);
        }

        $this->db->where('a.id', $customer_id);
        return $this->db->get('eco_deliveries')->row();

    }






    function count_rows(){

        $this->db->select('*');
        $this->db->from('eco_offgrid_customers');

        return $this->db->count_all_results();

    }
    function get_all_deleiveries($deliver_id, $customer_id)
    {
        $this->db->limit(10);
        $this->db->where('off_grid_id', $customer_id);
        $this->db->order_by('date_collect ', 'DESC');
        return $this->db->get('eco_deliveries')->result();
    }

    function get_total($from_date = '', $to_date = '', $customer_id)
    {
        $this->db->where('off_grid_id', $customer_id);
        $this->db->select('SUM(	amount_id) AS amount_id');
        if($from_date != '' && $to_date != ''){
            $this->db->where('date_collect >=', $from_date);
            $this->db->where('date_collect <=', $to_date);
        }
//        $this->db->where('station_gsm', $station_gsm);
        $this->db->where('off_grid_id', $customer_id);
        return $this->db->get('eco_deliveries')->row();
    }

    function get_total_total( $customer_id)
    {

        $this->db->where('off_grid_id', $customer_id);
        $this->db->select('SUM(	amount_id) AS amount_id');
//        if($from_date != '' && $to_date != ''){
//            $this->db->where('date_collect >=', $from_date);
//            $this->db->where('date_collect <=', $to_date);
//        }
//        $this->db->where('station_gsm', $station_gsm);
        $this->db->where('off_grid_id', $customer_id);
        return $this->db->get('eco_deliveries')->row();
    }

    //The whole Total deliveries
    function get_all_deliveries_specific($from_date = '', $to_date = '',$customer_id)
    {
        $this->db->where('off_grid_id', $customer_id);
        $amount=0;
        $this->db->where('amount_id >', $amount);
      //  $this->db->where('amount_id >1');
        if($from_date != '' && $to_date != ''){
            $this->db->where('date_collect >=', $from_date);
            $this->db->where('date_collect <=', $to_date);
        }
        $query = $this->db->get('eco_deliveries');
        return $query->num_rows();
    }

//Specific Deliveries
    function get_all_deliveries($customer_id)
    {
        $this->db->where('off_grid_id', $customer_id);
        $amount=0;
        $this->db->where('amount_id >', $amount);
        //$this->db->where('amount_id >0');//number deliver should count all delivery which is greater than one
        $query = $this->db->get('eco_deliveries');
        return $query->num_rows();
    }
    function get_all_stock( $customer_id)
    {

        $this->db->where('off_grid_id', $customer_id);
        $this->db->select('SUM(	current_stock_id) AS current_stock_id');
//        if($from_date != '' && $to_date != ''){
//            $this->db->where('date_collect >=', $from_date);
//            $this->db->where('date_collect <=', $to_date);
//        }
//        $this->db->where('station_gsm', $station_gsm);
        $this->db->where('off_grid_id', $customer_id);
        return $this->db->get('eco_deliveries')->row();
    }
    function get_total_stock($from_date = '', $to_date = '', $customer_id)
    {

        $this->db->where('off_grid_id', $customer_id);
        $this->db->select('SUM(	current_stock_id) AS current_stock_id');
        if($from_date != '' && $to_date != ''){
            $this->db->where('date_collect >=', $from_date);
            $this->db->where('date_collect <=', $to_date);
        }
//        $this->db->where('station_gsm', $station_gsm);
        $this->db->where('off_grid_id', $customer_id);
        return $this->db->get('eco_deliveries')->row();
    }
    // OffGrid Dashboard Models
    function get_off_count($from_date, $to_date)
    {
        $this->db->select('COUNT(1) AS off_count');
        $this->db->where('CAST(registration_date AS date) >=', $from_date);
        $this->db->where('CAST(registration_date AS date) <=', $to_date);
        return $this->db->get('eco_offgrid_customers')->row();
    }
    // count all customer off Grid
    function get_active_off_count()
    {
        $this->db->select('COUNT(*) AS off_count');
        // $this->db->where('sub_stat_dormancy !=', 'D');
        return $this->db->get('eco_offgrid_customers')->row();
    }

    //Revenue Today
    function get_revenue($from_date, $to_date)
    {
        $this->db->select('SUM(amount_id) as revenue');

        return $this->db->get_where('eco_deliveries', array('date_collect >=' => $from_date, 'date_collect <=' => $to_date))->row();
    }

    // Deliveries
    function get_deliveries($from_date, $to_date)
    {
        $this->db->select('COUNT(id) AS deliveries');
        $amount=0;
        $this->db->where('amount_id >', $amount);
        //$this->db->where('amount_id >1');//number deliver should count all delivery which is greater than one
        $this->db->where('date_collect >=', $from_date);
        $this->db->where('date_collect <=', $to_date);
        return $this->db->get('eco_deliveries')->row();
    }

    //Empties Sum
    function get_empties_count()
    {
        $this->db->select('SUM(current_stock) as empties_count');
        return $this->db->get('eco_offgrid_customers')->row();
    }


    function get_revenue_top_3($from_date, $to_date)
    {
        $this->db->limit(3);
        $this->db->select('b.customer_name,SUM(	amount_id) AS total_amount');
        $this->db->from('eco_deliveries a');

        if($from_date != '' && $to_date != '')
        {
            $this->db->where('date_collect >=', $from_date);
            $this->db->where('date_collect <=', $to_date);
        }

        $this->db->join('eco_offgrid_customers b', 'a.off_grid_id = b.id','left');
        $this->db->group_by('total_amount');
        $this->db->order_by('total_amount ', 'DESC');
        return $this->db->get()->result();

    }



    function get_deliveries_top_3($from_date, $to_date)
    {
        $this->db->limit(3);
        $this->db->select('b.customer_name,COUNT(1) as sub_count');
        $this->db->from('eco_deliveries a');

        if($from_date != '' && $to_date != '')
        {
            $this->db->where('date_collect >=', $from_date);
            $this->db->where('date_collect <=', $to_date);
        }
        $amount=0;
        $this->db->where('amount_id >', $amount);
        //$this->db->where('amount_id >1');////number deliver should count all delivery which is greater than one
        $this->db->join('eco_offgrid_customers b', 'a.off_grid_id = b.id','left');
        $this->db->group_by('a.off_grid_id');
        $this->db->order_by('sub_count ', 'DESC');
        return $this->db->get()->result();

    }

// get customers name
    function get_all_customers()
    {

        $query = $this->db->query(
            "SELECT
                a.*
            FROM
                eco_offgrid_customers a ORDER BY a.total_amount DESC
            LIMIT 10
            "
        );

        return $query->result();
    }

    // statments model
    function insert_deliver_statement_record($data)
    {
        $this->db->insert('eco_offgrid_acc_statements_hist', $data);
        return $this->db->insert_id();
    }

    //Find Avarage

//Total revenue in statment 
    function get_total_delivery_statment( $from_date, $to_date,$customer_id)
    {

        $this->db->where('off_grid_id', $customer_id);
        $this->db->select('SUM(	amount_id) AS amount_id');
        if($from_date != '' && $to_date != ''){
            $this->db->where('date_collect >=', $from_date);
            $this->db->where('date_collect <=', $to_date);
        }
        $this->db->where('off_grid_id', $customer_id);
        return $this->db->get('eco_deliveries')->row();
    }

    function get_deliveries_statment($deliver_id, $customer_id,$from_date, $to_date)
    {
        $this->db->where('date_collect >=', $from_date);
        $this->db->where('date_collect <=', $to_date);
        $this->db->where('off_grid_id', $customer_id);
        $this->db->order_by('date_collect ', 'DESC');
        return $this->db->get('eco_deliveries')->result();
    }


}