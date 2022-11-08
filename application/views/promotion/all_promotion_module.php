<script src='<?= base_url("assets/js/jquery.mask.min.js") ?>'></script>
<style>
    #table_td{
        padding: 5px 5px;
    }
</style>
<div class="card">
<div class="card-header d-flex align-items-center justify-content-between">
    <h6 class="mg-b-0"><strong>All Subscribers</strong></h6>
    <div class="btn-group pull-right">
        <a href="<?= base_url('fea80e4851ade9a5c70f97873b248c9f') ?>" class="btn btn-xs btn-outline-success"><i class="fa fa-user-plus"></i> New Promotion</a>
        <a href="<?= base_url('a4df3aee914ed5bf20dc624ab373ba88') ?>" class="btn bt-xs btn-outline-secondary"><i class="fa fa-file-excel-o" ></i> Export All</a>
    </div>
</div>
<div class="card-body">
    <div id="txtHint">
        <table id="sub-table" class="table-bordered table-striped" style="border-collapse: collapse">
            <thead class="thead-dark">
            <tr>

                <th style="font-size: 13px" >Name</th>
                <th style="font-size: 13px">Category</th>
                <th style="font-size: 13px">Performance</th>
                <th style="font-size: 13px">Rate</th>
                <th style="font-size: 13px">Model</th>
                <th style="font-size: 13px">Start Date</th>
                <th style="font-size: 13px">End Date</th>
                <th style="font-size: 13px"></th>
            </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
    </div>
</div>
<!--START TOPUP MODAL-->
<form data-parsley-validate>
    <div class="modal fade" id="Modal_Edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Card TopUp</h5>
                </div>
                <div class="modal-body">
                    <!-- Error alerts -->
                    <div id="top-error-1" style="display: none" class="alert alert-danger fade show" role="alert">
                        Error! Please fill all mandatory fields.
                    </div>
                    <div id="top-error-2" style="display: none" class="alert alert-danger fade show" role="alert">
                        Error! Topup date cannot be greater than subscriber registration date
                    </div>
                    <div id="top-success" style="display: none" class="alert alert-success fade show" role="alert">
                        Topup successfully added
                    </div>
                    <!-- Error alerts -->
                    <div class="form-group row" id="result8" style="display: none">
                        <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                    </div>
                    <input type="hidden" name="sub_id_topup" id="sub_id_topup" />
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Full Name</label>
                        <div class="col-md-8">
                            <input type="text" name="sub_name_topup" id="sub_name_topup" class="form-control input-sm" placeholder="Subscriber Name" disabled autocomplete="off" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Card Number</label>
                        <div class="col-md-8">
                            <input type="text" name="card_no_topup" id="card_no_topup" class="form-control input-sm" placeholder="Card No." disabled autocomplete="off" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Amount <span class="tx-danger">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="money" id="money" class="form-control input-sm money" autocomplete="off" required="required"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Category <span class="tx-danger">*</span></label>
                        <div class="col-md-8">
                            <select  class="form-control input-sm" name="category_topup" id="category_topup" autocomplete="off" required="required">
                                <option value="">--Select--</option>
                                <?php foreach ($topup_cat as $t) { ?>
                                    <option value="<?= $t->category ?>" ><?= $t->category ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">POS <span class="tx-danger">*</span></label>
                        <div class="col-md-8">
                            <select  class="form-control" name="pos_topup" id="pos_topup" style="width: 100%" autocomplete="off" required="required">
                                <option value="">--Select--</option>
                                <?php foreach ($pos as $p) { ?>
                                    <option value="<?= $p->pos_name ?>" ><?= $p->pos_name . ' - ', $p->campus_name ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Trn Date</label>
                        <div class="col-md-8">
                            <input type="text" name="trn_date_topup" id="trn_date_topup" placeholder="Default today if left blank" class="form-control input-sm trn_date" data-date-end-date='0d' autocomplete="off" readonly/>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary pull-left" data-dismiss="modal">Close</button>
                    <button type="button" type="submit" id="btn_update" class="btn btn-warning">Save</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!--END TOPUP MODAL-->

<!-- <script src="<?php //base_url('lib/parsleyjs/parsley.min.js')    ?>"></script> -->
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
<script>
    $(function () {
        $('#sub-table').DataTable({
            order: [],
            autoWidth: true,
            language: {
                searchPlaceholder: 'Search...',
                sSearch: '',
                lengthMenu: 'Show _MENU_ entries',
            }
        });
    });
</script>
<script type="text/javascript">
    $('.money').mask("#,##0", {reverse: true});
</script>