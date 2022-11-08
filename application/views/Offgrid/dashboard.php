<?php
//echo session_id().' <<>> '.$this->session->userdata('session_id');
?>
<div class="row row-xs">
    <div class="col-md-4 col-xs-12 mg-t-5">

        <div class="card">
            <div class="card-header">
                <h6 class="mg-b-0"><strong>Acquisition </strong></h6>
            </div>
            <div class="card-body pd-sm-15 pd-lg-20">
                <div class="row row-sm">
                    <div class="col-md-4 mg-t-5">
                        <div class="media">
                            <div
                                class="wd-40 ht-40 rounded bd bd-2 bd-success d-flex flex-shrink-0 align-items-center justify-content-center op-6">
                                <i data-feather="users" class="wd-20 ht-20 tx-primary stroke-wd-3"></i>
                            </div>
                            <div class="media-body mg-l-10">
                                <h4 class="tx-normal tx-rubik tx-spacing--2 lh-1 mg-b-5"
                                    style="font-size: 13px;"><?= number_format($off_today->off_count, 0) ?></h4>

                                <p class="tx-10 tx-uppercase tx-medium tx-color-03 tx-spacing-1 tx-nowrap mg-b-0">TODAY</p>
                            </div>
                            <!-- media-body -->
                        </div>
                        <!-- media -->
                    </div>
                    <!-- col -->
                    <div class="col-md-4 mg-t-5">
                        <div class="media">
                            <div
                                class="wd-40 ht-40 rounded bd bd-2 bd-gray-500 d-flex flex-shrink-0 align-items-center justify-content-center op-6">
                                <i data-feather="users" class="wd-20 ht-20 tx-gray-500 stroke-wd-3"></i>
                            </div>
                            <div class="media-body mg-l-10">
                                <h4 class="tx-normal tx-rubik tx-spacing--2 lh-1 mg-b-5"
                                    style="font-size: 13px;"><?= number_format($off_mtd->off_count, 0) ?></h4>

                                <p class="tx-10 tx-uppercase tx-medium tx-color-03 tx-spacing-1 tx-nowrap mg-b-0"><?= date('M-Y') ?></p>
                            </div>
                            <!-- media-body -->
                        </div>
                        <!-- media -->
                    </div>
                    <div class="col-md-4 mg-t-5">
                        <div class="media">
                            <div
                                class="wd-40 ht-40 rounded bd bd-2 bd-warning d-flex flex-shrink-0 align-items-center justify-content-center op-6">
                                <i data-feather="users" class="wd-20 ht-20 tx-primary stroke-wd-3"></i>
                            </div>
                            <div class="media-body mg-l-10">
                                <h4 class="tx-normal tx-rubik tx-spacing--2 lh-1 mg-b-5"
                                    style="font-size: 13px;"><?= number_format($off_ytd->off_count, 0) ?></h4>

                                <p class="tx-10 tx-uppercase tx-medium tx-color-03 tx-spacing-1 tx-nowrap mg-b-0">
                                    YEAR <?= date('Y') ?></p>
                            </div>
                            <!-- media-body -->
                        </div>
                        <!-- media -->
                    </div>
                    <!-- col -->
                </div>
            </div>
        </div>
        <br> <br>

        <div class="card" style="min-height: 120px;">
            <div class="card-header">
                <h6 class="mg-b-0"><strong>Revenue  Analysis </strong></h6>
            </div>
            <div class="card-body">
                <div class="row row-xs">
                    <div class="col-4 col-lg">
                        <div class="d-flex align-items-baseline">
                            <span class="d-block wd-8 ht-8 rounded-circle bg-primary"></span>
                            <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Today </span>
                        </div>
                        <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($revenue_today->revenue, 0) ?></h5>
                    </div>
                    <!-- col -->
                    <div class="col-4 col-lg">
                        <div class="d-flex align-items-baseline">
                            <span class="d-block wd-8 ht-8 rounded-circle bg-teal"></span>
                        <span
                            class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Month <?= date('M-Y') ?></span>
                        </div>
                        <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($revenue_mtd->revenue, 0) ?></h5>
                    </div>
                    <!-- col -->
                    <div class="col-4 col-lg">
                        <div class="d-flex align-items-baseline">
                            <span class="d-block wd-8 ht-8 rounded-circle bg-gray-300"></span>
                            <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Year <?= date('Y') ?></span>
                        </div>
                        <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($revenue_ytd->revenue, 0) ?></h5>
                    </div>
                    <!-- col -->
                </div>
            </div>
        </div>

        <br> <br>
        <div class="card" style="min-height: 120px;">
            <div class="card-header">
                <h6 class="mg-b-0"><strong>Deliveries  Analysis </strong></h6>
            </div>
            <div class="card-body">
                <div class="row row-xs">
                    <div class="col-4 col-lg">
                        <div class="d-flex align-items-baseline">
                            <span class="d-block wd-8 ht-8 rounded-circle bg-primary"></span>
                            <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Today </span>
                        </div>
                        <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($deliveries_today->deliveries, 0) ?></h5>
                    </div>
                    <!-- col -->
                    <div class="col-4 col-lg">
                        <div class="d-flex align-items-baseline">
                            <span class="d-block wd-8 ht-8 rounded-circle bg-teal"></span>
                        <span
                            class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Month <?= date('M-Y') ?></span>
                        </div>
                        <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($deliveries_mtd->deliveries, 0) ?></h5>
                    </div>
                    <!-- col -->
                    <div class="col-4 col-lg">
                        <div class="d-flex align-items-baseline">
                            <span class="d-block wd-8 ht-8 rounded-circle bg-gray-300"></span>
                            <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Year <?= date('Y') ?></span>
                        </div>
                        <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($deliveries_ytd->deliveries, 0) ?></h5>
                    </div>
                    <!-- col -->
                </div>
            </div>
        </div>
        <br>



    </div>

    <div class="col-md-8 col-xs-12 mg-t-3">
        <div class="card" >

            <div class="card-body pd-lg-15">
                <div class="row align-items-sm-end">
                    <!-- Sales across OffGrid graph -->
                    <div class="col-md-12 col-lg-12 col-xl-12">
                        <div id="campus"></div>
                    </div>
                    <!-- Sales across OffGrid graph end-->


                </div>
            </div>
        </div>
    </div>



    <!-- New Customers  end-->



    <!-- Off Grid cusromer  status -->





