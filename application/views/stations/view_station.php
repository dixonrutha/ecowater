<link rel="stylesheet" href="<?= base_url('assets/css/dashforge.dashboard.css') ?>"/>
<link rel="stylesheet" href="<?= base_url('assets/css/dashforge.mail.css') ?>">
<link href="<?= base_url('lib/quill/quill.core.css') ?>" rel="stylesheet">
<link href="<?= base_url('lib/quill/quill.snow.css') ?>" rel="stylesheet">

<div class="row">
<div class="col-md-12" style="padding-right: 3px; padding-left: 3px;">
<div class="card">
<div class="card-header d-sm-flex align-items-start justify-content-between bd-b-0 pd-b-0" style="padding: 8px 10px 2px"
     id="txtHint">
    <div class="d-flex mg-t-20 mg-sm-t-0">
        <div class="btn-group flex-fill"></div>
    </div>
    <div class="d-flex mg-t-20 mg-sm-t-0">
        <div class="btn-group flex-fill" id="txtHint">
            <?php if (!empty($this->session->userdata('stat_shutdown'))) { ?>
                <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Shutdown"
                   class="btn btn-xs btn-danger item_shutdown" data-mobile="<?= $station->gsm ?>" data-action="shutdown"
                   data-sid="<?= $sid ?>" data-station_name="<?= $station->station_name ?>"><span
                        class="fa fa-power-off"></span></a>
            <?php } ?>
            <?php if (!empty($this->session->userdata('stat_start'))) { ?>
                <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Start"
                   class="btn btn-xs btn-success item_start" data-mobile="<?= $station->gsm ?>" data-action="start"
                   data-sid="<?= $sid ?>" data-station_name="<?= $station->station_name ?>"><span
                        class="fa fa-check"></span></a>
            <?php } ?>
            <?php if (!empty($this->session->userdata('stat_restart'))) { ?>
                <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Reboot"
                   class="btn btn-xs btn-warning item_reboot" data-mobile="<?= $station->gsm ?>" data-action="reboot"
                   data-sid="<?= $sid ?>" data-station_name="<?= $station->station_name ?>"><span
                        class="fa fa-refresh"></span></a>
            <?php } ?>
            <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Status"
               class="btn btn-xs btn-dark item_status" data-mobile="<?= $station->gsm ?>" data-action="status"
               data-sid="<?= $sid ?>" data-station_name="<?= $station->station_name ?>"><span
                    class="fa fa-info-circle"></span></a>
            <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Request Sales"
               class="btn btn-xs btn-success item_sales" data-mobile="<?= $station->gsm ?>" data-action="sales"
               data-sid="<?= $sid ?>" data-station_name="<?= $station->station_name ?>"><span
                    class="fa fa-dollar"></span></a>
            <button class="btn btn-sm  btn-danger" title="Raw Water Quality"><i class="fa fa-flask"></i></button>
            <button class="btn btn-sm  btn-info" title="Pure Water Quality"><i class="fa fa-tint"></i></button>
        </div>
    </div>
</div>
<div class="card-body">
<?php if (!empty($this->session->flashdata('success'))) { ?>
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <?= $this->session->flashdata('success') ?>
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    </div>
<?php } elseif (!empty($this->session->flashdata('error'))) { ?>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <?= $this->session->flashdata('error') ?>
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    </div>
<?php } ?>
<div class="media align-items-stretch">
<ul class="nav nav-tabs flex-column wd-150" id="myTab4" role="tablist">
    <li class="nav-item">
        <a class="nav-link active" id="details" data-toggle="tab" href="#details-link" role="tab"
           aria-controls="details" aria-selected="true">Station Details</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="dashboard" data-toggle="tab" href="#dashboard-link" role="tab" aria-controls="dashboard"
           aria-selected="false">Dashboard</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="alert" data-toggle="tab" href="#alert-link" role="tab" aria-controls="alert"
           aria-selected="false">Alerts & Monitoring</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="qc" data-toggle="tab" href="#qc-link" role="tab" aria-controls="qc"
           aria-selected="false">Quality Control</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="maint" data-toggle="tab" href="#maint-link" role="tab" aria-controls="maint"
           aria-selected="false">Maintenance</a>
    </li>
