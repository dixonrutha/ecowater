<?php
//echo session_id().' <<>> '.$this->session->userdata('session_id');
?>
<div class="row row-xs">
<div class="col-md-8 col-xs-12 mg-t-3">
    <div class="card">
        <div
            class="card-header bd-b-0 pd-t-10 pd-lg-t-15 pd-l-10 pd-lg-l-15 d-flex flex-column flex-sm-row align-items-sm-start justify-content-sm-between">
            <div>
                <h6 class="mg-b-5"><strong>Campus Sales</strong><i> (Year <?= date('Y') ?>)</i></h6>
            </div>
            <h6 class="mg-t-20 mg-sm-t-0 pull-right">
                <strong>Campus Sales</strong> <i>(this month)</i>
            </h6>
        </div>
        <div class="card-body pd-lg-15">
            <div class="row align-items-sm-end">
                <!-- Sales across campus graph -->
                <div class="col-md-7 col-lg-7 col-xl-8">
                    <div id="campus"></div>
                </div>
                <!-- Sales across campus graph end-->
                <div class="col-md-5 col-lg-5 col-xl-4 mg-t-10 mg-lg-t-0">
                    <div class="row">
                        <?php
                        $i = 1;
                        foreach ($campus_sales_month as $csm) {
                            if ($i == 1) {
                                $color_c = "success";
                            } elseif ($i == 2) {
                                $color_c = "danger";
                            } elseif ($i == 3) {
                                $color_c = "primary";
                            } elseif ($i == 4) {
                                $color_c = "warning";
                            } elseif ($i == 5) {
                                $color_c = "info";
                            } else {
                                $color_c = "warning";
                            }
                            ?>
                            <div class="col-sm-6 col-lg-12 mg-t-30">
                                <div class="d-flex align-items-center justify-content-between mg-b-5">
                                    <h6 class="tx-uppercase tx-10 tx-spacing-1 tx-color-02 tx-semibold mg-b-0"><?= $csm->campus_name ?></h6>
                                    <?php
                                    if ($campus_t_sales_month->t_sales == 0) {
                                        $cmptsm = 1;
                                    } else {
                                        $cmptsm = $campus_t_sales_month->t_sales;
                                    }
                                    $percentage = ($csm->sales / $cmptsm) * 100;
                                    $pbar = 'wd-' . round($percentage, 0) . 'p';
                                    ?>
                                    <span class="tx-10 tx-color-05"><?= number_format($percentage, 0) ?>%</span>
                                </div>
                                <div class="d-flex align-items-end justify-content-between mg-b-5">
                                    <h5 class="tx-normal tx-rubik lh-2 mg-b-0"><?= number_format($csm->sales, 0) ?></h5>
                                </div>
                                <div class="progress ht-4 mg-b-0 op-5">
                                    <div
                                        class="progress-bar bg-<?= $color_c ?> bg-teal wd-<?= ceil($percentage / 10) * 10 ?>p"
                                        role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <?php
                            $i++;
                        }
                        ?>

                    </div>
                    <!-- row -->
                </div>
            </div>
        </div>
    </div>
</div>
<div class="col-md-4 col-xs-12 mg-t-5">
    <div class="card" style="min-height: 480px">
        <div class="card-body">
            <div id="revenue-share-new"></div>
        </div>
    </div>
</div>
<!-- New Subscribers -->
<div class="col-md-4 col-xs-12 mg-t-5">
    <div class="card">
        <div class="card-header">
            <h6 class="mg-b-0"><strong>New Subscribers</strong></h6>
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
                                style="font-size: 13px;"><?= number_format($sub_today->sub_count, 0) ?></h4>

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
                                style="font-size: 13px;"><?= number_format($sub_mtd->sub_count, 0) ?></h4>

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
                                style="font-size: 13px;"><?= number_format($sub_ytd->sub_count, 0) ?></h4>

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
</div>
<!-- New Subscribers end-->
<div class="col-md-4 col-xs-12 mg-t-5">
    <div class="card">
        <div class="card-header">
            <h6 class="mg-b-0"><strong>Customer Base</strong></h6>
        </div>
        <!-- card-header -->
        <div class="card-body tx-center">
            <h5 class="tx-normal tx-rubik tx-30 tx-spacing--1 mg-b-0"><?= number_format($active_sub->sub_count, 0) ?></h5>

            <p class="tx-11 tx-uppercase tx-semibold tx-spacing-1 tx-color-02">Total Subscribers1</p>
        </div>
    </div>
