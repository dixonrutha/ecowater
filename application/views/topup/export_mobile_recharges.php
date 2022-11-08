<?php
header('Content-Type: "text/csv"');
header('Content-Disposition: attachment; filename="Mobil_VAL_Recharges_' . time() . '.csv" ');
header('Expires: 0');
header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
header("Content-Transfer-Encoding: binary");
header('Pragma: public');
?>
S/N,Ecowater_Ref,Selcom_Ref,Operator,Operator_Ref,Initiator,Amount,Bonus,Card_Number,Subscriber,Sub Mobile,Status,Validation,Campus,Selcom_Timestamp,System_Timestamp,Channel,Maker,Comments,Sweep
<?php
$i = 1;
foreach ($recharge as $t) {
$selcom_timestamp = date('d/m/Y H:i:s', strtotime($t->timestamp_selcom));
$date_registered = date('d/m/Y H:i:s', strtotime($t->date_registered));
?>
<?= $i . "," ?>
<?php if (!empty($t->eco_ref)) {echo $t->eco_ref . ",";} else {echo ',';} ?>
<?php if (!empty($t->reference_selcom)) {echo "'".str_replace(',', '', $t->reference_selcom) . ",";} else {echo ",";} ?>
<?php if (!empty($t->operator)) {echo str_replace(',', '', $t->operator) . ",";} else {echo ",";} ?>
<?php if (!empty($t->transid_operator)) {echo "'".str_replace(',', '', $t->transid_operator) . ",";} else {echo ",";} ?>
<?php if (!empty($t->msisdn)) {echo "'".str_replace(',', '', $t->msisdn) . ",";} else {echo ",";} ?>
<?php if (!empty($t->amount)) {echo str_replace(',', '', $t->amount) . ",";} else {echo ",";} ?>
<?php if (!empty($t->prom_amt)) {echo str_replace(',', '', $t->prom_amt) . ",";} else {echo ",";} ?>
<?php if (!empty($t->utilityref_card_no)) {echo "'".str_replace(',', '', $t->utilityref_card_no) . ",";} else {echo ",";} ?>
<?php if (!empty($t->sub_name)) {echo str_replace(',', '', $t->sub_name) . ",";} else {echo ",";} ?>
<?php if (!empty($t->sub_mobile)) {echo "'".str_replace(',', '', $t->sub_mobile) . ",";} else {echo ",";} ?>
<?php if($t->v_status == '000' && empty($t->n_status)){echo "Failed Transaction".",";}elseif (!empty($t->v_status_desc)) {echo str_replace(',', '', $t->v_status_desc) . ",";} else {echo ",";} ?>
<?php if ($t->validator_status == '104' && $t->v_status == '000' && $t->n_status == '000') {echo 'Pending' . ",";} 
elseif($t->v_status == '000' && empty ($t->n_status)) {echo "Failed Transaction".",";}
elseif($t->v_status != '000') {echo ",";}
else{echo "Validated".",";} ?>
<?php if (!empty($t->campus_name)) {echo str_replace(',', '', $t->campus_name) . ",";} else {echo ",";} ?>
<?php if (!empty($t->timestamp_selcom)) {echo $selcom_timestamp . ",";} else {echo ",";} ?>
<?php if (!empty($t->date_registered)) {echo $date_registered . ",";} else {echo ",";} ?>
<?php if (!empty($t->channel_id)) {echo str_replace(',', '', $t->channel_id) . ",";} else {echo ",";} ?>
<?php if (!empty($t->maker_id)) {echo str_replace(',', '', $t->maker_id) . ",";} else {echo ",";} ?>
<?php if (!empty($t->comment)) {echo str_replace(',', '', $t->comment) . ",";} else {echo ",";} ?>
<?php if (!empty($t->sweep)) {echo str_replace(',', '', $t->sweep) . ",";} else {echo ",";} ?>
<?= ",\n"; ?>
<?php
$i++;
}?>