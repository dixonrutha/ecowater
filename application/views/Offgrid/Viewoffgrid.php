<link rel="stylesheet" href="<?= base_url('assets/css/dashforge.dashboard.css') ?>"/>
<link rel="stylesheet" href="<?= base_url('assets/css/dashforge.mail.css') ?>">
<link href="<?= base_url('lib/quill/quill.core.css') ?>" rel="stylesheet">
<link href="<?= base_url('lib/quill/quill.snow.css') ?>" rel="stylesheet">

<div class="row">
<div class="col-md-12" style="padding-right: 3px; padding-left: 3px;">
<div class="card">
<div class="card-header d-sm-flex align-items-start justify-content-between bd-b-0 pd-b-0"
     style="padding: 8px 10px 2px">
    <div class="d-flex mg-t-20 mg-sm-t-0">
        <div class="btn-group flex-fill" id="txtHint">
            <?php if (!empty($this->session->userdata('sub_topup'))) { ?>
                <!--<a href="javascript:void(0);" class="btn btn-sm btn-outline-success item_edit" data-toggle="tooltip" title="topup" data-sub_id="<?= $sub_data->id ?>" data-sub_name="<?= $sub_data->sub_name ?>" data-card_no="<?= $sub_data->card_no ?>"><i class="fa fa-money"></i></a>-->
            <?php } ?>
            <?php if (!empty($this->session->userdata('sub_sms'))) { ?>
                <a href="javascript:void(0);" class="btn btn-sm btn-outline-info item_sms" data-toggle="tooltip"
                   title="SMS" data-sub_id="<?= $sub_data->id ?>" data-sub_name="<?= $sub_data->customer_name ?>"
                   data-mobile="<?= $sub_data->phone_number ?>"><i
                        class="fa fa-comment"></i></a>
            <?php } ?>

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
           aria-controls="details" aria-selected="true">Customer Details</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="dashboard" data-toggle="tab" href="#dashboard-link" role="tab" aria-controls="dashboard"
           aria-selected="false">Dashboard</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="alert" data-toggle="tab" href="#alert-link" role="tab" aria-controls="alert"
           aria-selected="false">Deliveries Logs</a>
    </li>
    <!--    <li class="nav-item">-->
    <!--        <a class="nav-link" id="qc" data-toggle="tab" href="#qc-link" role="tab" aria-controls="qc"-->
    <!--           aria-selected="false">Quality Control</a>-->
    <!--    </li>-->
    <!--    <li class="nav-item">-->
    <!--        <a class="nav-link" id="maint" data-toggle="tab" href="#maint-link" role="tab" aria-controls="maint"-->
    <!--           aria-selected="false">Maintenance</a>-->
    <!--    </li>-->
