<script src='<?= base_url("assets/js/jquery.mask.min.js") ?>'></script>
<style type="text/css">
    .input-width {
        min-height: 38px;
    }
</style>
<?php
$ency_sub_id = str_replace(array('+', '/', '='), array('-', '_', '~'), $this->encryption->encrypt($sub_id));
if ($this->session->flashdata('message')) {
    $message = $this->session->flashdata('message');
}
if ($this->session->flashdata('error')) {
    $error = $this->session->flashdata('error');
}
if ($this->session->flashdata('success')) {
    $success = $this->session->flashdata('success');
}
?>
<form method="POST" action="<?= base_url('subscribers/viewSubscriber/' . $ency_sub_id) ?>" data-parsley-validate>
<input type="hidden" name="ency_sub_id" value="<?= $ency_sub_id ?>">

<div class="row">
<div class="col-md-12" style="padding-right: 3px; padding-left: 3px;">
<div class="card">
<div class="card-header d-sm-flex align-items-start justify-content-between bd-b-0 pd-b-0"
     style="padding: 8px 10px 2px">
    <div class="d-flex mg-t-20 mg-sm-t-0">
        <div class="btn-group flex-fill">
            <button type="reset" data-toggle="tooltip" title="reset" class="btn btn-outline-light btn-sm" title="Reset">
                <i class="fa fa-undo"></i></button>
            <?php if (!empty($this->session->userdata('sub_edit'))) { ?>
                <button type="submit" name="submitForm" value="save" class="btn btn-outline-info btn-sm"
                        data-toggle="tooltip" title="Save"><i class="fa fa-save"></i></button>
                <a href="#deactivateSubModal" data-toggle="modal" class="btn btn-outline-warning btn-sm"
                   title="Deactivate"><i class="fa fa-ban"></i></a>
            <?php } ?>
            <?php if (!empty($this->session->userdata('sub_delete'))) { ?>
                <a href="#deleteSubModal" data-toggle="modal" class="btn btn-outline-danger btn-sm" title="Delete"><i
                        class="fa fa-trash"></i></a>
            <?php } ?>
        </div>
    </div>
    <div class="d-flex mg-t-20 mg-sm-t-0">
        <div class="btn-group flex-fill" id="txtHint">
            <?php if (!empty($this->session->userdata('sub_topup'))) { ?>
                <!--<a href="javascript:void(0);" class="btn btn-sm btn-outline-success item_edit" data-toggle="tooltip" title="topup" data-sub_id="<?= $sub_data->id ?>" data-sub_name="<?= $sub_data->sub_name ?>" data-card_no="<?= $sub_data->card_no ?>"><i class="fa fa-money"></i></a>-->
            <?php } ?>
            <?php if (!empty($this->session->userdata('sub_sms'))) { ?>
                <a href="javascript:void(0);" class="btn btn-sm btn-outline-light item_sms" data-toggle="tooltip"
                   title="SMS" data-sub_id="<?= $sub_data->id ?>" data-sub_name="<?= $sub_data->sub_name ?>"
                   data-card_no="<?= $sub_data->card_no ?>" data-mobile="<?= $sub_data->mobile ?>"><i
                        class="fa fa-comment"></i></a>
            <?php } ?>
            <?php if (!empty($this->session->userdata('sub_mail'))) { ?>
                <a href="javascript:void(0);" class="btn btn-sm btn-outline-secondary item_mail" data-toggle="tooltip"
                   title="email" data-sub_id="<?= $sub_data->id ?>" data-sub_name="<?= $sub_data->sub_name ?>"
                   data-card_no="<?= $sub_data->card_no ?>" data-email="<?= $sub_data->email ?>"><i
                        class="fa fa-envelope"></i></a>
            <?php } ?>
        </div>
    </div>
