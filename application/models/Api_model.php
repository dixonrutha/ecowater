<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Api_model extends CI_Model
{

    function __construct()
    {
        parent::__construct();
    }

    function get_sub_details_by_card_no($card_no)
    {
        return $this->db->get_where('sub_card_vw', array('card_luhn' => $card_no));
    }

    function get_sub_details_by_id($sub_id)
    {
        $this->db->select('a.id as sub_id,a.sub_name,a.gender,a.card_no,a.mobile,a.email,a.sub_stat_dormancy as sub_status,b.campus_name,a.date_registered,a.ecobox_reg,a.ecobox_otp');
        $this->db->where(array('a.id' => $sub_id));
        $this->db->from('subscribers a');
        $this->db->join('campus b', 'a.campus_code = b.campus_code', 'left');
        return $this->db->get();
    }

    function update_subscriber_by_id($sub_id, $data)
    {
        $this->db->where('id', $sub_id);
        $this->db->update('subscribers', $data);
    }

    function get_sub_unpaid_coupon($sub_id)
    {
        $this->db->select('a.*,b.sub_name,b.ecomeal_balance');
        $this->db->from('meal_coupon_buy a');
        $this->db->join('subscribers b', 'a.sub_id = b.id', 'LEFT');
        $this->db->where(array('a.sub_id' => $sub_id, 'a.status' => 'Unpaid'));
        return $this->db->get();
    }

    function insert_data($table_name, $data)
    {
        $this->db->insert($table_name, $data);
        $insert_id = $this->db->insert_id();
        return $insert_id;
    }

    function update_data($table_name, $data, $condition)
    {
        $this->db->where($condition);
        $this->db->update($table_name, $data);
    }

    function delete_data($table_name, $condition)
    {
        $this->db->where($condition);
        $this->db->delete($table_name);
    }

    function get_sub_coupon_purchase($sub_id, $coupon_id)
    {
        $this->db->select('a.id eco_coupon_id,a.purchase_id,a.card_no,a.coupon_name,a.amount,a.coupon_date,a.status,b.eco_ref as payment_ref,b.timestamp_selcom as payment_time');
        if (!empty($sub_id) || $sub_id != '') {
            $this->db->where(array('a.sub_id' => $sub_id));
        }
        if (!empty($coupon_id) || $coupon_id != '') {
            $this->db->where(array('a.id' => $coupon_id));
        }
        $this->db->from('meal_coupon_buy a');
        $this->db->join('selcom_payments b', 'a.payment_id = b.id', 'LEFT');
        $this->db->order_by('a.id', 'DESC');
        return $this->db->get();
    }

    function get_ecomeal_summary_by_sub_id($sub_id)
    {
        return $this->db->query("select sum(x.ecomeal_balance) as ecomeal_balance,
                       sum(x.coupon_purchase) as coupon_purchase,
                       123.555                    as spent_today,
                       1234.21                   as spent_mtd,
                       12345.99                  as spent_ytd
                from (
                         select ecomeal_balance, 0 as coupon_purchase
                         from eco_subscribers
                         where id = '$sub_id'
                         union all
                         select 0 ecomeal_balance, sum(amount) as coupon_purchase
                         from eco_meal_coupon_buy
                         where sub_id = '$sub_id'
                           and status = 'Paid'
                     ) x")->row();
    }

    function get_ecomeal_purchase_logs($sub_id)
    {
        return $this->db->query(" select a.log_id,
                       a.card_no,
                       a.date_registered as trn_date,
                       format(a.amount,0) as amount,
                       b.cafeteria_name  as vendor_name,
                       c.description     as status
                from eco_meal_purchase a
                         inner join eco_meal_cafeteria b on a.cafeteria_id = b.id
                         left join eco_meal_term_res_code c on a.res_code = c.code
                where a.sub_id = '$sub_id'
                order by a.date_registered desc ")->result();
    }


}
