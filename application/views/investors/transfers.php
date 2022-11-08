<div class='row'>
	<div class='col-md-4'>
		<div class="card">
			<div class="card-header tx-medium" style="font-size: 15px;">
                <span class="fa fa-navicon"></span> Transfer
            </div>
			<form action="<?= base_url('investors/transfers') ?>" method="POST">
				<div class='card-body'>
					<?php if(!empty($this->session->flashdata('error'))){ ?>
						<div class="alert alert-danger alert-dismissible">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
							<?= $this->session->flashdata('error'); ?>
						</div>	
					<?php }elseif(!empty($this->session->flashdata('warning'))){ ?>
						<div class="alert alert-warning alert-dismissible">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
							<?= $this->session->flashdata('warning'); ?>
						</div>
					<?php } ?>	
					<div class="form-group" style='margin-bottom: 9px'>
						<label>Contract</label>
						<select  class="form-control select2" name="contract_id" id="sub_cat" style="width: 100%" autocomplete="off" required="required">
                            <option value="">--Select--</option>
                            <?php
                                foreach ($contracts as $c) { ?>
                                   <option value="<?= $c->id ?>" ><?= 'Contract #: '.$c->contract_no.' Investor: '.$c->first_name ?></option> 
                            <?php } ?>
                        </select>
					</div>
					<div class="form-group" style='margin-bottom: 9px'>
						<label>Start Date</label>
						<input type="text" class="form-control" name="start_date" id='start_date' data-date-end-date='0d' autocomplete="off" value="<?= set_value('start_date'); ?>" required="required" readonly />
					</div>
					<div class="form-group" style='margin-bottom: 9px'>
						<label>End Date</label>
						<input type="text" class="form-control" name="end_date" id='end_date' data-date-end-date='0d' autocomplete="off" value="<?= set_value('end_date'); ?>" required="required" readonly />
					</div>
				</div>
				<div class="card-footer">
					<button type="reset" class="btn btn-dark">Reset</button>
					<button type="submit" class="btn btn-primary pull-right">Submit</button>
				</div>
			</form>
		</div>
	</div>
	<div class='col-md-8'>
		<div class="card">
			<div class="card-header tx-medium" style="font-size: 15px;">
                <span class="fa fa-exchange"></span> Transfer History
            </div>
			<div class='card-body'>
				<table id="eco-table" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Contract #</th>
							<th>Investor</th>
							<th>Transfered</th>
							<th>Start Date</th>							
							<th>End Date</th>
							<th>Maker</th>
						</tr>
					</thead>
					<tbody>
					<?php 
					$total_transfer = 0;
					foreach($tran_hist  as $s){ ?>
						<tr>
							<td style='text-align: right'><?= $s->contract_no ?></td>
							<td style='text-align: left'><?= $s->first_name.' '.$s->surname ?></td>
							<td style='text-align: right'><?= number_format($s->amount,2) ?></td>	
							<td style='text-align: center'><?= date('d-M-Y', strtotime($s->start_date))?></td>
							<td style='text-align: center'><?= date('d-M-Y', strtotime($s->end_date))?></td>	
							<td style='text-align: center'><?= $s->maker_id ?></td>						
						</tr>
					<?php 
						$total_transfer = $total_transfer + $s->amount;
					} ?>					
					</tbody>
					<tfoot>
						<tr>
							<th colspan='2'>Total</th>
							<th style='text-align: right'><?= number_format($total_transfer,2) ?></th>
							<th style='text-align: right'></th>
							<th style='text-align: right'></th>
							<th style='text-align: right'></th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function () {
    $('#start_date').datepicker({
        showOtherMonths: true,
        selectOtherMonths: true,
        changeMonth: true,
        changeYear: true,
        dateFormat: 'dd-M-yy',
        maxDate: 0,
    });
	$('#end_date').datepicker({
        showOtherMonths: true,
        selectOtherMonths: true,
        changeMonth: true,
        changeYear: true,
        dateFormat: 'dd-M-yy',
        maxDate: 0,
    })
});
</script>