</div>
<div class="card-body">
<!-- Alert start -->
<?php if (!empty($error) || !empty($message) || !empty($success)) { ?>
    <?php if (!empty($error)): ?>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <?= $error; ?>
        </div>
    <?php endif; ?>
    <?php if (!empty($message)): ?>
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <?= $message; ?>
        </div>
    <?php endif; ?>
    <?php if (!empty($success)): ?>
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <?= $success; ?>
        </div>
    <?php endif; ?>
<?php } ?>
<?php if (validation_errors()) { ?>
    <div class="alert alert-danger alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <?= validation_errors(); ?>
    </div>
<?php } ?>
<!-- Alert end -->
<div class="media align-items-stretch">
<ul class="nav nav-tabs flex-column wd-150" id="myTab4" role="tablist">
    <li class="nav-item">
        <a class="nav-link active" id="home-tab4" data-toggle="tab" href="#home4" role="tab" aria-controls="home"
           aria-selected="true"><strong>Personal Information</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="profile-tab4" data-toggle="tab" href="#profile4" role="tab" aria-controls="profile"
           aria-selected="false"><strong>Service Details1</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="contact-tab4" data-toggle="tab" href="#contact4" role="tab" aria-controls="contact"
           aria-selected="false"><strong>Transactions</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="comm-tab4" data-toggle="tab" href="#comm4" role="tab" aria-controls="comm"
           aria-selected="false"><strong>Messaging</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="card-tab" data-toggle="tab" href="#card" role="tab" aria-controls="card"
           aria-selected="false"><strong>Card Renewal</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="payment-tab" data-toggle="tab" href="#payment" role="tab" aria-controls="payment"
           aria-selected="false"><strong>Payments</strong></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="validation-tab" data-toggle="tab" href="#validation" role="tab"
           aria-controls="validation"
           aria-selected="false"><strong>Validations</strong></a>
    </li>
</ul>
<div class="media-body">
<div class="tab-content bd bd-gray-300 bd-l-0 pd-20" id="myTabContent4">
<!-- Personal details tab start -->
<div class="tab-pane fade show active" id="home4" role="tabpanel" aria-labelledby="home-tab4">
<div class="row">
<div class="col-md-6">
    <div class="form-group">
        <label class="d-block" style="font-weight: bold">Mobile <span class="tx-danger">*</span></label>
        <input type="number" min="1" minlength="12" maxlength="12" class="form-control input-width"
               name="mobile" value="<?= $sub_data->mobile ?>" autocomplete="off" required/>
    </div>
    <div class="form-group">
        <label class="d-block" style="font-weight: bold">Full Name <span class="tx-danger">*</span></label>
        <input type="text" class="form-control input-width" name="sub_name" value="<?= $sub_data->sub_name ?>"
               autocomplete="off" required/>
    </div>
    <div class="form-group">
        <label class="d-block" style="font-weight: bold">Gender <span class="tx-danger">*</span></label>

        <div>
            <div class="custom-control custom-radio" style="padding-bottom: 3px">
                <input type="radio" id="customRadio1" name="gender"
                       value="M" <?php if ($sub_data->gender == 'M') echo 'checked'; ?>
                       class="custom-control-input">
                <label class="custom-control-label" for="customRadio1">Male</label>
            </div>
            <div class="custom-control custom-radio">
                <input type="radio" id="customRadio2" name="gender"
                       value="F" <?php if ($sub_data->gender == 'F') echo 'checked'; ?>
                       class="custom-control-input">
                <label class="custom-control-label" for="customRadio2">Female</label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="d-block" style="font-weight: bold">Email</label>
        <input type="email" class="form-control input-width" name="email" value="<?= $sub_data->email ?>"
               autocomplete="off" placeholder="Optional"/>
    </div>
    <div class="form-group">
        <label class="d-block" style="font-weight: bold">ID Type</label>
        <select class="custom-select" name="id_type" id="id_type">
            <option value="">--Select--</option>
            <?php
            foreach ($id_types as $c) {
                $selected = '';
                if ($sub_data->id_type == $c->id) {
                    $selected = ' selected = "" ';
                }
                ?>
                <option
                    value="<?= $c->id ?>" <?= set_select('id_type', $c->name); ?> <?= $selected ?> ><?= $c->name ?></option>
            <?php } ?>
        </select>
    </div>
    <div class="form-group">
        <label class="d-block" style="font-weight: bold">ID Number</label>
        <input type="text" class="form-control input-width" name="id_number" value="<?= $sub_data->id_number ?>"
               autocomplete="off"/>
    </div>
