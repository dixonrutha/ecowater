<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Maintenance_model extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function get_test_report_by_station($staion_id, $start_date, $end_date) {
        $this->db->select('a.*,b.station_name');
        $this->db->where(array('a.station_id' => $staion_id, 'a.qc_date >=' => $start_date, 'a.qc_date <=' => $end_date));
        $this->db->from('quality_control a');
        $this->db->join('stations b', 'a.station_id = b.id', 'LEFT');
        return $this->db->get();
    }

    function insert_data($table, $data) {
        $this->db->insert($table, $data);
    }

    function check_maintenance_existing($gsm) {
        $this->db->where('station_gsm', $gsm);
        return $this->db->get('filters_maintenance')->num_rows();
    }

    function get_all_filters() {
        return $this->db->get('filters')->result();
    }

    function get_all_filters_clean_replace($cond) {
        if ($cond === 'clean') {
            $query = $this->db->query("SELECT * FROM eco_filters WHERE clean_days!='' AND clean_days!=0 ");
        }
        if ($cond === 'replace') {
            $query = $this->db->query("SELECT * FROM eco_filters WHERE (replace_days IS NOT NULL AND replace_days!=0)");
        }
        return $query->result();
        ;
    }

    function insert_filter($data) {
        $this->db->insert('filters_maintenance', $data);
    }

    function get_all_station_details() {
        $this->db->select('b.campus_name,a.gsm,a.station_name');
        $this->db->from('stations a');
        $this->db->join('campus b', 'a.campus_code = b.campus_code', 'left');
        return $this->db->get()->result();
    }

    function get_single_station_details($gsm) {
        $this->db->select('b.campus_name,a.gsm,a.station_name');
        $this->db->where('a.gsm', $gsm);
        $this->db->from('stations a');
        $this->db->join('campus b', 'a.campus_code = b.campus_code', 'left');
        return $this->db->get()->row();
    }

    function get_station_filter_maintenance($gsm) {
        $this->db->where('a.station_gsm', $gsm);
        $this->db->from('filters_maintenance a');
        $this->db->join('filters b', 'a.filter_code = b.filter_code', 'left');
        return $this->db->get()->result();
    }

    function get_filter_details_by_code($filter_code) {
        $this->db->where('filter_code', $filter_code);
        return $this->db->get('filters')->row();
    }

    function check_if_filter_maint_available_gsm_filter($station_gsm, $filter_code) {
        $this->db->where('station_gsm', $station_gsm);
        $this->db->where('filter_code', $filter_code);
        return $this->db->get('filters_maintenance')->num_rows();
    }

    function get_filter_maintenance_details_by_gsm($station_gsm, $filter_code) {
        $this->db->where('station_gsm', $station_gsm);
        $this->db->where('filter_code', $filter_code);
        return $this->db->get('filters_maintenance')->row();
    }

    function update_filter_maint_gsm_filter($station_gsm, $filter_code, $data) {
        $this->db->where('station_gsm', $station_gsm);
        $this->db->where('filter_code', $filter_code);
        $this->db->update('filters_maintenance', $data);
    }

    function insert_filter_maint_gsm_filter($data) {
        $this->db->insert('filters_maintenance', $data);
    }

    function check_filter_main_in_history($station_gsm, $filter_code, $date_serviced, $action) {
        $this->db->where('station_gsm', $station_gsm);
        $this->db->where('filter_code', $filter_code);
        $this->db->where('date_serviced', $date_serviced);
        $this->db->where('action', $action);
        return $this->db->get('filters_maint_history')->num_rows();
    }

    function get_filter_history_data_by_date($start) {
        $query = $this->db->query("SELECT DISTINCT x.filter_code,x.station_gsm,x.action,x.date_serviced,x.maker_id FROM eco_filters_maint_history x JOIN eco_filters y ON x.filter_code=y.filter_code WHERE x.date_registered>='$start' ");
        return $query->result();
    }

    function get_all_filter_need_clean_main() {
        $this->db->select('b.filter_desc,COUNT(*) as total');
        $this->db->where('a.per_remain_clean <', 0.3); // 30%
        $this->db->group_by('b.filter_desc');
        $this->db->from('filters_maintenance a');
        $this->db->join('filters b', 'a.filter_code = b.filter_code', 'LEFT');
        return $this->db->get()->result();
    }

    function get_all_filter_need_replace_main() {
        $this->db->select('b.filter_desc,COUNT(*) as total');
        $this->db->where('a.per_remain_replace <', 0.3); // 30%
        $this->db->group_by('b.filter_desc');
        $this->db->from('filters_maintenance a');
        $this->db->join('filters b', 'a.filter_code = b.filter_code', 'LEFT');
        return $this->db->get()->result();
    }

    function insert_statement_record($data) {
        $this->db->insert('station_maint_statements_hist', $data);
        return $this->db->insert_id();
    }

}
