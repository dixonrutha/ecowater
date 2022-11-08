<div class="row">
    <div class="col-md-3">
        <form action="" method="POST">
            <div class="card">
                <div class="card-header"><h6>New Bill</h6></div>
                <div class="card-body">
                    <?php // print_r($campus) ?>
                    <div class="form-group">
                        <label class="d-block">Station <span class="tx-danger">*</span></label>
                        <select class="form-control select2" tyle="width: 100%"  name="station_id" required="required">
								<option value="">--Select--</option>
								<?php
								    foreach($campus as $c){ ?>
								        <option value=""><?= $c->campus_name ?></option>
								  <?php  } ?>
							</select>
                    </div>
                    <div class="form-group">
                        <label class="d-block">Month <span class="tx-danger">*</span></label>
                        <input type="text" class="form-control input-sm" id="datepicker" name="charge_month"  autocomplete="off" required="required">
                    </div>
                </div>
                <div class="card-footer">
                    <button type="reset" class="btn btn-sm btn-secondary">Reset</button>
					<button type="submit" class="btn btn-sm btn-primary pull-right">Save</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
      $(function(){
        // Basic with search
        $('.select2').select2();
      });
</script>
<script>
      $(function(){
        $('#datepicker').datepicker({
          format: "mm-yyyy",
    startView: "months", 
    minViewMode: "months"
        });

      });
</script>