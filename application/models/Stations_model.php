<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Stations_model extends CI_Model{
    function __construct() {
            parent::__construct();
	}
        
    function get_station_details_by_id($sid){
        $this->db->select('a.*, b.campus_name,b.campus_code,b.id as campus_id,c.name op_stat');
        $this->db->where('a.id',$sid);
        $this->db->from('stations a');
        $this->db->join('campus b', 'a.campus_code=b.campus_code', 'left');
        $this->db->join('station_operate_stat c', 'a.operational_status=c.code', 'left');
        return  $this->db->get()->row();
    }
    
 function get_station_details_by_gsm($gsm){
        $this->db->select('a.*, b.campus_name, c.name op_stat');
        $this->db->where('a.gsm',$gsm);
        $this->db->from('stations a');
        $this->db->join('campus b', 'a.campus_code=b.campus_code', 'left');
        $this->db->join('station_operate_stat c', 'a.operational_status=c.code', 'left');
        return  $this->db->get()->row();
    }
   
   function get_sales_hist_by_station_gsm($gsm, $from_date, $to_date){
        $this->db->where('station_gsm', $gsm);
        $this->db->where('date >=', $from_date);
        $this->db->where('date <=', $to_date);
        $this->db->where('date >=', '2019-06-01');
        $this->db->order_by('date','DESC');
        return  $this->db->get('station_sales_hist')->result();
   }
   
   function get_sales_hist_by_station_gsm_asc($gsm){
        $from_date = date('Y-m-d', strtotime( date( 'Y-m-d', strtotime( date('Y-m-d') ) ) . '-7 days' ));
        $to_date = date('Y-m-d');
        $this->db->where('station_gsm', $gsm);
        $this->db->where('date >=', $from_date);
        $this->db->where('date <=', $to_date);
        $this->db->order_by('date','ASC');
        return  $this->db->get('station_sales_hist')->result();
   }
   
   function get_all_filters(){
        return  $this->db->get('filters')->result();
   }
   
   function get_all_stations(){
        $this->db->select('a.*, b.id as campus_id');
        $this->db->order_by('a.station_name','ASC');
        $this->db->where('a.record_stat','O');
        $this->db->from('stations a');
        $this->db->join('campus b', 'a.campus_code = b.campus_code', 'left');
        return  $this->db->get()->result();
   }
   
   function get_incoming_commands_by_station($gsm, $from, $to){
        $this->db->where('date_registered >=', $from);
        $this->db->where('date_registered <=', $to);
        $this->db->where('msisdn ', $gsm);
        $this->db->order_by('date_registered', 'DESC');
        return  $this->db->get('commands_incoming')->result();
   }
   
   function get_station_sale_price($campus_id){
        $this->db->where('campus ', $campus_id);
        $this->db->where('status ', 'Active');
        $this->db->order_by('date_registered', 'DESC');
        return  $this->db->get('water_price')->row();
   }
   
   function get_station_last_sales_data($mno){
      $query = $this->db->query("SELECT * FROM eco_station_sales_hist WHERE station_gsm='$mno' AND date=(SELECT MAX(date) FROM eco_station_sales_hist WHERE station_gsm='$mno')");
      return $query->row();
   }
   
   function create_sales_view(){
   $query = $this->db->query("
    CREATE OR REPLACE VIEW eco_sales_vw AS
    SELECT 
        a.date AS date,
        a.station_gsm AS station_gsm,
        SUM(((IFNULL(a.d1_closing_bal_card,0) - IFNULL(a.d1_open_bal_card,0)) + (IFNULL(a.d2_closing_bal_card,0) - IFNULL(a.d2_open_bal_card,0)))) AS card_sale,
        SUM(((IFNULL(a.d1_closing_bal_cash,0) - IFNULL(a.d1_open_bal_cash,0)) + (IFNULL(a.d2_closing_bal_cash,0) - IFNULL(a.d2_open_bal_cash,0)))) AS cash_sale,
        SUM(((((IFNULL(a.d1_closing_bal_card,0) - IFNULL(a.d1_open_bal_card,0)) + (IFNULL(a.d2_closing_bal_card,0) - IFNULL(a.d2_open_bal_card,0))) + (IFNULL(a.d1_closing_bal_cash,0) - IFNULL(a.d1_open_bal_cash,0))) + (IFNULL(a.d2_closing_bal_cash,0) - IFNULL(a.d2_open_bal_cash,0)))) AS total_sale
    FROM
        eco_station_sales_hist a
    GROUP BY a.date,a.station_gsm;
        ");
   }

    function get_sales($from_date = '', $to_date = '', $station_gsm = '')
    {
        $this->db->select('SUM(card_sale) AS card_sale,SUM(cash_sale) AS cash_sale,SUM(total_sale) AS total_sale');
        if($from_date != '' && $to_date != ''){
            $this->db->where('date >=', $from_date);
            $this->db->where('date <=', $to_date);
        }
        $this->db->where('station_gsm', $station_gsm);
        return $this->db->get('sales_vw')->row();
    }

    function count_station_installation_types(){
        $this->db->select('inst_type,count(*) as station_count');
        $this->db->group_by('inst_type');
        return $this->db->get('stations')->result();
   }

   function get_stations_sms($past_thirty_days){
    $this->db->select('a.*,b.station_name');
    $this->db->order_by('a.id','DESC');
    $this->db->from('incoming_message a');
    $this->db->join('stations b', 'a.sender = b.gsm');
    $this->db->where(array('a.date_registered >='=>$past_thirty_days));
    $this->db->not_like('a.message', 'Outgoing SMS'); 
    return $this->db->get_where()->result();
   }
}