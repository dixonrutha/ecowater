<?php 
foreach($content->css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php 
    if($this->session->flashdata('success'))
        $success = $this->session->flashdata('success');
    if($this->session->flashdata('error'))
        $error  = $this->session->flashdata('error');
?>
<div class="row">
    <div class="col-md-12">
        <?php if (validation_errors()): ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">x</span>
              </button>
              <?= validation_errors(); ?>
            </div>
        <?php endif; ?>
        <?php if (!empty($error)): ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">x</span>
              </button>
              <?= $error; ?>
            </div>
        <?php endif; ?>
        <?php if (!empty($success)): ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">x</span>
              </button>
              <?= $success; ?>
            </div>
        <?php endif; ?>
    </div>
    <div class="col-md-3">
        <form action="<?= base_url('campus/utilityBills') ?>" method="POST">
            <div class="card">
                <div class="card-header"><h6>New Bill</h6></div>
                <div class="card-body">
                    <div class="form-group">
                        <label class="d-block">Station <span class="tx-danger">*</span></label>
                        <select class="form-control select2" style="width: 100%"  name="station_id" required="required">
								<option value="">--Select--</option>
								<?php foreach($stations as $s){ ?>
									<option value="<?= $s->id ?>"><?= $s->station_name ?></option>
								<?php } ?>								
							</select>
                    </div>
                    <div class="form-group">
                        <label class="d-block">Utility Type<span class="tx-danger">*</span></label>
                        <select class="form-control" name="utility_type" required="required" style="height: 35px; font-size: 0.8rem">
								<option value="">Choose one</option>
								<?php foreach($types as $t){ ?>
									<option value="<?= $t->code ?>"><?= $t->type ?></option>
								<?php } ?>								
							</select>
                    </div>
                    <div class="form-group">
                        <label class="d-block">Meter Reading <span class="tx-danger">*</span></label>
                        <input type="number" class="form-control input-sm" min="0" step="0.01" name="meter_readings" autocomplete="off" value="<?= set_value('meter_readings') ?>" required="required">
                    </div>
                    <div class="form-group">
                        <label class="d-block">Month <span class="tx-danger">*</span></label>
                        <input type="text" class="form-control input-sm" id="datepicker" name="charge_month" data-date-format="M-yyyy" data-date-end-date="0d" autocomplete="off" value="<?= set_value('charge_month') ?>" required="required">
                    </div>
                </div>
                <div class="card-footer">
                    <button type="reset" class="btn btn-sm btn-secondary">Reset</button>
					<button type="submit" class="btn btn-sm btn-primary pull-right">Save</button>
                </div>
            </div>
        </form>
    </div>
    <div class="col-md-9">
        <div class="card">
            <div class="card-body pd-lg-5">
                <?= $content->output; ?>
            </div>
        </div>        
    </div>
</div>
<script>
      $(function(){
        $('#datepicker').datepicker({
          showOtherMonths: true,
          selectOtherMonths: true,
          changeMonth: true,
          changeYear: true,
          dateFormat: 'M-yy',
          maxDate: 0,
        });

      });
</script>
<script>
      $(function(){
        // Basic with search
        $('.select2').select2({
          placeholder: 'Choose one',
          searchInputPlaceholder: 'Search options'
        });
      });
</script>