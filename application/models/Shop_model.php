<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Shop_model extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function get_loan_details($status = '', $sub_id = '') {
        $this->db->select('a.*,b.sub_name');
        $this->db->from('bottles_sold a');
        $this->db->join('subscribers b', 'a.sub_id = b.id', 'left');
        if ($status != '') {
            $this->db->where('a.status', $status);
        }
        if ($sub_id != '') {
            $this->db->where('a.sub_id', $sub_id);
        }
        return $this->db->get();
    }

    function get_total_active_loan_balance() {
        $status_in = array('Active', 'Loss','Fraud');
        $this->db->select('sum(a.loan_amount) as loan_amount, sum(a.collected_amount) as collected_amount');
        $this->db->where_in('a.status', $status_in);
        return $this->db->get('bottles_sold a')->row();
    }

    function get_total_loan_balance() {
        $this->db->select('sum(a.collected_amount) as collected_amount,sum(a.loan_amount) as loan_amount');
        return $this->db->get('bottles_sold a')->row();
    }

    function get_repayments_amount($start_date = '', $end_date = '') {
        $this->db->select('sum(amount) as amount');
        return $this->db->get_where('bottles_repayment', array('payment_date >=' => $start_date, 'payment_date <=' => $end_date))->row();
    }

    function get_loans_sold($start_date = '', $end_date = '') {
        $this->db->select('sum(a.quantity) as bottles, sum(a.loan_amount) as loan_amount');
        $this->db->where(array('a.sell_date >=' => $start_date, 'a.sell_date <=' => $end_date));
        return $this->db->get('bottles_sold a')->row();
    }

    function get_bottle_details_aggregate() {
        $result = $this->db->query("SELECT 'Active'        AS status,
                                            Count(1)        AS bottlers,
                                            Sum(a.quantity) AS bottles
                                     FROM   eco_bottles_sold a
                                     WHERE  a.status IN ('Active','Loss')
                                     UNION ALL
                                     SELECT 'Inactive'      AS status,
                                            Count(1)        AS bottlers,
                                            Sum(a.quantity) AS bottles
                                     FROM   eco_bottles_sold a
                                     WHERE  a.status IN ('Full Paid')
                                     UNION ALL
                                     SELECT 'All'           AS status,
                                            Count(1)        AS bottlers,
                                            Sum(a.quantity) AS bottles
                                     FROM   eco_bottles_sold a")->result();
        return $result;
    }

    function get_key_ration_data() {
        $result = $this->db->query("select 'Repayments' as category, sum(a.amount) as amount
                            from eco_bottles_repayment a,
                                 eco_bottles_sold b
                            where a.loan_id = b.id
                              and b.status = 'Active'
                            union all
                            select 'Unpaid_loans' as category, sum(a.loan_amount) as amount
                            from eco_bottles_sold a
                            where not exists(select b.loan_id from eco_bottles_repayment b where b.loan_id = a.id)
                              and a.status = 'Active'")->result();
        return $result;
    }

    function get_loans_and_repayments_trend($start_date = '', $end_date = '') {
        $result = $this->db->query("SELECT x.full_date,
                                            Sum(x.repayments)  AS repayments,
                                            Sum(x.loan_amount) AS loan_amount
                                     FROM   (SELECT a.full_date,
                                                    Ifnull(Sum(b.amount), 0) AS repayments,
                                                    0                        AS loan_amount
                                             FROM   eco_dim_dates a
                                                    LEFT JOIN eco_bottles_repayment b
                                                           ON a.full_date = b.payment_date
                                             WHERE  a.full_date BETWEEN '$start_date' AND '$end_date'
                                             GROUP  BY a.full_date
                                             UNION ALL
                                             SELECT a.full_date,
                                                    0                             AS repayments,
                                                    Ifnull(Sum(c.loan_amount), 0) AS loan_amount
                                             FROM   eco_dim_dates a
                                                    LEFT JOIN eco_bottles_sold c
                                                           ON a.full_date = c.sell_date
                                             WHERE  a.full_date BETWEEN '$start_date' AND '$end_date'
                                             GROUP  BY a.full_date) x
                                     GROUP  BY x.full_date
                                     ORDER  BY x.full_date ASC ")->result();
        return $result;
    }

}