</div>

<div class="row row-xs">
    <div class="col-md-7 pd-t-10 bd-b-0">

        <div class="card">


            <div class="card-body">
                <ul class="nav nav-line" id="myTab5" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="home-tab5" data-toggle="tab" href="#home5" role="tab"
                           aria-controls="home" aria-selected="true"><strong>Best 3 Customers(Revenue)</strong></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab5" data-toggle="tab" href="#profile5" role="tab"
                           aria-controls="profile" aria-selected="false"><strong>Best 3 Customers(Deliveries)</strong></a>
                    </li>
                </ul>
                <div class="tab-content mg-t-20" id="myTabContent5">
                    <div class="tab-pane fade show active" id="home5" role="tabpanel" aria-labelledby="home-tab5"
                         style="min-height: auto;">
                        <div class="card">
                            <div class="card-header pd-t-10 bd-b-0">
                                <h6>Top 3 Best Customers(Revenue)</h6>
                            </div>
                            <div class="card_body pd-y-0">
                                <table class="table table-bordered table-striped table-sm mg-b-0">
                                    <thead>
                                    <tr>
                                        <th><strong>Name</strong></th>

                                        <th style="text-align: center"><strong><span
                                                    class="badge badge-warning">Total Revenue</span></strong></th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    //print_r($categories);
                                    foreach ($revenu_top_3 as $c) {
                                        ?>
                                        <tr>
                                            <td style="text-align: left"><?= $c->customer_name ?></td>
                                            <td style="text-align: left"><?= number_format($c->total_amount,0) ?></td>

                                        </tr>

                                    <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>



                    </div>
                    <div class="tab-pane fade" id="profile5" role="tabpanel" aria-labelledby="profile-tab5"
                         style="min-height: auto;">
                        <div class="card">
                            <div class="card-header pd-t-10 bd-b-0">
                                <h6>Top 3 Best Customers(Revenue)</h6>
                            </div>
                            <div class="card_body pd-y-0">
                                <table class="table table-bordered table-striped table-sm mg-b-0">
                                    <thead>
                                    <tr>
                                        <th><strong>Name</strong></th>
                                        <th style="text-align: center"><strong><span
                                                    class="badge badge-primary">Deliveries</span></strong></th>


                                    </tr>
                                    </thead>
                                    <tbody>

                                    <?php
                                    //print_r($categories);



                                    foreach ($delivery_top_3 as $c) {
                                        ?>
                                        <tr>
                                            <td style="text-align: left"><?= $c->customer_name ?></td>
                                            <td style="text-align: left"><?= $c->sub_count ?></td>

                                        </tr>
                                    <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5 pd-t-10 bd-b-0">

        <div class="card">
            <div class="card-header">

            </div>
            <!-- card-header -->
            <div class="card-body tx-center">
                <h5 class="tx-normal tx-rubik tx-30 tx-spacing--1 mg-b-0"><?= number_format($active_off->off_count, 0) ?></h5>

                <p class="tx-11 tx-uppercase tx-semibold tx-spacing-1 tx-color-02">Total OffGrid Customers</p>
            </div>
        </div>
        <br>
        <div class="card">
            <div class="card-header">

            </div>
            <!-- card-header -->
            <div class="card-body tx-center">
                <h5 class="tx-normal tx-rubik tx-30 tx-spacing--1 mg-b-0"><?= number_format($empties->empties_count, 0) ?></h5>

                <p class="tx-11 tx-uppercase tx-semibold tx-spacing-1 tx-color-02">Total Empties</p>
            </div>
        </div>
    </div>
</div>

<!-- Off GRID Analysis -->

<div class="row row-xs">
    <div class="col-md-7 pd-t-10 bd-b-0">

        <div class="card">


            <div class="card-body">
                <ul class="nav nav-line" id="myTab5" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="home-tab5" data-toggle="tab" href="#home5" role="tab"
                           aria-controls="home" aria-selected="true"><strong>Might order Today</strong></a>
                    </li>

                </ul>
                <div class="tab-content mg-t-20" id="myTabContent5">
                    <div class="tab-pane fade show active" id="home5" role="tabpanel" aria-labelledby="home-tab5"
                         style="min-height: auto;">
                        <div class="card">
                            <div class="card-header pd-t-10 bd-b-0">
                                <h6>Might order Today</h6>
                            </div>
                            <div class="card_body pd-y-0">
                                <table class="table table-bordered table-striped table-sm mg-b-0">
                                    <thead>
                                    <tr>
                                        <th><strong>Name</strong></th>

                                        <th style="text-align: center"><strong><span
                                                    class="badge badge-warning">Avarage</span></strong></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    //print_r($categories);
                                    foreach ($avarage as $c) {
                                        ?>
                                        <tr>
                                            <td style="text-align: left"><?= $c->customer_name?></td>
                                            <td style="text-align: left"><?=$c->avarage ?></td>
                                        </tr>
                                    <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="profile5" role="tabpanel" aria-labelledby="profile-tab5"
                         style="min-height: auto;">
                        <div class="card">
                            <div class="card-header pd-t-10 bd-b-0">
                                <h6>Top 3 Best Customers(Revenue)</h6>
                            </div>
                            <div class="card_body pd-y-0">
                                <table class="table table-bordered table-striped table-sm mg-b-0">
                                    <thead>
                                    <tr>
                                        <th><strong>Name</strong></th>
                                        <th style="text-align: center"><strong><span
                                                    class="badge badge-primary">Deliveries</span></strong></th>


                                    </tr>
                                    </thead>
                                    <tbody>

                                    <?php
                                    //print_r($categories);



                                    foreach ($delivery_top_3 as $c) {
                                        ?>
                                        <tr>
                                            <td style="text-align: left"><?= $c->customer_name ?></td>
                                            <td style="text-align: left"><?= $c->sub_count ?></td>

                                        </tr>
                                    <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- Avarage -->
<!-- JS Script start -->
<script>
    Highcharts.setOptions({
        global: {
            useUTC: false
        },
        lang: {
            decimalPoint: '.',
            thousandsSep: ','
        }
    });</script>
<script>
    var chart = Highcharts.chart('campus', {
        // removing HighCharts.com tag
        credits: {
            enabled: false
        },
        title: {
            text: ''
        },
        subtitle: {
            text: '<strong>Annual OffGrid  Sales : <?= date('Y') ?></strong>'
        },
        xAxis: {
            categories: [
                <?php
                foreach ($customers as $c) {
                    echo "'" . $c->customer_name . "',";
                }
                ?>
            ],
            visible: false
        },
        yAxis: {
            min: 0,
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
            }
        },
        tooltip: {
            valueDecimals: 2,
            //valuePrefix: 'TZS ',
            shared: true,
            useHTML: true
        },
        series: [{
            name: 'Amount',
            type: 'column',
            colorByPoint: true,
            data: [
                <?php
                foreach ($customers as $cd) {

                    echo $cd->total_amount . ',';
                }
                ?>
            ],
            showInLegend: false
        }]

    });</script>
<!-- Revenue shares -->
<script>
    Highcharts.chart('revenue-share', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        // removing HighCharts.com tag
        credits: {
            enabled: false
        },
        title: {
            text: '<span style="font-size: 14px">Revenue share this Month'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b> <br>Value: {point.y:,.0f}'
        },
        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false
                },
                showInLegend: true
            }
        },
        series: [{
            name: 'Share',
            colorByPoint: true,
            data: [
                <?php
                foreach ($revenues as $r) {
                    if ($r->amount == '') {
                        $amount = 0;
                    } else {
                        $amount = $r->amount;
                    }
                    echo "{
                                    name: '" . $r->revenue . "',
                                    y: " . $amount . "
                                },";
                }
                ?>
            ]
        }]
    });</script>
