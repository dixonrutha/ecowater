<div class="row">
    <div class="col-md-12">
        <?php
        $error = $this->session->flashdata('error');
        $success = $this->session->flashdata('success');
        if (!empty($error)) {
            ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                <?= $error ?>
            </div>
        <?php } elseif (!empty($successs)) { ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                <?= $success ?>
            </div>
        <?php } ?>
    </div>
    <!-- Export All Station Sales -->
    <div class="col-md-4 mg-t-5">
        <div class="card">
            <form action="<?= base_url('stations/salesExport') ?>" method="POST">
                <div class="card-header tx-semibold">
                    <h6 class="mg-b-0"><strong>Export All Stations Sales</strong></h6>
                </div>
                <div class="card-body">                                
                    <div class="row form-group">
                        <div class="col-md-6 mg-t-5">
                            <input type="text" id="dateFrom" name="dateFrom" class="form-control" placeholder="From" readonly="readonly"/>
                        </div>
                        <div class="col-md-6 mg-t-5">
                            <input type="text" id="dateTo" name="dateTo" class="form-control" placeholder="To" readonly="readonly"/>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <button class="btn btn-sm btn-secondary" type="reset">Reset</button>
                    <button class="btn btn-sm btn-info pull-right" type="submit"><span class="fa fa-file-pdf-o"></span> Export</button>
                </div>
            </form>
        </div>
    </div>
    <!-- Export sales -->
    <!-- Total Active Stations -->
    <div class="col-md-4 col-xs-12 mg-t-5">
        <div class="card">
            <div class="card-body tx-center" style="min-height: 164px;">
                <h5 class="tx-normal tx-rubik tx-50 tx-spacing--1 mg-b-0"><?= number_format($stations_count, 0) ?></h5>
                <br />
                <p class="tx-15 tx-uppercase tx-semibold tx-spacing-1 tx-color-02">Total Active Stations</p>
                <br />             
            </div>
        </div>
    </div>
    <!-- Total Active Stations -->
    <!-- Installation Types -->
    <div class="col-md-4 col-xs-12 mg-t-5">
        <div class="card">
            <div class="card-header tx-semibold">
                <h6 class="mg-b-0"><strong>Station Installation Types</strong></h6>
            </div>
            <div class="card-body" style="min-height: 124px;">
                <div class="row row-xs">
                    <div class="col-md-12 mg-b-20"></div>
                    <?php
                    foreach ($inst_count as $ic) {
                        if ($ic->inst_type === 'University') {
                            ?>
                            <div class="col-4 col-lg">
                                <div class="d-flex align-items-baseline">
                                    <span class="d-block wd-8 ht-8 rounded-circle bg-primary"></span>
                                    <span class="d-block tx-12 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">University</span>
                                </div>
                                <br />
                                <h3 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($ic->station_count, 0) ?></h3>
                            </div>
                        <?php } elseif ($ic->inst_type === 'Community') { ?>
                            <div class="col-4 col-lg">
                                <div class="d-flex align-items-baseline">
                                    <span class="d-block wd-8 ht-8 rounded-circle bg-teal"></span>
                                    <span class="d-block tx-12 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Community</span>
                                </div>
                                <br />
                                <h4 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($ic->station_count, 0) ?></h4>
                            </div>
                        <?php } elseif ($ic->inst_type === 'Merchant') { ?>
                            <div class="col-4 col-lg">
                                <div class="d-flex align-items-baseline">
                                    <span class="d-block wd-8 ht-8 rounded-circle bg-gray-300"></span>
                                    <span class="d-block tx-12 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Merchant</span>
                                </div>
                                <br />
                                <h4 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($ic->station_count, 0) ?></h4>
                            </div>
                            <?php
                        }
                    }
                    ?>
                    <!-- This will be removed when merchant portal start -->
                    <div class="col-4 col-lg">
                        <div class="d-flex align-items-baseline">
                            <span class="d-block wd-8 ht-8 rounded-circle bg-gray-300"></span>
                            <span class="d-block tx-12 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Merchant</span>
                        </div>
                        <br />
                        <h4 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format(0, 0) ?></h4>
                    </div>
                    <!-- This will be removed when merchant portal start -->
                </div>
            </div>
        </div>
    </div>
    <!-- Installation Types -->
