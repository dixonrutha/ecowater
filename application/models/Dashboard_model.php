<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Dashboard_model extends CI_Model
{

    function __construct()
    {
        parent::__construct();
    }

    # new models start

    function get_campus_sales_today($today)
    {
        $this->db->select('c.campus_name,SUM(a.d1_open_bal_card) as d1opbalcard,SUM(a.d1_closing_bal_card) as d1clbalcard,SUM(a.d1_open_bal_cash) as d1opbalcash,SUM(a.d1_closing_bal_cash) as d1clbalcash,'
            . 'SUM(a.d2_open_bal_card) as d2opbalcard,SUM(a.d2_closing_bal_card) as d2clbalcard,SUM(a.d2_open_bal_cash) as d2opbalcash,SUM(a.d2_closing_bal_cash) as d2clbalcash,');
        //$this->db->where('a.date', $today);
        $this->db->where('year(a.date)', date('Y'));
        $this->db->from('station_sales_hist a');
        $this->db->join('stations b', 'a.station_gsm = b.gsm');
        $this->db->join('campus c', 'b.campus_code = c.campus_code');
        $this->db->group_by('c.campus_name');
        return $this->db->get()->result();
    }

    function get_campus_sales_month($from_date, $to_date)
    {
        $query = $this->db->query("
        SELECT 
            c.campus_name,
            SUM((a.d1_closing_bal_card - a.d1_open_bal_card) + (a.d1_closing_bal_cash - a.d1_open_bal_cash) + (a.d2_closing_bal_card - a.d2_open_bal_card) + (a.d2_closing_bal_cash - a.d2_open_bal_cash)) AS sales
        FROM
            eco_station_sales_hist a
                JOIN
            eco_stations b ON a.station_gsm = b.gsm
                JOIN
            eco_campus c ON b.campus_code = c.campus_code
        WHERE
            a.date BETWEEN '$from_date' AND '$to_date'
        GROUP BY c.campus_name
        ORDER BY 2 DESC
        LIMIT 5
        ");
        return $query->result();
    }

    function get_total_campus_sales($from_date, $to_date)
    {
        $query = $this->db->query("
        SELECT 
            SUM((a.d1_closing_bal_card - a.d1_open_bal_card) + (a.d1_closing_bal_cash - a.d1_open_bal_cash) + (a.d2_closing_bal_card - a.d2_open_bal_card) + (a.d2_closing_bal_cash - a.d2_open_bal_cash)) AS t_sales
        FROM
            eco_station_sales_hist a
                JOIN
            eco_stations b ON a.station_gsm = b.gsm
                JOIN
            eco_campus c ON b.campus_code = c.campus_code
        WHERE
            a.date BETWEEN '$from_date' AND '$to_date'     
        ");
        return $query->row();
    }

    function get_sub_count($from_date, $to_date)
    {
        $this->db->select('COUNT(1) AS sub_count');
        $this->db->where('CAST(date_registered AS date) >=', $from_date);
        $this->db->where('CAST(date_registered AS date) <=', $to_date);
        return $this->db->get('subscribers')->row();
    }

    function get_active_sub_count()
    {
        $this->db->select('COUNT(*) AS sub_count');
        // $this->db->where('sub_stat_dormancy !=', 'D');
        return $this->db->get('subscribers')->row();
    }

    function get_sub_perf()
    {
        $query = $this->db->query("
            SELECT 
                sub_stat_dormancy, COUNT(*) AS sub_count
            FROM
                eco_subscribers
            GROUP BY sub_stat_dormancy
            ORDER BY 2 DESC;
        ");
        return $query->result();
    }

    function get_sub_categories()
    {
        $cat = array('STUDENT', 'STAFF', 'HOUSEHOLD', 'NON_RESIDENT');
        $this->db->where_in('category', $cat);
        return $this->db->get('sub_category')->result();
    }

    function create_sub_perf_view()
    {
        $query = $this->db->query("
            CREATE OR REPLACE VIEW eco_sub_stat_vw AS
            SELECT 
                category, sub_stat_dormancy, COUNT(*) AS sub_count
            FROM
                eco_subscribers
            GROUP BY category, sub_stat_dormancy
        ");
    }

    function create_revenue_view($from_date, $to_date)
    {
        $query = $this->db->query("
            CREATE OR REPLACE VIEW eco_revenue_vw AS
            SELECT 'Subscription' AS revenue, SUM(sub_fee_amount) AS amount FROM eco_subscribers WHERE date_registered BETWEEN '$from_date' AND '$to_date' 
            UNION ALL 
            SELECT 'Topup', SUM(amount) FROM eco_card_topup WHERE trn_date BETWEEN '$from_date' AND '$to_date'
            UNION ALL
            SELECT 'Cash',SUM((d1_closing_bal_cash - d1_open_bal_cash)+(d2_closing_bal_cash - d2_open_bal_cash)) FROM eco_station_sales_hist WHERE date BETWEEN '$from_date' AND '$to_date'
        ");
    }

    function get_revenues($from_date, $to_date)
    {
        $query = $this->db->query("
            SELECT revenue,SUM(amount) as amount FROM eco_revenue_vw GROUP BY revenue
        ");
        return $query->result();
    }

    function get_revenue_share($from_date, $to_date)
    {
        $query = $this->db->query(" select SUM(sub_fee)       as sub_fee,
                                SUM(pos_recharges) as pos_recharges,
                                SUM(mob_recharges) as mob_recharges,
                                SUM(val_recharge)  as val_recharge,
                                SUM(cash_sales)    as cash_sales,
                                SUM(card_renewal)  as card_renewal
                            from (
                              select SUM(sub_fee)       as sub_fee,
                                     SUM(pos_recharges) as pos_recharges,
                                     SUM(mob_recharges) as mob_recharges,
                                     SUM(val_recharge)  as val_recharge,
                                     SUM(cash_sales)    as cash_sales,
                                     SUM(card_renewal)  as card_renewal
                              from eco_bi_daily_revenue
                              where cast(report_date as date) between '$from_date' AND '$to_date'
                              union all
                              select SUM(sub_fee)       as sub_fee,
                                     SUM(pos_recharges) as pos_recharges,
                                     SUM(mob_recharges) as mob_recharges,
                                     SUM(val_recharge)  as val_recharge,
                                     SUM(cash_sales)    as cash_sales,
                                     SUM(card_renewal)  as card_renewal
                              from eco_today_revenue_vw
                              where cast(report_date as date) between '$from_date' AND '$to_date'
                          ) x ");
        return $query->row();
    }

    function create_royalty_view($from_date, $to_date)
    {
        $query = $this->db->query("
            CREATE OR REPLACE VIEW eco_campus_royalty_vw AS 
            SELECT 
                date AS sales_date,
                royalty,
                SUM((d1_closing_bal_card - d1_open_bal_card) + (d1_closing_bal_cash - d1_open_bal_cash) + (d2_closing_bal_card - d2_open_bal_card) + (d2_closing_bal_cash - d2_open_bal_cash)) AS sales,
                ROUND(SUM((d1_closing_bal_card - d1_open_bal_card) + (d1_closing_bal_cash - d1_open_bal_cash) + (d2_closing_bal_card - d2_open_bal_card) + (d2_closing_bal_cash - d2_open_bal_cash)) * (royalty / 100),
                        2) AS royalty_amount
            FROM
                eco_station_sales_hist
            WHERE
                date BETWEEN '$from_date' AND '$to_date'
            GROUP BY date,royalty 
        ");
    }

    function get_royalty($from_date, $to_date)
    {
        $this->db->select('SUM(royalty_amount) as amount');
        $this->db->where('sales_date >=', $from_date);
        $this->db->where('sales_date <=', $to_date);
        return $this->db->get('campus_royalty_vw')->row();
    }

    function create_water_sales_view($from_date, $to_date)
    {
        $query = $this->db->query("
            CREATE OR REPLACE VIEW eco_water_sales_vw AS 
            SELECT 
                a.date AS sales_date,
                c.id AS campus_id,
                d.price_per_liter,
                SUM((d1_closing_bal_card - d1_open_bal_card) + (d1_closing_bal_cash - d1_open_bal_cash) + (d2_closing_bal_card - d2_open_bal_card) + (d2_closing_bal_cash - d2_open_bal_cash)) AS sales,
                ROUND(SUM((d1_closing_bal_card - d1_open_bal_card) + (d1_closing_bal_cash - d1_open_bal_cash) + (d2_closing_bal_card - d2_open_bal_card) + (d2_closing_bal_cash - d2_open_bal_cash)) / d.price_per_liter) AS volume
            FROM
                eco_station_sales_hist a
                    LEFT JOIN
                eco_stations b ON a.station_gsm = b.gsm
                    LEFT JOIN
                eco_campus c ON b.campus_code = c.campus_code
                    LEFT JOIN
                eco_water_price d ON c.id = d.campus
            WHERE
                a.date BETWEEN '$from_date' AND '$to_date'
                    AND d.status = 'Active'
            GROUP BY a.date , c.id , d.price_per_liter
        ");
    }

    function get_volumes($from_date, $to_date)
    {
        $this->db->select('SUM(volume) as volume');
        $this->db->where('sales_date >=', $from_date);
        $this->db->where('sales_date <=', $to_date);
        return $this->db->get('water_sales_vw')->row();
    }

    function get_station_not_past_seven_days($past_seven_days)
    {
        $query = $this->db->query(
            "SELECT
                a.*, b.station_name
            FROM
                eco_incoming_message a,
                eco_stations b
            WHERE
                a.sender = b.gsm
                    AND a.sender IN (SELECT DISTINCT
                        gsm
                    FROM
                        eco_stations)
                    AND (LOWER(message_pro) LIKE '%lack%'
                    OR LOWER(message_pro) LIKE '%error%'
                    OR LOWER(message_pro) LIKE '%stop%'
                    OR LOWER(message_pro) LIKE '%long%time%no%')
            ORDER BY a.id DESC
            LIMIT 4"
        );
        /*
          $query = $this->db->query("SELECT a.msisdn,b.station_name,a.code,a.date_registered,b.id FROM eco_commands_incoming a JOIN eco_stations b ON a.msisdn=b.gsm WHERE (lower(code) like '%lack%' OR lower(code) like '%error%' OR lower(code) like '%stop%' OR lower(code) like '%long%time%no%') AND a.date_registered>='$past_seven_days' ORDER BY a.date_registered DESC");
         */
        return $query->result();
    }

    function get_monthly_topup()
    {
        $this->db->select('category,SUM(amount) as t_amount');
        $this->db->where('trn_date >=', date('Y-m-') . '01');
        $this->db->group_by('category');
        return $this->db->get('card_topup')->result();
    }

    function get_sales_seven_days($today, $past_seven_days)
    {
        $this->db->where('date >=', $past_seven_days);
        $this->db->where('date <=', $today);
        return $this->db->get('station_sales_hist')->result();
    }

    function get_campus_monthly_sales($first_date, $today)
    {
        $this->db->select('c.id as campus_id,SUM((d1_closing_bal_card-d1_open_bal_card)+(d1_closing_bal_cash-d1_open_bal_cash)+(d2_closing_bal_card-d2_open_bal_card)+(d2_closing_bal_cash-d2_open_bal_cash)) as sales');
        $this->db->where('a.date <=', $today);
        $this->db->where('a.date >=', $first_date);
        $this->db->from('station_sales_hist a');
        $this->db->join('stations b', 'a.station_gsm = b.gsm', 'left');
        $this->db->join('campus c', 'b.campus_code = c.campus_code', 'left');
        $this->db->group_by('c.id');
        return $this->db->get()->result();
    }

    function get_all_active_subscribers()
    {
        $this->db->where('record_stat', 'OPEN');
        return $this->db->get('subscribers')->num_rows();
    }

    function get_all_new_subscribers($today)
    {
        $this->db->where('record_stat', 'OPEN');
        $this->db->where('CAST(date_registered AS date) >=', $today);
        return $this->db->get('subscribers')->num_rows();
    }

    function get_campus_water_price($campus_id)
    {
        $this->db->where('campus', $campus_id);
        $this->db->order_by('date_registered', 'DESC');
        return $this->db->get('water_price')->row();
    }

    function get_subscribers_count_by_campus($campus_id)
    {
        $this->db->where('b.id', $campus_id);
        $this->db->from('subscribers a');
        $this->db->join('campus b', 'a.campus_code = b.campus_code', 'LEFT');
        return $this->db->get()->num_rows();
    }

    function get_stations_count_by_campus($campus_id)
    {
        $this->db->where('b.id', $campus_id);
        $this->db->from('stations a');
        $this->db->join('campus b', 'a.campus_code = b.campus_code', 'LEFT');
        return $this->db->get()->num_rows();
    }

    function get_utility_bills_by_campus($campus_id)
    {
        $year = date('Y');
        $this->db->select('a.utility_type,SUM(a.total_cost) as cost');
        $this->db->group_by('a.utility_type');
        $this->db->where('c.id', $campus_id);
        $this->db->where('a.yearmonth >=', $year . '01');
        $this->db->where('a.yearmonth <=', $year . '12');
        $this->db->from('station_utility_bills a');
        $this->db->join('stations b', 'a.station_id = b.id', 'LEFT');
        $this->db->join('campus c', 'b.campus_code = c.campus_code', 'LEFT');
        return $this->db->get()->result();
    }

    function get_campus_utility_pending_bill_invoices($campus_id)
    {
        $this->db->select('a.*');
        $this->db->order_by('a.bill_yearmonth', 'DESC');
        $this->db->where('a.campus_id', $campus_id);
        $this->db->where('a.status', 'Unpaid');
        $this->db->from('campus_utility_invoices a');
        return $this->db->get()->result();
    }

    function get_campus_pending_royalty_invoices($campus_id)
    {
        $this->db->order_by('invoice_no', 'DESC');
        $this->db->where('campus_id', $campus_id);
        $this->db->where('status', 'Unpaid');
        return $this->db->get('royalty_invoices')->result();
    }

    function get_campus_royalty($campus_id, $from, $to)
    {
        $query = $this->db->query("SELECT SUM((d1_closing_bal_card - d1_open_bal_card) +
           (d1_closing_bal_cash - d1_open_bal_cash) +
           (d2_closing_bal_card - d2_open_bal_card) +
           (d2_closing_bal_cash - d2_open_bal_cash)) as sales,
                date,
                royalty
           FROM eco_station_sales_hist
          WHERE date between '$from' and '$to'
            and station_gsm in (SELECT a.gsm
                                  from eco_stations a
                                  join eco_campus b on a.campus_code = b.campus_code
                                 WHERE b.id = '$campus_id')
          GROUP BY date,royalty
          ORDER BY date ASC");
        return $query->result();
    }

    function get_campus_royalty_ytd($campus_id, $from, $to)
    {
        $query = $this->db->query("SELECT SUM((d1_closing_bal_card - d1_open_bal_card) +
           (d1_closing_bal_cash - d1_open_bal_cash) +
           (d2_closing_bal_card - d2_open_bal_card) +
           (d2_closing_bal_cash - d2_open_bal_cash)) * (royalty/100) as royalty
  FROM eco_station_sales_hist
 WHERE date between '$from' and '$to'
   and station_gsm in (SELECT a.gsm
                         from eco_stations a
                         join eco_campus b on a.campus_code = b.campus_code
                        WHERE b.id = '$campus_id')");
        return $query->row();
    }

    function create_topup_view($from_date, $to_date)
    {
        $query = $this->db->query(
            "CREATE OR REPLACE VIEW eco_topup_vw AS
        SELECT 
            trn_date, SUM(amount) AS total_topup
        FROM
            eco_card_topup
        WHERE
            trn_date BETWEEN '$from_date' AND '$to_date'
        GROUP BY trn_date"
        );
    }

    function get_topups($from_date, $to_date)
    {
        $query = $this->db->query("SELECT SUM(recharges) as total_topup FROM eco_recharges_vw WHERE trn_date BETWEEN '$from_date' AND '$to_date'");
        return $query->row();
    }

    function get_cash_sales($from_date, $to_date)
    {
        $this->db->select('SUM(cash_sale) as cash_sale');
        return $this->db->get_where('sales_vw', array('date >=' => $from_date, 'date <=' => $to_date))->row();
    }

    function get_total_subscription_fees($from_date, $to_date)
    {
        $this->db->select('SUM(sub_fee_amount) as sub_fee_amount');
        return $this->db->get_where('subscribers', array('sub_registration_date >=' => $from_date, 'sub_registration_date <=' => $to_date))->row();
    }

}
