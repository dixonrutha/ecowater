<div class="col-md-9">
    <div class="nav-tabs-custom">
        <ul class="nav nav-tabs pull-right">            
            <li><a href="#invoice" data-toggle="tab">Invoices</a></li>
            <li class="active"><a href="#bills" data-toggle="tab">Utility Usage</a></li>
            <li class="pull-left header"><i class="fa fa-th"></i></li>
        </ul>
        <div class="tab-content">
             <div class="tab-pane active" id="bills">
                 <table id="example2" class="table table-bordered table-striped">
                    <thead>
                      <tr>						
                        <th>Month</th>
                        <th>Station</th>
                        <th>Utility</th>
                        <th>Units</th>
                        <th>Unit Price</th>
                        <th>Total Cost</th>
						<th>Status</th>
                      </tr>
                    </thead>
                    <tbody>
						<?php 
						$i = 1;
						$mtd = 0;
						$ytd = 0;						
						foreach($bills as $b){ 
							$year = date('Y', strtotime($b->charge_month));
							if($b->charge_month === date('M-Y')){ $mtd = $mtd + $b->total_cost; }
							if($year === date('Y')){ $ytd = $ytd + $b->total_cost; }
						?>
							<tr>
								<td><?= $b->charge_month ?></td>
								<td><?= $b->station_name ?></td>
								<td><?= $b->type ?></td>
								<td style="text-align:right"><?= $b->units ?></td>
								<td style="text-align:right"><?= number_format($b->unit_price,2) ?></td>								
								<td style="text-align:right"><?= number_format($b->total_cost,2) ?></td>
								<td>
									<?php if($b->status == 'Paid'){ ?>
										<span class="label label-success"><?= $b->status ?></span> 
									<?php }elseif($b->status == 'Unpaid'){ ?>
										<span class="label label-warning"><?= $b->status ?></span> 
									<?php } ?>
								</td>
							</tr>	
						<?php $i++; } ?>					
                    </tbody>
                 </table>
             </div>
             <div class="tab-pane" id="invoice">
                 <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Invoice No</th>
						<th>Water</th>
						<th>Electricity</th>
                        <th>Total</th>
                        <th>Month</th>
                        <th>Status</th>
                        <th>Maker</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
					<?php
						$x = 1;
						foreach($invoices as $i){ ?>
						<tr>
							<td><?= $i->invoice_no ?></td>
							<td style="text-align: right"><?= number_format($i->water,2) ?></td>
							<td style="text-align: right"><?= number_format($i->electricity,2) ?></td>
							<td style="text-align: right"><?= number_format($i->water+$i->electricity,2) ?></td>
							<td><?= $i->bill_month ?></td>
							<td>
								<?php if($i->status == 'Paid'){ ?>
									<span class="label label-success"><?= $i->status ?></span> 
								<?php }elseif($i->status == 'Unpaid'){ ?>
									<span class="label label-warning"><?= $i->status ?></span> 
								<?php } ?>
							</td>
							<td><?= $i->maker_id ?></td>
							<td style="text-align: center">
								<div class="btn-group">
									<?php if($i->status != 'Paid' && !empty($this->session->userdata('campus_invoice_add'))){ ?>
										<a href="<?= base_url('campus/payUtilityInvoice/'.str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($i->id)).'/'.$campus_id.'/'.$layout) ?>" class="btn btn-xs btn-success" onclick="return confirm('Are you sure you want to pay this invoice?');" title="Pay Invoice"><span class="fa fa-dollar"></span> Pay</a>
									<?php } ?>									
									<a href="<?= base_url('campus/downloadUtilityInvoice/'.$i->id.'/'.str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($campus_id))) ?>" class="btn btn-xs btn-default" target="_blank" title="Download Invoice"><span class="fa fa-download"></span></a>
									<?php if($i->status != 'Paid' && !empty($this->session->userdata('campus_invoice_add'))){ ?>
										<a href="<?= base_url('campus/deleteUtilityInvoice/'.str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($i->id)).'/'.$campus_id.'/'.$i->bill_month.'/'.$layout) ?>" class="btn btn-xs btn-danger" onclick="return confirm('Are you sure you want to delete this invoice?');" title="Delete Invoice"><span class="fa fa-trash-o"></span></a>
									<?php } ?>									
								</div>
							</td>
						</tr>							
					<?php $x++; } ?>						
                    </tbody>
                 </table>
             </div>
        </div>
    </div>
</div>
<div class="col-md-3">
    <div class="box box-default">
        <div class="box-body box-profile">
              <h4 class="profile-username text-center"><?= $campus->campus_name ?></h4>
              <p class="text-muted text-center"><?= $campus->campus_code ?></p>
              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>MTD Cost</b> <a class="pull-right"><?= number_format($mtd,2) ?></a>
                </li>
                <li class="list-group-item">
                  <b>YTD Cost</b> <a class="pull-right"><?= number_format($ytd,2) ?></a>
                </li>
            </ul>
        </div>
    </div>
<?php
    $errors = validation_errors();
    $error = $this->session->flashdata('error');
    $success = $this->session->flashdata('success');
    if(!empty($errors)){ ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <?= $errors; ?>
            </div>
<?php }elseif(!empty($success)){ ?>
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <?= $success; ?>
            </div>
<?php }elseif(!empty($error)){ ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <?= $error; ?>
            </div>
<?php } ?>
<?php if(!empty($this->session->userdata('campus_invoice_add'))){ ?>   
    <div class="box box-warning">
    <form method="POST" action="<?= base_url('campus/viewCampusUtility/'.str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($campus_id)).'/'.$layout) ?>">
        <div class="box-body">
            <p class="text-muted text-center"><strong>Generate Invoice</strong></p>
            <input type="hidden" name="invoice" value="generate"/>
			<input type="hidden" name="action" value="generate"/>
            <div class="form-group">
                <input type="text" name="bill_month" class="form-control input-sm" placeholder="Month" id="from" data-date-end-date='-1d' required="required" autocomplete="off" />
            </div>
            <button type="submit" class="btn btn-warning btn-xs pull-right">Generate</button> 
        </div>
    </form>
    </div>
<?php } ?>
</div>
<script>
      $(function () {
        $("#example1").DataTable({
			'order': []
		});
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": true,
          "searching": true,
          "ordering": true,
          "info": true,
          "pagingType": "full",
		  'order': [],
          "autoWidth": false
        });
      });
</script>
<script>
$(document).ready(function () {
    $('#from').datepicker({
        format: "M-yyyy",
		viewMode: "months", 
		minViewMode: "months"
    });
    $('#to').datepicker({
        format: 'dd-M-yyyy',
        todayHighlight: true,
        weekStart: 1
    })
});
</script>