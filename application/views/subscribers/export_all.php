<?php
header('Content-Type: "text/csv"');
header('Content-Disposition: attachment; filename="Subscribers_'.time().'.csv" ');
header('Expires: 0');
header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
header("Content-Transfer-Encoding: binary");
header('Pragma: public');

?>
S/N,Fullname,Gender,Mobile,Card No,Campus,Email,Category,Date Registered,Date Last TopUp,Total TopUp,Performance,
<?php 
$i=1;
foreach ($subscribers as $s) { ?>
<?= $i.","?>
<?php if(!empty($s->sub_name)){echo str_replace(',', '', $s->sub_name).",";}else{echo ",";}?>
<?php if(!empty($s->gender)){echo preg_replace('/[^A-Za-z0-9\-]/', '', $s->gender).",";}else{echo ',';}?>
<?php if(!empty($s->mobile)){echo preg_replace('/[^A-Za-z0-9\-]/', '', $s->mobile).",";}else{echo ',';}?>
<?= $s->card_no.","?>
<?= str_replace(",","",$s->campus_name).","?>
<?= str_replace(",","",$s->email).","?>
<?php if(!empty($s->category)){echo preg_replace('/[^A-Za-z0-9\-]/', '', $s->category).",";}else{echo ',';}?>
<?php if(!empty($s->sub_registration_date)) {echo date("d-M-y", strtotime($s->sub_registration_date)).",";}else{ echo ',';}?>
<?php if(!empty($s->date_last_topup)) {echo date("d-M-y", strtotime($s->date_last_topup)).",";}else{ echo ',';}?>
<?php if(!empty($s->tamount)){echo $s->tamount.",";}else{echo ',';}?>
<?php if(!empty($s->sub_stat_dormancy)){echo preg_replace('/[^A-Za-z0-9\-]/', '', $s->sub_stat_dormancy).",";}else{echo ',';}?>
<?= ",\n";?>
<?php $i++; }?>