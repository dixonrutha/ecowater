<form method="POST" action="<?= base_url('promotion/addnewpromotion') ?>">
<div class="row">
<?php
if (!empty(validation_errors())) {
    ?>
    <div class="col-md-12 mg-b-5">
        <div class="alert alert-danger" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
            <?= validation_errors(); ?>
        </div>
    </div>
<?php
}
?>
<?php
if (!empty($this->session->flashdata('success'))) {
    ?>
    <div class="col-md-12 mg-b-5">
        <div class="alert alert-success" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
            <?= $this->session->flashdata('success'); ?>
        </div>
    </div>
<?php
}
?>
<div class="col-md-4 mg-b-10">
    <div class="card">
        <div class="card-header tx-medium mg-b-0"><h5><span class=""></span> General Details</h5>
        </div>
        <div class="card-body">
            <div class="form-group row">
                <label class="col-md-4 col-form-label"><strong>Offer Name <span
                            class="tx-danger">*</span></strong></label>

                <div class="col-md-8">
                    <input type="text" class="form-control" placeholder="full name" name="offer_name"
                           autocomplete="off">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-md-4 col-form-label"><strong>Start Date <span
                            class="tx-danger">*</span></strong></label>

                <div class="col-md-8">
                    <input id="datepicker1" class="form-control" name="start_date" placeholder="start date"
                           type="text" value="<?= set_value('start_date'); ?>" readonly="readonly"
                           autocomplete="off" required>

                </div>
            </div>
            <div class="form-group row">
                <label class="col-md-4 col-form-label"><strong>End Date
                        <!--<span class="tx-danger">*</span>--></strong></label>

                <div class="col-md-8">
                    <input id="datepicker2" class="form-control" name="end_date" placeholder="End date"
                           type="text" value="<?= set_value('end_date'); ?>" readonly="readonly"
                           autocomplete="off" required>

                </div>
            </div>
            <div class="form-group row">
                <label class="col-md-4 col-form-label"><strong>Rate <span
                            class="tx-danger">*</span></strong></label>

                <div class="col-md-8">
                    <input class="form-control" placeholder="rate" name="rate" type="number"
                           autocomplete="off">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-md-4 col-form-label"><strong>Description
                        <!--<span class="tx-danger">*</span>--></strong></label>

                <div class="col-md-8">
                    <textarea name="description" class="form-control" rows="2" placeholder="Description"></textarea>
                </div>
            </div>

        </div>
    </div>
</div>
<div class="col-md-8">
    <div class="card">
        <div class="card-body">
            <ul class="nav nav-line" id="myTab5" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#campus" role="tab"
                       aria-selected="true"><strong>Campus</strong></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#category" role="tab"
                       aria-selected="false"><strong>Category</strong></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#recharge" role="tab"
                       aria-selected="false"><strong>Recharge</strong></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#performance" role="tab"
                       aria-selected="false"><strong>Performance</strong></a>
                </li>
            </ul>

            <div class="tab-content mg-t-20" id="myTabContent5">
                <div class="tab-pane fade show active" id="campus" role="tabpanel">
                    <div class="table-responsive col-md-6">
                        <table class="table table-bordered mg-b-0">
                            <thead>
                            <tr>
                                <th style=""><strong>Campuses</strong></th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php

                            $tittle = 1;
                            $campus_name = 'campus_' . $tittle;
                            if ($campuses->num_rows() > 0)
                            {
                                $campuses = $campuses->result();
                                foreach ($campuses as $cm) {
                                    ?>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="checkbox" value="<?=$cm->id;?>"
                                                   name="<?=$campus_name;?>">&nbsp;&nbsp;
                                            &nbsp; <?= $cm->campus_name
                                            ?>
                                        </td>
                                    </tr>
                                    <?php
                                    $tittle = $tittle + 1;
                                    $campus_name = 'campus_' . $tittle;
                                }
                            }
                            ?>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="tab-pane fade show " id="category" role="tabpanel">

                    <div class="table-responsive col-md-6">
                        <table class="table table-bordered mg-b-0">
                            <thead>
                            <tr>
                                <th style=""><strong>Category</strong></th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php

                            $tittle = 1;
                            $category_name = 'category_' . $tittle;
                            if ($categor->num_rows() > 0)
                            {
                                $categor = $categor->result();
                                foreach ($categor as $cm) {
                                    ?>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="checkbox" value="<?=$cm->id;?>"
                                                   name="<?=$category_name;?>">&nbsp;&nbsp;
                                            &nbsp; <?= $cm->category
                                            ?>
                                        </td>
                                    </tr>
                                    <?php
                                    $tittle = $tittle + 1;
                                    $category_name = 'category_' . $tittle;
                                }
                            }
                            ?>
                            </tbody>

                        </table>
                    </div>
                </div>

                <div class="tab-pane fade show " id="recharge" role="tabpanel">

                    <div class="table-responsive col-md-6">
                        <table class="table table-bordered mg-b-0">
                            <thead>
                            <tr>
                                <th style=""><strong>Recharge Modal</strong></th>
                                <th></th>
                            </tr>
                            </thead>

                            <tbody>

                            <tr>

                                <td>
                                    <input type="checkbox" value="VALIDATOR" class="checkbox" name="recharge[]">&nbsp;&nbsp;
                                    VALIDATOR
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <input type="checkbox" value="POS" class="checkbox" name="recharge[]">&nbsp;&nbsp;
                                    POS
                                </td>
                            </tr>


                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade show " id="performance" role="tabpanel">

                    <div class="table-responsive col-md-6">
                        <table class="table table-bordered mg-b-0">
                            <thead>
                            <tr>
                                <th style=""><strong>Performance</strong></th>
                                <th></th>
                            </tr>
                            </thead>

                            <tbody>

                            <tr>

                                <td>
                                    <input type="checkbox" value="EXCELLENT" class="checkbox" name="performance">&nbsp;&nbsp;
                                    EXCELLENT
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <input type="checkbox" value="GOOD" class="checkbox" name="performance[]">&nbsp;&nbsp;
                                    GOOD
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <input type="checkbox" value="NORMAL" class="checkbox" name="performance[]">&nbsp;&nbsp;
                                    NORMAL
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <input type="checkbox" value="BAD" class="checkbox" name="performance[]">&nbsp;&nbsp;
                                    BAD
                                </td>
                            </tr>


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


<div class="col-md-12 mg-t-10">
    <div class="card">
        <div class="card-body" style="padding: 10px;">
            <button class="btn btn-secondary" type="reset">Cancel</button>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <button class="btn btn-success pull-right" type="submit">Submit</button>
        </div>

    </div>
</div>
</div>
</form>
<script>

    $('#datepicker1').datepicker({
        showOtherMonths: true,
        selectOtherMonths: true,
        changeMonth: true,
        changeYear: true,
        dateFormat: 'dd-M-yy',
        minDate: 0,
    });

</script>
<script>

    $('#datepicker2').datepicker({
        showOtherMonths: true,
        selectOtherMonths: true,
        changeMonth: true,
        changeYear: true,
        dateFormat: 'dd-M-yy',
        minDate: 0,
    });

</script>

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
