<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Sms_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    function sendsms($message = '', $phone = '')
    {
//        $url = 'https://messaging-service.co.tz/api/sms/v1/text/single';
//        $sID = 'Ecowater';
//        // Base64 encoded string of Next SMS username and password
//        $auth = 'ZWNvd2F0ZXJfYWRtaW46RG9kb21hMjAyMiE=';
//        $send = '{
//                "from":"' . $sID . '",
//                "to":"' . $phone . '",
//                "text":"' . $message . '"
//             }';
//
//        $sms = curl_init($url);
//        curl_setopt($sms, CURLOPT_POST, 1);
//        curl_setopt($sms, CURLOPT_POSTFIELDS, $send);
//        curl_setopt($sms, CURLOPT_FOLLOWLOCATION, 1);
//        curl_setopt($sms, CURLOPT_HTTPHEADER, array(
//            'Authorization: Basic ' . $auth . '',
//            'Content-Type: application/json',
//            'accept: application/json',
//        ));
//        curl_setopt($sms, CURLOPT_RETURNTRANSFER, 1);
//        $response = curl_exec($sms);
//        //echo $response;
    }

    public function sendsms_old($message = '', $phone = '')
    {
        //echo $reciever_phone; exit();
        //$phone = '255622932740';
        // LOAD INFOBIP LIBRARY
        $url = 'api.infobip.com/sms/1/text/single';


        $uname = 'ecowater_admin';
        $upass = 'SMARTFITcloud2019!';
        $sID = 'Ecowater';

        $auth = base64_encode($uname . ':' . $upass);

        $send = '{
                "from":"' . $sID . '",
                "to":"' . $phone . '",
                "text":"' . $message . '"
             }';

        $sms = curl_init($url);
        curl_setopt($sms, CURLOPT_POST, 1);
        curl_setopt($sms, CURLOPT_POSTFIELDS, $send);
        curl_setopt($sms, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($sms, CURLOPT_HTTPHEADER, array(
            'Authorization: Basic ' . $auth . '',
            'Content-Type: application/json',
            'accept: application/json',
        ));
        curl_setopt($sms, CURLOPT_RETURNTRANSFER, 1);

        $response = curl_exec($sms);
    }

    function insertOutgoingSMS($data)
    {
        $this->db->insert('sms_outgoing', $data);
    }

}