<!-- Revenue shares end-->

<!-- Revenue shares new start-->
<script>
    // Make monochrome colors
    var pieColors = (function () {
        var colors = [],
            base = Highcharts.getOptions().colors[0],
            i;
        for (i = 0; i < 10; i += 1) {
            // Start out with a darkened base color (negative brighten), and end
            // up with a much brighter color
            colors.push(Highcharts.color(base).brighten((i - 3) / 7).get());
        }
        return colors;
    }());
    // Build the chart
    Highcharts.chart('revenue-share-new', {
        // removing HighCharts.com tag
        credits: {
            enabled: false
        },
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'Revenue share this month'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                colors: pieColors,
                showInLegend: false,
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b><br>{point.percentage:.1f} %',
                    distance: -50,
                    filter: {
                        property: 'percentage',
                        operator: '>',
                        value: 4
                    }
                }
            }
        },
        series: [{
            name: 'Share',
            data: [
                <?php if ($revenues_share->sub_fee != 0) { ?> {
                    name: 'Sub. Fees',
                    y: <?= $revenues_share->sub_fee ?>
                }, <?php } ?>
                <?php if ($revenues_share->mob_recharges != 0) { ?> {
                    name: 'MOB Recharge',
                    y: <?= $revenues_share->mob_recharges ?>
                }, <?php } ?>
                <?php if ($revenues_share->pos_recharges != 0) { ?> {
                    name: 'POS Recharge',
                    y: <?= $revenues_share->pos_recharges ?>
                }, <?php } ?>
                <?php if ($revenues_share->val_recharge != 0) { ?> {
                    name: 'VAL Recharge',
                    y: <?= $revenues_share->val_recharge ?>
                }, <?php } ?>
                <?php if ($revenues_share->cash_sales != 0) { ?> {
                    name: 'Cash Sales',
                    y: <?= $revenues_share->cash_sales ?>
                }, <?php } ?>
                <?php if ($revenues_share->card_renewal != 0) { ?> {
                    name: 'Card Renewal',
                    y: <?= $revenues_share->card_renewal ?>
                }, <?php } ?>
            ]
        }]
    });
</script>
<!-- Revenue shares new end-->
