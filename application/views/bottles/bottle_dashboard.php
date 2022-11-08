<div class="row">
    <div class="col-sm-6 col-lg-3 mg-t-5">
        <div class="card card-body">
            <h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-medium tx-info mg-b-8">Active Loans Balance</h6>
            <div class="d-flex d-lg-block d-xl-flex align-items-end">
                <?php
                $active_loan_balance = $active_loans_balance->loan_amount - $active_loans_balance->collected_amount;
                $total_loans_balance = $total_loans_balance->loan_amount;
                ?>
                <h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1"><?= number_format($active_loan_balance, 2) ?></h3>                    
            </div>
            <div class="chart-three">                
                <i>total loans (active & inactive) <strong><?= number_format($total_loans_balance, 0) ?></strong></i>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-lg-3 mg-t-5">
        <div class="card card-body">
            <h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-medium tx-success mg-b-8">Repayments Today, <?= date('d-M-Y') ?></h6>
            <div class="d-flex d-lg-block d-xl-flex align-items-end">
                <h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1"><?= number_format($repayment_today->amount, 2) ?></h3>                    
            </div>
            <div class="chart-three">                
                <i>yesterday <strong><?= number_format($repayment_yesterday->amount, 2) ?></strong></i>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-lg-3 mg-t-5">
        <div class="card card-body">
            <h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-medium tx-info mg-b-8">Repayments MTD, <?= date('M-Y') ?></h6>
            <div class="d-flex d-lg-block d-xl-flex align-items-end">
                <h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1"><?= number_format($repayment_this_month->amount, 2) ?></h3>                    
            </div>
            <div class="chart-three">                
                <i>last month <strong><?= number_format($repayment_last_month->amount, 2) ?></strong></i>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-lg-3 mg-t-5">
        <div class="card card-body">
            <h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-medium tx-success mg-b-8">Repayments YTD, <?= date('Y') ?></h6>
            <div class="d-flex d-lg-block d-xl-flex align-items-end">
                <h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1"><?= number_format($repayment_this_year->amount, 2) ?></h3>                    
            </div>
            <div class="chart-three">                
                <i>last year <strong><?= number_format($repayment_last_year->amount, 2) ?></strong></i>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-4 mg-t-10">
        <div class="card">
            <div class="card-header tx-medium tx-success">KEY DETAILS</div>
            <div class="card-body">
                <table class="table table-bordered table-sm mg-b-0">
                    <?php
                    $active_bottlers = 0;
                    $active_bottles = 0;
                    $total_bottles = 0;
                    $full_paid_loan = 0;
                    foreach ($key_details as $kd) {
                        if ($kd->status == 'Active') {
                            $active_bottlers = $kd->bottlers;
                            $active_bottles = $kd->bottles;
                        } elseif ($kd->status == 'All') {
                            $total_bottles = $kd->bottles;
                        } elseif ($kd->status == 'Inactive') {
                            $full_paid_loan = $kd->bottlers;
                        }
                    }
                    ?>
                    <tr>
                        <td><strong>Active Bottlers &nbsp;&nbsp;&nbsp;<span class="fa fa-users"></span></strong></td>
                        <td style="text-align: right"><?= number_format($active_bottlers, 0) ?></td>
                    </tr>
                    <tr>
                        <td><strong>Active Bottles &nbsp;&nbsp;&nbsp;<span class="fa fa-flask"></span></strong></td>
                        <td style="text-align: right"><?= number_format($active_bottles, 0) ?></td>
                    </tr>
                    <tr>
                        <td><strong>Total Bottles</strong></td>
                        <td style="text-align: right"><?= number_format($total_bottles, 0) ?></td>
                    </tr>
                    <tr>
                        <td><strong>Full Paid Bottle Loans</strong></td>
                        <td style="text-align: right"><?= number_format($full_paid_loan, 0) ?></td>
                    </tr>
                </table>

                <table class="table table-bordered table-sm mg-t-20">
                    <tr>
                        <td colspan="2" style="text-align: center" class="tx-medium tx-info">BOTTLES SOLD</td>
                    </tr>
                    <tr>
                        <td><strong>Today</strong></td>
                        <td style="text-align: right"><?= number_format($bottle_today->bottles, 0) ?></td>
                    </tr>
                    <tr>
                        <td><strong>MTD , <?= date('M-Y') ?></strong></td>
                        <td style="text-align: right"><?= number_format($bottle_mtd->bottles, 0) ?></td>
                    </tr>
                    <tr>
                        <td><strong>YTD , <?= date('Y') ?></strong></td>
                        <td style="text-align: right"><?= number_format($bottle_ytd->bottles, 0) ?></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="card mg-t-10">
            <div class="card-header tx-medium tx-success">PERFORMANCE RATIOS</div>
            <div class="card-body">
                <table class="table table-bordered table-sm mg-b-0">
                    <?php
                    $active_loan_repayments = 0;
                    $unpaid_loan_balance = 0;
                    foreach ($key_ratio_data as $kr) {
                        if ($kr->category == 'Repayments') {
                            $active_loan_repayments = $kr->amount;
                        } elseif ($kr->category == 'Unpaid_loans') {
                            $unpaid_loan_balance = $kr->amount;
                        }
                    }

                    if ($active_loan_balance <= 0) {
                        $repay_to_active_loan = 0;
                        $unpaid_to_active_loan = 0;
                    } else {
                        $repay_to_active_loan = $active_loan_repayments / $active_loan_balance * 100;
                        $unpaid_to_active_loan = $unpaid_loan_balance / $active_loan_balance * 100;
                    }

                    if ($total_loans_balance == 0) {
                        $active_loan_to_total_loan = 0;
                    } else {
                        $active_loan_to_total_loan = $active_loan_balance / $total_loans_balance * 100;
                    }
                    ?>
                    <tr>
                        <td><strong>Repayments to Active Loans</strong></td>
                        <td style="text-align: right"><?= number_format($repay_to_active_loan, 2) . '%' ?></td>
                    </tr>
                    <tr>
                        <td><strong>Active Loans to Total Loans</strong></td>
                        <td style="text-align: right"><?= number_format($active_loan_to_total_loan, 2) . '%' ?></td>
                    </tr>
                    <tr>
                        <td><strong>Unpaid Loans to Active Loans</strong></td>
                        <td style="text-align: right"><?= number_format($unpaid_to_active_loan, 2) . '%' ?></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-8 mg-t-10">
        <div class="card">
            <div class="card-body">
                <div id="container" style="min-height: 450px"></div>
            </div>
        </div>
    </div>
</div>

<!--Script for trend start here-->
<script>
    Highcharts.chart('container', {
        credits: {
            enabled: false
        },
        title: {
            text: 'Bottle Loans & Repayments Trend'
        },
        subtitle: {
            text: 'Past 15 days'
        },
        yAxis: {
            title: {
                text: 'Amount'
            },
            labels: {
                formatter: function () {
                    if (this.value >= 1E6) {
                        return (this.value / 1000000).toFixed(1) + 'M';
                    }
                    return this.value / 1000 + 'k';
                }
            },
            min: 0
        },
        xAxis: {
            categories: [
<?php
foreach ($loan_repayment_trend as $t) {
    echo "'" . date('d-M-Y', strtotime($t->full_date)) . "',";
}
?>
            ]
        },
        series: [{
                name: 'Loans taken',
                data: [
<?php
foreach ($loan_repayment_trend as $t) {
    echo $t->loan_amount . ',';
}
?>
                ]
            }, {
                name: 'Repayments collected',
                data: [
<?php
foreach ($loan_repayment_trend as $t) {
    echo $t->repayments . ',';
}
?>
                ]
            }]

    });
</script>
<!--Script for trend end here-->