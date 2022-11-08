<?php
header('Content-Type: "text/csv"');
header('Content-Disposition: attachment; filename="Topup_' . time() . '.csv" ');
header('Expires: 0');
header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
header("Content-Transfer-Encoding: binary");
header('Pragma: public');
?>
S/N,Trn_Ref_No,Card_No,Sub_Name,Amount,Trn_Date,Channel,Category,Maker_ID,Date_Registered,
<?php
$i = 1;
foreach ($topup as $t) {
    ?>
    <?= $i . "," ?>
    <?php if (!empty($t->trn_ref_no)) {echo $t->trn_ref_no . ",";} else {echo ',';} ?>
    <?php if (!empty($t->card_no)) {echo str_replace(',', '', $t->card_no) . ",";} else {echo ",";} ?>
    <?php if (!empty($t->sub_name)) {
        echo str_replace(',', '', $t->sub_name) . ",";
    } else {
        echo ",";
    } ?>
    <?php if (!empty($t->amount)) {
        echo $t->amount . ",";
    } else {
        echo ',';
    } ?>
    <?php if (!empty($t->trn_date)) {
        echo $t->trn_date . ",";
    } else {
        echo ',';
    } ?>
    <?php if (!empty($t->pos)) {
        echo str_replace(',', '', $t->pos) . ",";
    } else {
        echo ",";
    } ?>
    <?php if (!empty($t->category)) {
        echo $t->category . ",";
    } else {
        echo ',';
    } ?>
    <?php if (!empty($t->maker_id)) {
        echo $t->maker_id . ",";
    } else {
        echo ',';
    } ?>
    <?php if (!empty($t->date_registered)) {
        echo $t->date_registered . ",";
    } else {
        echo ',';
    } ?>
    <?= ",\n"; ?>
    <?php
    $i++;
}?>