<?php foreach ($content->css_files as $file): ?>
    <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<div class="row">
    <div class="col-md-3">
        <div class="card">
            <form action="<?= base_url('quality_controls/qualityControlMeasurements') ?>" method="POST">
                <div class="card-header tx-semibold">Export Test Report</div>
                <div class="card-body">
                    <div class="row form-group">
                        <div class="col-md-6">
                            <input type="text" id="dateFrom" name="dateFrom" class="form-control" placeholder="From" required="required" autocomplete="off"/>
                        </div><!-- col -->
                        <div class="col-md-6">
                            <input type="text" id="dateTo" name="dateTo" class="form-control" placeholder="To" required="required" autocomplete="off"/>
                        </div><!-- col -->
                    </div>
                    <br />
                    <div class="row form-group">
                        <div class="col-md-12">
                            <select class="custom-select select2" name="station_id" required="required">
                                <option value="">--Station--</option>
                                <?php foreach ($stations as $s) { ?>
                                    <option value="<?= $s->id ?>"><?= $s->station_name ?></option>
                                <?php } ?>
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
    <div class="col-md-9">
        <div class="card">
            <div class="card-body">
                <?= $content->output; ?>
            </div>
        </div>  
    </div>
</div>
<?php foreach ($content->js_files as $file): ?>
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<script>
    var dateFormat = 'mm/dd/yy',
            from = $('#dateFrom')
            .datepicker({
                defaultDate: '+1w',
                numberOfMonths: 2
            })
            .on('change', function () {
                to.datepicker('option', 'minDate', getDate(this));
            }),
            to = $('#dateTo').datepicker({
        defaultDate: '+1w',
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