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
    <form action="<?= base_url('Offgrid/new_offgrid_customers') ?>" method="POST">
        <div id="wizard2">
            <h3>Customers Information</h3>
            <section>
                <div class="row row-sm">
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Office Mobile: <span class="tx-danger">*</span></label>
                        <input id="mobile" class="form-control" name="phone_number" placeholder="phone_number" type="number" min="1" minlength="12" maxlength="12" value="<?= set_value('phone_number'); ?>" autocomplete="off" required>
                    </div><!-- col -->
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Mobile Phone: <span class="tx-danger"></span></label>
                        <input id="phone_number2" class="form-control" name="phone_number2" placeholder="mobile2" type="number" min="1" minlength="12" maxlength="12" value="<?= set_value('phone_number2'); ?>" autocomplete="off" >
                    </div><!-- col -->
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Customer Name: <span class="tx-danger">*</span></label>
                        <input id="customer_name" class="form-control" name="customer_name" placeholder="full name" type="text" value="<?= set_value('customer_name'); ?>" autocomplete="off" required>
                    </div><!-- col -->
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Tin : <span class="tx-danger"></span></label>
                        <input id="tin_Number" class="form-control" name="tin_Number" placeholder="Optional Tin " type="text" value="<?= set_value('tin_Number'); ?>" autocomplete="off" required>
                    </div><!-- col -->
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Street: <span class="tx-danger">*</span></label>
                        <input id="location" class="form-control" name="location" placeholder="Street" type="text" value="<?= set_value('location'); ?>" autocomplete="off" required>
                    </div><!-- col -->
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Region: <span class="tx-danger">*</span></label>
                        <select  class="custom-select" name="branch_id" id="branch_id" autocomplete="off" required="required">
                            <option value="">--Select--</option>
                            <?php foreach ($sub_cat as $c) { ?>
                                <option value="<?= $c->category ?>" <?= set_select('branch_id', $c->category); ?> ><?= $c->category ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Email:</label>
                        <input id="email" class="form-control" name="email" placeholder="optional email" type="email" value="<?= set_value('email'); ?>" autocomplete="off">
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Registartion Date: <span class="tx-danger">*</span></label>
                        <input id="datepicker3" class="form-control" name="sub_registration_date" placeholder="registration date" type="text" value="<?= set_value('registration_date'); ?>" readonly="readonly" autocomplete="off" required>
                    </div>
                    <div class="col-md-6 mg-t-20 mg-md-t-10">
                        <label class="form-control-label">Sub Category: <span class="tx-danger">*</span></label>
                        <select  class="custom-select" name="category_id" id="sub_cat" autocomplete="off" required="required">
                            <option value="">--Select--</option>
                            <?php foreach ($sub_cat as $c) { ?>
                                <option value="<?= $c->category ?>" <?= set_select('category_id', $c->category); ?> ><?= $c->category ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div><!-- row -->
            </section>


            <section>

                <div class="row row-sm">
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
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
                        var fname = $('#phone_number').parsley();
                        var lname = $('#customer_name').parsley();
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