</ul>
<div class="media-body">
<div class="tab-content bd bd-gray-300 bd-l-0 pd-20" id="myTabContent4">
<div class="tab-pane fade show active" id="details-link" role="tabpanel" aria-labelledby="details">
    <div class="row">
        <div class="col-sm-12 col-md-5 mg-t-10 mg-md-t-0">
            <div class="card">
                <div class="card-body tx-13">
                    <h3 style="text-align: center;"><?= $station->station_name ?></h3>
                    <table class="table table-bordered table-sm mg-b-0">
                        <tr>
                            <th>Station Code</th>
                            <td><?= $station->station_code ?></td>
                        </tr>
                        <tr>
                            <th>Campus</th>
                            <td><?= $station->campus_name ?></td>
                        </tr>
                        <tr>
                            <th>GSM</th>
                            <td><?= $station->gsm ?></td>
                        </tr>
                        <tr>
                            <th>Door(s)</th>
                            <td><?= $station->category ?></td>
                        </tr>
                        <tr>
                            <th>Selling Price</th>
                            <td><?= number_format($water_price, 0) ?></td>
                        </tr>
                        <tr>
                            <th>Input Water</th>
                            <td><?= $station->input_water ?></td>
                        </tr>
                        <tr>
                            <th>Permit</th>
                            <td><?= $station->tfda_permit_no ?></td>
                        </tr>
                        <tr>
                            <th>Date Registered</th>
                            <td><?= $trn_date = date('D d-M-Y', strtotime($station->date_registered)) ?></td>
                        </tr>
                        <tr>
                            <th>Status</th>
                            <?php if ($station->op_stat == 'Operating') { ?>
                                <td><span class='badge badge-success'
                                          style='font-size:11px'><?= $station->op_stat ?></span></td>
                            <?php } else { ?>
                                <td><span class='badge badge-danger'
                                          style='font-size:11px'><?= $station->op_stat ?></span></td>
                            <?php } ?>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Dashboard -->
