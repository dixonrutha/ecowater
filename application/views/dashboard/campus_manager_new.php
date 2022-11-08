<div class="row" id="ubuntu">    
    <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-olive-active"><i class="fa fa-home"></i></span>
            <div class="info-box-content">
                <span class="info-box-text">Stations</span></span>
                <span class="info-box-number" style="text-align: center"><?= number_format($stations,0) ?></span>
            </div>
        </div>
    </div>
	<div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-blue-active"><i class="fa fa-star-o"></i></span>
            <div class="info-box-content">
              <span class="info-box-text">Royalty <span id="sub-heading">(<?= date('Y') ?>)</span></span>
              <span class="info-box-number" style="text-align: center">TZS <?= number_format($royalty_ytd->royalty,0) ?></span>
            </div>
        </div>        
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-red-active"><i class="fa fa-flash"></i></span>
            <div class="info-box-content">
              <span class="info-box-text">Electricity <span id="sub-heading">(<?= date('Y') ?>)</span></span>
              <span class="info-box-number" style="text-align: center">TZS <?= number_format($electricity,0) ?> </span>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-aqua-active"><i class="fa fa-tint"></i></span>
            <div class="info-box-content">
              <span class="info-box-text">Water <span id="sub-heading">(<?= date('Y') ?>)</span></span>
              <span class="info-box-number" style="text-align: center">TZS <?= number_format($water,0) ?></span>
            </div>
        </div>
    </div>
</div>  
 <div class="row" id="ubuntu">
	<div class="col-md-2 col-sm-12 col-xs-12">
		<div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Navigation</h3>
            </div>
            <div class="box-body no-padding">
              <ul class="nav nav-pills nav-stacked">
                <li><a href="<?= base_url('campus/viewCampusRoyalty/'.str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($campus_id)).'/campus_manager') ?>"><i class="fa fa-chevron-right"></i> Royalty Panel</a></li>
                <li><a href="<?= base_url('campus/viewCampusUtility/'.str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($campus_id)).'/campus_manager') ?>"><i class="fa fa-chevron-right"></i> Utility Panel</a></li>
              </ul>
            </div>
		</div>
	</div>
     <div class="col-md-6 col-sm-12 col-xs-12">
        <div class="nav-tabs-custom">
			<ul class="nav nav-tabs pull-right">				
				<li><a href="#tab_1-1" data-toggle="tab">Utility</a></li>
				<li class="active"><a href="#tab_2-2" data-toggle="tab">Royalty</a></li>				
				<li class="pull-left header"><i class="fa fa-th"></i> Pending Invoices</li>
            </ul>
			<div class="tab-content">
				<div class="tab-pane" id="tab_1-1">
					<div class="row">
						<div class="col-md-12">
							<table id="example1" class="table table-bordered table-striped">
								<thead>
								  <tr>
									<th>Invoice No</th>
									<th>Water</th>
									<th>Electricity</th>
									<th>Total</th>
									<th>Month</th>
									<th>Status</th>
									<th></th>
								  </tr>
								</thead>
								<tbody>
								<?php
									$x = 1;
									foreach($bill_invoices as $i){ ?>
									<tr>
										<td><?= $i->invoice_no ?></td>
										<td style="text-align: right"><?= number_format($i->water,2) ?></td>
										<td style="text-align: right"><?= number_format($i->electricity,2) ?></td>
										<td style="text-align: right"><?= number_format($i->water+$i->electricity,2) ?></td>
										<td><?= $i->bill_month ?></td>
										<td><?= $i->status ?></td>
										<td><a href="<?= base_url('campus/downloadUtilityInvoice/'.$i->id.'/'.str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($campus_id))) ?>" class="btn btn-xs btn-default" target="_blank" title="Download Invoice"><span class="fa fa-download"></span></a>
										</td>
									</tr>							
								<?php $x++; } ?>						
								</tbody>					
							</table>
						</div>
					</div>		 
				</div>
				<div class="tab-pane active" id="tab_2-2">
					<div class="row">
						<div class="col-md-12">
							<table id="example2" class="table table-bordered table-striped">
								<thead>
								  <tr>
									<th>Invoice No</th>
									<th>Amount</th>
									<th>From</th>
									<th>To</th>
									<th>Status</th>
									<th></th>
								  </tr>
								</thead>
								<tbody>
								<?php
									$x = 1;
									foreach($royalty_invoices as $i){ ?>
									  <tr>
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
										<td style="text-align: center;"><a href="<?= base_url('campus/invoiceDownload'.'/'.$i->id.'/'.$campus_id) ?>" target="_blank" class="btn btn-xs btn-default"><i class="fa fa-download"></i></a></td>    
									</tr>  
								<?php $x++; } ?>                        
								</tbody>
							 </table>
						</div>
					</div>
				</div>
			</div>
		</div>
     </div>
     <div class="col-md-4 col-sm-12 col-xs-12">
        <div class="box box-solid">
            <div class="box-header with-border">
                <h3 class="box-title"><span class="fa fa-line_chart"></span> Royalty</h3>
            </div>
            <div class="box-body" id="container">
                
            </div>
        </div>         
     </div>
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
<script>
var chart = Highcharts.chart('container', {
	credits: {
    enabled: false
},
    title: {
        text: 'Past Seven Days'
    },

    subtitle: {
        // text: 'Last Seven Days'
    },
yAxis: {
            title: {
                text: 'Amount'
            }
        },
    xAxis: {
        categories: [
		<?php foreach($royalty as $r){ 
			if($r->date === date('Y-m-d')){
				$date = 'Today';
				}elseif($r->date === date('Y-m-d', strtotime('-1 days')) ){
					$date = 'Yesterday';
					}elseif($r->date >= date('Y-m-d', strtotime('-4 days'))){
						$date = date("l", strtotime($r->date));
					}else{
						$date = date("d-M-y", strtotime($r->date));	
					}
		?>
			'<?= $date; ?>',	
		<?php } ?>
		]
    },

    series: [{
        type: 'column',
        colorByPoint: true,
        data: [<?php foreach($royalty as $r){
			echo round($r->sales*($r->royalty/100)).",";
		} ?>],
        showInLegend: false
    }]

});

</script>