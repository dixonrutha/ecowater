<?php
$result = $this->db->get_where('cashiers', array('user_id' => $this->session->userdata('id')));
$row = $result->num_rows();
$cashier = $result->row();
?>
<div class="row">
    <?php if ($row != 1) { ?>
        <div class="col-md-12">
            <div class="alert alert-warning" role="alert">
                Your cashier profile is not set please contact system administrator
            </div>
        </div>
    <?php } ?>
    <?php if (!empty($this->session->flashdata('access_denied'))) { ?>
        <div class="col-md-12">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <?= $this->session->flashdata('access_denied') ?>
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            </div>
        </div>
    <?php } ?>
    <?php if (!empty($this->session->flashdata('success'))) { ?>
        <div class="col-md-12">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                <?= $this->session->flashdata('success') ?>
            </div>
        </div>
    <?php } ?>
    <?php if (!empty($this->session->flashdata('error'))) { ?>
        <div class="col-md-12">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                <?= $this->session->flashdata('error') ?>
            </div>
        </div>
    <?php } ?>
    <div class="col-12">
        <div class="card card-body">
            <div class="d-md-flex align-items-center justify-content-between">
                <div class="media align-sm-items-center">
                    <div class="tx-40 tx-lg-60 lh-0"><i class="fa fa-users"></i></div>
                    <div class="media-body mg-l-15">
                        <h6 class="tx-12 tx-lg-14 tx-semibold tx-spacing-1 mg-b-5">Subscribers</h6>

                        <div class="d-flex align-items-baseline">
                            <h2 class="tx-20 tx-lg-28 tx-normal tx-rubik tx-spacing--2 lh-2 mg-b-0"><?= $sub_count ?></h2>
                            <h6 class="tx-11 tx-lg-16 tx-normal tx-rubik tx-light mg-l-5 lh-2 mg-b-0"><i>registered
                                    today</i></h6>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <h2 class="tx-20 tx-lg-28 tx-normal tx-rubik tx-spacing--2 lh-2 mg-b-0"><?= $cashier->card_balance ?></h2>
                            <h6 class="tx-11 tx-lg-16 tx-normal tx-rubik tx-light mg-l-5 lh-2 mg-b-0"><i> card
                                    balance</i></h6>
                        </div>
                    </div>
                    <!-- media-body -->
                </div>
                <!-- media -->
                <?php if ($row === 1) { ?>
                    <div class="d-flex flex-column flex-sm-row mg-t-20 mg-md-t-0">
                        <a href="<?= base_url('0e440098a33575c32246132ec2395e56ee43da01b539d2135760c9a6e02bfeed') ?>"
                           class="btn btn-sm btn-white pd-x-15"><i class="fa fa-user-plus" class="mg-r-5"></i><strong>
                                New Subscriber</strong></a>
                        <a href="<?= base_url('01a1a0fea0e585e55a53563bbab3237a7dbbe71081b27e53f4b3dd50e177595a') ?>"
                           class="btn btn-sm btn-white pd-x-15 mg-t-5 mg-sm-t-0 mg-sm-l-5"><i class="fa fa-navicon"
                                                                                              class="mg-r-5"></i><strong>
                                Today registrations</strong></a>
                        <a href="<?= base_url('ae892dc5d86252a3617a66d8524fe3247da3b566d767dec82f2f8a4e41e11cae') ?>"
                           class="btn btn-sm btn-white pd-x-15 mg-t-5 mg-sm-t-0 mg-sm-l-5"><i class="fa fa-flask"
                                                                                              class="mg-r-5"></i><strong>
                              Cash Bottle</strong>

                        </a>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>

    <div class="col-12 mg-t-10">
        <div class="card card-body">
            <div class="d-md-flex align-items-center justify-content-between">
                <div class="media align-sm-items-center">
                    <div class="tx-40 tx-lg-60 lh-0"><i class="fa fa-money"></i></div>
                    <div class="media-body mg-l-15">
                        <h6 class="tx-12 tx-lg-14 tx-semibold tx-spacing-1 mg-b-5">Card Recharges</h6>

                        <div class="d-flex align-items-baseline">
                            <h2 class="tx-20 tx-lg-28 tx-normal tx-rubik tx-spacing--2 lh-2 mg-b-0">
                                Tsh <?= number_format($cashier->current_float - $cashier->used_float, 2) ?></h2>
                            <h6 class="tx-11 tx-lg-16 tx-normal tx-rubik tx-light mg-l-5 lh-2 mg-b-0"><i> float
                                    balance</i></h6>
                        </div>
                    </div>
                    <!-- media-body -->
                </div>
                <!-- media-->
                <?php if ($row === 1) { ?>
                    <div class="d-flex flex-column flex-sm-row mg-t-20 mg-md-t-0">
                        <a href="<?= base_url('043390f2871d161b988b175ead45b6210be8853f05325c453be74989a1479712') ?>"
                           class="btn btn-sm btn-white pd-x-15"><i class="fa fa-credit-card" class="mg-r-5"></i><strong>
                                Recharge Card</strong></a>
                        <a href="<?= base_url('c70f87b323bcd5bb6d3f63f1b9dd0619d8ceac4c419565546ffcda5db6a17b88') ?>"
                           class="btn btn-sm btn-white pd-x-15 mg-t-5 mg-sm-t-0 mg-sm-l-5"><i class="fa fa-tasks"
                                                                                              class="mg-r-5"></i><strong>
                                Today recharges</strong></a>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>

    <div class="col-md-6 col-sm-12 col-xs-12">
        <div class="card mg-t-10">
            <div class="card-body tx-center">
                <h4 class="tx-normal tx-rubik tx-40 tx-spacing--1 mg-b-0"><?php
                    if ($sub_fee->fee == '') {
                        echo '0.00';
                    } else {
                        echo number_format($sub_fee->fee, 2);
                    }
                    ?></h4>

                <p class="tx-12 tx-uppercase tx-semibold tx-spacing-1 tx-color-02">Fees Collected today</p>

                <p class="tx-12 tx-color-03 mg-b-0">This month <?= date('M-Y') ?> : <?php
                    if ($sub_fee_yday->fee == '') {
                        echo '0.00';
                    } else {
                        echo number_format($sub_fee_yday->fee, 2);
                    }
                    ?></p>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-sm-12 col-xs-12">
        <div class="card mg-t-10">
            <div class="card-body tx-center">
                <h4 class="tx-normal tx-rubik tx-40 tx-spacing--1 mg-b-0"><?php
                    if ($recharges->amount == '') {
                        echo '0.00';
                    } else {
                        echo number_format($recharges->amount, 2);
                    }
                    ?></h4>

                <p class="tx-12 tx-uppercase tx-semibold tx-spacing-1 tx-color-02">Recharges Collected today</p>

                <p class="tx-12 tx-color-03 mg-b-0">This month <?= date('M-Y') ?> : <?php
                    if ($recharges_yday->amount == '') {
                        echo '0.00';
                    } else {
                        echo number_format($recharges_yday->amount, 2);
                    }
                    ?></p>
            </div>
        </div>
    </div>
    <div class="col-md-6" col-sm-12 col-xs-12
    ">
    <form action="#" method="POST" id="cform" name="cform">
        <div class="card mg-t-10">
            <div class="card-body tx-center">
                <div class="input-group mg-b-2">
                    <input autocomplete="off" id="card_no" name="card_no" type="number" class="form-control"
                           placeholder="type complete card number" required="required"/>

                    <div class="input-group-append">
                        <button class="btn btn-outline-light" type="button" id="search-card">Search card</button>
                    </div>
                </div>
                <div class="form-group mg-t-5" id="search-card-loadgif" style="display: none; text-align: center;">
                    <img src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                </div>
                <table class="table table-bordered table-components mg-t-5">
                    <thead>
                    <tr>
                        <th class="wd-20p"><strong>Card No.</strong></th>
                        <th class="wd-40p"><strong>Subscriber</strong></th>
                        <th class="wd-20p"><strong>Card Luhn</strong></th>
                        <th class="wd-20p"><strong>Action</strong></th>
                    </tr>
                    </thead>
                    <tbody id="search-card-data">

                    </tbody>
                </table>
            </div>
        </div>
    </form>
</div>

</div>

<script type="text/javascript">
    $('#search-card').on('click', function () {
        var card_no = $('#card_no').val();
        jQuery("div#search-card-loadgif").show();
        jQuery("#search-card-data").hide();
        //alert(card_no);
        $.ajax({
            type: "POST",
            url: "<?php echo site_url('cashier/ajaxSearchCard') ?>",
            dataType: "JSON",
            data: {card_no: card_no},
            success: function (data) {
                //alert('here');
                var action = data.action;
                var message = data.message;
                if (action === 'success') {
                    $('[name="card_no"]').val("");
                    jQuery("div#search-card-loadgif").hide();
                    jQuery("#search-card-data").show();
                    jQuery("#search-card-data").html(message);
                } else {
                    alert('Unkown error');
                }
            }
        });
        return false;
    });
</script>