</ul>
<div class="media-body">
<div class="tab-content bd bd-gray-300 bd-l-0 pd-20" id="myTabContent4">
<div class="tab-pane fade show active" id="details-link" role="tabpanel" aria-labelledby="details">
    <div class="row">
        <div class="col-md-12 col-md-5 mg-t-10 mg-md-t-0">
            <div class="card">
                <div class="card-body tx-13">
                    <h3 style="text-align: center;"><?= $sub_data->customer_name?></h3>
                    <table class="table table-bordered table-sm mg-b-0">
                        <tr>
                            <th>Office Phone</th>
                            <td><?= $sub_data->phone_number?></td>
                        </tr>
                        <tr>
                            <th>Mobile Phone </th>
                            <td><?= $sub_data->phone_number_2?></td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td><?= $sub_data->email?></td>
                        </tr>

                        <tr>
                            <th>Street</th>
                            <td><?= $sub_data->location?></td>
                        </tr>


                        <tr>
                            <th>TIN</th>
                            <td><?= $sub_data->tin_Number?></td>
                        </tr>

                        <tr>
                            <th>Registration Date</th>
                            <td><?= $sub_data->registration_date ?></td>
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
                        <h5 class="mg-b-2">Revenue Analysis</h5>
                    </div>
                </div>
                <!-- card-header -->
                <div class="card-body pd-y-15">
                    <div class="d-sm-flex">
                        <div class="media">
                            <div
                                class="wd-40 wd-md-50 ht-40 ht-md-50 bg-primary tx-white mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded op-6">
                                <i data-feather="dollar-sign"></i>
                            </div>
                            <div class="media-body">
                                <h6  class="tx-sans tx-uppercase tx-10 tx-spacing-1 tx-color-03 tx-semibold tx-nowrap mg-b-5 mg-md-b-8">
                                    Total Revenue &ensp;  </h6>
                                <h4 class="tx-15 tx-sm-15 tx-md-15 tx-normal tx-rubik mg-b-0"><?= number_format($totalsales->amount_id, 0) ?> </h4>
                            </div>
                        </div>
                        <div class="media mg-t-20 mg-sm-t-0 mg-sm-l-15 mg-md-l-40">
                            <div
                                class="wd-40 wd-md-50 ht-40 ht-md-50 bg-dark tx-white mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded op-5">
                                <i data-feather="dollar-sign"></i>
                            </div>
                            <div class="media-body">
                                <h6 class="tx-sans tx-uppercase tx-10 tx-spacing-1 tx-color-03 tx-semibold mg-b-5 mg-md-b-8">
                                    Year <?= date('Y') ?></h6>
                                <h4 class="tx-15 tx-sm-15 tx-md-15 tx-normal tx-rubik mg-b-0"><?= number_format($sales_thisyear->amount_id,  0) ?></h4>
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
                                <i data-feather="dollar-sign"></i>
                            </div>
                            <div class="media-body">
                                <h6 class="tx-sans tx-uppercase tx-10 tx-spacing-1 tx-color-03 tx-semibold tx-nowrap mg-b-5 mg-md-b-8">
                                    Month <?= date('M-Y') ?></h6>
                                <h4 class="tx-15 tx-sm-15 tx-md-15 tx-normal tx-rubik mg-b-0"><?= number_format($sales_thismonth->amount_id, 0) ?></h4>
                            </div>
                        </div>
                        <div class="media mg-t-20 mg-sm-t-0 mg-sm-l-15 mg-md-l-40">
                            <div
                                class="wd-40 wd-md-50 ht-40 ht-md-50 bg-dark tx-white mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded op-4">
                                <i data-feather="dollar-sign"></i>
                            </div>
                            <div class="media-body">
                                <h6 class="tx-sans tx-uppercase tx-10 tx-spacing-1 tx-color-03 tx-semibold mg-b-5 mg-md-b-8">
                                    Today</h6>
                                <h4 class="tx-15 tx-sm-15 tx-md-15 tx-normal tx-rubik mg-b-0"><?= number_format($sales_today->amount_id, 0) ?></h4>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- card body two end -->
            </div>
        </div>
        <!-- Volume analysis -->

    </div>

    <!-- STOCK Analysis -->


    <div class="col-md-6">
        <!-- Deliveries Analysis -->
        <div class="col-md-12" style="padding-right: 5px; padding-left: 5px;">
            <div class="card">
                <div class="card-header d-sm-flex align-items-start justify-content-between">
                    <div>
                        <h5 class="mg-b-2">Deliveries  Analysis</h5>
                    </div>
                </div>
                <!-- card-header -->
                <div class="card-body pd-y-15">
                    <div class="d-sm-flex">
                        <div class="media">
                            <div
                                class="wd-40 wd-md-50 ht-40 ht-md-50 bg-primary tx-white mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded op-6">
                                <i data-feather="truck"></i>
                            </div>
                            <div class="media-body">
                                <h6 class="tx-sans tx-uppercase tx-10 tx-spacing-1 tx-color-03 tx-semibold tx-nowrap mg-b-5 mg-md-b-8">
                                    Total Deliveries</h6>
                                <h4 class="tx-15 tx-sm-15 tx-md-15 tx-normal tx-rubik mg-b-0"><?php echo $totaldeliveries;?> </h4>
                            </div>
                        </div>
                        <div class="media mg-t-20 mg-sm-t-0 mg-sm-l-15 mg-md-l-40">
                            <div
                                class="wd-40 wd-md-50 ht-40 ht-md-50 bg-dark tx-white mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded op-5">
                                <i data-feather="truck"></i>
                            </div>
                            <div class="media-body">
                                <h6 class="tx-sans tx-uppercase tx-10 tx-spacing-1 tx-color-03 tx-semibold mg-b-5 mg-md-b-8">
                                    Year <?= date('Y') ?></h6>
                                <h4 class="tx-15 tx-sm-15 tx-md-15 tx-normal tx-rubik mg-b-0"><?php echo $delivery_yearly;?></h4>
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
                                <i data-feather="truck"></i>
                            </div>
                            <div class="media-body">
                                <h6 class="tx-sans tx-uppercase tx-10 tx-spacing-1 tx-color-03 tx-semibold tx-nowrap mg-b-5 mg-md-b-8">
                                    Month <?= date('M-Y') ?></h6>
                                <h4 class="tx-15 tx-sm-15 tx-md-15 tx-normal tx-rubik mg-b-0"><?php echo $delivery_monthly ;?> </h4>
                            </div>
                        </div>
                        <div class="media mg-t-20 mg-sm-t-0 mg-sm-l-15 mg-md-l-40">
                            <div
                                class="wd-40 wd-md-50 ht-40 ht-md-50 bg-dark tx-white mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded op-4">
                                <i data-feather="truck"></i>
                            </div>
                            <div class="media-body">
                                <h6 class="tx-sans tx-uppercase tx-10 tx-spacing-1 tx-color-03 tx-semibold mg-b-5 mg-md-b-8">
                                    Today</h6>
                                <h4 class="tx-15 tx-sm-15 tx-md-15 tx-normal tx-rubik mg-b-0"><?php echo $deliver_day ;?> </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- card body two end -->
            </div>
        </div>
        <!-- Volume analysis -->

    </div>




    <!-- Sales Stock END -->