<div class="tab-pane fade" id="dashboard-link" role="tabpanel" aria-labelledby="dashboard">
    <div class="row">
        <div class="col-md-6">
            <!-- Volume analysis -->
            <div class="col-md-12" style="padding-right: 5px; padding-left: 5px;">
                <div class="card">
                    <div class="card-header d-sm-flex align-items-start justify-content-between">
                        <div>
                            <h5 class="mg-b-2">Volume Analysis (liters)</h5>
                        </div>
                    </div>
                    <!-- card-header -->
                    <div class="card-body pd-y-15">
                        <div class="d-sm-flex">
                            <div class="media">
                                <div
                                    class="wd-40 wd-md-50 ht-40 ht-md-50 bg-primary tx-white mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded op-6">
                                    <i data-feather="droplet"></i>
                                </div>
                                <div class="media-body">
                                    <h6 class="tx-sans tx-uppercase tx-10 tx-spacing-1 tx-color-03 tx-semibold tx-nowrap mg-b-5 mg-md-b-8">
                                        Installed Todate</h6>
                                    <h4 class="tx-15 tx-sm-15 tx-md-15 tx-normal tx-rubik mg-b-0"><?= number_format($sales_inst_todate->total_sale / $water_price, 0) ?> </h4>
                                </div>
                            </div>
                            <div class="media mg-t-20 mg-sm-t-0 mg-sm-l-15 mg-md-l-40">
                                <div
                                    class="wd-40 wd-md-50 ht-40 ht-md-50 bg-dark tx-white mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded op-5">
                                    <i data-feather="droplet"></i>
                                </div>
                                <div class="media-body">
                                    <h6 class="tx-sans tx-uppercase tx-10 tx-spacing-1 tx-color-03 tx-semibold mg-b-5 mg-md-b-8">
                                        Year <?= date('Y') ?></h6>
                                    <h4 class="tx-15 tx-sm-15 tx-md-15 tx-normal tx-rubik mg-b-0"><?= number_format($sales_thisyear->total_sale / $water_price, 0) ?></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- card-body -->
                    <!-- card body two -->
                    <div class="card-body pd-y-15">
                        <div class="d-sm-flex">
                            <div class="media">
                                <div
                                    class="wd-40 wd-md-50 ht-40 ht-md-50 bg-primary tx-white mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded op-6">
                                    <i data-feather="droplet"></i>
                                </div>
                                <div class="media-body">
                                    <h6 class="tx-sans tx-uppercase tx-10 tx-spacing-1 tx-color-03 tx-semibold tx-nowrap mg-b-5 mg-md-b-8">
                                        Month <?= date('M-Y') ?></h6>
                                    <h4 class="tx-15 tx-sm-15 tx-md-15 tx-normal tx-rubik mg-b-0"><?= number_format($sales_thismonth->total_sale / $water_price, 0) ?></h4>
                                </div>
                            </div>
                            <div class="media mg-t-20 mg-sm-t-0 mg-sm-l-15 mg-md-l-40">
                                <div
                                    class="wd-40 wd-md-50 ht-40 ht-md-50 bg-dark tx-white mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded op-4">
                                    <i data-feather="droplet"></i>
                                </div>
                                <div class="media-body">
                                    <h6 class="tx-sans tx-uppercase tx-10 tx-spacing-1 tx-color-03 tx-semibold mg-b-5 mg-md-b-8">
                                        Today</h6>
                                    <h4 class="tx-15 tx-sm-15 tx-md-15 tx-normal tx-rubik mg-b-0"><?= number_format($sales_today->total_sale / $water_price, 0) ?></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- card body two end -->
                </div>
            </div>
            <!-- Volume analysis -->
            <!-- Sales analysis -->
            <div class="col-md-12 mg-t-10" style="padding-right: 5px; padding-left: 5px; font-size: 12px;">
                <div class="card mg-b-5">
                    <div class="card-header pd-t-10 d-sm-flex align-items-start justify-content-between">
                        <h5 class="mg-b-2" style="text-align: center;">Sales Analysis</h5>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered table-sm mg-b-0">
                            <thead class="thead-light">
                            <tr>
                                <th></th>
                                <th style="text-align: center; font-weight: bold;">Card Sales</th>
                                <th style="text-align: center; font-weight: bold;">Cash Sales</th>
                                <th style="text-align: center; font-weight: bold;">Total</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th>Today</th>
                                <td style="text-align: right;"><?= number_format($sales_today->card_sale, 0) ?></td>
                                <td style="text-align: right;"><?= number_format($sales_today->cash_sale, 0) ?></td>
                                <td style="text-align: right;"><?= number_format($sales_today->total_sale, 0) ?></td>
                            </tr>
                            <tr>
                                <th><?= date('M-Y') ?></th>
                                <td style="text-align: right;"><?= number_format($sales_thismonth->card_sale, 0) ?></td>
                                <td style="text-align: right;"><?= number_format($sales_thismonth->cash_sale, 0) ?></td>
                                <td style="text-align: right;"><?= number_format($sales_thismonth->total_sale, 0) ?></td>
                            </tr>
                            <tr>
                                <th>Year <?= date('Y') ?></th>
                                <td style="text-align: right;"><?= number_format($sales_thisyear->card_sale, 0) ?></td>
                                <td style="text-align: right;"><?= number_format($sales_thisyear->cash_sale, 0) ?></td>
                                <td style="text-align: right;"><?= number_format($sales_thisyear->total_sale, 0) ?></td>
                            </tr>
                            <tr>
                                <th><span data-toggle="tooltip" data-placement="top" title="Installed Todate">ITD</span>
                                </th>
                                <td style="text-align: right;"><?= number_format($sales_inst_todate->card_sale, 0) ?></td>
                                <td style="text-align: right;"><?= number_format($sales_inst_todate->cash_sale, 0) ?></td>
                                <td style="text-align: right;"><?= number_format($sales_inst_todate->total_sale, 0) ?></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Sales analysis end-->
        </div>
        <!-- Sales graph -->
        <div class="col-md-6">
            <div class="card">
                <div class="card-header pd-t-10" style="padding: 5px;">
                    <h5><span class="fa fa-bar-chart"></span> Daily Sales Analytics</h5>
                </div>
                <div class="card-body pd-y-10" id="sales">

                </div>
            </div>
        </div>
        <!-- Sales graph END -->
    </div>
