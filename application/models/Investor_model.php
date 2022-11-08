<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Investor_model extends CI_Model{
    function __construct() {
            parent::__construct();
	}   
	
	function get_all_contracts(){
		$this->db->select('a.*,b.first_name,b.middle_name,b.surname,b.mobile,b.next_of_kin,b.next_of_kin_mobile');
        $this->db->from('investor_contracts a');
        $this->db->join('investors b', 'a.investor_id = b.id', 'LEFT');
        return  $this->db->get()->result();
	}
          
   function get_contract_details($contract_id){
        $this->db->select('a.*,b.first_name,b.middle_name,b.surname,b.mobile,b.next_of_kin,b.next_of_kin_mobile');
		$this->db->where('a.id',$contract_id);
        $this->db->from('investor_contracts a');
        $this->db->join('investors b', 'a.investor_id = b.id', 'LEFT');
        return  $this->db->get()->row();
   }
   
   function update_investor($data, $investor_id){
	   $this->db->where('id',$investor_id);
	   $this->db->update('investors',$data);
   }
   
   function get_investor_by_contract($contract_id){
	   $this->db->select('b.*');
		$this->db->where('a.id',$contract_id);
        $this->db->from('investor_contracts a');
        $this->db->join('investors b', 'a.investor_id = b.id', 'LEFT');
        return  $this->db->get()->row();
   }
  
  function get_contract_station_sales($from, $to, $contract_id){
	$query = $this->db->query("SELECT date as sale_date,SUM(total_sale) as total_sale FROM eco_sales_vw 
		WHERE station_gsm IN (SELECT gsm from eco_stations a JOIN eco_investor_stations b ON a.id=b.station_id AND b.contract_id = '$contract_id')
			AND date BETWEEN '$from' AND '$to'
		GROUP BY date
		ORDER BY date ASC");
    return $query;  
  }
  
  function get_contract_station_sales_rev($from, $to, $contract_id){
	$query = $this->db->query("SELECT date as sale_date,SUM(total_sale) as total_sale FROM eco_sales_rev_vw 
		WHERE station_gsm IN (SELECT gsm from eco_stations a JOIN eco_investor_stations b ON a.id=b.station_id AND b.contract_id = '$contract_id')
			AND date BETWEEN '$from' AND '$to'
		GROUP BY date
		ORDER BY date ASC");
    return $query;  
  }
  
  function get_contract_sales($contract_id){
	$this->db->order_by('sale_date','DESC');
	return  $this->db->get_where('investor_station_sales',array('contract_id'=>$contract_id))->result();
  }
  
  function get_contract_salesRev($contract_id){
	$this->db->order_by('sale_date','DESC');
	return  $this->db->get_where('investor_station_sales_rev',array('contract_id'=>$contract_id))->result();
  }
  
  function get_contract_sales_2($contract_id,$start_date,$end_date,$status){
	$this->db->where('sale_date >=',$start_date);
	$this->db->where('sale_date <=',$end_date);
	$this->db->where('contract_id',$contract_id);
	$this->db->where('status',$status);
	return  $this->db->get('investor_station_sales');
  }

  function get_contract_sales_rev($contract_id,$start_date,$end_date,$status){
	$this->db->where('sale_date >=',$start_date);
	$this->db->where('sale_date <=',$end_date);
	$this->db->where('contract_id',$contract_id);
	$this->db->where('status',$status);
	return  $this->db->get('investor_station_sales_rev');
  }
  
  function get_all_transfer_hist(){
	$this->db->select('a.*,b.contract_no,b.contract_date,c.first_name,c.surname');
	$this->db->order_by('a.date_registered','DESC');
    $this->db->from('investor_transfers_hist a');
    $this->db->join('investor_contracts b', 'a.contract_id = b.id', 'LEFT');
	$this->db->join('investors c', 'b.investor_id = c.id', 'LEFT');
    return  $this->db->get()->result();
  }
  
  function get_contract_sales_for_period($contract_id, $start_date, $end_date){
	$cond = array('contract_id' => $contract_id,'sale_date >=' => $start_date,'sale_date <=' => $end_date);
	$this->db->order_by('sale_date','DESC');
	return  $this->db->get_where('investor_station_sales', $cond)->result();
  }
  
  function get_contract_sales_for_period_Rev($contract_id, $start_date, $end_date){
	$cond = array('contract_id' => $contract_id,'sale_date >=' => $start_date,'sale_date <=' => $end_date);
	$this->db->order_by('sale_date','DESC');
	return  $this->db->get_where('investor_station_sales_rev', $cond)->result();
  }
  
  function update_contract_exit_rates($data, $contract_id, $yearno){
	$this->db->where(array('contract_id'=>$contract_id,'year_no'=>$yearno));
	$this->db->update('investor_exit_rates',$data);
  }
  
  function get_contract_exit_rates($contract_id){
	 return $this->db->get_where('investor_exit_rates',array('contract_id'=>$contract_id));
  }
  
  function get_sum_of_contract_sales($contract_id, $start_date, $end_date){
	$query = $this->db->query("SELECT SUM(total_sale) as total_sales FROM eco_sales_vw 
		WHERE station_gsm IN (SELECT gsm from eco_stations a JOIN eco_investor_stations b ON a.id=b.station_id AND b.contract_id = '$contract_id')
			AND date BETWEEN '$start_date' AND '$end_date' ");
    return $query->row(); 
  }
  
  function get_sum_of_contract_salesRev($contract_id, $start_date, $end_date){
	$query = $this->db->query("SELECT SUM(total_sale) as total_sales FROM eco_sales_rev_vw 
		WHERE station_gsm IN (SELECT gsm from eco_stations a JOIN eco_investor_stations b ON a.id=b.station_id AND b.contract_id = '$contract_id')
			AND date BETWEEN '$start_date' AND '$end_date' ");
    return $query->row(); 
  }
  
  function get_all_investor_earnings($contract_id, $start_date, $end_date){
	$this->db->select('SUM(inv_payment) as t_amount');
	$this->db->where('contract_id',$contract_id);
	$this->db->where('sale_date >=',$start_date);
	$this->db->where('sale_date <=',$end_date);
	//$this->db->where('status','Transfered');
	return $this->db->get('investor_station_sales')->row();
  }
  
   function get_all_investor_earningsRev($contract_id, $start_date, $end_date){
	$this->db->select('SUM(inv_payment) as t_amount');
	$this->db->where('contract_id',$contract_id);
	$this->db->where('sale_date >=',$start_date);
	$this->db->where('sale_date <=',$end_date);
	//$this->db->where('status','Transfered');
	return $this->db->get('investor_station_sales_rev')->row();
  }
  
  function get_contract_stations($contract_id){
	$this->db->select('a.*,b.station_name,b.gsm');
	$this->db->from('investor_stations a');
	$this->db->join('stations b', 'a.station_id = b.id', 'LEFT');
	$this->db->where('a.contract_id',$contract_id);
	return $this->db->get()->result();  
  }
  
  function get_contract_sales_group_by_status($contract_id, $start_date, $end_date){
	$cond = array('contract_id' => $contract_id,'sale_date >=' => $start_date,'sale_date <=' => $end_date);
	$this->db->select('status, SUM(total_sales) AS total_sales, SUM(inv_payment) AS earnings');
	$this->db->group_by('status');
	return $this->db->get_where('investor_station_sales', $cond); 
  }
  
  function get_contract_sales_group_by_status_Rev($contract_id, $start_date, $end_date){
	$cond = array('contract_id' => $contract_id,'sale_date >=' => $start_date,'sale_date <=' => $end_date);
	$this->db->select('status, SUM(total_sales) AS total_sales, SUM(inv_payment) AS earnings');
	$this->db->group_by('status');
	return $this->db->get_where('investor_station_sales_rev', $cond); 
  }
  
  function insert_investor_statement_record($data){
        $this->db->insert('investor_statements_hist', $data);
        return $this->db->insert_id();
   }
   
   function get_sales_hist_by_station_gsm($gsm, $from_date, $to_date){
        $this->db->where('station_gsm', $gsm);
        $this->db->where('date >=', $from_date);
        $this->db->where('date <=', $to_date);
        $this->db->order_by('date','DESC');
        return  $this->db->get('station_sales_hist')->result();
   }
   
    function get_sales_hist_by_station_gsm_Rev($gsm, $from_date, $to_date){
        $this->db->where('station_gsm', $gsm);
        $this->db->where('date >=', $from_date);
        $this->db->where('date <=', $to_date);
        $this->db->order_by('date','DESC');
        return  $this->db->get('station_sales_hist_rev')->result();
   }
   
    function get_sales_hist_by_station_gsm_asc($gsm, $from_date){
        $this->db->where('station_gsm', $gsm);
        $this->db->where('date >=', $from_date);
        $this->db->order_by('date','ASC');
        return  $this->db->get('station_sales_hist')->result();
   }
   
   function get_sales_hist_by_station_gsm_asc_Rev($gsm, $from_date){
        $this->db->where('station_gsm', $gsm);
        $this->db->where('date >=', $from_date);
        $this->db->order_by('date','ASC');
        return  $this->db->get('station_sales_hist_rev')->result();
   }
   
   function create_station_sales_view_revised(){
	   $this->db->query(
			"CREATE OR REPLACE VIEW eco_sales_rev_vw AS
			SELECT 
				a.date AS date,
				a.station_gsm AS station_gsm,
				SUM(((a.d1_closing_bal_card - a.d1_open_bal_card) + (a.d2_closing_bal_card - a.d2_open_bal_card))) AS card_sale,
				SUM(((a.d1_closing_bal_cash - a.d1_open_bal_cash) + (a.d2_closing_bal_cash - a.d2_open_bal_cash))) AS cash_sale,
				SUM(((((a.d1_closing_bal_card - a.d1_open_bal_card) + (a.d2_closing_bal_card - a.d2_open_bal_card)) + (a.d1_closing_bal_cash - a.d1_open_bal_cash)) + (a.d2_closing_bal_cash - a.d2_open_bal_cash))) AS total_sale
			FROM
				eco_station_sales_hist_rev a
			GROUP BY a.date , a.station_gsm"
	   );
   }
  
}