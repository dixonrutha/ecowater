<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Subscriber_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function get_active_free_cards()
    {
        $this->db->where('card_stat', 'Active');
        $this->db->where('lost', 'N');
        $this->db->where('demaged', 'N');
        $this->db->where('occupied', 'N');
        return $this->db->get('cards')->result();
    }

    function get_all_subscribers()
    {
        $this->db->limit(2000);
        $this->db->select('a.*, b.campus_name');
        $this->db->order_by('a.sub_registration_date', 'DESC');
        $this->db->from('subscribers a');
        $this->db->join('campus b', 'a.campus_code = b.campus_code', 'left');
        return $this->db->get()->result();
    }

    function get_subscriber_name($string)
    {
        $query = $this->db->select('id,sub_name,mobile,card_no,gender,category,sub_stat_dormancy,email')
            ->from('subscribers')
            ->like('sub_name', $string)
            ->or_like('card_no', $string)
            ->or_like('mobile', $string)
            ->get();
        if ($query->num_rows() > 0) {
            return $query->result();
        } else {
            return null;
        }
    }

    function get_all_open_campus()
    {
        $this->db->where('record_stat', 'O');
        return $this->db->get('campus')->result();
    }

    function get_all_sub_categories()
    {
        return $this->db->get('sub_category')->result();
    }

    function insert_new_subscriber($data)
    {
        $this->db->insert('subscribers', $data);
        $insert_id = $this->db->insert_id();
        return $insert_id;
    }

    function update_card($update_data, $card_no)
    {
        $this->db->where('card_no', $card_no);
        $this->db->update('cards', $update_data);
    }

    function get_sub_data_by_id($sub_id)
    {
        $this->db->where('id', $sub_id);
        return $this->db->get('subscribers')->row();
    }

    function get_sub_data_by_cardno($card_no)
    {
        $this->db->where('card_no', $card_no);
        return $this->db->get('subscribers')->row();
    }

    function update_subscriber($data, $sub_id)
    {
        $this->db->where('id', $sub_id);
        $this->db->update('subscribers', $data);
    }

    function get_subscription_fee_by_date($from_date, $to_date)
    {
        $this->db->select('sub_registration_date,SUM(sub_fee_amount) as fee');
        $this->db->where('sub_registration_date >=', $from_date);
        $this->db->where('sub_registration_date <=', $to_date);
        $this->db->group_by('sub_registration_date');
        $this->db->order_by('sub_registration_date', 'ASC');
        return $this->db->get('subscribers')->result();
    }

    function get_subscription_fee_today($today)
    {
        $this->db->select('subscription_plan,SUM(sub_fee_amount) as fee,COUNT(sub_name) as sub');
        $this->db->where('sub_registration_date', $today);
        $this->db->group_by('subscription_plan');
        return $this->db->get('subscribers')->result();
    }


    function get_subscriber($category, $campus_code, $dorm_stat)
    {
        $this->db->where('record_stat', 'OPEN');
        if ($campus_code != '') {
            $this->db->where('campus_code', $campus_code);
        }
        if ($category != '') {
            $this->db->where('category', $category);
        }
        if ($dorm_stat != '') {
            $this->db->where('sub_stat_dormancy', $dorm_stat);
        }
        return $this->db->get('subscribers')->result();
    }

    function get_all_subscribers_topup_details()
    {
        $this->db->select('a.sub_name,a.gender,a.mobile,a.card_no,c.campus_name,a.email,a.date_last_topup,a.sub_stat_dormancy,a.category,a.sub_registration_date,SUM(b.amount) as tamount');
        $this->db->group_by('a.sub_name,a.gender,a.mobile,a.card_no,a.email,a.date_last_topup,a.sub_stat_dormancy,a.category,a.sub_registration_date');
        $this->db->from('subscribers a');
        $this->db->join('card_topup b', 'a.card_no = b.card_no', 'left');
        $this->db->join('campus c', 'a.campus_code = c.campus_code', 'left');
        return $this->db->get()->result();
    }

    function get_sub_topup_details($from)
    {
        $this->db->select('a.id,a.mobile,a.card_no,SUM(b.amount) as tamount');
        $this->db->where('b.trn_date >=', $from);
        $this->db->group_by('a.id,a.mobile', 'a.card_no');
        $this->db->from('subscribers a');
        $this->db->join('card_topup b', 'a.card_no = b.card_no', 'left');
        return $this->db->get()->result();
    }

    function get_sub_topup_details_2($from)
    {
        $this->db->select('a.id,SUM(b.amount) as tamount');
        $this->db->where('b.trn_date >=', $from);
        // $this->db->where('a.date_last_topup >=', $from);
        // $this->db->where('b.card_no','1350000141531');
        $this->db->group_by('a.id');
        $this->db->from('subscribers a');
        $this->db->join('card_topup b', 'a.id = b.sub_id', 'left');
        return $this->db->get()->result();
    }

    function get_all_dormat_sub($from)
    {
        $query = $this->db->query("SELECT id,card_no,date_registered FROM eco_subscribers WHERE date_registered < '$from' AND card_no NOT IN(SELECT DISTINCT card_no FROM eco_card_topup)");
        return $query->result();
    }

    function get_all_dormat_sub_second($from)
    {
        $query = $this->db->query("SELECT id,card_no,date_registered FROM eco_subscribers WHERE date_registered < '$from' AND card_no IN(SELECT DISTINCT card_no FROM eco_card_topup WHERE trn_date < '$from') AND card_no NOT IN(SELECT DISTINCT card_no FROM eco_card_topup WHERE trn_date >= '$from')");
        return $query->result();
    }

    function mark_sub_dormant_old_top_up($data, $from)
    {
        $where = "(date_last_topup<'$from' OR date_last_topup IS NULL) AND date_registered<'$from'";
        $this->db->where($where);
        //$this->db->where('date_last_top_up <', $from);
        //$this->db->where('date_registered <', $from);
        $this->db->update('subscribers', $data);
    }

    function insert_acc_statement_record($data)
    {
        $this->db->insert('sub_acc_statements_hist', $data);
        return $this->db->insert_id();
    }

    function get_all_sub_topup($card_no, $sub_id)
    {
        $this->db->limit(10);
        //$this->db->where('card_no', $card_no);
        $this->db->where('sub_id', $sub_id);
        $this->db->order_by('trn_date,date_registered', 'DESC');
        return $this->db->get('card_topup')->result();
    }

    function get_all_streets()
    {
        return $this->db->get('streets')->result();
    }

    function get_all_sub_inactive_stat()
    {
        return $this->db->get('sub_inactive_status')->result();
    }

    function get_campus_water_sale_price($campus_code)
    {
        $this->db->select('a.*');
        $this->db->where('b.campus_code', $campus_code);
        $this->db->order_by('date_registered', 'DESC');
        $this->db->from('water_price a');
        $this->db->join('campus b', 'a.campus = b.id', 'left');
        return $this->db->get()->row();
    }

    function delete_sub_topup_hist($sub_id, $card_no)
    {
        $this->db->where('sub_id', $sub_id);
        $this->db->or_where('card_no', $card_no);
        $this->db->delete('card_topup');
    }

    function delete_subscriber_details($sub_id)
    {
        $this->db->where('id', $sub_id);
        $this->db->delete('subscribers');
    }

    function get_campus_subscription_plan($campus_code)
    {
        $this->db->select('a.*');
        $this->db->where('b.campus_code', $campus_code);
        $this->db->where('a.status', 'Active');
        $this->db->from('campus_subscription_fee a');
        $this->db->join('campus b', 'a.campus_id = b.id', 'left');
        return $this->db->get()->row();
    }

    function get_student_courses()
    {
        $this->db->order_by('course_name', 'ASC');
        return $this->db->get('student_courses')->result();
    }

    function get_subscriber_sms($receiver)
    {
        $query = $this->db->query("SELECT * FROM eco_sms_outgoing WHERE receiver='$receiver' ORDER BY date_registered DESC LIMIT 10");
        return $query->result();
    }

    function create_sub_fee_view($from_date, $to_date)
    {
        $query = $this->db->query("CREATE OR REPLACE VIEW eco_sub_fee_vw AS
                            SELECT 
                                sub_registration_date,
                                subscription_plan,
                                COUNT(id) AS sub_count
                            FROM
                                eco_subscribers
                            WHERE sub_registration_date BETWEEN '$from_date' AND '$to_date'
                            GROUP BY sub_registration_date , subscription_plan");
    }

    function get_sub_fee_analysis($from_date, $to_date, $category)
    {
        $this->db->select('sum(sub_count) as sub_count');
        return $this->db->get_where('sub_fee_vw', array('sub_registration_date >=' => $from_date, 'sub_registration_date <=' => $to_date, 'subscription_plan' => $category))->row();
    }

    function get_sub_payments($sub_id = '')
    {
        return $this->db->query("select x.*
                from (
                         select a.eco_ref,
                                a.reference_selcom,
                                a.transid_operator,
                                a.operator,
                                a.msisdn,
                                a.amount,
                                a.comment,
                                a.timestamp_selcom,
                                a.channel_id,
                                a.maker_id,
                                b.description as n_desc,
                                c.description as v_desc,
                                a.date_registered,
                                a.date_updated,
                                a.reversed,
                                a.val_comm_ref
                         from eco_selcom_payments a
                                  left join eco_selcom_response_code b on a.n_status = b.e_code
                                  left join eco_selcom_response_code c on a.v_status = c.e_code
                         where sub_id = '$sub_id'
                         union all
                         select a.eco_ref,
                                a.reference_selcom,
                                a.transid_operator,
                                a.operator,
                                a.msisdn,
                                a.amount,
                                a.comment,
                                a.timestamp_selcom,
                                a.channel_id,
                                a.maker_id,
                                b.description as n_desc,
                                c.description as v_desc,
                                a.date_registered,
                                a.date_updated,
                                a.reversed,
                                a.val_comm_ref
                         from eco_selcom_payments_arch a
                                  left join eco_selcom_response_code b on a.n_status = b.e_code
                                  left join eco_selcom_response_code c on a.v_status = c.e_code
                         where sub_id = '$sub_id'
                     ) x
                order by x.timestamp_selcom desc")->result();
    }

    function get_sub_validations($sub_id = '')
    {
        return $this->db->query("select x.*
                from (select a.card_no,
                                a.curr_bal,
                                a.recharge,
                                a.new_bal,
                                a.last_payment_id,
                                a.next_payment_id,
                                a.request_status,
                                c.message as req_desc,
                                a.callback_status,
                                d.message    call_desc,
                                a.date_registered,
                                e.station_name
                         from eco_val_validator_logs a
                                  inner join eco_sub_card_vw b on a.card_no = b.card_luhn
                                  left join eco_val_messages c on a.request_status = c.code
                                  left join eco_val_messages d on a.callback_status = d.code
                                  left join (select aa.validator_id, bb.station_name
                                        from eco_val_validators aa,
                                             eco_stations bb
                                        where aa.station_id = bb.id) e on a.validator_id = e.validator_id
                         where b.sub_id = '$sub_id'
                         union all
                         select a.card_no,
                                a.curr_bal,
                                a.recharge,
                                a.new_bal,
                                a.last_payment_id,
                                a.next_payment_id,
                                a.request_status,
                                c.message as req_desc,
                                a.callback_status,
                                d.message    call_desc,
                                a.date_registered,
                                e.station_name
                         from eco_val_validator_logs_arch a
                                  inner join eco_sub_card_vw b on a.card_no = b.card_luhn
                                  left join eco_val_messages c on a.request_status = c.code
                                  left join eco_val_messages d on a.callback_status = d.code
                                  left join (select aa.validator_id, bb.station_name
                                        from eco_val_validators aa,
                                             eco_stations bb
                                        where aa.station_id = bb.id) e on a.validator_id = e.validator_id
                         where b.sub_id = '$sub_id'
                     ) x
                order by x.date_registered desc")->result();
    }

    function get_all_cashiers()
    {
        $this->db->select('a.*, b.username, b.name as full_name');
        $this->db->order_by('b.name', 'asc');
        $this->db->where(array('a.user_id <>' => '1', 'a.status' => 'Active'));
        $this->db->from('cashiers a');
        $this->db->join('users b', 'a.user_id = b.id');
        return $this->db->get()->result();
    }
}