</div>
<!-- Dashboard END -->
<!-- Notification -->
<div class="tab-pane fade" id="alert-link" role="tabpanel" aria-labelledby="alert">
    <div class="row">
        <div class="col-md-12 mg-t-10 mg-md-t-0">
            <div class="card">
                <div class="card-header pd-t-10" style="padding: 5px;">
                    <h5><span class="fa fa-warning"></span> Alerts and Message</h5>
                </div>
                <div class="card-body pd-y-10">

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Notification END -->
<div class="tab-pane fade" id="qc-link" role="tabpanel" aria-labelledby="qc">
    <h6>QC</h6>
</div>
<!-- Filter maintenance -->
<div class="tab-pane fade" id="maint-link" role="tabpanel" aria-labelledby="maint">
    <div class="row">
        <div class="col-md-8 mg-t-10 mg-md-t-0">
            <div class="card">
                <div class="card-header pd-t-10" style="padding: 5px;">
                    <h5>Filter Maintenance </h5>
                </div>
                <div class="card-body pd-y-10">
                    <table class="table table-striped table-bordered">
                        <tr>
                            <th style="font-weight: bold;">Filter</th>
                            <th style="font-weight: bold;">Cleaned</th>
                            <th style="font-weight: bold;">Next Clean</th>
                            <th style="font-weight: bold;">Replaced</th>
                            <th style="font-weight: bold;">Next Rep</th>
                        </tr>
                        <?php
                        $i = 1;
                        foreach ($stat_filter_maint as $sf) {
                            if ($sf->per_remain_clean < 0.3) {
                                $class_clean = "Class='tx-danger'";
                            } else {
                                $class_clean = "";
                            }

                            if ($sf->per_remain_replace < 0.3) {
                                $class_replace = "Class='tx-danger'";
                            } else {
                                $class_replace = "";
                            }
                            ?>
                            <tr>
                                <td><?= $sf->filter_desc ?></td>
                                <td>
                                    <?php
                                    if (!empty($sf->date_cleaned)) {
                                        echo date('d-M-Y', strtotime($sf->date_cleaned));
                                    } else {
                                        echo 'NA';
                                    }
                                    ?>
                                </td>
                                <td <?= $class_clean ?> >
                                    <?php
                                    if (!empty($sf->next_cleaning)) {
                                        echo date('d-M-Y', strtotime($sf->next_cleaning));
                                    } else {
                                        echo 'NA';
                                    }
                                    ?>
                                </td>
                                <td>
                                    <?php
                                    if (!empty($sf->date_replaced)) {
                                        echo date('d-M-Y', strtotime($sf->date_replaced));
                                    } else {
                                        echo 'NA';
                                    }
                                    ?>
                                </td>
                                <td <?= $class_replace ?> >
                                    <?php
                                    if (!empty($sf->next_replacement)) {
                                        echo date('d-M-Y', strtotime($sf->next_replacement));
                                    } else {
                                        echo 'NA';
                                    }
                                    ?>
                                </td>
                            </tr>
                            <?php
                            $i++;
                        }
                        ?>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-4 mg-t-10 mg-md-t-0">
            <form class="form-horizontal" method="POST" action="<?= base_url('stations/updateStationFilter') ?>">
                <div class="card">
                    <div class="card-header pd-t-10" style="padding: 5px;">
                        <h5>Update Filter</h5>
                    </div>
                    <div class="card-body pd-y-10">
                        <div class="form-group">
                            <label>Filter <span class="tx-danger">*</span></label>
                            <select class="form-control select2" style="width: 100%;" name="filter_code"
                                    required="required">
                                <option value="">--Select--</option>
                                <?php foreach ($filters as $f) { ?>
                                    <option value="<?= $f->filter_code ?>"><?= $f->filter_desc ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date cleaned</label>
                            <input type="text" id="cleaned_on" class="form-control input-sm" name="cleaned_on"
                                   data-date-end-date='0d' readonly="readonly" autocomplete="off"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date replaced</label>
                            <input type="text" id="replaced_on" class="form-control input-sm" name="replaced_on"
                                   data-date-end-date='0d' readonly="readonly" autocomplete="off"/>
                        </div>
                        <input type="hidden" name="sid" value="<?= $sid ?>"/>
                        <input type="hidden" name="station_gsm" value="<?= $gsm ?>"/>
                        <button class="btn btn-secondary" type="cancel">Cancel</button>
                        <button class="btn btn-primary pull-right" type="submit">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Filter maintenance END -->
</div>
</div>
</div>
</div>
</div>

<!--SALES MODAL START-->
<form>
    <div class="modal fade" id="Modal_Sales" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><span class="fa fa-dollar"></span> Request Sales</h5>
                </div>
                <div class="modal-body">
                    <!-- Error alerts -->
                    <div id="sms-error-1" style="display: none" class="alert alert-danger fade show" role="alert">
                        Error! Please fill all mandatory fields.
                    </div>
                    <div id="sms-success" style="display: none" class="alert alert-success fade show" role="alert">
                        Command sent successfully
                    </div>
                    <!-- Error alerts -->
                    <div class="form-group row" id="loadgif_sales" style="display: none">
                        <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Station Name</label>

                        <div class="col-md-8">
                            <input type="text" name="station_name" id="station_name" class="form-control input-sm"
                                   autocomplete="off" disabled autocomplete="off"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Station GSM</label>

                        <div class="col-md-8">
                            <input type="text" name="mobile" id="mobile" class="form-control input-sm"
                                   autocomplete="off" disabled autocomplete="off"/>
                            <input type="hidden" name="action" id="action"/>
                            <input type="hidden" name="sid" id="sid"/>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-success" type="submit" id="btn_sales">Send</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!--SALES MODAL END-->
<!--SHUTDOWN MODAL START-->
<form>
    <div class="modal fade" id="Modal_Shutdown" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><span class="fa fa-power-off"></span> Shutdown
                        Station</h5>
                </div>
                <div class="modal-body">
                    <!-- Error alerts -->
                    <div id="shutdown-error-1" style="display: none" class="alert alert-danger fade show" role="alert">
                        Error! Please fill all mandatory fields.
                    </div>
                    <div id="shutdown-success" style="display: none" class="alert alert-success fade show" role="alert">
                        Command sent successfully
                    </div>
                    <!-- Error alerts -->
                    <div class="form-group row" id="loadgif_shutdown" style="display: none">
                        <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                    </div>
                    <p>
                    <h6><strong>Are you sure you want to shutdown this station?</strong></h6>
                    </p>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Station Name</label>

                        <div class="col-md-8">
                            <input type="text" name="shutdown-station_name" id="shutdown-station_name"
                                   class="form-control input-sm" autocomplete="off" disabled autocomplete="off"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Station GSM</label>

                        <div class="col-md-8">
                            <input type="text" name="shutdown-mobile" id="shutdown-mobile" class="form-control input-sm"
                                   autocomplete="off" disabled autocomplete="off"/>
                            <input type="hidden" name="shutdown-action" id="shutdown-action"/>
                            <input type="hidden" name="shutdown-sid" id="shutdown-sid"/>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-danger" type="submit" id="btn_shutdown">Send</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!--SHUTDOWN MODAL END-->
<!--START STATION MODAL START-->
<form>
    <div class="modal fade" id="Modal_Start" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><span class="fa fa-check"></span> Start Station</h5>
                </div>
                <div class="modal-body">
                    <!-- Error alerts -->
                    <div id="start-error-1" style="display: none" class="alert alert-danger fade show" role="alert">
                        Error! Please fill all mandatory fields.
                    </div>
                    <div id="start-success" style="display: none" class="alert alert-success fade show" role="alert">
                        Command sent successfully
                    </div>
                    <!-- Error alerts -->
                    <div class="form-group row" id="loadgif_start" style="display: none">
                        <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                    </div>
                    <p>
                    <h6><strong>Are you sure you want to start this station?</strong></h6>
                    </p>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Station Name</label>

                        <div class="col-md-8">
                            <input type="text" name="start-station_name" id="start-station_name"
                                   class="form-control input-sm" autocomplete="off" disabled autocomplete="off"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Station GSM</label>

                        <div class="col-md-8">
                            <input type="text" name="start-mobile" id="start-mobile" class="form-control input-sm"
                                   autocomplete="off" disabled autocomplete="off"/>
                            <input type="hidden" name="start-action" id="start-action"/>
                            <input type="hidden" name="start-sid" id="start-sid"/>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-success" type="submit" id="btn_start">Send</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!--START STATION MODAL END-->
<!--REBOOT STATION MODAL START-->
<form>
    <div class="modal fade" id="Modal_Reboot" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><span class="fa fa-refresh"></span> Restart Station
                    </h5>
                </div>
                <div class="modal-body">
                    <!-- Error alerts -->
                    <div id="reboot-error-1" style="display: none" class="alert alert-danger fade show" role="alert">
                        Error! Please fill all mandatory fields.
                    </div>
                    <div id="reboot-success" style="display: none" class="alert alert-success fade show" role="alert">
                        Command sent successfully
                    </div>
                    <!-- Error alerts -->
                    <div class="form-group row" id="loadgif_reboot" style="display: none">
                        <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                    </div>
                    <p>
                    <h6><strong>Are you sure you want to restart this station?</strong></h6>
                    </p>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Station Name</label>

                        <div class="col-md-8">
                            <input type="text" name="reboot-station_name" id="reboot-station_name"
                                   class="form-control input-sm" autocomplete="off" disabled autocomplete="off"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Station GSM</label>

                        <div class="col-md-8">
                            <input type="text" name="reboot-mobile" id="reboot-mobile" class="form-control input-sm"
                                   autocomplete="off" disabled autocomplete="off"/>
                            <input type="hidden" name="reboot-action" id="reboot-action"/>
                            <input type="hidden" name="reboot-sid" id="reboot-sid"/>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-success" type="submit" id="btn_reboot">Send</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!--REBOOT STATION MODAL END-->
<!--STATUS MODAL START-->
<form>
    <div class="modal fade" id="Modal_Status" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><span class="fa fa-info-circle"></span> Request
                        Status</h5>
                </div>
                <div class="modal-body">
                    <!-- Error alerts -->
                    <div id="status-error-1" style="display: none" class="alert alert-danger fade show" role="alert">
                        Error! Please fill all mandatory fields.
                    </div>
                    <div id="status-success" style="display: none" class="alert alert-success fade show" role="alert">
                        Command sent successfully
                    </div>
                    <!-- Error alerts -->
                    <div class="form-group row" id="loadgif_status" style="display: none">
                        <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Station Name</label>

                        <div class="col-md-8">
                            <input type="text" name="status-station_name" id="status-station_name"
                                   class="form-control input-sm" autocomplete="off" disabled autocomplete="off"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Station GSM</label>

                        <div class="col-md-8">
                            <input type="text" name="status-mobile" id="status-mobile" class="form-control input-sm"
                                   autocomplete="off" disabled autocomplete="off"/>
                            <input type="hidden" name="status-action" id="status-action"/>
                            <input type="hidden" name="status-sid" id="status-sid"/>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-success" type="submit" id="btn_status">Send</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!--STATUS STATION MODAL END-->
</div>
<script>
    $(function () {
        'use strict'
        $('#cleaned_on').datepicker({
            showOtherMonths: true,
            selectOtherMonths: true,
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd-M-yy',
            maxDate: 0,
        });
        $('#replaced_on').datepicker({
            showOtherMonths: true,
            selectOtherMonths: true,
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd-M-yy',
            maxDate: 0,
        });
    });</script>
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
            min: 0,
            title: {
                text: 'Amount (TZS)'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f} TZS</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
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
    });</script>
