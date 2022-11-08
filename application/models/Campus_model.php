<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Campus_model extends CI_Model
{

    function __construct()
    {
        parent::__construct();
    }

    function get_campus_details($campus_id)
    {
        $this->db->where('id', $campus_id);
        return $this->db->get('campus')->row();
    }

    function get_campus_royalty($campus_id, $from, $to)
    {
        $query = $this->db->query("SELECT SUM((ifnull(d1_closing_bal_card, 0) - ifnull(d1_open_bal_card, 0)) +
                                   (ifnull(d1_closing_bal_cash, 0) - ifnull(d1_open_bal_cash, 0)) +
                                   (ifnull(d2_closing_bal_card, 0) - ifnull(d2_open_bal_card, 0)) +
                                   (ifnull(d2_closing_bal_cash, 0) - ifnull(d2_open_bal_cash, 0))) as sales,
                               date,
                               royalty,
                               royalty_status
                        FROM eco_station_sales_hist
                        WHERE date between '$from' and '$to'
                          and station_gsm in (SELECT a.gsm
                                              from eco_stations a
                                                       join eco_campus b on a.campus_code = b.campus_code
                                              WHERE b.id = '$campus_id')
                        GROUP BY date, royalty_status
                        ORDER BY date DESC");
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

    function get_campus_invoice($campus_id, $from, $to)
    {
        $this->db->where('campus_id', $campus_id);
        $this->db->where('from_date >=', $from);
        $this->db->where('from_date <=', $to);
        $this->db->where('to_date >=', $from);
        $this->db->where('to_date <=', $to);
        return $this->db->get('royalty_invoices')->result();
    }

    function get_campus_unpaid_invoice($campus_id)
    {
        $this->db->where('campus_id', $campus_id);
        $this->db->where('status', 'Unpaid');
        return $this->db->get('royalty_invoices')->result();
    }

    function get_all_campus()
    {
        return $this->db->get('campus')->result();
    }

    function insert_invoice_data($data)
    {
        $this->db->insert('royalty_invoices', $data);
        return $this->db->insert_id();
    }

    function update_invoice_data($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update('royalty_invoices', $data);
    }

    function update_royalty_data($from_date2, $to_date2, $id, $campus_id)
    {
        $query = $this->db->query("UPDATE eco_station_sales_hist SET royalty_invoice_id='$id' WHERE station_gsm IN (SELECT a.gsm from eco_stations a join eco_campus b on a.campus_code=b.campus_code WHERE b.id='$campus_id') AND date BETWEEN '$from_date2' AND '$to_date2' AND royalty_invoice_id IS NULL");
    }

    function update_royalty_data2($data, $invoice_id)
    {
        $this->db->where('royalty_invoice_id', $invoice_id);
        $this->db->update('station_sales_hist', $data);
    }

    function get_invoice_amount_from_sales($invoice_id)
    {
        /*$this->db->select('SUM((
          (ifnull(d1_closing_bal_card,0) - ifnull(d1_open_bal_card,0))
        + (ifnull(d1_closing_bal_cash,0) - ifnull(d1_open_bal_cash,0))
        + (ifnull(d2_closing_bal_card,0) - ifnull(d2_open_bal_card,0))
        + (ifnull(d2_closing_bal_cash,0) - ifnull(d2_open_bal_cash,0)) )*(royalty/100)) as amount');
        $this->db->where('royalty_invoice_id', $invoice_id);
        return $this->db->get('station_sales_hist')->row()->amount;*/
        return $this->db->query("select sum(x.sales) as sales,sum(x.sales * x.royalty/100) as royalty from (
            select b.station_name,
                   ((ifnull(d1_closing_bal_card, 0) - ifnull(d1_open_bal_card, 0))
                       + (ifnull(d1_closing_bal_cash, 0) - ifnull(d1_closing_bal_cash, 0))
                       + (ifnull(d2_closing_bal_card, 0) - ifnull(d2_open_bal_card, 0))
                       + (ifnull(d2_closing_bal_cash, 0) - ifnull(d2_closing_bal_cash, 0))) as sales,
                   ifnull(a.royalty,0) as royalty
            from eco_station_sales_hist a,
                 eco_stations b,
                 eco_campus c
            where a.station_gsm = b.gsm
              and b.campus_code = c.campus_code
              and a.royalty_invoice_id = '$invoice_id' ) x")->row()->royalty;
    }

    function get_royalty_by_stations($invoice_id = '')
    {
        return $this->db->query("select x.station_name,sum(x.sales) as sales,sum(x.sales * x.royalty/100) as royalty from (
            select b.station_name,
                   ((ifnull(d1_closing_bal_card, 0) - ifnull(d1_open_bal_card, 0))
                       + (ifnull(d1_closing_bal_cash, 0) - ifnull(d1_closing_bal_cash, 0))
                       + (ifnull(d2_closing_bal_card, 0) - ifnull(d2_open_bal_card, 0))
                       + (ifnull(d2_closing_bal_cash, 0) - ifnull(d2_closing_bal_cash, 0))) as sales,
                   ifnull(a.royalty,0) as royalty
            from eco_station_sales_hist a,
                 eco_stations b,
                 eco_campus c
            where a.station_gsm = b.gsm
              and b.campus_code = c.campus_code
              and a.royalty_invoice_id = '$invoice_id' ) x group by x.station_name")->result();
    }

    function get_royalty_invoice_details($invoice_id)
    {
        $this->db->select('a.*,b.campus_name,b.physical_addr,b.address_line1,b.address_line2,b.telephone,b.email,b.bank_acc_no,b.bank_acc_name,b.bank_name');
        $this->db->where('a.id', $invoice_id);
        $this->db->from('royalty_invoices a');
        $this->db->join('campus b', 'a.campus_id = b.id', 'left');
        return $this->db->get()->row();
    }

    function get_utility_bill_by_station_month($station_id, $charge_month, $utility_type)
    {
        $this->db->where('station_id', $station_id);
        $this->db->where('charge_month', $charge_month);
        $this->db->where('utility_type', $utility_type);
        return $this->db->get('station_utility_bills')->row();
    }

    function get_utility_bill_yearmonth_greater($station_id, $yearmonth, $utility_type)
    {
        $this->db->where('station_id', $station_id);
        $this->db->where('yearmonth >', $yearmonth);
        $this->db->where('utility_type', $utility_type);
        return $this->db->get('station_utility_bills');
    }

    function get_station_last_utility_bill($station_id, $utility_type, $yearmonth)
    {
        $this->db->where('station_id', $station_id);
        $this->db->where('utility_type', $utility_type);
        $this->db->where('yearmonth <', $yearmonth);
        $this->db->order_by('yearmonth', 'DESC');
        return $this->db->get('station_utility_bills');
    }

    function get_utility_price_for_station($station_id, $utility_type)
    {
        $this->db->where('b.id', $station_id);
        $this->db->where('a.utility_type', $utility_type);
        $this->db->order_by('a.date_registered', 'DESC');
        $this->db->from('utilities_config a');
        $this->db->join('stations b', 'a.campus_code = b.campus_code', 'left');
        return $this->db->get();
    }

    function get_all_utility_bills()
    {
        $this->db->select('a.*, b.station_name, c.type');
        $this->db->order_by('a.yearmonth', 'DESC');
        $this->db->from('station_utility_bills a');
        $this->db->join('stations b', 'a.station_id = b.id', 'left');
        $this->db->join('utility_types c', 'a.utility_type = c.code', 'left');
        return $this->db->get()->result();
    }

    function get_all_campus_utility_bills($campus_id)
    {
        $this->db->select('a.*, b.station_name, c.type');
        $this->db->order_by('a.yearmonth', 'DESC');
        $this->db->where('d.id', $campus_id);
        $this->db->from('station_utility_bills a');
        $this->db->join('stations b', 'a.station_id = b.id', 'left');
        $this->db->join('utility_types c', 'a.utility_type = c.code', 'left');
        $this->db->join('campus d', 'd.campus_code = b.campus_code', 'left');
        return $this->db->get()->result();
    }

    function get_campus_utility_bill_invoices($campus_id)
    {
        $this->db->select('a.*');
        $this->db->order_by('a.bill_yearmonth', 'DESC');
        $this->db->where('a.campus_id', $campus_id);
        $this->db->from('campus_utility_invoices a');
        $this->db->join('campus b', 'a.campus_id = b.id', 'LEFT');
        return $this->db->get()->result();
    }

    function get_campus_utility_bill_invoices_by_month($campus_id, $bill_month)
    {
        $this->db->where('a.campus_id', $campus_id);
        $this->db->where('a.bill_month', $bill_month);
        $this->db->from('campus_utility_invoices a');
        return $this->db->get()->row();
    }

    function get_campus_bills_by_month($campus_id, $bill_month)
    {
        $this->db->select('utility_type,SUM(total_cost) as cost');
        $this->db->where('c.id', $campus_id);
        $this->db->where('a.charge_month', $bill_month);
        $this->db->group_by('utility_type');
        $this->db->from('station_utility_bills a');
        $this->db->join('stations b', 'a.station_id = b.id', 'LEFT');
        $this->db->join('campus c', 'b.campus_code = c.campus_code', 'LEFT');
        return $this->db->get()->result();
    }

    function insert_invoice_data_utility_bill($data)
    {
        $this->db->insert('campus_utility_invoices', $data);
        return $this->db->insert_id();
    }

    function update_utility_invoice_bill($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update('campus_utility_invoices', $data);
    }

    function update_station_utility_bills($invoice_id, $campus_id, $bill_month)
    {
        $query = $this->db->query(" UPDATE eco_station_utility_bills SET invoice_id='$invoice_id' WHERE charge_month='$bill_month' AND station_id IN(SELECT station_id FROM eco_stations a JOIN eco_campus b ON a.campus_code=b.campus_code AND b.id=$campus_id) ");
    }

    function update_station_utility_bills_2($data, $invoice_id)
    {
        $this->db->where('invoice_id', $invoice_id);
        $this->db->update('station_utility_bills', $data);
    }

}

?>