</div>
<!-- Valume Sold -->
<div class="col-md-4 col-xs-12 mg-t-5">
    <div class="card" style="min-height: 120px;">
        <div class="card-header">
            <h6 class="mg-b-0"><strong>Volume Analysis (Litres)</strong></h6>
        </div>
        <div class="card-body">
            <div class="row row-xs">
                <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                        <span class="d-block wd-8 ht-8 rounded-circle bg-primary"></span>
                        <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Volume sold today</span>
                    </div>
                    <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($volumes_today->volume, 0) ?></h5>
                </div>
                <!-- col -->
                <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                        <span class="d-block wd-8 ht-8 rounded-circle bg-teal"></span>
                        <span
                            class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Volume sold <?= date('M-Y') ?></span>
                    </div>
                    <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($volumes_mtd->volume, 0) ?></h5>
                </div>
                <!-- col -->
                <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                        <span class="d-block wd-8 ht-8 rounded-circle bg-gray-300"></span>
                        <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Volume sold year <?= date('Y') ?></span>
                    </div>
                    <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($volumes_ytd->volume, 0) ?></h5>
                </div>
                <!-- col -->
            </div>
        </div>
    </div>
</div>
<!-- Valume Sold end-->
<!-- Subscriber status -->
<div class="col-md-5 pd-t-10 bd-b-0">
    <div class="card">
        <div class="card-body">
            <ul class="nav nav-line" id="myTab5" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab5" data-toggle="tab" href="#home5" role="tab"
                       aria-controls="home" aria-selected="true"><strong>General Performance</strong></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab5" data-toggle="tab" href="#profile5" role="tab"
                       aria-controls="profile" aria-selected="false"><strong>Performance By Group</strong></a>
                </li>
            </ul>
            <div class="tab-content mg-t-20" id="myTabContent5">
                <div class="tab-pane fade show active" id="home5" role="tabpanel" aria-labelledby="home-tab5"
                     style="min-height: auto;">
                    <div class="card">
                        <div class="card-header pd-t-10 bd-b-0">
                            <h6>General Subscribers Performance</h6>
                        </div>
                        <div class="card-body pd-y-0">
                            <?php
                            $sub_total = 0;
                            foreach ($sub_perf as $p) {
                                $sub_total = $sub_total + $p->sub_count;
                            }
                            ?>
                            <table class="table table-bordered table-striped">
                                <tbody>
                                <?php
                                foreach ($sub_perf as $p) {
                                    if ($p->sub_stat_dormancy == 'E') {
                                        ?>
                                        <tr>
                                            <td><span class="badge badge-primary">Excellent</span></td>
                                            <td class="text-right"><?= number_format($p->sub_count, 0) ?></td>
                                            <td class="text-right"><?= number_format($p->sub_count / $sub_total * 100, 1) ?>
                                                %
                                            </td>
                                        </tr>
                                    <?php } elseif ($p->sub_stat_dormancy == 'G') { ?>
                                        <tr>
                                            <td><span class="badge badge-success">Good</span></td>
                                            <td class="text-right"><?= number_format($p->sub_count, 0) ?></td>
                                            <td class="text-right"><?= number_format($p->sub_count / $sub_total * 100, 1) ?>
                                                %
                                            </td>
                                        </tr>
                                    <?php } elseif ($p->sub_stat_dormancy == 'N') { ?>
                                        <tr>
                                            <td><span class="badge badge-warning">Normal</span></td>
                                            <td class="text-right"><?= number_format($p->sub_count, 0) ?></td>
                                            <td class="text-right"><?= number_format($p->sub_count / $sub_total * 100, 1) ?>
                                                %
                                            </td>
                                        </tr>
                                    <?php } elseif ($p->sub_stat_dormancy == 'D') { ?>
                                        <tr>
                                            <td><span class="badge badge-danger">Dormant</span></td>
                                            <td class="text-right"><?= number_format($p->sub_count, 0) ?></td>
                                            <td class="text-right"><?= number_format($p->sub_count / $sub_total * 100, 1) ?>
                                                %
                                            </td>
                                        </tr>
                                    <?php
                                    }
                                }
                                ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="profile5" role="tabpanel" aria-labelledby="profile-tab5"
                     style="min-height: auto;">
                    <div class="card">
                        <div class="card-header pd-t-10 bd-b-0">
                            <h6>Performance By Group</h6>
                        </div>
                        <div class="card_body pd-y-0">
                            <table class="table table-bordered table-striped table-sm mg-b-0">
                                <thead>
                                <tr>
                                    <th><strong>Group</strong></th>
                                    <th style="text-align: center"><strong><span
                                                class="badge badge-primary">Excelent</span></strong></th>
                                    <th style="text-align: center"><strong><span class="badge badge-success">Good</span></strong>
                                    </th>
                                    <th style="text-align: center"><strong><span
                                                class="badge badge-warning">Normal</span></strong></th>
                                    <th style="text-align: center"><strong><span
                                                class="badge badge-danger">Dormant</span></strong></th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                //print_r($categories);
                                foreach ($categories as $c) {
                                    ?>
                                    <tr>
                                        <td style="text-align: left"><?= $c->category ?></td>
                                        <?php
                                        //Excelent
                                        $data = $this->db->get_where('sub_stat_vw', array('category' => $c->category, 'sub_stat_dormancy' => 'E'));
                                        if ($data->num_rows() >= 1) {
                                            $result = $data->row();
                                            echo '<td style="text-align: center">' . number_format($result->sub_count, 0) . '</td>';
                                        } else {
                                            echo '<td style="text-align: center">0</td>';
                                        }
                                        // Good
                                        $data = $this->db->get_where('sub_stat_vw', array('category' => $c->category, 'sub_stat_dormancy' => 'G'));
                                        if ($data->num_rows() >= 1) {
                                            $result = $data->row();
                                            echo '<td style="text-align: center">' . number_format($result->sub_count, 0) . '</td>';
                                        } else {
                                            echo '<td style="text-align: center">0</td>';
                                        }
                                        // Normal
                                        $data = $this->db->get_where('sub_stat_vw', array('category' => $c->category, 'sub_stat_dormancy' => 'N'));
                                        if ($data->num_rows() >= 1) {
                                            $result = $data->row();
                                            echo '<td style="text-align: center">' . number_format($result->sub_count, 0) . '</td>';
                                        } else {
                                            echo '<td style="text-align: center">0</td>';
                                        }
                                        // Dormant
                                        $data = $this->db->get_where('sub_stat_vw', array('category' => $c->category, 'sub_stat_dormancy' => 'D'));
                                        if ($data->num_rows() >= 1) {
                                            $result = $data->row();
                                            echo '<td style="text-align: center">' . number_format($result->sub_count, 0) . '</td>';
                                        } else {
                                            echo '<td style="text-align: center">0</td>';
                                        }
                                        ?>
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
<!-- Subscriber status -->
<!-- Royalty -->
<div class="col-md-3 mg-t-5">
    <div class="card mg-b-0">
        <div class="card-header pd-t-10 bd-b-0">
            <h6><strong>Royalties (TZS)</strong></h6>
        </div>
        <div class="card-body pd-y-0">
            <div class="row row-sm">
                <div class="col-md-12">
                    <?php
                    $today = $royalty_today->amount;
                    $yesterday = $royalty_yesterday->amount;
                    if ($today == '') {
                        $today = 0;
                    }
                    if ($yesterday == '') {
                        $yesterday = 0;
                    }
                    if ($yesterday == 0) {
                        $mov = 100;
                    } else {
                        $mov = (($today - $yesterday) / $yesterday) * 100;
                    }
                    if ($mov > 0) {
                        $color = 'success';
                        $arrow = 'up';
                        $pbard = ceil($mov / 10) * 10;
                    } elseif ($mov < 0) {
                        $color = 'danger';
                        $arrow = 'down';
                        $pbard = ceil($mov / 10) * 10;
                    } else {
                        $color = 'warning';
                        $arrow = 'down';
                        $pbard = 0;
                    }
                    if ($pbard < 0) {
                        $pbard = -1 * $pbard;
                    }
                    ?>
                    <h4 class="tx-normal tx-rubik mg-b-10"><?= number_format($today, 2) ?> <span
                            class="pull-right tx-15">today</span></h4>

                    <div class="progress ht-2 mg-b-10">
                        <div class="progress-bar bg-<?= $color ?> wd-<?= $pbard ?>p bg-df-2" role="progressbar"
                             aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <p class="tx-10 tx-color-03 mg-b-15"><span class="tx-medium tx-<?= $color ?>"><?= round($mov) ?>% <i
                                class="icon ion-md-arrow-<?= $arrow ?>"></i></span> than yesterday</p>
                </div>
                <div class="col-md-12">
                    <?php
                    $mtd = $royalty_mtd->amount;
                    $prev_mtd = $royalty_prev_mtd->amount;
                    if ($mtd == '') {
                        $mtd = 0;
                    }
                    if ($prev_mtd == '') {
                        $prev_mtd = 0;
                    }
                    if ($prev_mtd == 0) {
                        $mov_mtd = 100;
                    } else {
                        $mov_mtd = (($mtd - $prev_mtd) / $prev_mtd) * 100;
                    }
                    if ($mov_mtd > 0) {
                        $color_mtd = 'success';
                        $arrow_mtd = 'up';
                        $pbard_mtd = ceil($mov_mtd / 10) * 10;
                    } elseif ($mov_mtd < 0) {
                        $color_mtd = 'danger';
                        $arrow_mtd = 'down';
                        $pbard_mtd = ceil($mov_mtd / 10) * 10;
                    } else {
                        $color_mtd = 'warning';
                        $arrow_mtd = 'down';
                        $pbard_mtd = 0;
                    }
                    if ($pbard_mtd < 0) {
                        $pbard_mtd = -1 * $pbard_mtd;
                    }
                    ?>
                    <h4 class="tx-normal tx-rubik mg-b-10"><?= number_format($mtd, 2) ?> <span
                            class="pull-right tx-15"><?= date('M-Y') ?></span></h4>

                    <div class="progress ht-2 mg-b-10">
                        <div class="progress-bar bg-<?= $color_mtd ?> wd-<?= $pbard_mtd ?>p bg-df-2" role="progressbar"
                             aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <p class="tx-10 tx-color-03 mg-b-15"><span
                            class="tx-medium tx-<?= $color_mtd ?>"><?= round($mov_mtd) ?>% <i
                                class="icon ion-md-arrow-<?= $arrow_mtd ?>"></i></span> than previous month</p>
                </div>
                <div class="col-md-12">
                    <?php
                    $ytd = $royalty_ytd->amount;
                    $prev_ytd = $royalty_prev_ytd->amount;
                    if ($ytd == '') {
                        $ytd = 0;
                    }
                    if ($prev_ytd == '') {
                        $prev_ytd = 0;
                    }
                    if ($prev_ytd == 0) {
                        $mov_ytd = 100;
                    } else {
                        $mov_ytd = (($ytd - $prev_ytd) / $prev_ytd) * 100;
                    }
                    if ($mov_ytd > 0) {
                        $color_ytd = 'success';
                        $arrow_ytd = 'up';
                        $pbard_ytd = ceil($mov_ytd / 10) * 10;
                    } elseif ($mov_ytd < 0) {
                        $color_ytd = 'danger';
                        $arrow_ytd = 'down';
                        $pbard_ytd = ceil($mov_ytd / 10) * 10;
                    } else {
                        $color_ytd = 'warning';
                        $arrow_ytd = 'down';
                        $pbard_ytd = 0;
                    }
                    if ($pbard_ytd < 0) {
                        $pbard_ytd = -1 * $pbard_ytd;
                    }
                    ?>
                    <h4 class="tx-normal tx-rubik mg-b-10"><?= number_format($ytd, 2) ?> <span class="pull-right tx-15">Year <?= date('Y') ?></span>
                    </h4>

                    <div class="progress ht-2 mg-b-10">
                        <div class="progress-bar bg-<?= $color_ytd ?> wd-<?= $pbard_ytd ?>p bg-df-2" role="progressbar"
                             aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <p class="tx-10 tx-color-03 mg-b-15"><span
                            class="tx-medium tx-<?= $color_ytd ?>"><?= round($mov_ytd) ?>% <i
                                class="icon ion-md-arrow-<?= $arrow_ytd ?>"></i></span> than previous year</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Royalty -->
<!-- Notifications -->
<div class="col-md-4 col-xs-12 mg-t-5">
    <div class="card mg-b-0">
        <div class="card-body tx-center pd-y-0" style="min-height: 241px;">
            <ul class="list-group list-group-flush tx-13">
                <?php
                foreach ($notifications as $n) {
                    $message = trim(preg_replace('/\s+/', ' ', $n->message_pro));
                    $out = strlen($message) > 35 ? substr($message, 0, 35) . "..." : $message;
                    $date = date('Y-m-d', strtotime($n->date_registered));
                    $yest = date('Y-m-d', strtotime('-1 days'));
                    if ($date === date('Y-m-d')) {
                        $sms_date = 'today at ' . date('H:i', strtotime($n->date_registered));
                    } elseif ($date === $yest) {
                        $sms_date = 'yesterday at ' . date('H:i', strtotime($n->date_registered));
                    } else {
                        $sms_date = date('d-M-y H:i', strtotime($n->date_registered));
                    }
                    ?>
                    <li class="list-group-item d-flex pd-sm-x-20">
                        <div class="avatar"><span
                                class="avatar-initial rounded-circle bg-gray-600"><?= substr($n->station_name, 0, 2) ?></span>
                        </div>
                        <div class="pd-sm-l-10" style="text-align: left">
                            <p class="tx-medium mg-b-0" style="text-align: left"><?= $out ?></p>
                            <small class="tx-12 tx-color-03 mg-b-0"><strong><?= $n->station_name ?></strong>
                                - <?= $sms_date ?></small>
                        </div>
                    </li>
                <?php } ?>
            </ul>
        </div>
        <div class="card-footer text-center tx-13">
            <a href="<?= base_url('stations/stationDashboard') ?>" class="link-03">View more alerts <i
                    class="icon ion-md-arrow-down mg-l-5"></i></a>
        </div>
    </div>
</div>
<!-- Notifications -->
<!-- Topups Analysis -->
<div class="col-md-4 col-xs-12 mg-t-5">
    <div class="card" style="min-height: 120px;">
        <div class="card-header">
            <h6 class="mg-b-0"><strong>Recharges Analysis</strong></h6>
        </div>
        <div class="card-body">
            <div class="row row-xs">
                <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                        <span class="d-block wd-8 ht-8 rounded-circle bg-primary"></span>
                        <span
                            class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Recharges <br/>today</span>
                    </div>
                    <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($topup_today->total_topup, 0) ?></h5>
                </div>
                <!-- col -->
                <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                        <span class="d-block wd-8 ht-8 rounded-circle bg-teal"></span>
                        <span
                            class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Recharges <br/><?= date('M-y') ?></span>
                    </div>
                    <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($topup_mtd->total_topup, 0) ?></h5>
                </div>
                <!-- col -->
                <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                        <span class="d-block wd-8 ht-8 rounded-circle bg-gray-300"></span>
                        <span
                            class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Recharges <br/>year <?= date('Y') ?></span>
                    </div>
                    <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($topup_ytd->total_topup, 0) ?></h5>
                </div>
                <!-- col -->
            </div>
        </div>
    </div>
</div>
<!-- Topups Analysis -->
<!-- Cash Sales Analysis -->
<div class="col-md-4 col-xs-12 mg-t-5">
    <div class="card" style="min-height: 120px;">
        <div class="card-header">
            <h6 class="mg-b-0"><strong>Cash Sales Analysis</strong></h6>
        </div>
        <div class="card-body">
            <div class="row row-xs">
                <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                        <span class="d-block wd-8 ht-8 rounded-circle bg-primary"></span>
                        <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Cash <br/>today</span>
                    </div>
                    <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($cash_today->cash_sale, 0) ?></h5>
                </div>
                <!-- col -->
                <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                        <span class="d-block wd-8 ht-8 rounded-circle bg-teal"></span>
                        <span
                            class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Cash <br/><?= date('M-y') ?></span>
                    </div>
                    <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($cash_mtd->cash_sale, 0) ?></h5>
                </div>
                <!-- col -->
                <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                        <span class="d-block wd-8 ht-8 rounded-circle bg-gray-300"></span>
                        <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Cash <br/>year <?= date('Y') ?></span>
                    </div>
                    <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($cash_ytd->cash_sale, 0) ?></h5>
                </div>
                <!-- col -->
            </div>
        </div>
    </div>
</div>
<!-- Cash Sales Analysis -->
<!-- Subscription Fee Analysis -->
<div class="col-md-4 col-xs-12 mg-t-5">
    <div class="card" style="min-height: 120px;">
        <div class="card-header">
            <h6 class="mg-b-0"><strong>Subscription Fee Analysis</strong></h6>
        </div>
        <div class="card-body">
            <div class="row row-xs">
                <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                        <span class="d-block wd-8 ht-8 rounded-circle bg-primary"></span>
                        <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Fee <br/>today</span>
                    </div>
                    <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($sub_fee_today->sub_fee_amount, 0) ?></h5>
                </div>
                <!-- col -->
                <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                        <span class="d-block wd-8 ht-8 rounded-circle bg-teal"></span>
                        <span
                            class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Fee <br/><?= date('M-y') ?></span>
                    </div>
                    <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($sub_fee_mtd->sub_fee_amount, 0) ?></h5>
                </div>
                <!-- col -->
                <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                        <span class="d-block wd-8 ht-8 rounded-circle bg-gray-300"></span>
                        <span
                            class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Fee <br/>year <?= date('Y') ?></span>
                    </div>
                    <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($sub_fee_ytd->sub_fee_amount, 0) ?></h5>
                </div>
                <!-- col -->
            </div>
        </div>
    </div>
</div>
<!-- Subscription Fee Analysis -->
<!-- Utility Analysis -->

<!-- Utility Analysis -->
</div>
<!-- JS Script start -->
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
    var chart = Highcharts.chart('campus', {
        // removing HighCharts.com tag
        credits: {
            enabled: false
        },
        title: {
            text: ''
        },
        subtitle: {
            text: '<strong>Annual Campus Sales : <?= date('Y') ?></strong>'
        },
        xAxis: {
            categories: [
                <?php
                foreach ($campus_sales as $c) {
                    echo "'" . $c->campus_name . "',";
                }
                ?>
            ],
            visible: false
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Amount',
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
                foreach ($campus_sales as $cd) {
                    $open_card = $cd->d1opbalcard + $cd->d2opbalcard;
                    $closing_card = $cd->d1clbalcard + $cd->d2clbalcard;
                    $open_cash = $cd->d1opbalcash + $cd->d2opbalcash;
                    $closing_cash = $cd->d1clbalcash + $cd->d2clbalcash;
                    $card_sale = $closing_card - $open_card;
                    $cash_sale = $closing_cash - $open_cash;
                    $tsales = $card_sale + $cash_sale;
                    echo $tsales . ',';
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
