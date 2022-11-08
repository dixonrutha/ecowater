<!--<link rel="stylesheet" href="<?= base_url('assets/css/dashforge.dashboard.css') ?>">-->
<div class="row">
    <div class="col-sm-6 col-lg-3 mg-t-5">
        <div class="card card-body">
            <h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Payments today</h6>
            <?php
            $topup_today = 0;
            $topup_yest = 0;
            foreach ($topup_daily as $d) {
                if ($d->trn_date == date('Y-m-d')) {
                    $topup_today = $topup_today + $d->amount;
                } elseif ($d->trn_date == date('Y-m-d', strtotime('-1 days'))) {
                    $topup_yest = $topup_yest + $d->amount;
                }
            }
            //comparison
            $daily_diff = $topup_today - $topup_yest;
            if ($daily_diff > 0) {
                $color = 'success';
                $arrow = 'up';
            } else {
                $color = 'danger';
                $arrow = 'down';
            }
            if ($topup_yest == 0) {
                $daily_perc = 100;
            } else {
                $daily_perc = $daily_diff / $topup_yest * 100;
            }
            ?>
            <div class="d-flex d-lg-block d-xl-flex align-items-end">
                <h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1"><?= number_format($topup_today, 0) ?></h3>                    
            </div>
            <div class="chart-three">
                <p class="tx-11 tx-color-03 mg-b-0 tx-center"><span class="tx-medium tx-<?= $color ?>"><?= number_format($daily_perc, 2) ?>%<i class="icon ion-md-arrow-<?= $arrow ?>"></i></span> than yesterday</p>
                <i>yesterday payments <strong><?= number_format($topup_yest, 0) ?></strong></i>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-lg-3  mg-t-5">
        <div class="card card-body">
            <h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Payments MTD <?= date('M-Y') ?></h6>
            <?php
            $topup_this_month = 0;
            $topup_last_month = 0;
            foreach ($topup_monthly as $mtd) {
                if ($mtd->trn_date == date('Y-m')) {
                    $topup_this_month = $topup_this_month + $mtd->amount;
                } else {
                    $topup_last_month = $topup_last_month + $mtd->amount;
                }
            }
            //comparison
            $monthly_diff = $topup_this_month - $topup_last_month;
            if ($monthly_diff > 0) {
                $color = 'success';
                $arrow = 'up';
            } else {
                $color = 'danger';
                $arrow = 'down';
            }
            if ($topup_last_month == 0) {
                $monthly_perc = 100;
            } else {
                $monthly_perc = $monthly_diff / $topup_last_month * 100;
            }
            ?>
            <div class="d-flex d-lg-block d-xl-flex align-items-end">
                <h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1"><?= number_format($topup_this_month, 0) ?></h3>                  
            </div>
            <div class="chart-three">
                <p class="tx-11 tx-color-03 mg-b-0 tx-center"><span class="tx-medium tx-<?= $color ?>"><?= number_format($monthly_perc, 2) ?>% <i class="icon ion-md-arrow-<?= $arrow ?>"></i></span> than last month</p>
                <i>last month payments <strong><?= number_format($topup_last_month, 0) ?></strong></i>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-lg-3 mg-t-5">
        <div class="card card-body">
            <h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Payments YTD <?= date('Y') ?></h6>
            <?php
            $topup_this_year = 0;
            $topup_last_year = 0;
            foreach ($topup_yearly as $ytd) {
                if ($ytd->trn_date == date('Y')) {
                    $topup_this_year = $topup_this_year + $ytd->amount;
                } else {
                    $topup_last_year = $topup_last_year + $ytd->amount;
                }
            }
            //comparison
            $yearly_diff = $topup_this_year - $topup_last_year;
            if ($yearly_diff > 0) {
                $color = 'success';
                $arrow = 'up';
            } else {
                $color = 'danger';
                $arrow = 'down';
            }
            if ($topup_last_year == 0) {
                $yearly_perc = 100;
            } else {
                $yearly_perc = $yearly_diff / $topup_last_year * 100;
            }
            ?>
            <div class="d-flex d-lg-block d-xl-flex align-items-end">
                <h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1"><?= number_format($topup_this_year, 0) ?></h3>              
            </div>
            <div class="chart-three">
                <p class="tx-11 tx-color-03 mg-b-0 tx-center"><span class="tx-medium tx-<?= $color ?>"><?= number_format($yearly_perc, 2) ?>% <i class="icon ion-md-arrow-<?= $arrow ?>"></i></span> than last year</p>
                <i>last year payments <strong><?= number_format($topup_last_year, 0) ?></strong></i>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-lg-3 mg-t-5">
        <div class="card card-body">
            <h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Un-validated Payments</h6>
            <div class="d-flex d-lg-block d-xl-flex align-items-end">
                <h4 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1"><?= number_format($pending_payments->amount, 0) ?></h4>              
            </div>
            <br/>
            <div class="chart-three">
                <i><strong><?= number_format($pending_payments->trn_count, 0) ?></strong> payments</i>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6 mg-t-10">
        <div class="card">
            <div class="card-body">
                <ul class="nav nav-line" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="daily-val-tab" data-toggle="tab" href="#daily-val" role="tab" aria-controls="daily-val" aria-selected="true">today's validation</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="home-tab1" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"><?= date('F, Y') ?> Validation</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab1" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">MoM Payments Trend</a>
                    </li>
                </ul>
                <div class="tab-content mg-t-20" id="myTabContent">
                    <div class="tab-pane fade show active" id="daily-val" role="tabpanel" aria-labelledby="daily-val-tab" style="min-height: 400px">
                        <div id="daily-val"></div>
                    </div>
                    <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab1">
                        <div id="container"></div>
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <!--                        <div id="validation-trend"></div>-->
                    </div>
                </div>                
            </div>
        </div>
    </div>
    <div class="col-md-6 mg-t-10">
        <div class="card">
            <div class="card-body">
                <ul class="nav nav-line" id="myTab5" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="home-tab5" data-toggle="tab" href="#home5" role="tab" aria-controls="home" aria-selected="true">Transaction Trend</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab5" data-toggle="tab" href="#profile5" role="tab" aria-controls="profile" aria-selected="false">Amount Trend</a>
                    </li>
                    <!--            <li class="nav-item">
                                  <a class="nav-link" id="contact-tab5" data-toggle="tab" href="#contact5" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
                                </li>-->
                </ul>
                <div class="tab-content mg-t-20" id="myTabContent5">
                    <div class="tab-pane fade show active" id="home5" role="tabpanel" aria-labelledby="home-tab5">
                        <div id="tran-count"></div>
                    </div>
                    <div class="tab-pane fade" id="profile5" role="tabpanel" aria-labelledby="profile-tab5">
                        <div id="tran-amount"></div>
                    </div>
                    <div class="tab-pane fade" id="contact5" role="tabpanel" aria-labelledby="contact-tab5">
                        <h6>Contact</h6>
                        <p class="mg-b-0">Amet duis do nisi duis veniam non est eiusmod tempor incididunt tempor dolor ipsum in qui sit. Exercitation mollit sit culpa nisi culpa non adipisicing reprehenderit do dolore. Duis reprehenderit occaecat anim ullamco ad duis occaecat ex.</p>
                    </div>
                </div>
            </div>
        </div>
        <!--        <div class="card">
                    <div class="card-body" id="tran-count">
                       
                    </div>
                </div>-->
    </div>