</div>
<div class="col-md-6">
    <div class="form-group">
        <label class="d-block" style="font-weight: bold">Date Registered <span
                class="tx-danger">*</span></label>
        <input type="text" class="form-control input-width" name="sub_registration_date" id='reg_date'
               data-date-end-date='0d' autocomplete="off" required
               value="<?= date('d-M-Y', strtotime($sub_data->sub_registration_date)) ?>" readonly/>
    </div>
    <div class="form-group">
        <label class="d-block" style="font-weight: bold">Sub Category <span class="tx-danger">*</span></label>
        <select class="custom-select" name="category" id="sub_cat" required>
            <option value="<?= $sub_data->category ?>"><?= $sub_data->category ?></option>
            <option value="">--Select--</option>
            <?php foreach ($sub_cat as $c) { ?>
                <option
                    value="<?= $c->category ?>" <?= set_select('category', $c->category); ?> ><?= $c->category ?></option>
            <?php } ?>
        </select>
    </div>
    <div class="form-group cat" id="hsize" <?php
    if ($sub_data->category != 'HOUSEHOLD') {
        echo "style='display:none'";
    }
    ?> >
        <label class="d-block" style="font-weight: bold">Household Size <span class="tx-danger">*</span></label>
        <input type="number" class="form-control input-sm" name="household_size"
               value="<?= $sub_data->household_size; ?>" autocomplete="off" placeholder="eg. 5"/>
    </div>
    <div class="form-group cat" id="street" <?php
    if (!($sub_data->category === 'HOUSEHOLD' || $sub_data->category === 'RESIDENT')) {
        echo "style='display:none'";
    }
    ?>>
        <label class="d-block" style="font-weight: bold">Street <span class="tx-danger">*</span></label>
        <select class="custom-select" name="street" autocomplete="off">
            <option value="">--Select--</option>
            <?php
            foreach ($streets as $s) {
                if ($sub_data->street == $s->id) {
                    $selected = 'selected="selected"';
                } else {
                    $selected = '';
                }
                ?>
                <option value="<?= $s->id ?>" <?= $selected ?> ><?= $s->street_name ?></option>
            <?php } ?>
        </select>
    </div>
    <div class="form-group" <?php
    if ($sub_data->category != 'STUDENT') {
        echo "style='display:none'";
    }
    ?> id="course">
        <label class="d-block" style="font-weight: bold">Course Name: <span class="tx-danger">*</span></label>
        <select class="custom-select select2" name="course" style="width: 100%" autocomplete="off">
            <option value="" selected>--Select--</option>
            <?php
            foreach ($courses as $cc) {
                if ($sub_data->course == $cc->course_name) {
                    $selected = 'selected="selected"';
                } else {
                    $selected = '';
                }
                ?>
                <option value="<?= $cc->course_name ?>" <?= $selected ?> ><?= $cc->course_name ?></option>
            <?php } ?>
        </select>
    </div>
    <div class="form-group" <?php
    if ($sub_data->category != 'STUDENT') {
        echo "style='display:none'";
    }
    ?> id="curr_course_year">
        <label class="d-block" style="font-weight: bold">Curr. Year of Study: <span
                class="tx-danger">*</span></label>
        <select class="custom-select" name="curr_course_year" autocomplete="off">
            <option value="">--Select--</option>
            <option value="1" <?php
            if ($sub_data->curr_course_year == "1") {
                echo 'selected="selected"';
            }
            ?> >1
            </option>
            <option value="2" <?php
            if ($sub_data->curr_course_year == "2") {
                echo 'selected="selected"';
            }
            ?> >2
            </option>
            <option value="3" <?php
            if ($sub_data->curr_course_year == "3") {
                echo 'selected="selected"';
            }
            ?> >3
            </option>
            <option value="4" <?php
            if ($sub_data->curr_course_year == "4") {
                echo 'selected="selected"';
            }
            ?> >4
            </option>
            <option value="5" <?php
            if ($sub_data->curr_course_year == "5") {
                echo 'selected="selected"';
            }
            ?> >5
            </option>
        </select>
    </div>
    <div class="form-group" <?php
    if ($sub_data->category != 'STUDENT') {
        echo "style='display:none'";
    }
    ?> id="total_course_years">
        <label class="d-block" style="font-weight: bold">Total Course Years: <span
                class="tx-danger">*</span></label>
        <select class="custom-select" name="total_course_years" autocomplete="off">
            <option value="">--Select--</option>
            <option value="5" <?php
            if ($sub_data->total_course_years == "5") {
                echo 'selected="selected"';
            }
            ?> >5
            </option>
            <option value="4" <?php
            if ($sub_data->total_course_years == "4") {
                echo 'selected="selected"';
            }
            ?> >4
            </option>
            <option value="3" <?php
            if ($sub_data->total_course_years == "3") {
                echo 'selected="selected"';
            }
            ?> >3
            </option>
            <option value="2" <?php
            if ($sub_data->total_course_years == "2") {
                echo 'selected="selected"';
            }
            ?> >2
            </option>
            <option value="1" <?php
            if ($sub_data->total_course_years == "1") {
                echo 'selected="selected"';
            }
            ?> >1
            </option>
        </select>
    </div>
