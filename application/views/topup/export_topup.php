<div class="row">
    <div class="col-md-6">
        <div class="card">
            <form action="<?= base_url('topup/exportTopup') ?>" method="POST">
                <div class="card-header tx-semibold">Export Recharges</div>
                <div class="card-body">
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
                    <div class="row form-group">
                        <div class="col-md-6">
                            <input type="text" id="dateFrom" name="dateFrom" class="form-control" placeholder="From" readonly="readonly"/>
                        </div><!-- col -->
                        <div class="col-md-6">
                            <input type="text" id="dateTo" name="dateTo" class="form-control" placeholder="To" readonly="readonly"/>
                        </div><!-- col -->
                    </div>
                    <br />
                    <div class="row form-group">
                        <div class="col-md-12">
                            <select class="custom-select" name="category">
                                <option value="">Select</option>
                                <option value="all">All</option>
                                <option value="mobile">Mobile and VAL</option>
                            </select>
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
</div>
<script>
    var dateFormat = 'mm/dd/yy',
            from = $('#dateFrom')
            .datepicker({
                defaultDate: '-1w',
                numberOfMonths: 2
            })
            .on('change', function () {
                to.datepicker('option', 'minDate', getDate(this));
            }),
            to = $('#dateTo').datepicker({
        defaultDate: '+1d',
        numberOfMonths: 2
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
</script>