<div class="col-md-9">
    <div class="nav-tabs-custom">
        <ul class="nav nav-tabs pull-right">            
            <li><a href="#invoice" data-toggle="tab">Invoives</a></li>
            <li class="active"><a href="#royalty" data-toggle="tab">Royalty</a></li>
            <li class="pull-left header"><i class="fa fa-th"></i></li>
        </ul>
        <div class="tab-content">
             <div class="tab-pane active" id="royalty">
                 <div class="row">
                 <div class="col-md-9">
                 <table id="example2" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Date</th>
                        <th>Campus Sales</th>
                        <th>Rate</th>
                        <th>Royalty</th>
                        <th>Status</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php
                    $i = 1;
                    $this_month = 0;
                    $this_year = 0;
                    $total_paid = 0;
                    $total_unpaid = 0;
                    $total = 0;
                    $total_sales = 0;
                    foreach($royalty as $r){
                        $royalty_amount = $r->sales*($r->royalty/100);
                        $total = $total + $royalty_amount;                        
                        $month_year = date('m-Y', strtotime($r->date));
                        $year = date('Y', strtotime($r->date));
                        if($month_year === date('m-Y')){$this_month = $this_month + $royalty_amount; }
                        if($year === date('Y')){ 
							$this_year = $this_year + $royalty_amount;
							$total_sales = $total_sales + $r->sales;
							}
                        ?>
                        <tr>
                            <td><?= $i.'.' ?></td>
                            <td style="text-align: center"><?= date('D d-M-y', strtotime($r->date)) ?></td>
                            <td style="text-align: right"><?= number_format($r->sales,2) ?></td>
                            <td style="text-align: right"><?= number_format($r->royalty).'%' ?></td>
                            <td style="text-align: right"><?= number_format($royalty_amount,2) ?></td>
                            <td style="text-align: center">
                            <?php
                                if($r->royalty_status == 'Paid'){
									if($r->date >= date('Y').'-01-01'){$total_paid = $total_paid + $royalty_amount;}                                    
                                ?>
                                <span class="label label-success"><?= $r->royalty_status ?></span> 
                            <?php }elseif($r->royalty_status == 'Unpaid'){
								if($r->date >= date('Y').'-01-01'){$total_unpaid = $total_unpaid + $royalty_amount;}
                            ?>
                                <span class="label label-warning"><?= $r->royalty_status ?></span> 
                            <?php } ?>
                            </td>
                        </tr>    
                    <?php $i++; } ?>                        
                    </tbody>
                 </table>
                 </div>
                 <div class="col-md-3" style="line-height: 200%;">
                    <p class="text-center">
                        <strong>Quick Summary (<?= date('Y') ?>)</strong>
                    </p>
                    <br/>
					<?php
						if($total == 0){
							$total = 1;
						}
						if($this_year == 0){
							$this_year = 1;
						}
					?>
                    <div class="description-block border-left">
                        <span style="font-size: 14px" class="description-percentage text-green"><?= number_format($total_paid*100/$this_year)?>%</span>
                        <h5 class="description-header"><?= number_format($total_paid,2) ?></h5>
                        <span class="description-text">Paid Royalty</span>
                    </div>
                    <hr style=" height: 1px; color: red; background-color: black; border: none;">
                    <div class="description-block border-left">
                        <span style="font-size: 14px" class="description-percentage text-yellow"><?= number_format($total_unpaid*100/$this_year)?>%</span>
                        <h5 class="description-header"><?= number_format($total_unpaid,2) ?></h5>
                        <span class="description-text">Unpaid Royalty</span>
                    </div>
                    <hr style=" height: 1px;
  color: red;
  background-color: black;
  border: none;">
  <div class="description-block border-left">
      
      <span class="description-text">Total Campus Sales</span>
                        <h5 class="description-header"><?= number_format($total_sales,2) ?></h5>
    <span style="font-size: 12px" class="description-percentage text-muted"><?= 'Year '.date('Y'); ?></span>
  </div>
                 </div>
                 </div>
             </div>
             <div class="tab-pane" id="invoice">
                 <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Invoice No</th>
                        <th>Amount (Tsh)</th>
                        <th>From</th>
                        <th>To</th>
                        <th>Status</th>
                        <th>Generated By</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php
                        $x = 1;
                        foreach($invoices as $i){ ?>
                          <tr>
                            <td><?= $x.'.' ?></td>
                            <td><?= $i->invoice_no ?></td>
                            <td style="text-align: right;"><?= number_format($i->amount,2) ?></td>
                            <td><?= date('D d-M-y', strtotime($i->from_date)) ?></td>
                            <td><?= date('D d-M-y', strtotime($i->to_date)) ?></td>
                            <td>
                            <?php
                                if($i->status == 'Paid'){ ?>
                                <span class="label label-success"><?= $i->status ?></span> 
                            <?php }else{ ?>
                                <span class="label label-warning"><?= $i->status ?></span> 
                            <?php } ?>
                            </td>
                            <td><?= $i->maker_id ?></td>
                            <td style="text-align: center;"><a href="<?= base_url('cd9a25f4b5b0854f5c667e9ea64ca992'.'/'.$i->id.'/'.$campus->campus_code) ?>" target="_blank" class="btn btn-xs btn-default"><i class="fa fa-download"></i></a></td>    
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
                  <b>Royalty this Month</b> <a class="pull-right"><?= number_format($this_month,2) ?></a>
                </li>
                <li class="list-group-item">
                  <b>Royalty this Year</b> <a class="pull-right"><?= number_format($this_year,2) ?></a>
                </li>
            </ul>
        </div>
    </div>
<?php
    $errors = validation_errors();
    $error2 = $this->session->flashdata('error2');
    $success1 = $this->session->flashdata('success');
    if(!empty($errors)){ ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <?= $errors; ?>
            </div>
<?php }elseif(!empty($success1)){ ?>
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <?= $success1; ?>
            </div>
<?php }elseif(!empty($error2)){ ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <?= $error2; ?>
            </div>
<?php } ?>
<?php if(!empty($this->session->userdata('campus_invoice_add'))){ ?> 
		<div class="box box-warning">
		<form method="POST" action="<?= base_url('campus/viewCampusRoyalty/'.str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($campus_id)).'/'.$layout) ?>">
			<div class="box-body">
				<p class="text-muted text-center"><strong>Generate Invoice</strong></p>
				<input type="hidden" name="invoice" value="generate"/>
				<input type="hidden" name="layout" value="<?= $layout ?>"/>
				<div class="form-group">
					<input type="text" name="from_date" class="form-control input-sm" placeholder="From Date" id="from" data-date-end-date='-1d' required="required" autocomplete="off" />
				</div> 
				<div class="form-group">
					<input type="text" name="to_date" class="form-control input-sm" placeholder="To Date"  id="to" data-date-end-date='-1d' required="required" autocomplete="off"/>
				</div>
				<button type="submit" class="btn btn-warning btn-xs pull-right">Generate</button> 
			</div>
		</form>
		</div>
<?php } ?>   
<?php if(!empty($this->session->userdata('campus_invoice_pay'))){ ?>     
    <div class="box box-success">
    <form method="POST" action="<?= base_url('campus/viewCampusRoyalty/'.str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($campus_id)).'/'.$layout) ?>">
        <div class="box-body">
            <p class="text-muted text-center"><strong>Pay Invoice</strong></p>
            <input type="hidden" name="invoice" value="pay"/>
            <div class="form-group">
                <select class="form-control input-sm" name="invoice_id">
                    <option value="">--Choose Invoice--</option>
                    <?php foreach($unpaid_invoices as $ui){ ?>
                      <option value="<?= $ui->id ?>"><?= $ui->invoice_no ?></option>      
                    <?php } ?>
                </select>
            </div> 
            <button type="submit" class="btn btn-success btn-xs pull-right">Pay</button> 
        </div>
    </form>
    </div>
<?php } ?>       
</div>
<script>
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": true,
          "searching": true,
          "ordering": true,
          "info": true,
          "pagingType": "full",
          "autoWidth": false
        });
      });
</script>
<script>
$(document).ready(function () {
    $('#from').datepicker({
        format: 'dd-M-yyyy',
        todayHighlight: true,
        weekStart: 1
    });
    $('#to').datepicker({
        format: 'dd-M-yyyy',
        todayHighlight: true,
        weekStart: 1
    })
});
</script>