</div>
<br>
<div class="row">

    <div class="col-md-4 col-xs-12 ">
        <div class="card">

            <!-- card-header -->
            <div class="card-body tx-center">
                <h5 class="tx-normal tx-rubik tx-30 tx-spacing--1 mg-b-0">

                    <?php
                    $time = time();
                    $string = @mdate($date);
                    $int_value = (int) $string;
                    echo number_format($totalsales->amount_id/$int_value, 0);

                    ?>
                </h5>

                <p class="tx-11 tx-uppercase tx-semibold tx-spacing-1 tx-color-02"><strong>Avarage Revenue Per Day</strong></p>
            </div>
        </div>
    </div>

    <div class="col-md-4 col-xs-12 ">
        <div class="card">

            <!-- card-header -->
            <div class="card-body tx-center">
                <h5 class="tx-normal tx-rubik tx-30 tx-spacing--1 mg-b-0"><?= number_format( $sub_data->current_stock, 0) ?>  </h5>

                <p class="tx-11 tx-uppercase tx-semibold tx-spacing-1 tx-color-02"><strong>Total Empties</strong></p>
            </div>
        </div>
    </div>



    <div class="col-md-4 col-xs-12 ">
        <div class="card">

            <!-- card-header -->
            <div class="card-body tx-center">
                <h5 class="tx-normal tx-rubik tx-30 tx-spacing--1 mg-b-0"><?=
                    isset($revenue_rank->rank) ? $revenue_rank->rank : '0';


                    ?>

                    <i class="tx-11 tx-uppercase tx-semibold tx-spacing-1 tx-color-02 out-of">out of </i> <?php echo $count_rows ;?> </h5>

                <p class="tx-11 tx-uppercase tx-semibold tx-spacing-1 tx-color-02"><strong>TURNOVER RANK</strong></p>
            </div>
        </div>
    </div>




</div>

</div>
<!-- Dashboard END -->


