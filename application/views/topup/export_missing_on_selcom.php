<?php
header('Content-Type: "text/csv"');
header('Content-Disposition: attachment; filename="On_CLoud_Missing_Selcom_'.time().'.csv" ');
header('Expires: 0');
header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
header("Content-Transfer-Encoding: binary");
header('Pragma: public');

?>
S/N,Ecowater_Refernce,Card_No,Amount,Operator,Mobile_Reference,Initiator,Trn_Date,Trn_Time,Validator_Status,Val_Comm_Ref,
<?php 
$i=1;
foreach ($recharge as $t) { ?>
<?= $i.","?>
<?php if(!empty($t->eco_ref)){echo $t->eco_ref.",";}else{echo ',';}?>
<?php if(!empty($t->utilityref_card_no)){echo $t->utilityref_card_no.",";}else{echo ",";}?>
<?php if(!empty($t->amount)){echo $t->amount.",";}else{echo ",";}?>
<?php if(!empty($t->operator)){echo $t->operator.",";}else{echo ',';}?>
<?php if(!empty($t->transid_operator)){echo $t->transid_operator.",";}else{echo ',';}?>
<?php if(!empty($t->msisdn)){echo $t->msisdn.",";}else{echo ",";}?>
<?php if(!empty($t->timestamp_selcom)){echo date('d/M/Y', strtotime($t->timestamp_selcom)).",";}else{echo ',';}?>
<?php if(!empty($t->timestamp_selcom)){echo date('H:i:s', strtotime($t->timestamp_selcom)).",";}else{echo ',';}?>
<?php if(!empty($t->validator_status)){echo $t->validator_status.",";}else{echo ",";}?>
<?php if(!empty($t->val_comm_ref)){echo $t->val_comm_ref.",";}else{echo ",";}?>
<?= ",\n";?>
<?php $i++; }?>