</div>
</div>
</div>
<!-- Personal details tab end -->
<!-- Services details tab start -->
<div class="tab-pane fade" id="profile4" role="tabpanel" aria-labelledby="profile-tab4">
    <div class="row">
        <div class="col-md-6">
            <input type="hidden" name="old_card" value="<?= $sub_data->card_no ?>"/>

            <div class="form-group">
                <label class="d-block" style="font-weight: bold">Card No <span class="tx-danger">*</span></label>
                <input type="text" class="form-control input-width" disabled="" value="<?= $sub_data->card_no ?>"/>
            </div>
            <div class="form-group">
                <label class="d-block" style="font-weight: bold">Subscriber Status <span
                        class="tx-danger">*</span></label>
                <select class="custom-select" name="record_stat" autocomplete="off" required>
                    <option value="">--Select--</option>
                    <option value="OPEN" <?php
                    if ($sub_data->record_stat == 'OPEN') {
                        echo 'selected="selected"';
                    }
                    ?> >Open
                    </option>
                    <option value="CLOSED" <?php
                    if ($sub_data->record_stat == 'CLOSED') {
                        echo 'selected="selected"';
                    }
                    ?> >Closed
                    </option>
                    <option value="SUSPENDED" <?php
                    if ($sub_data->record_stat == 'SUSPENDED') {
                        echo 'selected="selected"';
                    }
                    ?> >Suspended
                    </option>
                </select>
            </div>
            <div class="form-group">
                <label class="d-block" style="font-weight: bold">Campus <span class="tx-danger">*</span></label>
                <select class="custom-select select2" name="campus_code" style="width: 100%" autocomplete="off"
                        required>
                    <option value="">--Select--</option>
                    <?php
                    foreach ($campus as $c) {
                        if ($sub_data->campus_code == $c->campus_code) {
                            $selected = 'selected="selected"';
                        } else {
                            $selected = '';
                        }
                        ?>
                        <option value="<?= $c->campus_code ?>" <?= $selected ?> ><?= $c->campus_name ?></option>
                    <?php } ?>
                </select>
            </div>
            <div class="form-group">
                <label class="d-block" style="font-weight: bold">Registered By</label>
                <input type="text" class="form-control input-width" disabled=""
                       value="<?= $sub_data->registered_by ?>"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <?php
                if ($sub_data->sub_stat_dormancy === 'E') {
                    $perf = '<span class="badge badge-success">Excellent</span>';
                } elseif ($sub_data->sub_stat_dormancy === 'G') {
                    $perf = '<span class="badge badge-primary">Good</span>';
                } elseif ($sub_data->sub_stat_dormancy === 'N') {
                    $perf = '<span class="badge badge-warning">Normal</span>';
                } elseif ($sub_data->sub_stat_dormancy === 'D') {
                    $perf = '<span class="badge badge-danger">Dormant</span>';
                }
                ?>
                <label class="d-block" style="font-weight: bold">Performance</label>

                <p class="mg-t-20"><?= $perf ?></p>
            </div>
            <div class="form-group mg-t-20">
                <label class="d-block" style="font-weight: bold">Record Status</label>
                <input type="text" class="form-control input-width" disabled="" value="<?php
                if ($sub_data->record_stat == 'OPEN') {
                    echo 'Active';
                } elseif ($sub_data->record_stat == 'CLOSED') {
                    echo 'Inactive';
                } elseif ($sub_data->record_stat == 'SUSPENDED') {
                    echo 'Suspended';
                }
                ?>"
                    />
            </div>
            <?php if ($sub_data->record_stat != 'OPEN') { ?>
                <div class="form-group">
                    <label class="d-block"><strong>Comments</strong></label>
                    <textarea class="form-control" rows="6" disabled="disabled"><?= $sub_data->comments ?></textarea>
                </div>
            <?php } ?>
            <div class="form-group">
                <label class="d-block" style="font-weight: bold">Mob. Recharge Limit <span
                        class="tx-danger">*</span></label>
                <input type="number" class="form-control input-width" name="recharge_limit"
                       value="<?= $sub_data->recharge_limit ?>" max="500000" required="required"/>
            </div>
            <div class="form-group">
                <label class="d-block" style="font-weight: bold">ecoMeal Balance</label>
                <input type="number" class="form-control input-width" name="recharge_limit"
                       value="<?= number_format($sub_data->ecomeal_balance, 2) ?>" disabled/>
            </div>
        </div>
    </div>