<script type="text/javascript">
//get data for request sales
$('#txtHint').on('click', '.item_sales', function () {
    var mobile = $(this).data('mobile');
    var action = $(this).data('action');
    var sid = $(this).data('sid');
    var station_name = $(this).data('station_name');
    jQuery("div#loadgif_sales").hide();
    jQuery("div#sms-error-1").hide();
    jQuery("div#sms-success").hide();
    $('#Modal_Sales').modal('show');
    $('[name="mobile"]').val(mobile);
    $('[name="action"]').val(action);
    $('[name="sid"]').val(sid);
    $('[name="station_name"]').val(station_name);
});
//request sales complete
$('#btn_sales').on('click', function () {
    var mobile = $('#mobile').val();
    var action = $('#action').val();
    var sid = $('#sid').val();
    jQuery("div#loadgif_sales").show();
    jQuery("div#sms-error-1").hide();
    jQuery("div#sms-success").hide();
    //alert(sid);
    $.ajax({
        type: "POST",
        url: "<?php echo site_url('stations/sendCommands') ?>",
        dataType: "JSON",
        data: {mobile: mobile, action: action, sid: sid},
        success: function (data) {
            if (data === 'okay') {
                jQuery("div#loadgif_sales").hide();
                jQuery("div#sms-success").show();
                setTimeout(function () {
                    $('#Modal_Sales').modal('hide');
                }, 2000);
            } else {
                jQuery("div#sms-error-1").show();
                jQuery("div#loadgif_sales").hide();
            }
        }
    });
    return false;
});
//get data for shutdown station
$('#txtHint').on('click', '.item_shutdown', function () {
    var mobile = $(this).data('mobile');
    var action = $(this).data('action');
    var sid = $(this).data('sid');
    var station_name = $(this).data('station_name');
    jQuery("div#loadgif_shutdown").hide();
    jQuery("div#shutdown-error-1").hide();
    jQuery("div#shutdown-success").hide();
    $('#Modal_Shutdown').modal('show');
    $('[name="shutdown-mobile"]').val(mobile);
    $('[name="shutdown-action"]').val(action);
    $('[name="shutdown-sid"]').val(sid);
    $('[name="shutdown-station_name"]').val(station_name);
});
//shutdown complete
$('#btn_shutdown').on('click', function () {
    var mobile = $('#shutdown-mobile').val();
    var action = $('#shutdown-action').val();
    var sid = $('#shutdown-sid').val();
    jQuery("div#loadgif_shutdown").show();
    jQuery("div#shutdown-error-1").hide();
    jQuery("div#shutdown-success").hide();
    //alert(sid);
    $.ajax({
        type: "POST",
        url: "<?php echo site_url('stations/sendCommands') ?>",
        dataType: "JSON",
        data: {mobile: mobile, action: action, sid: sid},
        success: function (data) {
            if (data === 'okay') {
                jQuery("div#loadgif_shutdown").hide();
                jQuery("div#shutdown-success").show();
                setTimeout(function () {
                    $('#Modal_Shutdown').modal('hide');
                }, 2000);
            } else {
                jQuery("div#shutdown-error-1").show();
                jQuery("div#loadgif_shutdown").hide();
            }
        }
    });
    return false;
});
//get data for start station
$('#txtHint').on('click', '.item_start', function () {
    var mobile = $(this).data('mobile');
    var action = $(this).data('action');
    var sid = $(this).data('sid');
    var station_name = $(this).data('station_name');
    jQuery("div#loadgif_start").hide();
    jQuery("div#start-error-1").hide();
    jQuery("div#start-success").hide();
    $('#Modal_Start').modal('show');
    $('[name="start-mobile"]').val(mobile);
    $('[name="start-action"]').val(action);
    $('[name="start-sid"]').val(sid);
    $('[name="start-station_name"]').val(station_name);
});
//start station complete
$('#btn_start').on('click', function () {
    var mobile = $('#start-mobile').val();
    var action = $('#start-action').val();
    var sid = $('#start-sid').val();
    jQuery("div#loadgif_start").show();
    jQuery("div#start-error-1").hide();
    jQuery("div#start-success").hide();
    //alert(sid);
    $.ajax({
        type: "POST",
        url: "<?php echo site_url('stations/sendCommands') ?>",
        dataType: "JSON",
        data: {mobile: mobile, action: action, sid: sid},
        success: function (data) {
            if (data === 'okay') {
                jQuery("div#loadgif_start").hide();
                jQuery("div#start-success").show();
                setTimeout(function () {
                    $('#Modal_Start').modal('hide');
                }, 2000);
            } else {
                jQuery("div#start-error-1").show();
                jQuery("div#loadgif_start").hide();
            }
        }
    });
    return false;
});
//get data for reboot station
$('#txtHint').on('click', '.item_reboot', function () {
    var mobile = $(this).data('mobile');
    var action = $(this).data('action');
    var sid = $(this).data('sid');
    var station_name = $(this).data('station_name');
    jQuery("div#loadgif_reboot").hide();
    jQuery("div#reboot-error-1").hide();
    jQuery("div#reboot-success").hide();
    $('#Modal_Reboot').modal('show');
    $('[name="reboot-mobile"]').val(mobile);
    $('[name="reboot-action"]').val(action);
    $('[name="reboot-sid"]').val(sid);
    $('[name="reboot-station_name"]').val(station_name);
});
//reboot complete
$('#btn_reboot').on('click', function () {
    var mobile = $('#reboot-mobile').val();
    var action = $('#reboot-action').val();
    var sid = $('#reboot-sid').val();
    jQuery("div#loadgif_start").show();
    jQuery("div#reboot-error-1").hide();
    jQuery("div#reboot-success").hide();
    //alert(sid);
    $.ajax({
        type: "POST",
        url: "<?php echo site_url('stations/sendCommands') ?>",
        dataType: "JSON",
        data: {mobile: mobile, action: action, sid: sid},
        success: function (data) {
            if (data === 'okay') {
                jQuery("div#loadgif_reboot").hide();
                jQuery("div#reboot-success").show();
                setTimeout(function () {
                    $('#Modal_Reboot').modal('hide');
                }, 2000);
            } else {
                jQuery("div#reboot-error-1").show();
                jQuery("div#loadgif_reboot").hide();
            }
        }
    });
    return false;
});
//get data for request status
$('#txtHint').on('click', '.item_status', function () {
    var mobile = $(this).data('mobile');
    var action = $(this).data('action');
    var sid = $(this).data('sid');
    var station_name = $(this).data('station_name');
    jQuery("div#loadgif_status").hide();
    jQuery("div#status-error-1").hide();
    jQuery("div#status-success").hide();
    $('#Modal_Status').modal('show');
    $('[name="status-mobile"]').val(mobile);
    $('[name="status-action"]').val(action);
    $('[name="status-sid"]').val(sid);
    $('[name="status-station_name"]').val(station_name);
});
//request status complete
$('#btn_status').on('click', function () {
    var mobile = $('#status-mobile').val();
    var action = $('#status-action').val();
    var sid = $('#status-sid').val();
    jQuery("div#loadgif_status").show();
    jQuery("div#status-error-1").hide();
    jQuery("div#status-success").hide();
    //alert(sid);
    $.ajax({
        type: "POST",
        url: "<?php echo site_url('stations/sendCommands') ?>",
        dataType: "JSON",
        data: {mobile: mobile, action: action, sid: sid},
        success: function (data) {
            if (data === 'okay') {
                jQuery("div#loadgif_status").hide();
                jQuery("div#status-success").show();
                setTimeout(function () {
                    $('#Modal_Status').modal('hide');
                }, 2000);
            } else {
                jQuery("div#status-error-1").show();
                jQuery("div#loadgif_status").hide();
            }
        }
    });
    return false;
});
</script>