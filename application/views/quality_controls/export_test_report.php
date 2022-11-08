<?php
header('Content-Type: "text/csv"');
header('Content-Disposition: attachment; filename="QC_Report_' . time() . '.csv" ');
header('Expires: 0');
header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
header("Content-Transfer-Encoding: binary");
header('Pragma: public');
?>
Test_Date,Station,Category,Laboratory,TDS,pH,TSS,Alkalinity as CaCO3 (Mg/L), Chloride (Mg/L), Calcium (Mg/L), Total Hardness (Mg/L), Conductivity (us/cm), Fluoride (Mg/L), Zinc (Mg/L), Iron (Mg/L), Copper (Mg/L),Coliforms cfu per 100ml,E coli cfu per 100ml,Salmonella per 100ml,Enterococcus cfu per 100ml,Staphylococcus aureus  cfu per 100ml,Pseudomonas aeruginosa cfu per 100ml,
<?php
$i = 1;
foreach ($qc_data as $t) { ?>
<?php if (!empty($t->qc_date)) { echo str_replace(' ','',date('d-M-y', strtotime($t->qc_date))) . ","; } else { echo ",";}?>
<?php
if (!empty($t->station_name)) {
echo str_replace(',', '', $t->station_name) . ",";
} else {
echo ',';
}
?>
    <?php
    if (!empty($t->qc_category)) {
        echo $t->qc_category . ",";
    } else {
        echo ",";
    }
    ?>
    <?php
    if (!empty($t->lab_name)) {
        echo str_replace(',', '', $t->lab_name) . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->tds)) {
        echo $t->tds . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->ph)) {
        echo $t->ph . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->tss)) {
        echo $t->tss . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->alkalinity)) {
        echo $t->alkalinity . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->chloride)) {
        echo $t->chloride . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->calcium)) {
        echo $t->calcium . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->hardness)) {
        echo $t->hardness . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->conductivity)) {
        echo $t->conductivity . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->fluoride)) {
        echo $t->fluoride . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->zinc)) {
        echo $t->zinc . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->iron)) {
        echo $t->iron . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->copper)) {
        echo $t->copper . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->coliforms)) {
        echo $t->coliforms . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->e_coli)) {
        echo $t->e_coli . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->salmonella)) {
        echo $t->salmonella . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->enterococcus)) {
        echo $t->enterococcus . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->staphylococcus_aureus)) {
        echo $t->staphylococcus_aureus . ",";
    } else {
        echo ',';
    }
    ?>
    <?php
    if (!empty($t->pseudomonas_aeruginosa)) {
        echo $t->pseudomonas_aeruginosa . ",";
    } else {
        echo ',';
    }
    ?>
    <?= ",\n"; ?>
    <?php
    $i++;
}?>