</div>
<!-- Daily validation start -->
<script>
    Highcharts.chart('daily-val', {
        credits: {
            enabled: false
        },
        title: {
            text: 'Validation by Station'
        },
        subtitle: {
            text: 'Today : <?php echo date('d-M-Y') ?>'
        },
        xAxis: {
            categories: [<?php
            foreach ($val_today as $v) {
                echo "'" . $v->station_name . "',";
            }
            ?>]
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Amount (Tsh)',
            }
        },
        labels: {
            formatter: function () {
                if (this.value >= 1E6) {
                    return (this.value / 1000000).toFixed(1) + 'M';
                }
                return this.value / 1000 + 'k';
            }
        },
        series: [{
                type: 'column',
                name: 'Amount',
                colorByPoint: true,
                data: [<?php
            foreach ($val_today as $v) {
                echo $v->trn_amount . ",";
            }
            ?>],
                showInLegend: false
            }]
    });
</script>
<!-- Daily validation start -->
<!-- Script for Validation by station -->
<script>
    Highcharts.chart('container', {
        credits: {
            enabled: false
        },
        title: {
            text: 'Validation by Station'
        },
        subtitle: {
            text: 'This month : <?php echo date('F, Y') ?>'
        },
        xAxis: {
            categories: [<?php
            foreach ($validated as $v) {
                echo "'" . $v->station_name . "',";
            }
            ?>]
        },
        yAxis: {
            labels: {
                formatter: function () {
                    if (this.value >= 1E6) {
                        return (this.value / 1000000).toFixed(1) + 'M';
                    }
                    return this.value / 1000 + 'k';
                }
            },
            min: 0,
            title: {
                text: 'Amount (Tsh)',
            }
        },
        labels: {
            formatter: function () {
                if (this.value >= 1E6) {
                    return (this.value / 1000000).toFixed(1) + 'M';
                }
                return this.value / 1000 + 'k';
            }
        },
        series: [{
                type: 'column',
                name: 'Amount',
                colorByPoint: true,
                data: [<?php
            foreach ($validated as $v) {
                echo $v->trn_amount . ",";
            }
            ?>],
                showInLegend: false
            }]
    });

