<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Topup_model extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function get_mobile_recharges($from_date, $to_date) {
        $result = $this->db->query(
                        "SELECT report_date AS trn_date,
                        mob_recharges_count AS trn_count,
                        mob_recharges AS amount
                 FROM   (SELECT report_date,
                                mob_recharges_count,
                                mob_recharges
                         FROM eco_bi_daily_revenue
                         WHERE report_date BETWEEN '$from_date' AND '$to_date'
                         UNION ALL
                         SELECT report_date,
                                mob_recharges_count,
                                mob_recharges
                         FROM eco_today_revenue_vw
                         WHERE report_date BETWEEN '$from_date' AND '$to_date' ) x
                 ORDER  BY x.report_date ASC")->result();
        return $result;
    }

    function get_mobile_recharges_monthly($from_date, $to_date) {
        $result = $this->db->query(
                        "SELECT Date_format(report_date, '%Y-%m') AS trn_date,
                        sum(mob_recharges_count) AS trn_count,
                        sum(mob_recharges) AS amount
                 FROM   (SELECT report_date,
                                mob_recharges_count,
                                mob_recharges
                         FROM eco_bi_daily_revenue
                         WHERE report_date BETWEEN '$from_date' AND '$to_date'
                         UNION ALL
                         SELECT report_date,
                                mob_recharges_count,
                                mob_recharges
                         FROM eco_today_revenue_vw
                         WHERE report_date BETWEEN '$from_date' AND '$to_date' ) x
                             GROUP BY Date_format(report_date, '%Y-%m')
                 ORDER  BY x.report_date ASC ")->result();
        return $result;
    }

    function get_mobile_recharges_yearly($from_date, $to_date) {
        $result = $this->db->query(
                        "SELECT Date_format(report_date, '%Y') AS trn_date,
                        sum(mob_recharges_count) AS trn_count,
                        sum(mob_recharges) AS amount
                 FROM   (SELECT report_date,
                                mob_recharges_count,
                                mob_recharges
                         FROM eco_bi_daily_revenue
                         WHERE report_date BETWEEN '$from_date' AND '$to_date'
                         UNION ALL
                         SELECT report_date,
                                mob_recharges_count,
                                mob_recharges
                         FROM eco_today_revenue_vw
                         WHERE report_date BETWEEN '$from_date' AND '$to_date' ) x
                             GROUP BY Date_format(report_date, '%Y')
                 ORDER  BY x.report_date ASC ")->result();
        return $result;
    }

    function get_pending_payments() {
        $this->db->select('sum(amount) as amount,count(1) as trn_count');
        return $this->db->get_where('selcom_payments', array('v_status' => '000', 'validator_status' => '104', 'reversed' => 'N', 'channel_id' => 'SELCOM'))->row();
    }

    function get_validated_payments_group_by_station($from_date, $to_date) {
        $result = $this->db->query("select d.station_name, count(1) as trn_count, sum(b.amount) as trn_amount
                from eco_val_validator_logs a,
                     eco_selcom_payments b,
                     eco_val_validators c,
                     eco_stations d
                where a.comm_ref = b.val_comm_ref
                  and a.validator_id = c.validator_id
                  and c.station_id = d.id
                  and cast(a.date_registered as date) between '$from_date' and '$to_date'
                  and a.request_status = '100'
                  and b.v_status = '000'
                  and b.reversed = 'N'
                group by d.station_name")->result();
        return $result;
    }

    function get_monthly_validation_group_by_station($yearmonth) {
        $report_date = date('Y-m-d');
        $result = $this->db->query("select a.station_name, sum(a.trn_count) as trn_count, sum(a.trn_amount) as trn_amount
                from eco_bi_station_mob_validation a,
                     eco_dim_dates b
                where a.report_date = b.full_date
                  and DATE_FORMAT(b.full_date, '%Y%m') = '$yearmonth'
                      and b.full_date <= '$report_date'
                group by a.station_name")->result();
        return $result;
    }

    function get_today_validation_group_by_station($report_date) {
        $result = $this->db->query("select a.station_name, sum(a.trn_count) as trn_count, sum(a.trn_amount) as trn_amount
                from eco_bi_station_mob_validation a,
                     eco_dim_dates b
                where a.report_date = b.full_date
                  and CAST(b.full_date AS date) = '$report_date'
                      and b.full_date <= '$report_date'
                group by a.station_name")->result();
        return $result;
    }

    function get_mobile_tran_count($from_date, $to_date) {
        $result = $this->db->query("SELECT Cast(timestamp_selcom AS DATE) AS trn_date,
                Count(1)                      AS trn_count
         FROM   eco_selcom_payments
         WHERE  v_status = '000'
                AND reversed = 'N'
                AND Cast(timestamp_selcom AS DATE) BETWEEN '$from_date' AND '$to_date'
         GROUP  BY Cast(timestamp_selcom AS DATE)")->result();
        return $result;
    }

    function get_all_racharges($from_date, $to_date) {
        $this->db->select('a.*,b.sub_name');
        $this->db->where('a.trn_date >=', $from_date);
        $this->db->where('a.trn_date <=', $to_date);
        $this->db->from('card_topup a');
        $this->db->join('subscribers b', 'a.sub_id = b.id', 'LEFT');
        return $this->db->get()->result();
    }

    function get_mobile_val_recharges($from_date, $to_date) {
        $result = $this->db->query("select a.*, b.sub_name, b.sub_mobile, c.campus_name, d.description as v_status_desc, e.description as n_status_desc
                from eco_selcom_payments a
                         left join eco_sub_card_vw b on a.sub_id = b.sub_id
                         left join eco_campus c on b.campus_code = c.campus_code
                         inner join eco_selcom_response_code d on a.v_status = d.e_code
                         left join eco_selcom_response_code e on a.n_status = e.e_code
                where cast(a.timestamp_selcom as date) between '$from_date'
                          and '$to_date' and a.reversed = 'N'
                order by a.timestamp_selcom asc")->result();
        return $result;
    }

}
