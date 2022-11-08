<?php
header('Content-Type: "text/csv"');
header('Content-Disposition: attachment; filename="All_Station_Sales_'.time().'.csv" ');
header('Expires: 0');
header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
header("Content-Transfer-Encoding: binary");
header('Pragma: public');

?>
S/N,Sales_Date,Station_Name,Card_Sale,Cash_Sale,Total_Sale,
<?php 
$i=1;
foreach ($sales as $s) { ?>
<?= $i.","?>
<?php if(!empty($s->date)){echo str_replace(',', '', date('d-M-Y', strtotime($s->date))).",";}else{echo ',';}?>
<?php if(!empty($s->station_name)){echo str_replace(',', '', $s->station_name).",";}else{echo ',';}?>
<?php if(!empty($s->card_sale)){echo str_replace(',', '', $s->card_sale).",";}else{echo ",";}?>
<?php if(!empty($s->cash_sale)){echo str_replace(',', '', $s->cash_sale).",";}else{echo ",";}?>
<?php if(!empty($s->total_sale)){echo str_replace(',', '', $s->total_sale).",";}else{echo ",";}?>
<?= ",\n";?>
<?php $i++; }?>