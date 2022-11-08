<div class="row">
    <div class="col-md-5" style="margin-bottom: 10px;"></div>
    <div class="col-md-2" style="margin-bottom: 10px;">
        <a  href="#modal" class="btn btn-success btn-flat margin" data-toggle="modal"><span class="fa fa-plus "></span> Add Utility</a>
	</div>
    <div class="col-md-5" style="margin-bottom: 10px;"></div>
    <?php if(!empty(validation_errors())){ ?>
		<div class="col-md-12">
			<div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <?= validation_errors(); ?>
			</div>
		</div>	
	<?php }elseif(!empty($this->session->flashdata('success'))){ ?>
		<div class="col-md-12">
			<div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <?= $this->session->flashdata('success'); ?>
			</div>
		</div>	
	<?php } ?>
    <div class="col-md-6">
        <div class="card">
            <div class="card-header"><strong><span class="fa fa-tint"></span> Water</strong></div>
            <div class="card-body">
                <table id="eco-table" class="table table-bordered table-striped table-sm" style="border-collapse: collapse">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Campus</th>
                            <th>Unit Price</th>
				            <th>Eff. Date</th>
				            <th>Maker</th>
                        </tr>
                    </thead>
                    <tbody>
						<?php 
						$i = 1;
						foreach($utilities as $uc){
								if($uc->utility_type === 'RW'){?>
								<tr>
									<td><?= $i ?>.</td>
									<td><?= $uc->campus_name ?></td>
									<td style="text-align: right"><?= number_format($uc->unit_price,2) ?></td>
									<td style="text-align: center"><?= date('D d-M-y', strtotime($uc->effective_date))?></td>
									<td><?= $uc->maker_id ?></td>
								</tr>
							<?php $i++; }							
							}  ?>                            
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="card">
            <div class="card-header"><strong><span class="fa fa-bolt"></span> Electricity</strong></div>
            <div class="card-body">
                <table id="eco-table2" class="table table-bordered table-striped table-sm" style="border-collapse: collapse">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Campus</th>
                                <th>Unit Price</th>
								<th>Eff. Date</th>
								<th>Maker</th>
                            </tr>
                        </thead>
                        <tbody>
						<?php 
						$j = 1;
						foreach($utilities as $ud){
								if($ud->utility_type === 'EL'){?>
								<tr>
									<td><?= $j ?>.</td>
									<td><?= $ud->campus_name ?></td>
									<td style="text-align: right"><?= number_format($ud->unit_price,2) ?></td>
									<td style="text-align: center"><?= date('D d-M-y', strtotime($ud->effective_date)) ?></td>
									<td><?= $ud->maker_id ?></td>
								</tr>
							<?php $j++; }							
							}  ?>                            
                        </tbody>
                </table>                
            </div>
        </div>
    </div>
    <!-- Modal Start -->
    <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content tx-14">
          <div class="modal-header">
            <h6 class="modal-title" id="exampleModalLabel">Utility Config</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form class="form-horizontal" method="POST" action="<?= base_url('settings/utilityConfig') ?>"> 
          <div class="modal-body">
            <div class="form-group row">
                <label class="col-md-4 col-form-label">Type <span class="tx-danger">*</span></label>
                <div class="col-md-8">
                  <select class="custom-select" name="utility_type">
				        <option value="">--Select--</option>
							<?php foreach($utility_types as $ut){ ?>
							<option value="<?= $ut->code ?>"><?= $ut->type ?></option>	
						<?php } ?>	
				    </select>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-md-4 col-form-label">Campus <span class="tx-danger">*</span></label>
                <div class="col-md-8">
                  <select class="form-control" name="campus_code">
				    <option value="">--Select--</option>
				    <?php foreach($campus as $c){ ?>
				    <option value="<?= $c->campus_code ?>"><?= $c->campus_name ?></option>	
				    <?php } ?>							
				    </select>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-md-4 col-form-label">Unit price <span class="tx-danger">*</span></label>
                <div class="col-md-8">
                    <input type="number" class="form-control" name="unit_price" min="0" step="0.01" autocomplete="off"/>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-md-4 col-form-label">Effective Date</label>
                <div class="col-md-8">
                    <input type="text" class="form-control eff_date" name="eff_date" id="eff_date" autocomplete="off" readonly="readonly" />
                </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-success tx-13">Save</button>
          </div>
          </form>
        </div>
      </div>
    </div>
    <!-- Modal End -->    
</div>
<script>
    $(document).ready(function () {
    $('.eff_date').datepicker({
        showOtherMonths: true,
          selectOtherMonths: true,
          changeMonth: true,
          changeYear: true,
          dateFormat: 'dd-M-yy'
    });
});
</script>