</div>
<div class="row">
    <div class="col-md-8 mg-t-10">
        <div class="card">
            <div class="card-header d-flex align-items-center justify-content-between">
                <div class="d-flex mg-t-20 mg-sm-t-0">
                    <div class="btn-group flex-fill" id="txtHint">
                        <?php if (!empty($this->session->userdata('stat_shutdown'))) { ?>                        
                            <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Shutdown" class="btn btn-xs btn-danger item-status" data-command="shutdown"><span class="fa fa-power-off"></span></a>           
                        <?php } ?>
                        <?php if (!empty($this->session->userdata('stat_start'))) { ?>
                            <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Start" class="btn btn-xs btn-success item-status" data-command="start" ><span class="fa fa-check"></span></a>
                        <?php } ?>
                        <?php if (!empty($this->session->userdata('stat_restart'))) { ?>                        
                            <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Reboot" class="btn btn-xs btn-warning item-status" data-command="reboot"><span class="fa fa-refresh"></span></a>
                        <?php } ?>                
                        <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Status" class="btn btn-xs btn-dark item-status" data-command="status"><span class="fa fa-info-circle"></span></a>                    
                        <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Request Sales" class="btn btn-xs btn-success item-status" data-command="sales"><span class="fa fa-dollar"></span></a>
                    </div>
                </div>
                <div class="d-flex tx-18">
                    <a href="" class="btn btn-sm btn-light" title="refresh" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-refresh"></i></a>
                </div>                
            </div>
            <div class="card-body">
                <table id="eco-table-responsive" class="table table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th style="font-size: 13px">Station Name</th>
                            <th style="font-size: 13px">Message <i>(past 30 days)</i></th>
                            <th style="font-size: 13px">Time</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($sms as $s) {
                            $sms_date = date('Y-m-d', strtotime($s->date_registered));
                            $yest = date('Y-m-d', strtotime('-1 days'));
                            if ($sms_date === date('Y-m-d')) {
                                $sms_date = 'today at ' . date('H:i', strtotime($s->date_registered));
                            } elseif ($sms_date === $yest) {
                                $sms_date = 'yesterday at ' . date('H:i', strtotime($s->date_registered));
                            } else {
                                $sms_date = date('d-M-y H:i', strtotime($s->date_registered));
                            }
                            ?>
                            <tr>
                                <td style="width: 15%"><?= $s->station_name ?></td>
                                <td style="width: 60%"><?= $s->message_pro ?></td>
                                <td style="width: 15%"><?= $sms_date ?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-4 mg-t-10">
        <div class="card">
            <div class="card-header tx-semibold">
                <h6 class="mg-b-0"><strong>Stations Configurations</strong></h6>
            </div>
            <form action="#" method="POST">
                <div class="card-body">
                    <div class="form-group">
                        <label class="d-block">Configurations</label>
                        <select class="custom-select input-sm" name="configuration" id="configuration">
                            <option value="" >Select</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="d-block">Keyword</label>
                        <input type="text" name="keyword" id="keyword" class="form-control" placeholder="Enter keyword eg. 9900PRICE1200" />
                    </div>
                </div> 
                <div class="card-footer">
                    <button class="btn btn-sm btn-secondary" type="reset">Reset</button>
                    <button class="btn btn-sm btn-success pull-right" type="submit"><span class="fa fa-file-pdf-o"></span> Submit</button>
                </div>
            </form>
        </div>
    </div>
    <!--STATUS MODAL START-->
    <form>
        <div class="modal fade" id="Modal-Status" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" id="modal-header">
                        <!--
                            <h5 class="modal-title" id="exampleModalLabel"><span class="fa fa-info-circle"></span> Request Status</h5>
                        -->
                    </div>            
                    <div class="modal-body">
                        <!-- Error/Success alerts <div> Start-->
                        <div id="status-message" style="display: none;">

                        </div>
                        <!-- Error/Success alerts <div> End -->
                        <div class="form-group row" id="loadgif-status" style="display: none">
                            <img style="margin-left: 45%; margin-left: 45%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                        </div>
                        <input type="hidden" name="command_form" id="command_form"/>
                        <div class="alert alert-warning alert-dismissible fade show" role="alert" id="status-body" style="display: none">
                            <span style="font-size: 15px;">Request will be sent to all stations.<br/>Are you sure you want to proceed?</span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-dark" type="submit" id="btn-status">Send</button>                  
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!--STATUS STATION MODAL END-->
</div>

<script type="text/javascript">
    $(function () {
        $('#dateFrom').datepicker({
            showOtherMonths: true,
            selectOtherMonths: true,
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd-M-yy',
            maxDate: 0,
        });

        $('#dateTo').datepicker({
            showOtherMonths: true,
            selectOtherMonths: true,
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd-M-yy',
            maxDate: 0,
        });

    });

    //get data for request status
    $('#txtHint').on('click', '.item-status', function () {
        jQuery("div#loadgif-status").hide();
        jQuery("div#status-message").hide();
        jQuery("div#status-body").show();
        var command = $(this).data('command');
        if (command === 'status') {
            var icon = 'class="fa fa-info-circle"';
        } else if (command === 'shutdown') {
            var icon = 'class="fa fa-power-off"';
        } else if (command === 'start') {
            var icon = 'class="fa fa-check"';
        } else if (command === 'reboot') {
            var icon = 'class="fa fa-refresh"';
        } else if (command === 'sales') {
            var icon = 'class="fa fa-dollar"';
        } else {
            var icon = 'class="fa fa-cog"';
        }
        var header = '<h5 class="modal-title" id="exampleModalLabel"><span ' + icon + ' ></span> Request ' + command + ' </h5>';
        jQuery("div#modal-header").html(header);
        $('#Modal-Status').modal('show');
        $('[name="command_form"]').val(command);
    });

    //request status complete
    $('#btn-status').on('click', function () {
        var command_form = $('#command_form').val();
        jQuery("div#loadgif-status").show();
        jQuery("div#status-message").hide();
        //alert(command_form); 
        $.ajax({
            type: "POST",
            url: "<?php echo site_url('stations/sendCommandsAllStations') ?>",
            dataType: "JSON",
            data: {command_form: command_form},
            success: function (data) {
                var action = data.action;
                var message = data.message;
                if (data === 'okay') {
                    jQuery("div#loadgif-status").hide();
                    jQuery("div#status-body").hide();
                    jQuery("div#status-message").show();
                    //setTimeout(function() {$('#Modal-Status').modal('hide');}, 2000);
                    $('#Modal-Status').modal('hide');
                } else {
                    jQuery("div#loadgif-status").hide();
                    jQuery("div#status-body").hide();
                    jQuery("div#status-message").show();
                    jQuery("div#status-message").html(message);
                }
            }
        });
        return false;
    });

</script>
