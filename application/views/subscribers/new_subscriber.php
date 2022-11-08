<?php
if ($this->session->flashdata('success'))
    $success = $this->session->flashdata('success');
if ($this->session->flashdata('error'))
    $error = $this->session->flashdata('error');
?>
<div class="tx-13 mg-b-25">
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
    <form action="<?= base_url('subscribers/newSubscriber') ?>" method="POST">
        <div id="wizard2">
            <h3>Personal Information</h3>
            <section>
                <div class="row row-sm">
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Mobile: <span class="tx-danger">*</span></label>
                        <input id="mobile" class="form-control" name="mobile" placeholder="mobile" type="number" min="1" minlength="12" maxlength="12" value="<?= set_value('mobile'); ?>" autocomplete="off" required>
                    </div><!-- col -->
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Full name: <span class="tx-danger">*</span></label>
                        <input id="fullname" class="form-control" name="sub_name" placeholder="full name" type="text" value="<?= set_value('sub_name'); ?>" autocomplete="off" required>
                    </div><!-- col -->
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Gender: <span class="tx-danger">*</span></label>
                        <div class="custom-control custom-radio">
                            <input type="radio" name="gender" value="M" id="customRadio1" class="custom-control-input" checked>
                            <label class="custom-control-label" for="customRadio1">Male</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id="customRadio2" name="gender" value="F" class="custom-control-input">
                            <label class="custom-control-label" for="customRadio2">Female</label>
                        </div>
                    </div><!-- col -->
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Email:</label>
                        <input id="email" class="form-control" name="email" placeholder="optional email" type="email" value="<?= set_value('email'); ?>" autocomplete="off">
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Registartion Date: <span class="tx-danger">*</span></label>
                        <input id="datepicker3" class="form-control" name="sub_registration_date" placeholder="registration date" type="text" value="<?= set_value('sub_registration_date'); ?>" readonly="readonly" autocomplete="off" required>

                    </div>
                </div><!-- row -->
            </section>
            <h3>campus</h3>
            <section>
                <div class="row row-sm">
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Card No: <span class="tx-danger">*</span></label>
                        <!--    <div class="parsley-select">
                            <select  class="custom-select select2" name="card_no" id="card_no" autocomplete="off" style="width: 100%" required="required">
                                      <option value="" selected>--Select--</option>
                        <?php foreach ($cards as $c) { ?>
                                                         <option value="<?= $c->card_no ?>" <?= set_select('card_no', $c->card_no); ?> ><?= $c->card_no ?></option> 
                        <?php } ?>
                                  </select>
                              </div> 
                        -->
                        <input id="card_no" class="form-control" name="card_no" placeholder="eg. 1350009230483" type="number" min="1" maxlength="13" value="<?= set_value('card_no'); ?>" autocomplete="off" required>
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Subscriber Stat: <span class="tx-danger">*</span></label>
                        <div class="parsley-select">
                            <select  class="custom-select" name="record_stat" id="record_stat" autocomplete="off" required="required">
                                <option value="" selected>--Select--</option>
                                <option value="OPEN" <?= set_select('record_stat', 'OPEN'); ?> >Open</option>
                                <option value="CLOSED" <?= set_select('record_stat', 'CLOSED'); ?> disabled="disabled" >Closed</option>
                                <option value="SUSPENDED" <?= set_select('record_stat', 'SUSPENDED'); ?> disabled="disabled" >Suspended</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Campus: <span class="tx-danger">*</span></label>
                        <select  class="custom-select select2" name="campus_code" id="campus_code" style="width: 100%" autocomplete="off" required="required">
                            <option value="" selected>--Select--</option>
                            <?php foreach ($campus as $c) { ?>
                                <option value="<?= $c->campus_code ?>" <?= set_select('campus_code', $c->campus_code); ?> ><?= $c->campus_name ?></option> 
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Subscription Plan: <span class="tx-danger">*</span></label>
                        <select  class="custom-select" name="subscription_type" id="subscription_type" autocomplete="off" required="required" id="subscription_type">
                            <option value="" selected>--Select--</option>
                            <option value="Fee" <?= set_select('subscription_type', 'Fee'); ?> >Paid Plan</option>
                            <option value="Free" <?= set_select('subscription_type', 'Free'); ?> >Free Plan</option>
                        </select>
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10" id="free" style="display:none">
                        <label class="form-control-label">Free Promo Code: <span class="tx-danger">*</span></label>
                        <input type="text" class="form-control" name="free_promo_code" value="<?= set_value('free_promo_code'); ?>" autocomplete="off"/>
                    </div>
                </div>
            </section>
            <h3>Category</h3>
            <section>
                <div class="row row-sm">
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Sub Category: <span class="tx-danger">*</span></label>
                        <select  class="custom-select" name="category" id="sub_cat" autocomplete="off" required="required">
                            <option value="">--Select--</option>
                            <?php foreach ($sub_cat as $c) { ?>
                                <option value="<?= $c->category ?>" <?= set_select('category', $c->category); ?> ><?= $c->category ?></option> 
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10" id="hsize" style="display: none">
                        <label class="form-control-label">Household Size: <span class="tx-danger">*</span></label>
                        <input type="number" min="1" class="form-control" name="household_size" value="<?= set_value('household_size'); ?>" autocomplete="off" placeholder="eg. 5"/>
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10" id="street" style="display: none">
                        <label class="form-control-label">Street: <span class="tx-danger">*</span></label>
                        <select  class="custom-select select2" name="street" style="width: 100%" autocomplete="off">
                            <option value="">--Select--</option>
                            <?php foreach ($streets as $s) { ?>
                                <option value="<?= $s->id ?>" <?= set_select('street', $s->id); ?> ><?= $s->street_name ?></option> 
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10" id="course" style="display: none">
                        <label class="form-control-label">Course Name:</label>
                        <select  class="custom-select select2" name="course" style="width: 100%" autocomplete="off">
                            <option value="" selected>--Select--</option>
                            <?php foreach ($courses as $s) { ?>
                                <option value="<?= $s->course_name ?>" <?= set_select('course', $s->course_name); ?> ><?= $s->course_name ?></option> 
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10" id="curr_course_year" style="display: none">
                        <label class="form-control-label">Curr. Year of Study:</label>
                        <select class="custom-select" name="curr_course_year" autocomplete="off">
                            <option value="">--Select--</option>
                            <option value="1" <?= set_select('curr_course_year', '1'); ?> >1</option>
                            <option value="2" <?= set_select('curr_course_year', '2') ?> >2</option>
                            <option value="3" <?= set_select('curr_course_year', '3') ?> >3</option>
                            <option value="4" <?= set_select('curr_course_year', '4') ?> >4</option>
                            <option value="5" <?= set_select('curr_course_year', '5') ?> >5</option>
                        </select>
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10" id="total_course_years" style="display: none">
                        <label class="form-control-label">Total Course Years:</label>
                        <select  class="custom-select" name="total_course_years" autocomplete="off">
                            <option value="">--Select--</option>
                            <option value="5" <?= set_select('total_course_years', '5') ?> >5</option>
                            <option value="4" <?= set_select('total_course_years', '4') ?> >4</option>
                            <option value="3" <?= set_select('total_course_years', '3') ?> >3</option>
                            <option value="2" <?= set_select('total_course_years', '2') ?> >2</option>
                            <option value="1" <?= set_select('total_course_years', '1') ?> >1</option>
                        </select>
                    </div>
                </div>
            </section>
            <h3>Initial Topup</h3>
            <section>
                <div class="row row-sm">
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Amount:</label>
                        <input type="number" min="50" class="form-control" name="amount" id="money" value="<?= set_value('amount'); ?>" autocomplete="off" placeholder="Optional"/> 
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Category:</label>
                        <select  class="custom-select" name="topup_category">
                            <option value="">--Select--</option>
                            <?php foreach ($topup_cat as $t) { ?>
                                <option value="<?=$t->category?>" ><?= $t->category ?></option>
                            <?php } ?>
                        </select> 
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">POS:</label>
                        <select class="custom-select" name="topup_pos">
                            <option value="">--Select--</option>
                            <?php foreach ($pos as $p) { ?>
                                <option value="<?= $p->pos_name ?>" ><?= $p->pos_name . ' - ', $p->campus_name ?></option> 
                            <?php } ?>
                        </select>
                    </div>
                </div>
            </section>
            <h3>Finish</h3>
            <section>
                <div class="alert alert-warning" role="alert">
                    Before you click submit, please check if all fields have correct data.
                </div>
                <div class="row row-sm"> 
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <button type="submit" class="btn btn-lg btn-success rounded-pill">Submit</button>
                    </div>
                </div>
            </section>
        </div>
    </form>
</div>
<script src="<?= base_url('lib/parsleyjs/parsley.min.js') ?>"></script>
<script src="<?= base_url('lib/jquery-steps/build/jquery.steps.min.js') ?>"></script>
<script>
    $(function () {
        'use strict'

        $('#wizard2').steps({
            headerTag: 'h3',
            bodyTag: 'section',
            enableFinishButton: false,
            autoFocus: true,
            titleTemplate: '<span class="number">#index#</span> <span class="title">#title#</span>',
            onStepChanging: function (event, currentIndex, newIndex) {
                if (currentIndex < newIndex) {
                    // Step 1 form validation
                    if (currentIndex === 0) {
                        var fname = $('#mobile').parsley();
                        var lname = $('#fullname').parsley();
                        var datepicker3 = $('#datepicker3').parsley();

                        if (fname.isValid() && lname.isValid() && datepicker3.isValid) {
                            return true;
                        } else {
                            fname.validate();
                            lname.validate();
                            datepicker3.validate();
                        }
                    }

                    // Step 2 form validation
                    if (currentIndex === 1) {
                        var card_no = $('#card_no').parsley();
                        var record_stat = $('#record_stat').parsley();
                        var campus_code = $('#campus_code').parsley();
                        var subscription_type = $('#subscription_type').parsley();

                        if (card_no.isValid() && record_stat.isValid() && campus_code.isValid() && subscription_type.isValid()) {
                            return true;
                        } else {
                            card_no.validate();
                            record_stat.validate();
                            campus_code.validate();
                            subscription_type.validate();
                        }
                    }
                    // Step 3 form validation
                    if (currentIndex === 2) {
                        var sub_cat = $('#sub_cat').parsley();
                        if (sub_cat.isValid()) {
                            return true;
                        } else {
                            sub_cat.validate();
                        }
                    }
                    // Step 4 form validation
                    if (currentIndex === 3) {
                        return true;
                    }
                    // Always allow step back to the previous step even if the current step is not valid.
                } else {
                    return true;
                }
            }
        });

    });
</script>

<script>
    $(function () {
        'use strict'

        $('#datepicker3').datepicker({
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
    $(function () {
        'use strict'

        // Basic with search
        $('.select2').select2({
            placeholder: 'Choose one',
            searchInputPlaceholder: 'Search options'
        });

    });
</script>

<script>
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