</div>
<!-- Services details tab end -->
</form>
<!-- Data tab start -->
<div class="tab-pane fade" id="contact4" role="tabpanel" aria-labelledby="contact-tab4">
    <div class="row">
        <div class="col-md-4 col-xs-12">
            <form class="form-horizontal" method='POST' action='<?= base_url('subscribers/accountStatdateFrom') ?>'>
                <h6 class="card-title" style="font-weight: bold">Customer Statement</h6>
                <input type="hidden" name="sub_id" value="<?= $sub_id ?>"/>

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
            <h6 class="card-title" style="font-weight: bold">Last ten topups</h6>
            <table class="table table-bordered" style="font-size: 10px">
                <thead class="thead-light">
                <tr>
                    <th style="font-weight: bold">Trn Ref No.</th>
                    <th style="font-weight: bold">Card No.</th>
                    <th style="font-weight: bold">Amount</th>
                    <th style="font-weight: bold">Date</th>
                    <th style="font-weight: bold">POS</th>
                    <th style="font-weight: bold">Category</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($topup as $t) { ?>
                    <tr>
                        <td><?= $t->trn_ref_no ?></td>
                        <td><?= $t->card_no ?></td>
                        <td style="text-align: right;"><?= number_format($t->amount, 2) ?></td>
                        <td><?= date('d-M-Y', strtotime($t->trn_date)) ?></td>
                        <td><?= $t->pos ?></td>
                        <td><?= $t->category ?></td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- Data tab end -->
<div class="tab-pane fade" id="comm4" role="tabpanel" aria-labelledby="comm-tab4">
    <div class="col-md-12 col-xs-12 table-responsive">
        <h6 class="card-title" style="font-weight: bold">Last ten messages</h6>
        <table class="table table-bordered" style="font-size: 10px">
            <thead class="thead-light">
            <tr>
                <th style="font-weight: bold; width: 12%;">Date</th>
                <th style="font-weight: bold; width: 10%;">Mobile</th>
                <th style="font-weight: bold">Messages</th>
                <th style="font-weight: bold; width: 10%;">Sender</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($ten_sms as $sms) { ?>
                <tr>
                    <td><?= date('d-M-y H:i', strtotime($sms->date_registered)) ?></td>
                    <td><?= $sms->receiver ?></td>
                    <td><?= $sms->message ?></td>
                    <td><?= $sms->maker_id ?></td>
                </tr>
            <?php } ?>
            </tbody>
        </table>
    </div>
</div>
<!-- Card Renewal -->
<div class="tab-pane fade" id="card" role="tabpanel" aria-labelledby="card-tab">
    <!-- Error/Success alerts <div> Start-->
    <div id="renewal-message" style="display: none;">

    </div>
    <!-- Error/Success alerts <div> End -->
    <!-- Loading gif -->
    <div class="form-group row" id="loadgif-renewal" style="display: none;">
        <img style="margin-left: 45%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
    </div>
    <!-- Loading gif -->
    <form>
        <div class="form-row">
            <input type="hidden" name="renewal_sub_id" id="renewal_sub_id" value="<?= $sub_id ?>">

            <div class="form-group col-md-4">
                <label><strong>Old Card</strong></label>
                <input type="text" disabled="" class="form-control" name="renewal_old_card" id="renewal_old_card"
                       value="<?= $sub_data->card_no ?>" autocomplete="off"/>
            </div>
            <div class="form-group col-md-4">
                <label><strong>New Card <span class="tx-danger">*</span></strong></label>
                <input type="text" class="form-control" name="renewal_new_card" id="renewal_new_card"
                       placeholder="eg. 1350004447744" autocomplete="off">
            </div>
            <div class="form-group col-md-4">
                <label><strong>Cashier <span class="tx-danger">*</span></strong></label>
                <select class="custom-select select2" name="renewal_cashier" id="renewal_cashier" style="width: 100%"
                        autocomplete="off">
                    <option value="">Select</option>
                    <?php foreach ($cashiers as $c) { ?>
                        <option
                            value="<?= $c->username ?>"> <?= $c->full_name . ' [ Card Balance ' . $c->card_balance . ' ]' ?> </option>
                    <?php } ?>
                </select>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label><strong>Card Renewal Plan <span class="tx-danger">*</span></strong></label>
                <select class="custom-select select2" name="renewal_plan" id="renewal_plan" style="width: 100%"
                        autocomplete="off">
                    <option value="">Select</option>
                    <option value="Paid">Paid</option>
                    <option value="Free">Free</option>
                </select>
            </div>
            <div class="form-group col-md-4">
                <label><strong>Fee Amount</strong></label>
                <input type="number" min="500" class="form-control" name="renewal_fee" id="renewal_fee"
                       placeholder="required for paid plan" style="min-height: 37px;" autocomplete="off">
            </div>
            <div class="form-group col-md-4">
                <label><strong>Reason <span class="tx-danger">*</span></strong></label>
                <select class="custom-select select2" name="renewal_reason" id="renewal_reason" style="width: 100%"
                        autocomplete="off">
                    <option value="">Select</option>
                    <?php foreach ($cards_renewal_reason as $cr) { ?>
                        <option value="<?= $cr->id ?>"><?= $cr->reason ?></option>
                    <?php } ?>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label><strong>Description <span class="tx-danger">*</span></strong></label>
            <textarea class="form-control" rows="4" name="renewal_desc" id="renewal_desc"></textarea>
        </div>
        <button type="reset" class="btn btn-dark mg-t-10">Reset</button>
        <?php if (!empty($this->session->userdata('sub_edit'))) { ?>
            <button type="submit" class="btn btn-info pull-right mg-t-10" id="btn-renewal">Submit</button>
        <?php } ?>
    </form>
</div>
<!-- Card Renewal End -->
<!-- Payments tab start here -->
<div class="tab-pane fade" id="payment" role="tabpanel" aria-labelledby="payment-tab">
    <table id="eco-table" class="table table-striped table-bordered" width="100%">
        <thead class="thead-dark">
        <tr>
            <th>Eco Ref.</th>
            <th>Mob. Ref.</th>
            <th>Operator</th>
            <th>Mobile</th>
            <th>Amount</th>
            <th>Status</th>
            <!--<th>Channel</th>-->
            <th>Maker</th>
            <th>Rev.</th>
            <th>Val.</th>
            <th style="width: 13%">Timestamp</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($payments as $p) { ?>
            <tr>
                <td><?= $p->eco_ref ?></td>
                <td><?= $p->transid_operator ?></td>
                <td><?= $p->operator ?></td>
                <td><?= $p->msisdn ?></td>
                <td style="text-align: right"><?= number_format($p->amount, 2) ?></td>
                <td>
                    <?php if ($p->v_desc != 'Success') {
                        echo $p->v_desc;
                    } elseif ($p->n_desc == '') {
                        echo 'Trn Failed';
                    } else {
                        echo $p->n_desc;
                    } ?>
                </td>
                <!--<td><?/*= $p->channel_id */?></td>-->
                <td><?= $p->maker_id ?></td>
                <td style="text-align: center"><?= $p->reversed ?></td>
                <td style="text-align: center"><?php if (empty($p->val_comm_ref)) {
                        echo 'N';
                    } else {
                        echo 'Y';
                    } ?></td>
                <td style="width: 15%; text-align: right"><?= date('d/m/Y H:i:s', strtotime($p->timestamp_selcom)) ?></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
</div>
<!-- Payments tab end here -->
<!-- Validation tab start here -->
<div class="tab-pane fade" id="validation" role="tabpanel" aria-labelledby="validation-tab">
    <table id="eco-table2" class="table table-striped table-bordered" width="100%">
        <thead class="thead-secondary">
        <tr>
            <th>Card</th>
            <th style="width: 15%">Station</th>
            <th>Curr Bal</th>
            <th>Recharge</th>
            <th>New Bal</th>
            <th>Last ID</th>
            <th>Next ID</th>
            <th>Status</th>
            <th style="width: 15%">Timestamp</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($validations as $v) { ?>
            <tr>
                <td><?= $v->card_no ?></td>
                <td style="width: 15%"><?= $v->station_name ?></td>
                <td style="text-align: right"><?= number_format($v->curr_bal, 2) ?></td>
                <td style="text-align: right"><?= number_format($v->recharge, 2) ?></td>
                <td style="text-align: right"><?= number_format($v->new_bal, 2) ?></td>
                <td style="text-align: center"><?= $v->last_payment_id ?></td>
                <td style="text-align: center"><?= $v->next_payment_id ?></td>
                <td><?= str_replace(' ', '_', $v->req_desc) ?></td>
                <td style="width: 15%; text-align: right"><?= date('d/m/Y H:i:s', strtotime($v->date_registered)) ?></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
</div>
<!-- Validation tab end here -->
</div>
</div><!-- media-body -->
</div>
</div>
</div>
</div>
</div>
<!--START TOPUP MODAL-->
<form data-parsley-validate>
    <div class="modal fade" id="Modal_Edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
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
                    <input type="hidden" name="sub_id_topup" id="sub_id_topup"/>

                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Full Name</label>

                        <div class="col-md-8">
                            <input type="text" name="sub_name_topup" id="sub_name_topup" class="form-control input-sm"
                                   placeholder="Subscriber Name" disabled autocomplete="off"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Card Number</label>

                        <div class="col-md-8">
                            <input type="text" name="card_no_topup" id="card_no_topup" class="form-control input-sm"
                                   placeholder="Card No." disabled autocomplete="off"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Amount <span class="tx-danger">*</span></label>

                        <div class="col-md-8">
                            <input type="text" name="money" id="money" class="form-control input-sm money"
                                   autocomplete="off" required="required"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Category <span class="tx-danger">*</span></label>

                        <div class="col-md-8">
                            <select class="form-control input-sm" name="category_topup" id="category_topup"
                                    autocomplete="off" required="required">
                                <option value="">--Select--</option>
                                <?php foreach ($topup_cat as $t) { ?>
                                    <option value="<?= $t->category ?>"><?= $t->category ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">POS <span class="tx-danger">*</span></label>

                        <div class="col-md-8">
                            <select class="form-control" name="pos_topup" id="pos_topup" style="width: 100%"
                                    autocomplete="off" required="required">
                                <option value="">--Select--</option>
                                <?php foreach ($pos as $p) { ?>
                                    <option
                                        value="<?= $p->pos_name ?>"><?= $p->pos_name . ' - ', $p->campus_name ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">Trn Date</label>

                        <div class="col-md-8">
                            <input type="text" name="trn_date_topup" id="trn_date_topup"
                                   placeholder="Default today if left blank" class="form-control input-sm trn_date"
                                   data-date-end-date='0d' autocomplete="off" readonly/>
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
                        <label class="col-md-2 col-form-label">Card No.</label>

                        <div class="col-md-10">
                            <input type="text" name="card_no_sms" id="card_no_sms" class="form-control input-sm"
                                   placeholder="Card No." disabled autocomplete="off"/>
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

<!--EMAIL MODAL START-->
<form>
    <div class="modal fade" id="Modal_Mail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Email Subscriber</h5>
                </div>
                <div class="modal-body">
                    <!-- Error alerts -->
                    <div id="email-error-1" style="display: none" class="alert alert-danger fade show" role="alert">
                        Error! Please fill all mandatory fields.
                    </div>
                    <div id="email-success" style="display: none" class="alert alert-success fade show" role="alert">
                        Email sent successfully
                    </div>
                    <!-- Error alerts -->
                    <div class="form-group row" id="loadgif_mail" style="display: none">
                        <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                    </div>
                    <input type="hidden" name="sub_id_mail" id="sub_id_mail"/>

                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Full Name</label>

                        <div class="col-md-4">
                            <input type="text" name="sub_name_mail" id="sub_name_mail" class="form-control input-sm"
                                   placeholder="Subscriber Name" disabled autocomplete="off"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Card No.</label>

                        <div class="col-md-4">
                            <input type="text" name="card_no_mail" id="card_no_mail" class="form-control input-sm"
                                   placeholder="Card No." readonly="readonly" autocomplete="off"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">eMail ID</label>

                        <div class="col-md-4">
                            <input type="text" name="email_mail" id="email_mail" class="form-control input-sm"
                                   autocomplete="off" disabled/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Email Subject <span class="tx-danger">*</span></label>

                        <div class="col-md-10">
                            <input type="text" name="subject_mail" id="subject_mail" class="form-control input-sm"
                                   autocomplete="off" required="required"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Message <span class="tx-danger">*</span></label>

                        <div class="col-md-10">
                            <textarea class="textarea" name="message_mail" id="message_mail" placeholder="Message..."
                                      style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"
                                      required="required"></textarea>

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary pull-left" data-dismiss="modal">Close</button>
                    <button type="button" type="submit" id="btn_mail" class="btn btn-secondary">Send</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!--EMAIL MODAL END-->
<!-- Delete subscriber START -->
<div id="deleteSubModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="POST" action="<?= base_url('subscribers/deleteSubscriber/'); ?>">
                <div class="modal-header">
                    <h4 class="modal-title">Delete Subscriber</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="ency_sub_id" value="<?= $ency_sub_id ?>">
                    <h5>Are you sure you want to delete this subscriber?</h5>
                    <h6>All subscriber details including topup history will be deleted and cannot be recovered</h6>
                    <input type="hidden" name="sid" value="<?= $sub_id ?>"/>
                    <input type="hidden" name="ency_sub_id" value="<?= $ency_sub_id ?>"/>
                </div>
                <div class="modal-footer">
                    <button type="reset" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-danger">Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Start subscriber END -->
<!-- Deactivate subscriber START -->
<div id="deactivateSubModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="POST" action="<?= base_url('subscribers/deactivateSub/'); ?>" class="form-horizontal"
                  data-parsley-validate>
                <div class="modal-header">
                    <h4 class="modal-title">Deactivate Subscriber</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="ency_sub_id" value="<?= $ency_sub_id ?>"/>

                    <div class="form-group">
                        <div class="row">
                            <label class="col-md-3 d-block">Status <span class="tx-danger">*</span></label>

                            <div class="col-md-6">
                                <select id="inactive" class="form-control input-sm" name="status" autocomplete="off"
                                        required="required">
                                    <option value="">--Select--</option>
                                    <option value="CLOSED">CLOSE</option>
                                    <option value="SUSPENDED">SUSPEND</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group" id="close" style="display: none">
                        <div class="row">
                            <label class="col-md-3 d-block">Comments <span class="tx-danger">*</span></label>

                            <div class="col-md-6">
                                <select class="form-control input-sm" name="comments_close" autocomplete="off">
                                    <?php
                                    foreach ($inactive_stat as $close) {
                                        if ($close->record_stat === 'CLOSED') {
                                            ?>
                                            <option value="<?= $close->name ?>"><?= $close->name ?></option>
                                        <?php
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group" id="susp" style="display: none">
                        <div class="row">
                            <label class="col-md-3 d-block">Comments <span class="tx-danger">*</span></label>

                            <div class="col-md-6">
                                <select class="form-control input-sm" name="comments_susp" autocomplete="off">
                                    <?php
                                    foreach ($inactive_stat as $susp) {
                                        if ($susp->record_stat === 'SUSPENDED') {
                                            ?>
                                            <option value="<?= $susp->name ?>"><?= $susp->name ?></option>
                                        <?php
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="sid" value="<?= $sub_id ?>"/>
                </div>
                <div class="modal-footer">
                    <button type="reset" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-warning">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Deactivate subscriber END -->
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

<script>
    $('#payment').DataTable({
        language: {
            searchPlaceholder: 'Search...',
            sSearch: '',
            lengthMenu: '_MENU_ items/page'
        }
    });
</script>