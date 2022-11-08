<?php

if (!empty($booktable)) {

    $output = '';
    $outputdata = '';
    $outputtail = '';

    $output .= '
                   <table class="table table-bordered table-striped">
	                <thead>
                          <tr>
                              <th style="font-weight: bold; text-align: left">FULL NAME</th>
                              <th style="font-weight: bold;">MOBILE</th>
                              <th style="font-weight: bold;">CARD NUMBER</th>
                              <th style="font-weight: bold;">GENDER</th>
                              <th style="font-weight: bold;">CATEGORY</th>
                              <th style="font-weight: bold;">PERFORMANCE</th>
                              <th style="font-weight: bold; text-align: center">ACTIONS</th>
 		                    </tr>
                   </thead>
                   <tbody>
                   ';
    $base_url = base_url();
    $sub_view_url = $base_url . 'subscribers/viewSubscriber/'; //subscribers/viewSubscriber
    foreach ($booktable as $objects) {
        if ($objects->sub_stat_dormancy === 'E') {
            $perf = '<span class="badge badge-success">Excellent</span>';
        } elseif ($objects->sub_stat_dormancy === 'G') {
            $perf = '<span class="badge badge-primary">Good</span>';
        } elseif ($objects->sub_stat_dormancy === 'N') {
            $perf = '<span class="badge badge-warning">Normal</span>';
        } elseif ($objects->sub_stat_dormancy === 'D') {
            $perf = '<span class="badge badge-danger">Dormant</span>';
        }
        $sub_id = str_replace(array('+', '/', '='), array('-', '_', '~'), $this->encryption->encrypt($objects->id));
        if (!empty($this->session->userdata('sub_topup'))) {
            //$topup_button = '<a href="javascript:void(0);" class="btn btn-xs btn-outline-warning item_edit" data-sub_id="' . $objects->id . '" data-sub_name="' . $objects->sub_name . '" data-card_no="' . $objects->card_no . '">Topup</a>';
            $topup_button = '';
        } else {
            $topup_button = '';
        }
        if (!empty($this->session->userdata('sub_sms'))) {
            $sms_button = '<a href="javascript:void(0);" class="btn btn-xs btn-outline-success item_sms" data-sub_id="' . $objects->id . '" data-sub_name="' . $objects->sub_name . '" data-card_no="' . $objects->card_no . '" data-mobile="' . $objects->mobile . '">SMS</a>';
        } else {
            $sms_button = '';
        }
        if (!empty($this->session->userdata('sub_mail'))) {
            $mail_button = '<a href="javascript:void(0);" class="btn btn-xs btn-outline-light item_mail" data-sub_id="' . $objects->id . '" data-sub_name="' . $objects->sub_name . '" data-card_no="' . $objects->card_no . '" data-email="' . $objects->email . '">Mail</a>';
        } else {
            $mail_button = '';
        }
        $outputdata .= '                
                    <tr> 
		        <td style="text-align: left">' . $objects->sub_name . '</td>
		        <td style="text-align: left">' . $objects->mobile . '</td>
                        <td style="text-align: left">' . $objects->card_no . '</td>
                        <td style="text-align: left">' . $objects->gender . '</td>
                        <td style="text-align: left">' . $objects->category . '</td>
                        <td style="text-align: center; font-size: 12px">' . $perf . '</td>
                        <td>
                            <div class="btn-group">
                              ' . $topup_button . '                              
                              ' . $sms_button . '
                              ' . $mail_button . '                              
                                <a href="' . $sub_view_url . $sub_id . '" class="btn btn-xs btn-outline-info" target="_blank">View</a>
                            </div>
                        </td>
                    </tr> 
                
           ';
        //  echo $outputdata; 
    }

    $outputtail .= ' 
                         </tbody>
                         </table>
                        ';

    echo $output;
    echo $outputdata;
    echo $outputtail;
} else {
    echo '<strong style="font-size: 14px">Ooops! No record found</strong>';
} 