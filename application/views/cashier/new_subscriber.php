<script src='<?= base_url("assets/js/jquery.mask.min.js") ?>'></script>
<?php
if ($this->session->flashdata('success'))
    $success = $this->session->flashdata('success');
if ($this->session->flashdata('error'))
    $error = $this->session->flashdata('error');
// cashier float balance
$float_balance = $this->session->userdata('cashier_current_float') - $this->session->userdata('cashier_used_float');
$div = $this->session->userdata('cashier_current_float');
if ($this->session->userdata('cashier_current_float') == 0) {
    $div = 1;
}
$per_float_remain = $float_balance / $div;
$message = "Your current float balance is Tsh " . number_format($float_balance, 2);
if ($per_float_remain == 0) {
    $alert = 'danger';
    $message = "Your current float balance is Tsh 0.00 You can only add SPECIAL OFFER recharges";
} elseif ($per_float_remain <= 0.3) {
    $alert = 'warning';
} else {
    $alert = 'info';
}
?>
<div class="row">
    <div class="col-md-12">
        <?php if (validation_errors()): ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                <?= validation_errors(); ?>
            </div>
        <?php endif; ?>
        <?php if (!empty($success)) { ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                <?= $success ?>
            </div>
        <?php } ?>
        <div class="card">
            <!--   Form redirect to cashier/newSubscriber-->
            <form method="POST"
                  action="<?= base_url('0e440098a33575c32246132ec2395e56ee43da01b539d2135760c9a6e02bfeed') ?>">
                <div class="card-body">
                    <input type="hidden" name="cashier_id" value="<?= $this->session->userdata('cashier_id') ?>"/>

                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Mobile: <span
                                    class="tx-danger">*</span></strong></label>
                        <input id="mobile" class="form-control" name="mobile" placeholder="mobile" type="number" min="1"
                               value="<?= set_value('mobile'); ?>" autocomplete="off" required>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Full name: <span
                                    class="tx-danger">*</span></strong></label>
                        <input id="fullname" class="form-control" name="sub_name" placeholder="full name" type="text"
                               value="<?= set_value('sub_name'); ?>" autocomplete="off" required>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Gender: <span
                                    class="tx-danger">*</span></strong></label>

                        <div class="custom-control custom-radio">
                            <input type="radio" name="gender" value="M" id="customRadio1" class="custom-control-input"
                                   checked>
                            <label class="custom-control-label" for="customRadio1">Male</label>
                        </div>
                        <div class="custom-control custom-radio" style="padding-top: 10px;">
                            <input type="radio" id="customRadio2" name="gender" value="F" class="custom-control-input">
                            <label class="custom-control-label" for="customRadio2">Female</label>
                        </div>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Email:</strong></label>
                        <input id="email" class="form-control" name="email" placeholder="optional email" type="email"
                               value="<?= set_value('email'); ?>" autocomplete="off">
                    </div>
                    <!--            <div class="col-md-12 mg-t-20 mg-md-t-10">
                                      <label class="form-control-label"><strong>Registartion Date: <span class="tx-danger">*</span></strong></label>
                                      <input id="datepicker3" class="form-control" name="sub_registration_date" placeholder="registration date" type="date" value="<?= set_value('sub_registration_date'); ?>" autocomplete="off" required>
                                </div>-->

                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Card No: <span
                                    class="tx-danger">*</span></strong></label>

                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" style="font-size: 1em;">135000</span>
                            </div>
                            <input type="text" name="card_no" class="form-control"
                                   placeholder="Exclude first 6 digits eg. 0923042" maxlength="7"
                                   value="<?= set_value('card_no'); ?>" autocomplete="off" required>
                        </div>
                    </div>


                    <!--            <div class="col-md-12 mg-t-20 mg-md-t-10">
                                    <label class="form-control-label"><strong>Card No: <span class="tx-danger">*</span></strong></label>
                                    <input id="card_no" class="form-control" name="card_no" placeholder="eg. 1350009230483" type="number" min="1" maxlength="13" value="<?= set_value('card_no'); ?>" autocomplete="off" required>
                                </div>-->
                    <!-- Status hardcoded -->
                    <input type="hidden" name="record_stat" id="record_stat" value="OPEN">
                    <!-- Status hardcoded -->
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Campus: <span
                                    class="tx-danger"> *</span></strong></label>
                        <input type="hidden" value="<?= $this->session->userdata('cashier_campus_code') ?>"
                               name="campus_code"/>
                        <input type="text" value="<?= $this->session->userdata('cashier_campus_name') ?>"
                               class="form-control" disabled="disabled"/>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Subscription Plan: <span
                                    class="tx-danger">*</span></strong></label>
                        <select class="custom-select" name="subscription_type" id="subscription_type" autocomplete="off"
                                required="required" id="subscription_type">
                            <option value="" selected>--Select--</option>
                            <option value="Fee" <?= set_select('subscription_type', 'Fee'); ?> >Paid Plan</option>
                            <option value="Free" <?= set_select('subscription_type', 'Free'); ?> >Free Plan</option>
                        </select>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10" id="free" style="display:none">
                        <label class="form-control-label">Free Promo Code: <span class="tx-danger">*</span></label>
                        <input type="text" class="form-control" name="free_promo_code"
                               value="<?= set_value('free_promo_code'); ?>" autocomplete="off"/>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Sub Category: <span
                                    class="tx-danger">*</span></strong></label>
                        <select class="custom-select" name="category" id="sub_cat" autocomplete="off"
                                required="required">
                            <option value="">--Select--</option>
                            <?php foreach ($sub_cat as $c) { ?>
                                <option
                                    value="<?= $c->category ?>" <?= set_select('category', $c->category); ?> ><?= $c->category ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10" id="hsize" style="display: none">
                        <label class="form-control-label"><strong>Household Size: <span
                                    class="tx-danger">*</span></strong></label>
                        <input type="number" min="1" class="form-control" name="household_size"
                               value="<?= set_value('household_size'); ?>" autocomplete="off" placeholder="eg. 5"/>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10" id="street" style="display: none">
                        <label class="form-control-label"><strong>Street: <span
                                    class="tx-danger">*</span></strong></label>
                        <select class="custom-select select2" name="street" style="width: 100%" autocomplete="off">
                            <option value="">--Select--</option>
                            <?php foreach ($streets as $s) { ?>
                                <option
                                    value="<?= $s->id ?>" <?= set_select('street', $s->id); ?> ><?= $s->street_name ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10" id="course" style="display: none">
                        <label class="form-control-label"><strong>Course Name:</strong></label>
                        <select class="custom-select" name="course" style="width: 100%" autocomplete="off">
                            <option value="" selected>--Select--</option>
                            <?php foreach ($courses as $s) { ?>
                                <option
                                    value="<?= $s->course_name ?>" <?= set_select('course', $s->course_name); ?> ><?= $s->course_name ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10" id="curr_course_year" style="display: none">
                        <label class="form-control-label"><strong>Curr. Year of Study:</strong></label>
                        <select class="custom-select" name="curr_course_year" autocomplete="off">
                            <option value="">--Select--</option>
                            <option value="1" <?= set_select('curr_course_year', '1'); ?> >1</option>
                            <option value="2" <?= set_select('curr_course_year', '2') ?> >2</option>
                            <option value="3" <?= set_select('curr_course_year', '3') ?> >3</option>
                            <option value="4" <?= set_select('curr_course_year', '4') ?> >4</option>
                            <option value="5" <?= set_select('curr_course_year', '5') ?> >5</option>
                        </select>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10" id="total_course_years" style="display: none">
                        <label class="form-control-label"><strong>Total Course Years:</strong></label>
                        <select class="custom-select" name="total_course_years" autocomplete="off">
                            <option value="">--Select--</option>
                            <option value="5" <?= set_select('total_course_years', '5') ?> >5</option>
                            <option value="4" <?= set_select('total_course_years', '4') ?> >4</option>
                            <option value="3" <?= set_select('total_course_years', '3') ?> >3</option>
                            <option value="2" <?= set_select('total_course_years', '2') ?> >2</option>
                            <option value="1" <?= set_select('total_course_years', '1') ?> >1</option>
                        </select>
                    </div>

                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>ID Type: </strong></label>
                        <select class="custom-select" name="id_type" id="id_type" autocomplete="off">
                            <option value="6">--Select--</option>
                            <?php foreach ($id_types as $i) { ?>
                                <option
                                    value="<?= $i->id ?>" <?= set_select('id_type', $i->id); ?> ><?= $i->name ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>ID Number:</strong></label>
                        <input id="id_number" class="form-control" name="id_number" placeholder="ID number" type="text"
                               value="<?= set_value('id_number'); ?>" autocomplete="off"/>
                    </div>
                    <br/>

                    <div class="col-md-12">
                        <div class="alert alert-<?= $alert ?> alert-dismissible fade show" role="alert">
                            <?= $message ?>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                        </div>
                    </div>



                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Initial Recharge Amount1:</strong></label>
                        <input type="hidden" name="current_float" value="<? $cashier->current_float ?>"/>
                        <input type="hidden" name="used_float" value="<? $cashier->used_float ?>"/>
                        <!-- <input type="number" min="50" class="form-control" name="amount" id="money" value="<?= set_value('amount'); ?>" autocomplete="off" placeholder="optional"/> -->
                        <input type="text" class="form-control input-sm money" name="amount" id="amount"
                               value="<?= set_value('amount'); ?>" autocomplete="off"/>
                    </div>





                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Category:</strong></label>
                        <select class="form-control select2" style="width: 100%" name="topup_category">
                            <option value="">--Select--</option>
                            <?php foreach ($topup_cat as $t) {
                                $disabled = '';
                                if ($cashier->offer == 'N' && $t->category == 'SPECIAL_OFFER') {
                                    $disabled = "disabled";
                                }
                                if ($cashier->recharge == 'N' && $t->category == 'RECHARGE') {
                                    $disabled = "disabled";
                                }
                                ?>
                                <option
                                    value="<?= $t->category ?>" <?= set_select('topup_category', $t->category); ?> <?= $disabled ?> ><?= $t->category ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>POS:</strong></label>
                        <input type="hidden" value="<?= $this->session->userdata('cashier_pos_name') ?>"
                               name="topup_pos"/>
                        <input type="text" value="<?= $this->session->userdata('cashier_pos_name') ?>"
                               class="form-control" disabled="disabled"/>
                    </div>

                </div>
                <div class="card-footer mg-t-20">
                    <button class="btn btn-secondary" type="reset">Reset</button>
                    <button class="btn btn-info pull-right" type="submit">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>

    $('.money').mask("#,##0", {reverse: true});

    $(document).ready(function () {
        $('#sub_cat').on('change', function () {
            var subcat = $(this).val();
            if (subcat === 'HOUSEHOLD') {
                $("#course").hide();
                $("#curr_course_year").hide();
                $("#total_course_years").hide();
                $("#hsize").slideDown();
                $("#street").slideDown();
            } else if (subcat === 'RESIDENT') {
                $("#hsize").hide();
                $("#course").hide();
                $("#curr_course_year").hide();
                $("#total_course_years").hide();
                $("#street").slideDown();
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

        $('#subscription_type').on('change', function () {
            var subtype = $(this).val();
            if (subtype === 'Fee') {
                $("#fee").slideDown();
                $("#free").hide();
            } else if (subtype === 'Free') {
                $("#fee").hide();
                $("#free").slideDown();
            }
        });
    });
</script>
<script>
    $(function () {
        // Basic with search
        $('.select2').select2({
            placeholder: 'Select',
            searchInputPlaceholder: 'Search options'
        });
    });
</script>