<!-- Deliveries Logs  -->
<div class="tab-pane fade" id="alert-link" role="tabpanel" aria-labelledby="alert">
    <div class="row">
        <div class="col-md-4 col-xs-12">
            <form class="form-horizontal" method='POST' action='<?= base_url('offGrid/DeliveriesDownload') ?>'>
                <h6 class="card-title" style="font-weight: bold">Customer Statement</h6>
                <input type="hidden" name="sub_id" value="<?= $customer_id ?>"/>

                <div class="input-group mg-b-10">
                    <input type="text" name="from_date" id="dateFrom" class="form-control" placeholder="From"
                           autocomplete="off"/>
                    <input type="text" name="to_date" id="dateTo" class="form-control" placeholder="To"
                           autocomplete="off"/>
                </div>
                <div class="input-group">
                    <button type="submit" name="subStatement" value="statement" class="btn btn-secondary btn-block">
                        Download
                    </button>
                </div>
            </form>
        </div>

        <div class="col-md-8 col-xs-12 table-responsive">
            <h6 class="card-title" style="font-weight: bold">Deliveries</h6>
            <table class="table table-bordered" style="font-size: 10px">
                <thead class="thead-light">
                <tr>

                    <th style="font-weight: bold">Date Collected</th>
                    <th style="font-weight: bold">Empties Left</th>
                    <th style="font-weight: bold">Empties Collected</th>
                    <th style="font-weight: bold">Empties Stock</th>
                    <th style="font-weight: bold">Total Amount</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($delivered as $t) { ?>
                    <tr>

                        <td><?= $t->date_collect?></td>
                        <td><?= $t->left_bottle?></td>
                        <td><?= $t->collect_bottle ?></td>
                        <td><?= $t->current_stock_id?></td>
                        <td><?=number_format($t->amount_id,1)?></td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>



</div>




<!--SMS MODAL START-->
<form>
    <div class="modal fade" id="Modal_SMS" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">SMS Subscriber</h5>
                </div>
                <div class="modal-body">
                    <!-- Error alerts -->
                    <div id="sms-error-1" style="display: none" class="alert alert-danger fade show" role="alert">
                        Error! Please fill all mandatory fields.
                    </div>
                    <div id="sms-success" style="display: none" class="alert alert-success fade show" role="alert">
                        SMS sent successfully
                    </div>
                    <!-- Error alerts -->
                    <div class="form-group row" id="loadgif_sms" style="display: none">
                        <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                    </div>
                    <input type="hidden" name="sub_id_sms" id="sub_id_sms"/>

                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Full Name</label>

                        <div class="col-md-10">
                            <input type="text" name="sub_name_sms" id="sub_name_sms" class="form-control input-sm"
                                   placeholder="Subscriber Name" disabled autocomplete="off"/>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Mobile</label>

                        <div class="col-md-10">
                            <input type="text" name="mobile_sms" id="mobile_sms" class="form-control input-sm"
                                   autocomplete="off" disabled autocomplete="off"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Message <span class="tx-danger">*</span></label>

                        <div class="col-md-10">
                            <textarea class="form-control" rows="7" name="message" id="message" placeholder="Message.."
                                      autocomplete="off" required="required"></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary pull-left" data-dismiss="modal">Close</button>
                    <button type="button" type="submit" id="btn_sms" class="btn btn-success">Send</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!--SMS MODAL END-->
<script src="<?= base_url('lib/parsleyjs/parsley.min.js') ?>"></script>
<script>
    $(function () {
        $('#reg_date').datepicker({
            showOtherMonths: true,
            selectOtherMonths: true,
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd-M-yy',
            maxDate: 0,
        });

    });
</script>
<script>
    $(document).ready(function () {
        $('#sub_cat').on('change', function () {
            var subcat = $(this).val();
            if (subcat === 'HOUSEHOLD') {
                $("#hsize").slideDown();
                $("#street").slideDown();
                $("#course").hide();
                $("#curr_course_year").hide();
                $("#total_course_years").hide();
            } else if (subcat === 'RESIDENT') {
                $("#hsize").hide();
                $("#street").slideDown();
                $("#course").hide();
                $("#curr_course_year").hide();
                $("#total_course_years").hide();
            } else if (subcat === 'STUDENT') {
                $("#hsize").hide();
                $("#street").hide();
                $("#course").slideDown();
                $("#curr_course_year").slideDown();
                $("#total_course_years").slideDown();
            } else {
                $("#hsize").hide();
                $("#street").hide();
                $("#course").hide();
                $("#curr_course_year").hide();
                $("#total_course_years").hide();
            }
        });
    });

    $(document).ready(function () {
        $('#inactive').on('change', function () {
            var inactive = $(this).val();
            if (inactive === 'CLOSED') {
                $("#close").slideDown();
                $("#susp").hide();
            } else if (inactive === 'SUSPENDED') {
                $("#close").hide();
                $("#susp").slideDown();
            } else {
                $("#close").hide();
                $("#susp").hide();
            }
        });
    });
</script>
<script>
    $(function () {
        // Basic with search
        $('.select2').select2({
            placeholder: 'Choose one',
            searchInputPlaceholder: 'Search options'
        });
    });
</script>
<script>
    $(function () {
        var dateFormat = 'dd-M-yy',
            from = $('#dateFrom')
                .datepicker({
                    defaultDate: '-1w',
                    numberOfMonths: 2,
                    dateFormat: 'dd-M-yy',
                    maxDate: 0
                })
                .on('change', function () {
                    to.datepicker('option', 'minDate', getDate(this));
                }),
            to = $('#dateTo').datepicker({
                defaultDate: '-1w',
                numberOfMonths: 2,
                dateFormat: 'dd-M-yy',
                maxDate: 0
            })
                .on('change', function () {
                    from.datepicker('option', 'maxDate', getDate(this));
                });

        function getDate(element) {
            var date;
            try {
                date = $.datepicker.parseDate(dateFormat, element.value);
            } catch (error) {
                date = null;
            }

            return date;
        }
    });
</script>
<script type="text/javascript">
$(document).ready(function () {
    //get data for topup record
    $('#txtHint').on('click', '.item_edit', function () {
        var sub_id = $(this).data('sub_id');
        var sub_name = $(this).data('sub_name');
        var card_no = $(this).data('card_no');
        jQuery("div#result8").hide();
        jQuery("div#top-error-1").hide();
        jQuery("div#top-error-2").hide();
        jQuery("div#top-success").hide();

        $('#Modal_Edit').modal('show');
        $('[name="sub_id_topup"]').val(sub_id);
        $('[name="sub_name_topup"]').val(sub_name);
        $('[name="card_no_topup"]').val(card_no);
        $('[name="money"]').val("");
        $('[name="category_topup"]').val("");
        $('[name="trn_date_topup"]').val("");
        $('[name="pos_topup"]').val("");
    });

    //save topup details
    $('#btn_update').on('click', function () {
        var sub_id = $('#sub_id_topup').val();
        var card_no = $('#card_no_topup').val();
        var amount = $('#money').val();
        var category = $('#category_topup').val();
        var pos = $('#pos_topup').val();
        var trn_date = $('#trn_date_topup').val();
        jQuery("div#result8").show();
        jQuery("div#top-error-1").hide();
        jQuery("div#top-error-2").hide();
        jQuery("div#top-success").hide();
        //alert(amount);
        $.ajax({
            type: "POST",
            url: "<?php echo site_url('subscribers/addTopup') ?>",
            dataType: "JSON",
            data: {sub_id: sub_id, card_no: card_no, amount: amount, category: category, trn_date: trn_date, pos: pos},
            success: function (data) {
                if (data === 'okay') {
                    $('[name="sub_id_topup"]').val("");
                    $('[name="sub_name_topup"]').val("");
                    $('[name="card_no_topup"]').val("");
                    $('[name="money"]').val("");
                    $('[name="category_topup"]').val("");
                    $('[name="trn_date_topup"]').val("");
                    $('[name="pos_topup"]').val("");
                    //show_product();
                    //alert('Topup done successfully');
                    jQuery("div#top-success").show();
                    jQuery("div#result8").hide();
                    setTimeout(function () {
                        $('#Modal_Edit').modal('hide');
                    }, 2000);
                } else if (data === 'reg_date_error') {
                    //alert('Error! Topup date cannot be greater than subscriber registration date');
                    jQuery("div#top-error-2").show();
                    jQuery("div#result8").hide();
                } else {
                    //alert('Error! Please fill all mandatory field');
                    jQuery("div#top-error-1").show();
                    jQuery("div#result8").hide();
                }
            }
        });
        return false;
    });

    //get data for sms subscriber
    $('#txtHint').on('click', '.item_sms', function () {
        var sub_id = $(this).data('sub_id');
        var sub_name = $(this).data('sub_name');
        var card_no = $(this).data('card_no');
        var mobile = $(this).data('mobile');
        jQuery("div#loadgif_sms").hide();
        jQuery("div#sms-error-1").hide();
        jQuery("div#sms-success").hide();

        $('#Modal_SMS').modal('show');
        $('[name="sub_id_sms"]').val(sub_id);
        $('[name="sub_name_sms"]').val(sub_name);
        $('[name="card_no_sms"]').val(card_no);
        $('[name="mobile_sms"]').val(mobile);
        $('[name="message"]').val("");
    });

    //send SMS to subscriber
    $('#btn_sms').on('click', function () {
        var sub_id = $('#sub_id_sms').val();
        var card_no = $('#card_no_sms').val();
        var mobile = $('#mobile_sms').val();
        var message = $('#message').val();
        jQuery("div#loadgif_sms").show();
        jQuery("div#sms-error-1").hide();
        jQuery("div#sms-success").hide();
        //alert(message);
        $.ajax({
            type: "POST",
            url: "<?php echo site_url('subscribers/smsSingleSubscriber') ?>",
            dataType: "JSON",
            data: {sub_id: sub_id, card_no: card_no, mobile: mobile, message: message},
            success: function (data) {
                if (data === 'okay') {
                    $('[name="sub_id_sms"]').val("");
                    $('[name="sub_name_sms"]').val("");
                    $('[name="card_no_sms"]').val("");
                    $('[name="mobile_sms"]').val("");
                    $('[name="message"]').val("");
                    jQuery("div#loadgif_sms").hide();
                    jQuery("div#sms-success").show();
                    setTimeout(function () {
                        $('#Modal_SMS').modal('hide');
                    }, 2000);
                } else {
                    jQuery("div#sms-error-1").show();
                    jQuery("div#loadgif_sms").hide();
                }
            }
        });
        return false;
    });

    //get data for email subscriber
    $('#txtHint').on('click', '.item_mail', function () {
        var sub_id = $(this).data('sub_id');
        var sub_name = $(this).data('sub_name');
        var card_no = $(this).data('card_no');
        var email = $(this).data('email');
        jQuery("div#loadgif_mail").hide();
        jQuery("div#email-error-1").hide();
        jQuery("div#email-success").hide();

        $('#Modal_Mail').modal('show');
        $('[name="sub_id_mail"]').val(sub_id);
        $('[name="sub_name_mail"]').val(sub_name);
        $('[name="card_no_mail"]').val(card_no);
        $('[name="email_mail"]').val(email);
        //$('[name="message_mail"]').val("");
    });

    //send email to subscriber
    $('#btn_mail').on('click', function () {
        var sub_id = $('#sub_id_mail').val();
        var card_no = $('#card_no_mail').val();
        var email = $('#email_mail').val();
        var subject = $('#subject_mail').val();
        var message = $('#message_mail').val();
        jQuery("div#loadgif_mail").show();
        jQuery("div#email-error-1").hide();
        jQuery("div#email-success").hide();
        //alert(message);
        $.ajax({
            type: "POST",
            url: "<?php echo site_url('subscribers/emailSingleSubscriber') ?>",
            dataType: "JSON",
            data: {sub_id: sub_id, card_no: card_no, email: email, subject: subject, message: message},
            success: function (data) {
                if (data === 'okay') {
                    $('[name="sub_id_mail"]').val("");
                    $('[name="sub_name_mail"]').val("");
                    $('[name="card_no_mail"]').val("");
                    $('[name="email_mail"]').val("");
                    $('[name="subject_mail"]').val("");
                    $('[name="message_mail"]').val("");
                    jQuery("div#loadgif_mail").hide();
                    jQuery("div#email-success").show();
                    setTimeout(function () {
                        $('#Modal_SMS').modal('hide');
                    }, 2000);
                } else {
                    jQuery("div#email-error-1").show();
                    jQuery("div#loadgif_mail").hide();
                }
            }
        });
        return false;
    });

    //card renewal
    $('#btn-renewal').on('click', function () {
        var renewal_sub_id = $('#renewal_sub_id').val();
        var renewal_old_card = $('#renewal_old_card').val();
        var renewal_new_card = $('#renewal_new_card').val();
        var renewal_plan = $('#renewal_plan').val();
        var renewal_fee = $('#renewal_fee').val();
        var renewal_reason = $('#renewal_reason').val();
        var renewal_desc = $('#renewal_desc').val();
        var renewal_cashier = $('#renewal_cashier').val();
        jQuery("div#loadgif-renewal").show();
        //alert(renewal_sub_id);
        $.ajax({
            type: "POST",
            url: "<?php echo site_url('subscribers/ajaxCardRenewal') ?>",
            dataType: "JSON",
            data: {
                renewal_sub_id: renewal_sub_id,
                renewal_old_card: renewal_old_card,
                renewal_new_card: renewal_new_card,
                renewal_plan: renewal_plan,
                renewal_fee: renewal_fee,
                renewal_reason: renewal_reason,
                renewal_desc: renewal_desc,
                renewal_cashier: renewal_cashier
            },
            success: function (data) {
                var action = data.action;
                var message = data.message;
                if (action === 'okay') {
                    jQuery("div#loadgif-renewal").hide();
                    jQuery("div#renewal-message").show();
                    jQuery("div#renewal-message").html(message);
                    //setTimeout(function(){$('#Modal_View').modal('hide');}, 500);
                    //location.reload();
                    setTimeout(function () {
                        location.reload();
                    }, 2000);
                } else {
                    jQuery("div#loadgif-renewal").hide();
                    jQuery("div#renewal-message").show();
                    jQuery("div#renewal-message").html(message);
                }
            }
        });
        return false;
    });

});
</script>
<script>
    $(document).ready(function () {
        $('.trn_date').datepicker({
            showOtherMonths: true,
            selectOtherMonths: true,
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd-M-yy',
            maxDate: 0
        });
    });
</script>
<script type="text/javascript">
    $('.money').mask("#,##0", {reverse: true});
</script>
