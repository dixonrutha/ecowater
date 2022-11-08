<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cronjobs extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model(array('Sms_model', 'Stations_model', 'Subscriber_model', 'Maintenance_model'));
        //Call this mysql procedure to change session timezone for all database CRUD
//        $this->db->query("CALL mysql.store_time_zone()");
    }

    function test()
    {
        try {
            $row = $this->db->get_where('caf_test', array('id' => 8))->row();
            $card_data = preg_replace('#\s+#', '', trim($row->card_data));
            $public_id = hexdec(substr($card_data, 36, 4));
            $card_no = hexdec(substr($card_data, 40, 8));
            echo $card_no;
        } catch (Exception $e) {
            echo 'error';
        }
    }

    function get_blocked_card($card_luhn = '')
    {
        $row = $this->db->get_where('blacklist_cards', array('card_luhn' => $card_luhn));
        if ($row->num_rows() == 1) {
            $card_data_old = 'FE02110001020513000493A50000000000031C6611CB';
            echo substr($card_data_old, 0, 12) . 'FFFF' . substr($card_data_old, 16, 28);
        } else {
            echo 0;
        }
    }

    function getStationsClosingBalance()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        $stations = $this->Stations_model->get_all_stations();
        foreach ($stations as $s) {
            $this->db->trans_start();
            $mno = $s->gsm;
            $last_sales = $this->Stations_model->get_station_last_sales_data($mno);
            $yday = date('Y-m-d', strtotime('-1 days'));
            $today = date('Y-m-d');
            //get campus royalty
            $royalty = 0;
            $royalty_query = $this->db->query("SELECT * FROM eco_campus_royalty WHERE campus_id='$s->campus_id' AND status='Active'");
            //$result = $query->row();
            if ($royalty_query->num_rows() >= 1) {
                $result = $royalty_query->row();
                $royalty = $result->royalty;
            }
            if ($last_sales->date < $yday) {
                //no data for yesterday need to insert yesterday and today
                $data = array(
                    array(
                        'date' => $yday,
                        'station_gsm' => $mno,
                        'd1_open_bal_card' => $last_sales->d1_closing_bal_card,
                        'd1_closing_bal_card' => $last_sales->d1_closing_bal_card,
                        'd1_open_bal_cash' => $last_sales->d1_closing_bal_cash,
                        'd1_closing_bal_cash' => $last_sales->d1_closing_bal_cash,
                        'd2_open_bal_card' => $last_sales->d2_closing_bal_card,
                        'd2_closing_bal_card' => $last_sales->d2_closing_bal_card,
                        'd2_open_bal_cash' => $last_sales->d2_closing_bal_cash,
                        'd2_closing_bal_cash' => $last_sales->d2_closing_bal_cash,
                        'royalty' => $royalty
                    ),
                    array(
                        'date' => $today,
                        'station_gsm' => $mno,
                        'd1_open_bal_card' => $last_sales->d1_closing_bal_card,
                        'd1_closing_bal_card' => $last_sales->d1_closing_bal_card,
                        'd1_open_bal_cash' => $last_sales->d1_closing_bal_cash,
                        'd1_closing_bal_cash' => $last_sales->d1_closing_bal_cash,
                        'd2_open_bal_card' => $last_sales->d2_closing_bal_card,
                        'd2_closing_bal_card' => $last_sales->d2_closing_bal_card,
                        'd2_open_bal_cash' => $last_sales->d2_closing_bal_cash,
                        'd2_closing_bal_cash' => $last_sales->d2_closing_bal_cash,
                        'royalty' => $royalty
                    )
                );
                $this->db->insert_batch('station_sales_hist', $data);
            } elseif ($last_sales->date == $yday) {
                $data = array(
                    'date' => $today,
                    'station_gsm' => $mno,
                    'd1_open_bal_card' => $last_sales->d1_closing_bal_card,
                    'd1_closing_bal_card' => $last_sales->d1_closing_bal_card,
                    'd1_open_bal_cash' => $last_sales->d1_closing_bal_cash,
                    'd1_closing_bal_cash' => $last_sales->d1_closing_bal_cash,
                    'd2_open_bal_card' => $last_sales->d2_closing_bal_card,
                    'd2_closing_bal_card' => $last_sales->d2_closing_bal_card,
                    'd2_open_bal_cash' => $last_sales->d2_closing_bal_cash,
                    'd2_closing_bal_cash' => $last_sales->d2_closing_bal_cash,
                    'royalty' => $royalty
                );
                $this->db->insert('station_sales_hist', $data);
            }
            $msms = '123456inquire amount';
            //$this->Sms_model->sendsms($msms, $mno);
            $data = array(
                'receiver' => $mno,
                'message' => $msms,
                'maker_id' => 'SYSTEM'
            );
            $this->Sms_model->insertOutgoingSMS($data);
            $desc = 'Station sales history for ' . $mno;
            $data2 = array(
                'function_run' => 'cronjobs/getStationsClosingBalance',
                'description' => $desc
            );
            $this->db->insert('cronjob_run_hist', $data2);
            $this->db->trans_complete();
        }
    }

    function insertTodaySales()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        $today = date('Y-m-d');
        $stations = $this->Stations_model->get_all_stations();
        foreach ($stations as $s) {
            $royalty = 0;
            $royalty_query = $this->db->query("SELECT * FROM eco_campus_royalty WHERE campus_id='$s->campus_id' AND status='Active' ORDER BY id DESC");
            if ($royalty_query->num_rows() >= 1) {
                $royalty_query = $royalty_query->row();
                $royalty = $royalty_query->royalty;
            }
            $today_sales = $this->db->get_where('station_sales_hist', array('station_gsm' => $s->gsm, 'date' => $today));
            if ($today_sales->num_rows() === 0) {
                $last_sales = $this->Stations_model->get_station_last_sales_data($s->gsm);
                $data = array(
                    'date' => $today,
                    'station_gsm' => $s->gsm,
                    'd1_open_bal_card' => $last_sales->d1_closing_bal_card,
                    'd1_closing_bal_card' => $last_sales->d1_closing_bal_card,
                    'd1_open_bal_cash' => $last_sales->d1_closing_bal_cash,
                    'd1_closing_bal_cash' => $last_sales->d1_closing_bal_cash,
                    'd2_open_bal_card' => $last_sales->d2_closing_bal_card,
                    'd2_closing_bal_card' => $last_sales->d2_closing_bal_card,
                    'd2_open_bal_cash' => $last_sales->d2_closing_bal_cash,
                    'd2_closing_bal_cash' => $last_sales->d2_closing_bal_cash,
                    'royalty' => $royalty
                );
                $this->db->insert('station_sales_hist', $data);
            }
        }
        $job_data = array(
            'function_run' => 'cronjobs/insertTodaySales',
            'description' => 'Insert current day sales'
        );
        $this->db->insert('cronjob_run_hist', $job_data);
    }

    function dormancyCheck()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        $from = date('Y-m-d', strtotime('-30 days'));
        $sub_data = $this->Subscriber_model->get_sub_topup_details($from);
        foreach ($sub_data as $s) {
            if ($s->tamount >= 18000) {
                // Good
                $data = array('sub_stat_dormancy' => 'G');
                $this->Subscriber_model->update_subscriber($data, $s->id);
            } elseif ($s->tamount < 1800) {
                // Normal
                $data = array('sub_stat_dormancy' => 'N');
                $this->Subscriber_model->update_subscriber($data, $s->id);
            }
        }
        //echo $from.' 00:00:00'; exit();
        $dormant_sub = $this->Subscriber_model->get_all_dormat_sub($from . ' 00:00:00');  // Never topup      
        foreach ($dormant_sub as $d) {
            //Mark sub as dormant D
            $data = array('sub_stat_dormancy' => 'D');
            $this->Subscriber_model->update_subscriber($data, $d->id);
        }
        $dormant_sub_second = $this->Subscriber_model->get_all_dormat_sub_second($from); //Last top up is 30 days ago
        foreach ($dormant_sub_second as $ds) {
            //Mark sub as dormant D
            $data = array('sub_stat_dormancy' => 'D');
            $this->Subscriber_model->update_subscriber($data, $ds->id);
        }
    }

    function cleanFilterHistoryTable()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        //$start = date('Y-m-d', strtotime('-1 days')).' 01:00:00';
        $start = '1970-01-01';
        $rows = $this->db->get_where('filters_maint_history', array('date_registered >=' => $start))->num_rows();
        if ($rows >= 1) {
            $this->db->trans_start();
            $data = $this->Maintenance_model->get_filter_history_data_by_date($start);
            $this->db->truncate('filters_maint_history_dump');
            $this->db->insert_batch('filters_maint_history_dump', $data);
            $this->db->delete('filters_maint_history', array('date_registered >=' => $start));
            $revised_data = $this->db->get('filters_maint_history_dump')->result();
            $this->db->insert_batch('filters_maint_history', $revised_data);
            $data2 = array(
                'function_run' => 'Cronjobs/cleanFilterHistoryTable',
                'description' => 'Clean filter history table'
            );
            $this->db->insert('cronjob_run_hist', $data2);
            $this->db->trans_complete();
        }
    }

    function subscriberPerformanceCheck()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        $from = date('Y-m-d', strtotime('-30 days'));
        $details = $this->Subscriber_model->get_sub_topup_details_2($from);
        //print_r($details); exit();
        $this->db->trans_start();
        foreach ($details as $d) {
            if ($d->tamount >= 18000) {
                //Excelent
                $data = array('sub_stat_dormancy' => 'E');
                $this->Subscriber_model->update_subscriber($data, $d->id);
            } elseif ($d->tamount >= 9000 && $d->tamount < 18000) {
                //Good
                $data = array('sub_stat_dormancy' => 'G');
                $this->Subscriber_model->update_subscriber($data, $d->id);
            } elseif ($d->tamount > 0 && $d->tamount < 9000) {
                //Normal
                $data = array('sub_stat_dormancy' => 'N');
                $this->Subscriber_model->update_subscriber($data, $d->id);
            } elseif ($d->tamount == 0) {
                //Good
                $data = array('sub_stat_dormancy' => 'D');
                $this->Subscriber_model->update_subscriber($data, $d->id);
            }
        }
        //Mark all sub dormant if not top up within 30 days and registered before 30 days ago
        $data = array('sub_stat_dormancy' => 'D');
        $this->Subscriber_model->mark_sub_dormant_old_top_up($data, $from);
        $data2 = array(
            'function_run' => 'Cronjobs/subscriberPerformanceCheck',
            'description' => 'Subscriber performance'
        );
        $this->db->insert('cronjob_run_hist', $data2);
        $this->db->trans_complete();
        //echo 'check'; exit();
    }

    function updateSubLastTopUp()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        $start = date('H:i:s');
        $this->db->select('sub_id, MAX(trn_date) as last_trn_date');
        $this->db->group_by('sub_id');
        $topup = $this->db->get('card_topup')->result();
        //print_r($topup); exit();
        foreach ($topup as $t) {
            $data = array('date_last_topup' => $t->last_trn_date);
            $this->db->where('id', $t->sub_id);
            $this->db->update('subscribers', $data);
        }
        $end = date('H:i:s');
        $data2 = array(
            'function_run' => 'Cronjobs/updateSubLastTopUp',
            'description' => 'Subscriber last recharge',
            'start_end_time' => $start . ' - ' . $end
        );
        $this->db->insert('cronjob_run_hist', $data2);
        // echo 'finish'; exit();
    }

    function updateFilterMaintenance()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        $this->db->trans_start();
        $query = "UPDATE eco_filters_maintenance a SET a.days_remain_clean=DATEDIFF(a.next_cleaning,CURDATE()),a.days_remain_replace=DATEDIFF(a.next_replacement,CURDATE())";
        $this->db->query($query);
        $query2 = "UPDATE eco_filters_maintenance a JOIN eco_filters b ON a.filter_code=b.filter_code SET a.per_remain_clean=(a.days_remain_clean/b.clean_days),a.per_remain_replace=(a.days_remain_replace/b.replace_days)";
        $this->db->query($query2);
        $data = array(
            'function_run' => 'Cronjobs/updateFilterMaintenance',
            'description' => 'Update filter maintanance'
        );
        $this->db->insert('cronjob_run_hist', $data);
        $this->db->trans_complete();
    }

    function clearAllSessions()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        //clear session
        $this->db->query('TRUNCATE TABLE eco_ci_sessions');
        //clear cashier OTP table
        $this->db->query('TRUNCATE TABLE eco_bottles_otp');
        //clear api logs
        $this->db->query('TRUNCATE TABLE eco_rest_api_logs');

        $data = array(
            'function_run' => 'Cronjobs/clearAllSessions',
            'description' => 'Clear sessions'
        );
        $this->db->insert('cronjob_run_hist', $data);
    }

    function analyticsData()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        //get subscribers
        $this->data['subscribers'] = $this->db->get('subscribers')->num_rows();
        $this->data['subscribers_factor'] = 0;
        //campuses
        $this->data['campuses'] = $this->db->get('campus')->num_rows();
        //bottle saved, money saved and cardon avoided
        $row = $this->db->query("SELECT 
                        ROUND(SUM((d1_closing_bal_card - d1_open_bal_card) + (d1_closing_bal_cash - d1_open_bal_cash) + (d2_closing_bal_card - d2_open_bal_card) + (d2_closing_bal_cash - d2_open_bal_cash)) / d.price_per_liter) AS bottles_saved,
                        (ROUND(SUM((d1_closing_bal_card - d1_open_bal_card) + (d1_closing_bal_cash - d1_open_bal_cash) + (d2_closing_bal_card - d2_open_bal_card) + (d2_closing_bal_cash - d2_open_bal_cash)) / d.price_per_liter) * (1000 - d.price_per_liter)) AS money_saved,
                        (ROUND(SUM((d1_closing_bal_card - d1_open_bal_card) + (d1_closing_bal_cash - d1_open_bal_cash) + (d2_closing_bal_card - d2_open_bal_card) + (d2_closing_bal_cash - d2_open_bal_cash)) / d.price_per_liter) * 0.165 * 1000) AS carbon_prevented
                    FROM
                        eco_station_sales_hist a,
                        eco_stations b,
                        eco_campus c,
                        eco_water_price d
                    WHERE
                        a.station_gsm = b.gsm
                            AND b.campus_code = c.campus_code
                            AND c.id = d.campus
                            AND d.status = 'Active' ")->row();
        $this->data['bottles_saved'] = $row->bottles_saved;
        $this->data['money_saved'] = $row->money_saved;
        $this->data['carbon_prevented'] = $row->carbon_prevented;
        //merchants
        $this->data['merchants'] = 0;
        $this->data['last_updated'] = date('Y-m-d H:i:s');
        $this->db->update('website_impact_analysis', $this->data);
        //logs tracking             
        $data = array(
            'function_run' => 'Cronjobs/analyticsData',
            'description' => 'Website analytics data',
            'remote_ip' => $_SERVER['REMOTE_ADDR']
        );
        $this->db->insert('cronjob_run_hist', $data);
        $this->db->query("DELETE FROM eco_cronjob_run_hist WHERE run_datetime < (now() - interval 1 hour) AND function_run = 'Cronjobs/analyticsData'");
    }

    function eomReports($as_on_date = '')
    {
        //$as_on_date = '2021-12-31';
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        if ($as_on_date == '') {
            $row = $this->db->query("SELECT LAST_DAY(now() - INTERVAL 1 MONTH) AS last_day")->row();
            $as_on_date = $row->last_day;
            //echo $as_on_date; exit();
        }
        $eom_date = date('m-d', strtotime($as_on_date));
        $check_eom_date = $this->db->get_where('eom_date', array('valid_eom_dates' => $eom_date))->num_rows();
        if ($check_eom_date <= 0) {
            echo 'Error! Not a valid EOM date';
            exit();
        }
        $yearmonth = date('Ym', strtotime($as_on_date));
        # BI Campus reports start
        //create campus sales view
        $this->db->query("
            select extract(year_month from a.date)                                         as sales_yearmonth,
                    b.id                                                                    as station_id,
                    c.id                                                                    as campus_id,
                    sum((ifnull(a.d1_closing_bal_card, 0) - ifnull(a.d1_open_bal_card, 0)) +
                        (ifnull(a.d2_closing_bal_card, 0) - ifnull(a.d2_open_bal_card, 0))) as card_sale,
                    sum((ifnull(a.d1_closing_bal_cash, 0) - ifnull(a.d1_open_bal_cash, 0)) +
                        (ifnull(a.d2_closing_bal_cash, 0) - ifnull(a.d2_open_bal_cash, 0))) as cash_sale,
                    sum((ifnull(a.d1_closing_bal_card, 0) - ifnull(a.d1_open_bal_card, 0)) +
                        (ifnull(a.d2_closing_bal_card, 0) - ifnull(a.d2_open_bal_card, 0)) +
                        (ifnull(a.d1_closing_bal_cash, 0) - ifnull(a.d1_open_bal_cash, 0)) +
                        (ifnull(a.d2_closing_bal_cash, 0) - ifnull(a.d2_open_bal_cash, 0))) as total_sale
            from eco_station_sales_hist a,
                  eco_stations b,
                  eco_campus c
            where a.station_gsm = b.gsm
               and b.campus_code = c.campus_code
               and a.date <= '$as_on_date'
            group by extract(year_month from a.date), b.id, c.id
        ");
        $campus = $this->db->get('campus')->result();
        //insert campus into bi campus table
        foreach ($campus as $c) {
            $campus_name = $c->campus_name;
            //check if record exist and update else insert
            $check = $this->db->get_where('bi_campus_reports', array('campus_id' => $c->id, 'as_on_date' => $as_on_date));
            if ($check->num_rows() >= 1) {
                $check = $check->row();
                $campus_data = array('campus_id' => $c->id, 'campus_name' => $campus_name, 'yearmonth' => $yearmonth);
                $this->db->where('id', $check->id);
                $this->db->update('bi_campus_reports', $campus_data);
            } else {
                $campus_data = array('campus_id' => $c->id, 'campus_name' => $campus_name, 'as_on_date' => $as_on_date, 'yearmonth' => $yearmonth);
                $this->db->insert('bi_campus_reports', $campus_data);
            }
        }
        //get campus sales
        $this->db->select('campus_id, SUM(card_sale) as card_sale, sum(cash_sale) as cash_sale, sum(total_sale) as total_sale');
        $this->db->group_by('campus_id');
        $campus_sales = $this->db->get_where('eom_campus_sales_vw', array('sales_yearmonth' => $yearmonth));
        if ($campus_sales->num_rows() >= 1) {
            $campus_sales = $campus_sales->result();
            foreach ($campus_sales as $cs) {
                $sales_data = array('card_sale' => $cs->card_sale, 'cash_sale' => $cs->cash_sale);
                $this->db->where(array('campus_id' => $cs->campus_id, 'as_on_date' => $as_on_date));
                $this->db->update('bi_campus_reports', $sales_data);
            }
        }
        //get campus recharges
        $campus_recharges = $this->db->query("
            select recharge_yearmonth, campus_id, sum(trans_count) as trans_count, sum(total_recharge) as total_recharge
                from (
                         select extract(year_month from a.trn_date) as recharge_yearmonth,
                                c.id                                as campus_id,
                                count(a.id)                         as trans_count,
                                sum(amount)                         as total_recharge
                         from eco_card_topup a,
                              eco_topup_pos b,
                              eco_campus c
                         where a.pos = b.pos_name
                           and b.campus_code = c.campus_code
                           and a.category = 'RECHARGE'
                           and pos like 'POS%'
                           and extract(year_month from a.trn_date) = '$yearmonth'
                         group by extract(year_month from a.trn_date), c.id
                         union all
                         select extract(year_month from a.trn_date) as recharge_yearmonth,
                                c.id                                as campus_id,
                                count(a.id)                         as trans_count,
                                sum(a.amount)                       as total_recharge
                         from eco_card_topup a,
                              eco_subscribers b,
                              eco_campus c
                         where a.sub_id = b.id
                           and b.campus_code = c.campus_code
                           and a.pos not like 'POS%'
                           and a.category = 'RECHARGE'
                           and extract(year_month from a.trn_date) = '$yearmonth'
                         group by extract(year_month from a.trn_date), c.id
                     ) x
                group by recharge_yearmonth, campus_id
        ");
        if ($campus_recharges->num_rows() >= 1) {
            $campus_recharges = $campus_recharges->result();
            foreach ($campus_recharges as $cr) {
                $recharge_data = array('recharge' => $cr->total_recharge, 'trans_count' => $cr->trans_count);
                $this->db->where(array('campus_id' => $cr->campus_id, 'as_on_date' => $as_on_date));
                $this->db->update('bi_campus_reports', $recharge_data);
            }
        }
        //get monthly subscribers onboard analysis
        $campus_subs = $this->db->query("
            SELECT 
                EXTRACT(YEAR_MONTH FROM a.sub_registration_date) AS yearmonth,
                b.id AS campus_id,
                COUNT(a.id) AS sub_count_new,
                SUM(CASE
                    WHEN a.subscription_plan = 'Fee' THEN 1
                    ELSE 0
                END) AS paid_sub_count,
                SUM(CASE
                    WHEN a.subscription_plan = 'Free' THEN 1
                    ELSE 0
                END) AS free_sub_count,
                SUM(a.sub_fee_amount) AS sub_fee
            FROM
                eco_subscribers a,
                eco_campus b
            WHERE
                a.campus_code = b.campus_code
                    AND EXTRACT(YEAR_MONTH FROM a.sub_registration_date) = '$yearmonth'
            GROUP BY EXTRACT(YEAR_MONTH FROM a.sub_registration_date) , b.id
          ");
        if ($campus_subs->num_rows() >= 1) {
            $campus_subs = $campus_subs->result();
            foreach ($campus_subs as $sub) {
                $sub_data = array('sub_fee' => $sub->sub_fee, 'sub_count_new' => $sub->sub_count_new, 'paid_sub_count' => $sub->paid_sub_count, 'free_sub_count' => $sub->free_sub_count);
                $this->db->where(array('campus_id' => $sub->campus_id, 'as_on_date' => $as_on_date));
                $this->db->update('bi_campus_reports', $sub_data);
            }
        }
        //get subscribers counts YTD
        $subs_counts = $this->db->query("
            SELECT 
                b.id AS campus_id,
                COUNT(a.id) AS sub_count_all,
                SUM(CASE
                    WHEN a.sub_stat_dormancy = 'D' THEN 0
                    ELSE 1
                END) AS sub_perf_count
            FROM
                eco_subscribers a,
                eco_campus b
            WHERE
                a.campus_code = b.campus_code
                    AND a.sub_registration_date <= '$as_on_date'
            GROUP BY b.id
        ");
        if ($subs_counts->num_rows() >= 1) {
            $subs_counts = $subs_counts->result();
            foreach ($subs_counts as $scnts) {
                $sub_count_data = array('sub_count_all' => $scnts->sub_count_all, 'sub_perf_count' => $scnts->sub_perf_count);
                $this->db->where(array('campus_id' => $scnts->campus_id, 'as_on_date' => $as_on_date));
                $this->db->update('bi_campus_reports', $sub_count_data);
            }
        }
        //get impacts data
        $impacts = $this->db->query("
            select extract(year_month from a.date)                                     as yearmonth,
                c.id                                                                as campus_id,
                d.price_per_liter,
                sum((ifnull(d1_closing_bal_card, 0) - ifnull(d1_open_bal_card, 0)) +
                    (ifnull(d1_closing_bal_cash, 0) - ifnull(d1_open_bal_cash, 0)) +
                    (ifnull(d2_closing_bal_card, 0) - ifnull(d2_open_bal_card, 0)) +
                    (ifnull(d2_closing_bal_cash, 0) - ifnull(d2_open_bal_cash, 0))) as sales,
                round(sum((ifnull(d1_closing_bal_card, 0) - ifnull(d1_open_bal_card, 0)) +
                          (ifnull(d1_closing_bal_cash, 0) - ifnull(d1_open_bal_cash, 0)) +
                          (ifnull(d2_closing_bal_card, 0) - ifnull(d2_open_bal_card, 0)) +
                          (ifnull(d2_closing_bal_cash, 0) - ifnull(d2_open_bal_cash, 0))) /
                      d.price_per_liter)                                            as water_volume,
                (round(sum((ifnull(d1_closing_bal_card, 0) - ifnull(d1_open_bal_card, 0)) +
                           (ifnull(d1_closing_bal_cash, 0) - ifnull(d1_open_bal_cash, 0)) +
                           (ifnull(d2_closing_bal_card, 0) - ifnull(d2_open_bal_card, 0)) +
                           (ifnull(d2_closing_bal_cash, 0) - ifnull(d2_open_bal_cash, 0))) /
                       d.price_per_liter) * (1000 - d.price_per_liter))             as money_saved,
                (round(sum((ifnull(d1_closing_bal_card, 0) - ifnull(d1_open_bal_card, 0)) +
                           (ifnull(d1_closing_bal_cash, 0) - ifnull(d1_open_bal_cash, 0)) +
                           (ifnull(d2_closing_bal_card, 0) - ifnull(d2_open_bal_card, 0)) +
                           (ifnull(d2_closing_bal_cash, 0) - ifnull(d2_open_bal_cash, 0))) /
                       d.price_per_liter) * 0.165)                                  as kg_carbon_avoid
         from eco_station_sales_hist a,
              eco_stations b,
              eco_campus c,
              eco_water_price d
         where a.station_gsm = b.gsm
           and b.campus_code = c.campus_code
           and c.id = d.campus
           and extract(year_month from a.date) = '$yearmonth'
           and d.status = 'active'
         group by extract(year_month from a.date), c.id, d.price_per_liter
        ");
        if ($impacts->num_rows() >= 1) {
            $impacts = $impacts->result();
            foreach ($impacts as $i) {
                $impact_data = array('water_volume' => $i->water_volume, 'bottle_saved' => round($i->water_volume, 0), 'money_saved' => $i->money_saved, 'carbon_avoid' => $i->kg_carbon_avoid);
                $this->db->where(array('campus_id' => $i->campus_id, 'as_on_date' => $as_on_date));
                $this->db->update('bi_campus_reports', $impact_data);
            }
        }
        # BI Campus reports end
        # BI POS report
        //insert pos into bi pos recharge table
        $pos_data = $this->db->query("SELECT a.id AS pos_id, a.pos_name, b.id as campus_id, b.campus_name FROM eco_topup_pos a, eco_campus b WHERE a.campus_code = b.campus_code");
        if ($pos_data->num_rows() >= 1) {
            $pos_data = $pos_data->result();
            foreach ($pos_data as $p) {
                $pos_id = $p->pos_id;
                $campus_id = $p->campus_id;
                //check if record exist and update else insert
                $check = $this->db->get_where('bi_pos_report', array('pos_id' => $pos_id, 'campus_id' => $campus_id, 'as_on_date' => $as_on_date));
                if ($check->num_rows() >= 1) {
                    $check = $check->row();
                    $data = array('pos_name' => $p->pos_name, 'campus_name' => $p->campus_name);
                    $this->db->where('id', $check->id);
                    $this->db->update('bi_pos_report', $data);
                } else {
                    $data = array('pos_id' => $p->pos_id, 'campus_id' => $p->campus_id, 'pos_name' => $p->pos_name, 'campus_name' => $p->campus_name, 'as_on_date' => $as_on_date, 'yearmonth' => $yearmonth);
                    $this->db->insert('bi_pos_report', $data);
                }
            }
        }
        $pos_recharge = $this->db->query("
            SELECT 
                EXTRACT(YEAR_MONTH FROM a.trn_date) AS yearmonth,
                b.id AS pos_id,
                a.pos AS pos_name,
                c.id AS campus_id,
                c.campus_name,
                SUM(a.amount) AS recharge,
                COUNT(a.id) AS trans_count
            FROM
                eco_card_topup a,
                eco_topup_pos b,
                eco_campus c
            WHERE
                a.pos = b.pos_name
                    AND b.campus_code = c.campus_code
                    AND a.category = 'RECHARGE' and pos like 'POS%'
                    AND EXTRACT(YEAR_MONTH FROM a.trn_date) >= '$yearmonth'
                    AND EXTRACT(YEAR_MONTH FROM a.trn_date) <= '$yearmonth'
            GROUP BY EXTRACT(YEAR_MONTH FROM a.trn_date) , a.pos , c.id , c.campus_name
        ");
        if ($pos_recharge->num_rows() >= 1) {
            $pos_recharge = $pos_recharge->result();
            foreach ($pos_recharge as $pos) {
                $data = array('recharge' => $pos->recharge, 'trans_count' => round($pos->trans_count, 0));
                $this->db->where(array('pos_id' => $pos->pos_id, 'as_on_date' => $as_on_date));
                $this->db->update('bi_pos_report', $data);
            }
        }
        # BI POS report
        $data = array(
            'function_run' => 'Cronjobs/eomReports',
            'description' => 'Generate EOM Reports AS_AT_DATE : ' . $as_on_date . ' PROCESS_DATE : ' . date('Y-m-d H:i:s')
        );
        $this->db->insert('cronjob_run_hist', $data);
        echo 'DONE FOR ' . $as_on_date;
        exit();
    }

    function updateCashierFloat()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        $report_date = date('Y-m-d', strtotime('-1 days'));
        //first delete existing data
        $this->db->delete('cashiers_float_logs', array('float_date' => $report_date));
        //get current data
        /*$this->db->select('a.*, b.username');
        $this->db->from('cashiers a');
        $this->db->join('users b', 'a.user_id = b.id', 'LEFT');
        $this->db->where(array('user_id !=' => '1', 'current_float !=' => 0));
        $cashiers = $this->db->get()->result();*/
        $cashiers = $this->db->query("select a.*, b.username
                    from eco_cashiers a,
                         eco_users b
                    where a.user_id = b.id
                      and a.user_id <> 1
                      and (a.current_float <> 0 or a.card_new_sold <> 0 or a.card_renewal_sold <> 0)")->result();
        foreach ($cashiers as $c) {
            //get subscription fees and registered subscribers
            $this->db->select('subscription_plan,SUM(IFNULL(sub_fee_amount, 0)) as sub_fee_amount,COUNT(1) as plan_count');
            $this->db->group_by('subscription_plan');
            $sub = $this->db->get_where('subscribers', array('registered_by' => $c->username, 'CAST(date_registered AS date) =' => $report_date))->result();
            $sub_fee = 0;
            $fee_plan = 0;
            $free_plan = 0;
            foreach ($sub as $s) {
                $sub_fee = $sub_fee + $s->sub_fee_amount;
                if ($s->subscription_plan == 'Fee') {
                    $fee_plan = $fee_plan + $s->plan_count;
                } elseif ($s->subscription_plan == 'Free') {
                    $free_plan = $free_plan + $s->plan_count;
                }
            }
            $data = array(
                'cashier_id' => $c->id,
                'user_id' => $c->user_id,
                'cashier_name' => $c->username,
                'float_date' => $report_date,
                'assigned_float' => $c->current_float,
                'used_float' => $c->used_float,
                'sub_fees' => $sub_fee,
                'remain_float' => ($c->current_float - $c->used_float),
                'paid_plan_sub' => $fee_plan,
                'free_plan_sub' => $free_plan,
                'card_new_sold' => $c->card_new_sold,
                'card_renewal_sold' => $c->card_renewal_sold
            );
            //insert records
            $this->db->insert('cashiers_float_logs', $data);
        }
        $data = array('current_float' => 0, 'used_float' => 0, 'balance_float' => 0, 'card_new_sold' => 0, 'card_renewal_sold' => 0);
        $this->db->where('user_id !=', '1');
        $this->db->update('cashiers', $data);
        $run = array(
            'function_run' => 'Cronjobs/updateCashierFloat',
            'description' => 'Update cashier float logs',
            'remote_ip' => $_SERVER['SERVER_ADDR']
        );
        $this->db->insert('cronjob_run_hist', $run);
    }

    function dailyRevenue()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        $report_date = date('Y-m-d', strtotime('-1 days'));
        //$report_date = '2021-12-17';
        $this->db->delete('bi_daily_revenue', array('report_date' => $report_date));
        $revenue = $this->db->query(" SELECT x.report_date,
                        Sum(x.sub_fee)             AS sub_fee,
                        Sum(x.sub_fee_count)       AS sub_fee_count,
                        Sum(x.pos_recharges)       AS pos_recharges,
                        Sum(x.pos_recharges_count) AS pos_recharges_count,
                        Sum(x.mob_recharges)       AS mob_recharges,
                        Sum(x.mob_recharges_count) AS mob_recharges_count,
                        Sum(x.val_recharge)        AS val_recharge,
                        Sum(x.val_recharge_count)  AS val_recharge_count,
                        Sum(x.cash_sales)          AS cash_sales,
                        Sum(x.cash_sales_count)    AS cash_sales_count,
                        Sum(x.card_renewal)        AS card_renewal,
                        Sum(x.card_renewal_count)  AS card_renewal_count
                 FROM (
                          SELECT Cast(a.date_registered AS DATE) AS report_date,
                                 Sum(a.sub_fee_amount)           AS sub_fee,
                                 Count(a.id)                     AS sub_fee_count,
                                 0                               AS pos_recharges,
                                 0                               AS pos_recharges_count,
                                 0                               AS mob_recharges,
                                 0                               AS mob_recharges_count,
                                 0                               AS val_recharge,
                                 0                               AS val_recharge_count,
                                 0                               AS cash_sales,
                                 0                               AS cash_sales_count,
                                 0                      AS card_renewal,
                                 0                     AS card_renewal_count
                          FROM eco_subscribers a
                          WHERE a.sub_fee_amount IS NOT NULL
                            AND a.sub_fee_amount <> 0
                            AND Cast(a.date_registered AS DATE) = '$report_date'
                          GROUP BY Cast(a.date_registered AS DATE)
                          UNION ALL
                          SELECT Cast(b.date_registered AS DATE) AS report_date,
                                 0                               AS sub_fee,
                                 0                               AS sub_fee_count,
                                 Sum(b.amount)                   AS pos_recharges,
                                 Count(b.id)                     AS pos_recharges_count,
                                 0                               AS mob_recharges,
                                 0                               AS mob_recharges_count,
                                 0                               AS val_recharge,
                                 0                               AS val_recharge_count,
                                 0                               AS cash_sales,
                                 0                               AS cash_sales_count,
                                 0                      AS card_renewal,
                                 0                     AS card_renewal_count
                          FROM eco_card_topup b
                          WHERE b.pos NOT IN ('MOB', 'VAL')
                            AND b.category = 'RECHARGE'
                            AND Cast(b.date_registered AS DATE) = '$report_date'
                          GROUP BY Cast(b.date_registered AS DATE)
                          UNION ALL
                          SELECT Cast(c.date_registered AS DATE) AS report_date,
                                 0                               AS sub_fee,
                                 0                               AS sub_fee_count,
                                 0                               AS pos_recharges,
                                 0                               AS pos_recharges_count,
                                 Sum(c.amount)                   AS mob_recharges,
                                 Count(c.id)                     AS mob_recharges_count,
                                 0                               AS val_recharge,
                                 0                               AS val_recharge_count,
                                 0                               AS cash_sales,
                                 0                               AS cash_sales_count,
                                 0                      AS card_renewal,
                                 0                     AS card_renewal_count
                          FROM eco_card_topup c
                          WHERE c.pos = 'MOB'
                            AND c.category = 'RECHARGE'
                            AND Cast(c.date_registered AS DATE) = '$report_date'
                          GROUP BY Cast(c.date_registered AS DATE)
                          UNION ALL
                          SELECT Cast(c.date_registered AS DATE) AS report_date,
                                 0                               AS sub_fee,
                                 0                               AS sub_fee_count,
                                 0                               AS pos_recharges,
                                 0                               AS pos_recharges_count,
                                 0                               AS mob_recharges,
                                 0                               AS mob_recharges_count,
                                 Sum(c.amount)                   AS val_recharge,
                                 Count(c.id)                     AS val_recharge_count,
                                 0                               AS cash_sales,
                                 0                               AS cash_sales_count,
                                 0                      AS card_renewal,
                                 0                     AS card_renewal_count
                          FROM eco_card_topup c
                          WHERE c.pos = 'VAL'
                            AND c.category = 'RECHARGE'
                            AND Cast(c.date_registered AS DATE) = '$report_date'
                          GROUP BY Cast(c.date_registered AS DATE)
                          UNION ALL
                          SELECT Cast(d.date_registered AS DATE)                                           AS report_date,
                                 0                                                                         AS sub_fee,
                                 0                                                                         AS sub_fee_count,
                                 0                                                                         AS pos_recharges,
                                 0                                                                         AS pos_recharges_count,
                                 0                                                                         AS mob_recharges,
                                 0                                                                         AS mob_recharges_count,
                                 0                                                                         AS val_recharge,
                                 0                                                                         AS val_recharge_count,
                                 Sum(((Ifnull(d.d1_closing_bal_cash, 0) - Ifnull(d.d1_open_bal_cash, 0)) +
                                      (Ifnull(d.d2_closing_bal_cash, 0) - Ifnull(d.d2_open_bal_cash, 0)))) AS cash_sales,
                                 Count(d.id)                                                               AS cash_sales_count,
                                 0                      AS card_renewal,
                                 0                     AS card_renewal_count
                          FROM eco_station_sales_hist d
                          WHERE ((
                                     Ifnull(d.d1_closing_bal_cash, 0) - Ifnull(d.d1_open_bal_cash, 0)) > 0
                              OR (
                                     Ifnull(d.d2_closing_bal_cash, 0) - Ifnull(d.d2_open_bal_cash, 0))) > 0
                            AND Cast(d.date AS DATE) = '$report_date'
                          GROUP BY Cast(d.date_registered AS DATE)
                          UNION ALL
                          SELECT Cast(a.date_registered AS DATE) AS report_date,
                                0                               AS sub_fee,
                                0                               AS sub_fee_count,
                                0                               AS pos_recharges,
                                0                               AS pos_recharges_count,
                                0                               AS mob_recharges,
                                0                               AS mob_recharges_count,
                                0                               AS val_recharge,
                                0                               AS val_recharge_count,
                                0                               AS cash_sales,
                                0                               AS cash_sales_count,
                                sum(a.fee)                      AS card_renewal,
                                count(a.id)                     AS card_renewal_count
                         FROM eco_sub_card_renewal a
                         WHERE a.plan = 'Paid'
                           AND Cast(a.date_registered AS DATE) = '$report_date'
                         GROUP BY Cast(a.date_registered AS DATE)
                        ) x
                 GROUP BY x.report_date ")->row();
        $data = array(
            'report_date' => $revenue->report_date,
            'sub_fee' => $revenue->sub_fee,
            'sub_fee_count' => $revenue->sub_fee_count,
            'pos_recharges' => $revenue->pos_recharges,
            'pos_recharges_count' => $revenue->pos_recharges_count,
            'mob_recharges' => $revenue->mob_recharges,
            'mob_recharges_count' => $revenue->mob_recharges_count,
            'val_recharge' => $revenue->val_recharge,
            'val_recharge_count' => $revenue->val_recharge_count,
            'cash_sales' => $revenue->cash_sales,
            'cash_sales_count' => $revenue->cash_sales_count,
            'card_renewal' => $revenue->card_renewal,
            'card_renewal_count' => $revenue->card_renewal_count
        );
        $this->db->insert('eco_bi_daily_revenue', $data);
        //echo 'finish'; exit();
        $run = array(
            'function_run' => 'Cronjobs/dailyRevenue',
            'description' => 'Daily revenues'
        );
        $this->db->insert('cronjob_run_hist', $run);
    }

    function dailyStationMobValidation()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        //$report_date = date('Y-m-d', strtotime('-1 days'));
        $report_date = date('Y-m-d');
        //$this->db->delete('bi_station_mob_validation', array('report_date' => $report_date));
        $validations = $this->db->query("SELECT '$report_date'            AS report_date,
                                   x.station_id,
                                   x.station_name,
                                   x.validator_id,
                                   Ifnull(y.trn_count, 0)  AS trn_count,
                                   Ifnull(y.trn_amount, 0) AS trn_amount
                            FROM   (SELECT s.id AS station_id,
                                           s.station_name,
                                           c.validator_id
                                    FROM   eco_stations s
                                           INNER JOIN eco_val_validators c
                                                   ON s.id = c.station_id) x
                                   LEFT JOIN (SELECT a.validator_id,
                                                     Cast(a.date_registered AS DATE) report_date,
                                                     Count(a.id)                     trn_count,
                                                     Sum(a.recharge)                 AS trn_amount
                                              FROM   eco_val_validator_logs a,
                                                     eco_selcom_payments b
                                              WHERE  a.comm_ref = b.val_comm_ref
                                                     AND a.request_status = '100'
                                                     AND b.v_status = '000'
                                                     AND b.n_status = '000'
                                                     AND b.validator_status = '100'
                                                     AND b.reversed = 'N'
                                                     AND Cast(a.date_registered AS DATE) = '$report_date'
                                                     AND a.recharge > 0
                                              GROUP  BY a.validator_id,
                                                        Cast(a.date_registered AS DATE)) y
                                          ON x.validator_id = y.validator_id ")->result();
        foreach ($validations as $v) {
            $row = $this->db->get_where('bi_station_mob_validation', array('station_id' => $v->station_id, 'report_date' => $v->report_date));
            if ($row->num_rows() >= 1) {
                $row = $row->row();
                $update_data = array('trn_count' => $v->trn_count, 'trn_amount' => $v->trn_amount, 'validator_id' => $v->validator_id);
                $this->db->where('id', $row->id);
                $this->db->update('bi_station_mob_validation', $update_data);
            } else {
                $insert_data = array(
                    'report_date' => $v->report_date,
                    'station_id' => $v->station_id,
                    'station_name' => $v->station_name,
                    'validator_id' => $v->validator_id,
                    'trn_count' => $v->trn_count,
                    'trn_amount' => $v->trn_amount
                );
                $this->db->insert('bi_station_mob_validation', $insert_data);
            }
        }
        //echo 'Finish'; exit();
        $run = array(
            'function_run' => 'Cronjobs/dailyStationMobValidation',
            'description' => 'Daily station validations'
        );
        // test comment
        $this->db->insert('cronjob_run_hist', $run);
        $this->db->query("DELETE FROM eco_cronjob_run_hist WHERE run_datetime < (now() - interval 1 hour) AND function_run = 'Cronjobs/dailyStationMobValidation'");
    }

    function archiveData()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        /*
         * archive eco_selcom_payments to eco_selcom_payments_arch start
         */
        $end_date = date('Y-m-d', strtotime('today - 35 days'));
        $this->db->query("insert into eco_selcom_payments_arch(id, eco_ref, operator, msisdn, transid_operator, reference_selcom,
                                     utilityref_card_no, amount, prom_amt, timestamp_selcom, v_status, n_status, sub_id,
                                     remote_ip, validator_status, val_comm_ref, reversed, comment, maker_id, channel_id,
                                     sweep, recon_post, date_registered, date_updated)
            select id,
                   eco_ref,
                   operator,
                   msisdn,
                   transid_operator,
                   reference_selcom,
                   utilityref_card_no,
                   amount,
                   prom_amt,
                   timestamp_selcom,
                   v_status,
                   n_status,
                   sub_id,
                   remote_ip,
                   validator_status,
                   val_comm_ref,
                   reversed,
                   comment,
                   maker_id,
                   channel_id,
                   sweep,
                   recon_post,
                   date_registered,
                   date_updated
            from eco_selcom_payments a
            where cast(date_registered as date) <= '$end_date'
              and (a.val_comm_ref is not null or a.reversed = 'Y' or a.v_status <> '000' or a.n_status is null)");

        $this->db->query("delete
                from eco_selcom_payments
                where cast(date_registered as date) <= '$end_date'
                  and (val_comm_ref is not null or reversed = 'Y' or v_status <> '000' or n_status is null)");
        /*
         * archive eco_selcom_payments to eco_selcom_payments_arch end
         */

        /*
         * archive eco_val_validator_logs to eco_val_validator_logs_arch start
         */
        $end_date = date('Y-m-d', strtotime('today - 35 days'));
        $this->db->query("insert into eco_val_validator_logs_arch(id,comm_ref, data_old, card_no, sub_id, curr_bal, validator_id, last_payment_id, public_id,
                                        data_new, recharge, new_bal, next_payment_id, request_status, callback_status,
                                        date_registered, date_updated)
                            select id,
                                   comm_ref,
                                   data_old,
                                   card_no,
                                   sub_id,
                                   curr_bal,
                                   validator_id,
                                   last_payment_id,
                                   public_id,
                                   data_new,
                                   recharge,
                                   new_bal,
                                   next_payment_id,
                                   request_status,
                                   callback_status,
                                   date_registered,
                                   date_updated
                            from eco_val_validator_logs
                            where cast(date_registered as date) <= '$end_date'");
        $this->db->query("delete
                    from eco_val_validator_logs
                    where cast(date_registered as date) <= '$end_date'");
        /*
         * archive eco_val_validator_logs to eco_val_validator_logs_arch end
         */

        $run = array(
            'function_run' => 'Cronjobs/archiveData',
            'description' => 'Archive Data'
        );
        $this->db->insert('cronjob_run_hist', $run);
    }

    function ecowaterStaffWater()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        //delete previous unvalidate benefit
        $this->db->query(" delete from eco_card_topup
                            where maker_id = 'EOM'
                              and exists(select *
                                             from eco_selcom_payments
                                               where maker_id = 'EOM'
                                                 and channel_id = 'STAFF_BENEFIT'
                                                 and v_status = '000'
                                                 and n_status = '000'
                                                    and validator_status = '104'
                                                  and eco_ref = trn_ref_no)");
        $this->db->query(" delete
                    from eco_selcom_payments
                    where maker_id = 'EOM'
                      and channel_id = 'STAFF_BENEFIT'
                      and v_status = '000'
                      and n_status = '000'
                      and validator_status = '104' ");
        //get staff list
        $staff = $this->db->query("select b.sub_id, a.sub_name, a.card_no, b.card_luhn, a.mobile, a.category
                        from eco_subscribers a,
                             eco_sub_card_vw b
                        where a.id = b.sub_id
                          and a.category IN ('ECOWATER','BRAND AMBASSADOR') ")->result();
        foreach ($staff as $s) {
            $trn_ref = time() . rand(100, 999);
            if ($s->category == 'ECOWATER') {
                $amount = 18000;
                $message = "Your monthly staff bonus confirmed. Card " . $s->card_luhn . " recharged with Tsh" . number_format($amount, 0) . " on " . date('d-m-Y H:i') . ". Tap validator to validate. Ref " . $trn_ref . ".";
            } else {
                $amount = 6000;
                $message = "Your monthly Intern bonus confirmed. Card " . $s->card_luhn . " recharged with Tsh" . number_format($amount, 0) . " on " . date('d-m-Y H:i') . ". Tap validator to validate. Ref " . $trn_ref . ".";
            }
            $payment_data = array(
                //'eco_ref' => $trn_ref,
                'operator' => 'ECOWATER',
                'utilityref_card_no' => $s->card_luhn,
                'amount' => $amount,
                'timestamp_selcom' => date('Y-m-d H:i:s'),
                'v_status' => '000',
                'n_status' => '000',
                'sub_id' => $s->sub_id,
                'comment' => 'eCloud staff benefit',
                'maker_id' => 'EOM',
                'channel_id' => 'STAFF_BENEFIT',
                'reference_selcom' => 'NIL',
                'transid_operator' => 'NIL',
                'msisdn' => 'NIL'
            );
            $this->db->insert('selcom_payments', $payment_data);
            $payment_id = $this->db->insert_id();

            $eco_ref = 'EC' . $payment_id . $this->_generate_luhn_check($payment_id);
            $this->db->where('id', $payment_id);
            $this->db->update('selcom_payments', array('eco_ref' => $eco_ref));

            $recharge = array('card_no' => $s->card_luhn, 'sub_id' => $s->sub_id, 'trn_ref_no' => $eco_ref, 'amount' => $amount, 'trn_date' => date('Y-m-d'), 'pos' => 'VAL', 'category' => 'SPECIAL_OFFER', 'maker_id' => 'EOM');
            $this->db->insert('card_topup', $recharge);

            $this->Sms_model->sendsms($message, $s->mobile);
            $data = array(
                'receiver' => $s->mobile,
                'message' => $message,
                'maker_id' => 'SYSTEM'
            );
            $this->Sms_model->insertOutgoingSMS($data);
        }
        $run = array(
            'function_run' => 'cronjobs/ecowaterStaffWater',
            'description' => 'Staff monthly water'
        );
        $this->db->insert('cronjob_run_hist', $run);
    }

    function bonusRoyalCustomers()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        $customers = $this->db->query('select a.*, b.sub_mobile, b.sub_id
                    from eco_ambassadors a,
                         eco_sub_card_vw b
                    where a.card_no = b.card_luhn')->result();
        foreach ($customers as $c) {
            $amount = 6000;
            $payment_data = array(
                'operator' => 'ECOWATER',
                'utilityref_card_no' => $c->card_no,
                'amount' => $amount,
                'timestamp_selcom' => date('Y-m-d H:i:s'),
                'v_status' => '000',
                'n_status' => '000',
                'sub_id' => $c->sub_id,
                'comment' => 'eCloud staff benefit',
                'maker_id' => 'EOM',
                'channel_id' => 'STAFF_BENEFIT',
                'reference_selcom' => 'NIL',
                'transid_operator' => 'NIL',
                'msisdn' => 'NIL'
            );
            $this->db->insert('selcom_payments', $payment_data);
            $payment_id = $this->db->insert_id();
            $eco_ref = 'EC' . $payment_id . $this->_generate_luhn_check($payment_id);
            $this->db->where('id', $payment_id);
            $this->db->update('selcom_payments', array('eco_ref' => $eco_ref));
            $recharge = array(
                'card_no' => $c->card_no,
                'sub_id' => $c->sub_id,
                'trn_ref_no' => $eco_ref,
                'amount' => $amount,
                'trn_date' => date('Y-m-d'),
                'pos' => 'VAL',
                'category' => 'SPECIAL_OFFER',
                'maker_id' => 'EOM');
            $this->db->insert('card_topup', $recharge);
            $message = "Your monthly Intern bonus confirmed. Card " . $c->card_no . " recharged with Tsh" . number_format($amount, 0) . " on " . date('d-m-Y H:i') . ". Tap validator to validate. Ref " . $eco_ref . ".";
            //$this->Sms_model->sendsms($message, $c->sub_mobile);
            $data = array(
                'receiver' => $c->sub_mobile,
                'message' => $message,
                'maker_id' => 'SYSTEM'
            );
            //$this->Sms_model->insertOutgoingSMS($data);
        }
        echo 'Finish at ' . date('d/m/Y H:i:s');
        exit();
    }

    function passwordLogs()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        $users = $this->db->query("select distinct username from eco_users_password")->result();
        foreach ($users as $u) {
            $min_id = $this->db->query(" select min(x.id) as id
                from (select id
                      from eco_users_password
                      where username = '$u->username'
                      and date_changed >= now() - interval 3 month
                      limit 3) x ")->row();
            $this->db->query(" delete from eco_users_password where username = '$u->username' and id < '$min_id->id' ");
        }
        $run = array(
            'function_run' => 'cronjobs/passwordLogs',
            'description' => 'Old password logs'
        );
        $this->db->insert('cronjob_run_hist', $run);
    }

    /*
     * posting receipt to TRA start here
     */

    function traReceiptPostingUAT()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        } else {
            // all topup posted within 15 minutes, cronjob run after every 5 minutes
            $start_timestamp = date('Y-m-d H:i:s', strtotime('-15 minutes'));
            $end_timestamp = date('Y-m-d H:i:s');
            $api_url = "https://ecowatercloud.com/developer_api/vfd";
            $form_data = array(
                "start_timestamp" => $start_timestamp,
                "end_timestamp" => $end_timestamp,
                "auth_token" => ''
            );
            $client = curl_init($api_url);
            curl_setopt($client, CURLOPT_POST, true);
            curl_setopt($client, CURLOPT_POSTFIELDS, $form_data);
            curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
            $response = curl_exec($client);
            curl_close($client);
            echo $response;
        }
    }

    public function traReceiptPosting()
    {
        //from localhost
        if (!is_null($_SERVER['REMOTE_ADDR'])) {
            die('access is not permitted');
        }
        // all topup posted within 15 minutes, cronjob run after every 5 minutes
        $start_timestamp = date('Y-m-d H:i:s', strtotime('-15 minutes'));
        $end_timestamp = date('Y-m-d H:i:s');
        $api_url = "https://ecowatercloud.com/api/vfd";
        $form_data = array(
            "start_timestamp" => $start_timestamp,
            "end_timestamp" => $end_timestamp,
            "username" => "tra",
            "certificate" => "06ebf576a91d000df4269d2d65e75f5d40a8e64a47e491a32fcf86f3c9d68684"
        );
        $client = curl_init($api_url);
        curl_setopt($client, CURLOPT_POST, true);
        curl_setopt($client, CURLOPT_POSTFIELDS, $form_data);
        curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($client);
        curl_close($client);
        //logs tracking
        $data = array(
            'function_run' => 'Cronjobs/traReceiptPosting',
            'description' => 'Posting TRA receipts',
            'remote_ip' => $_SERVER['REMOTE_ADDR']
        );
        $this->db->insert('cronjob_run_hist', $data);
        $this->db->query("DELETE
                            FROM eco_cronjob_run_hist
                            WHERE run_datetime < (now() - interval 30 minute)
                              AND function_run = 'Cronjobs/traReceiptPosting'");
        //echo $response;
    }

    /*
     * posting receipt to TRA start here
     */

    function getVfdReceipt($receipt_id = '')
    {
        $curl = curl_init();
        curl_setopt_array($curl, [
            CURLOPT_URL => "https://vfd.co.tz/login/api/v1/receipt/get/" . $receipt_id,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "GET",
            CURLOPT_HTTPHEADER => [
                "Accept: application/json",
                "Authorization: Bearer 511064938dedf7442c2af9e0ee563ad69a65b3f8",
                "Content-Type: application/json",
                "X-Tin: 139322355"
            ],
        ]);

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
            echo "cURL Error #:" . $err;
        } else {
            echo $response;
        }
    }

    /*
     * luhn generation start
     */
    function _generate_luhn_check($value = '')
    {
        // Force the value to be a string so we can work with it like a string.
        $value = (string)$value;
        // Set some initial values up.
        $length = strlen($value);
        $parity = $length % 2;
        $sum = 0;
        for ($i = $length - 1; $i >= 0; --$i) {
            // Extract a character from the value.
            $char = $value[$i];
            if ($i % 2 != $parity) {
                $char *= 2;
                if ($char > 9) {
                    $char -= 9;
                }
            }
            // Add the character to the sum of characters.
            $sum += $char;
        }
        // Return the value of the sum multiplied by 9 and then modulus 10.
        return ($sum * 9) % 10;
    }

    /*
     * luhn generation end
     */

}
