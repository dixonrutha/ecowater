<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Analytics_model extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function get_campus_bi_data($start_month_yearmonth, $end_month_yearmonth){
        $cond = array('yearmonth >='=>$start_month_yearmonth,'yearmonth <='=>$end_month_yearmonth);
        $this->db->select('campus_id,campus_name,
                           sum(recharge) as recharge,
                           sum(trans_count) as trans_count,
                           sum(card_sale)as card_sale,
                           sum(cash_sale) as cash_sale,
                           sum(sub_fee) as sub_fee,
                           sum(sub_count_new) as sub_count_new,
                           sum(sub_count_all) as sub_count_all,
                           sum(paid_sub_count) as paid_sub_count,
                           sum(free_sub_count) as free_sub_count,
                           sum(water_volume) as water_volume,
                           sum(bottle_saved) as bottle_saved,
                           sum(money_saved) as money_saved,
                           sum(carbon_avoid) as carbon_avoid');
        $this->db->group_by(array('campus_id','campus_name'));
        return $this->db->get_where('bi_campus_reports', $cond)->result();
    }
    
    function get_campus_bi_max_min_date($start_month_yearmonth, $end_month_yearmonth){
        $cond = array('yearmonth >='=>$start_month_yearmonth,'yearmonth <='=>$end_month_yearmonth);
        $this->db->select('min(as_on_date) as min_date,max(as_on_date) as max_date');
        return $this->db->get_where('bi_campus_reports',$cond);
    }
    
    function get_campus_bi_recharges($start_month_yearmonth, $end_month_yearmonth){
        return $this->db->query("
            SELECT 
                a.campus_id,
                a.campus_name,
                SUM(a.recharge) AS recharge,
                SUM(trans_count) AS trans_count,
                (SELECT 
                        SUM(b.sub_perf_count)
                    FROM
                        eco_bi_campus_reports b
                    WHERE
                        b.yearmonth = '$end_month_yearmonth'
                            AND b.campus_id = a.campus_id) AS sub_perf_count
            FROM
                eco_bi_campus_reports a
            WHERE
                a.yearmonth >= '$start_month_yearmonth'
                    AND a.yearmonth <= '$end_month_yearmonth'
            GROUP BY a.campus_id , a.campus_name
        ");
    }
    
    function get_pos_bi_recharges($start_month_yearmonth, $end_month_yearmonth){
        $cond = array('yearmonth >='=>$start_month_yearmonth,'yearmonth <='=>$end_month_yearmonth);
        $this->db->select('pos_name,campus_name,SUM(recharge) AS recharge, SUM(trans_count) AS trans_count');
        $this->db->group_by(array('pos_name','campus_name'));
        return $this->db->get_where('bi_pos_report',$cond);
    }
 }