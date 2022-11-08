<style>
    #td_amount{text-align: right; }
    #th-center{text-align: center; }
    #td-date{font-weight: bold; }
    #td-amount{text-align: right; }

    /* Modal styles */
    .modal .modal-dialog {
        max-width: 400px;
    }
    .modal .modal-header, .modal .modal-body, .modal .modal-footer {
        padding: 20px 30px;
    }
    .modal .modal-content {
        border-radius: 3px;
    }
    .modal .modal-footer {
        background: #ecf0f1;
        border-radius: 0 0 3px 3px;
    }
    .modal .modal-title {
        display: inline-block;
    }
    .modal .form-control {
        border-radius: 2px;
        box-shadow: none;
        border-color: #dddddd;
    }
    .modal textarea.form-control {
        resize: vertical;
    }
    .modal .btn {
        border-radius: 2px;
        min-width: 100px;
    }	
    .modal form label {
        font-weight: normal;
    }	
</style>
<div class="row">
    <div class="col-md-3">
        <div class="box box-primary">
            <div class="box-body box-profile">
                <img class="profile-user-img img-responsive img-circle" src="<?= base_url('assets_old/home_new.png') ?>"/>
                <h3 class="profile-username text-center"><?= $station->station_name ?></h3>
                <p class="text-muted text-center"><?= $station->campus_name ?></p>
                <ul class="list-group list-group-unbordered">
                    <li class="list-group-item">
                        <b>GSM</b> <a class="pull-right"><?= $station->gsm ?></a>
                    </li>
                    <li class="list-group-item">
                        <b>TFDA No.</b> <a class="pull-right"><?= $station->tfda_permit_no ?></a>
                    </li>
                    <li class="list-group-item">
                        <b>Price per litre (TZS)</b> <a class="pull-right"><?= number_format($water_price, 0); ?></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-md-5">
        <div class="box box-warning">
            <div class="box-body">
                <table id="example2" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Card Sales</th>
                            <th>Cash Sales</th>
                            <th>Total Sale</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($sales_hist as $sh) {
                            $open_card = $sh->d1_open_bal_card + $sh->d2_open_bal_card;
                            $closing_card = $sh->d1_closing_bal_card + $sh->d2_closing_bal_card;
                            $open_cash = $sh->d1_open_bal_cash + $sh->d2_open_bal_cash;
                            $closing_cash = $sh->d1_closing_bal_cash + $sh->d2_closing_bal_cash;
                            $card_sale = $closing_card - $open_card;
                            $cash_sale = $closing_cash - $open_cash;
                            ?>
                            <tr>
                                <td><?= date('D d-M-Y', strtotime($sh->date)) ?></td>
                                <td id="td_amount"><?= number_format($card_sale, 2); ?></td>
                                <td id="td_amount"><?= number_format($cash_sale, 2) ?></td>
                                <td id="td-amount"><?= number_format($card_sale + $cash_sale, 2) ?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="box box-danger">
            <div class="box-header with-border">
                <h3 class="box-title"><span class="fa fa-bar-chart"></span> Daily Sales Analytics</h3>
            </div>
            <div class="box-body" id="sales">

            </div>
        </div>
    </div>
</div>
<script>
    Highcharts.setOptions({
    global: {
    useUTC: false,
    },
            lang: {
            decimalPoint: '.',
                    thousandsSep: ','
            }
    });</script>
<script>
    $(function () {
    $('#example1').DataTable()
            $('#example2').DataTable({
    pagingType: "full",
            'paging': true,
            'lengthChange': false,
            'searching'   : false,
            'ordering'    : true,
            'info'        : true,
            'autoWidth'   : false,
            'order'		: []
            })
            })
</script>
<script type="text/javascript">
            Highcharts.setOptions({
            lang: {
            numericSymbols: ['k', 'M', 'B', 'T', 'P', 'E']
                    }
            });
    Highcharts.chart('sales', {
// removing HighCharts.com tag
    credits: {
    enabled: false
            },
            chart: {
            type: 'column'
                    },
            title: {
            text: 'Daily Sales Analytics'
                    },
            subtitle: {
            text: 'Past 7 days'
                    },
            xAxis: {
            categories: [
<?php foreach ($sales_hist_graph as $sg) { ?>
                '<?= date('d-M-y', strtotime($sg->date)) ?>',
<?php } ?>
            ],
                    crosshair: true
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
                    text: 'Amount (TZS)'
                            }
            },
//            tooltip: {
//            headerFormat: '<span style="font-size:9px">{point.key}</span><table>',
//                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name} : </td>' +
//                    '<td style="padding:0"><b> Tsh {point.y:.1f}</b></td></tr>',
//                    footerFormat: '</table>',
//                    shared: true,
//                    useHTML: true
//            },
            plotOptions: {
            column: {
            pointPadding: 0.2,
                    borderWidth: 0
                    }
            },
            series: [{
            name: 'Card',
                    data: [
<?php
foreach ($sales_hist_graph as $sg) {
    $open_card = $sg->d1_open_bal_card + $sg->d2_open_bal_card;
    $closing_card = $sg->d1_closing_bal_card + $sg->d2_closing_bal_card;
    $card_sale = $closing_card - $open_card;
    ?>
    <?= $card_sale ?>,
<?php } ?>
                    ]

                    }, {
            name: 'Cash',
                    data: [
<?php
foreach ($sales_hist_graph as $sg) {
    $open_cash = $sg->d1_open_bal_cash + $sg->d2_open_bal_cash;
    $closing_cash = $sg->d1_closing_bal_cash + $sg->d2_closing_bal_cash;
    $cash_sale = $closing_cash - $open_cash;
    ?>
    <?= $cash_sale ?>,
<?php } ?>
                    ]

            }]
            });
</script>