</script>
<!-- Script for Validation by station end -->

<!-- Script for transaction count -->
<script>
    Highcharts.chart('tran-count', {
        credits: {
            enabled: false
        },
        chart: {
            type: 'spline'
        },
        title: {
            text: 'Transactions Trend'
        },
        subtitle: {
            text: '<?php echo 'From: ' . date('d-M-y', strtotime($start_date_2)) . ' To: ' . date('d-M-y', strtotime($end_date)) ?>'
        },
        xAxis: {
            categories: [<?php
            foreach ($topup_daily as $t) {
                echo "'" . date('d-M-y', strtotime($t->trn_date)) . "',";
            }
            ?>]
        },
        yAxis: {
            title: {
                text: 'Number of transactions'
            },
            min: 0
        },
        tooltip: {
            crosshairs: true,
            shared: true
        },
        plotOptions: {
            spline: {
                marker: {
                    radius: 4,
                    lineColor: '#666666',
                    lineWidth: 1
                }
            }
        },
        series: [{
                name: 'Transactions',
                marker: {
                    symbol: 'diamond'
                },
                data: [<?php
            foreach ($topup_daily as $t) {
                echo $t->trn_count . ",";
            }
            ?>]
            }]
    });
</script>
<!-- Script for transaction count end -->

<!-- Script for transaction amount trend -->
<script>
    Highcharts.chart('tran-amount', {
        credits: {
            enabled: false
        },
        chart: {
            type: 'spline'
        },
        title: {
            text: 'Amount Trend'
        },
        subtitle: {
            text: '<?php echo 'From: ' . date('d-M-y', strtotime($start_date_2)) . ' To: ' . date('d-M-y', strtotime($end_date)) ?>'
        },
        xAxis: {
            categories: [<?php
            foreach ($topup_daily as $t) {
                echo "'" . date('d-M-y', strtotime($t->trn_date)) . "',";
            }
            ?>]
        },
        yAxis: {
            title: {
                text: 'Amount (Tsh)'
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
        tooltip: {
            crosshairs: true,
            shared: true
        },
        plotOptions: {
            spline: {
                marker: {
                    radius: 4,
                    lineColor: '#666666',
                    lineWidth: 1
                }
            }
        },
        series: [{
                name: 'Amounts',
                marker: {
                    symbol: 'diamond'
                },
                //color: '#666666',
                data: [<?php
            foreach ($topup_daily as $t) {
                echo $t->amount . ",";
            }
            ?>]
            }]
    });
</script>
<!-- Script for transaction amount trend end -->