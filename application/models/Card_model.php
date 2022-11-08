<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Card_model extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function get_all_occupied_card() {
        $this->db->select('c.card_no,s.sub_name,s.id');
        $this->db->where('c.occupied', 'Y');
        $this->db->where('c.lost', 'N');
        $this->db->where('c.demaged', 'N');
        $this->db->where('c.card_stat', 'Active');
        $this->db->where('c.record_stat', 'O');
        $this->db->from('cards c');
        $this->db->join('subscribers s', 'c.card_no=s.card_no', 'left');
        return $this->db->get()->result();
    }

    function get_all_active_pos() {
        $this->db->select('p.id,p.pos_name,c.campus_name');
        $this->db->order_by('p.id', 'asc');
        $this->db->where('p.status', 'O');
        $this->db->like('p.pos_name', 'POS', 'after');
        $this->db->from('topup_pos p');
        $this->db->join('campus c', 'p.campus_code=c.campus_code', 'left');
        return $this->db->get()->result();
    }

    function get_all_topup_categories() {
        return $this->db->get('topup_category')->result();
    }

    function insert_pos_topup($data) {
        $this->db->insert('card_topup', $data);
        return $this->db->insert_id();
    }

    function update_pos_topup($data, $topup_id = '') {
        $this->db->where('id', $topup_id);
        $this->db->update('card_topup', $data);
    }

    function get_top_up_details($card_no, $amount,$amount2, $trn_date) {
        $this->db->where('card_no', $card_no);
        $this->db->where('amount', $amount);
        $this->db->where('amount', $amount2);
        $this->db->where('trn_date', $trn_date);
        $this->db->order_by('id', 'DESC');
        return $this->db->get('card_topup')->row();
    }

    function get_curr_topup_data($sub_id, $from_date, $to_date) {
        $this->db->where('sub_id', $sub_id);
        $this->db->where('trn_date >=', $from_date);
        $this->db->where('trn_date <=', $to_date);
        $this->db->order_by('trn_date', 'DESC');
        return $this->db->get('card_topup')->result();
    }

    function get_old_topup_data($sub_id, $from_date, $to_date) {
        $this->db->where('a.sub_id', $sub_id);
        $this->db->where('b.trn_date >=', $from_date);
        $this->db->where('b.trn_date <=', $to_date);
        $this->db->order_by('b.trn_date', 'DESC');
        $this->db->from('sub_card_change_hist a');
        $this->db->join('card_topup b', 'a.card_no=b.card_no', 'LEFT');
        return $this->db->get()->result();
    }

    function get_pos_balances() {
        $this->db->select('a.*,b.pos_name');
        $this->db->order_by('report_date', 'DESC');
        $this->db->order_by('pos_id', 'ASC');
        $this->db->from('pos_balances a');
        $this->db->join('topup_pos b', 'a.pos_id=b.id', 'LEFT');
        return $this->db->get()->result();
    }

    function get_pos_balances_by_date($pos_id, $report_date) {
        $this->db->where('pos_id', $pos_id);
        $this->db->where('report_date', $report_date);
        return $this->db->get('pos_balances')->row();
    }

    function get_pos_topups_by_date($pos_id, $report_date) {
        $this->db->select('SUM(a.amount) as tamount');
        $this->db->where('b.id', $pos_id);
        $this->db->where('a.trn_date', $report_date);
        $this->db->from('card_topup a');
        $this->db->join('topup_pos b', 'a.pos=b.pos_name', 'LEFT');
        return $this->db->get()->row();
    }

    function update_pos_balance($pos_id, $report_date, $data) {
        $this->db->where('pos_id', $pos_id);
        $this->db->where('report_date', $report_date);
        $this->db->update('pos_balances', $data);
    }

    function insert_pos_balance($data) {
        $this->db->insert('pos_balances', $data);
    }

    function get_pos_last_balance($pos_id, $report_date) {
        $this->db->where('report_date <', $report_date);
        $this->db->where('pos_id', $pos_id);
        $this->db->order_by('report_date', 'DESC');
        return $this->db->get('pos_balances')->row();
    }

}
