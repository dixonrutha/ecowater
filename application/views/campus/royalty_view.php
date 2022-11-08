<?php
    $this_month = 0;
    $prev_month = 0;
    $this_year = 0;
    $prev_year = 0;
    $total_paid = 0;
    $total_unpaid = 0;
    $total = 0;
    $total_sales = 0;
    $prev_year_total_sales = 0;
    
    foreach($royalty as $r){
        $royalty_amount = $r->sales*($r->royalty/100);
        $total = $total + $royalty_amount;                    
        $month_year = date('m-Y', strtotime($r->date));
        $year = date('Y', strtotime($r->date));
        if($month_year === date('m-Y')){$this_month = $this_month + $royalty_amount; }
        if($month_year === date('m-Y', strtotime(date('m-Y')." -1 month"))){ $prev_month = $prev_month + $royalty_amount; }
        if($year === date('Y')){ 
            $this_year = $this_year + $royalty_amount; 
            $total_sales = $total_sales + $r->sales;
            if($r->royalty_status == 'Paid'){
                    $total_paid = $total_paid + $royalty_amount;
                }else{
                    $total_unpaid = $total_unpaid + $royalty_amount;
                }
            }
        if($year === date('Y', strtotime(date('Y')." -1 year"))){
            $prev_year = $prev_year + $royalty_amount;
            $prev_year_total_sales = $prev_year_total_sales + $r->sales;
        }                                    
    }
    
    //MTD comparison
    if($prev_month == 0){
        $prev_month = 1;
    }
    $mtd = ((($this_month/$prev_month) - 1)*100);
    if($mtd < 0){
        $dir = 'down';
        $col = 'danger';
    }else{
       $dir = 'up';
       $col = 'success'; 
    }
    
    //YTD comparison
    if($prev_year == 0){
        $prev_year = 1;
    }
    $ytd = ((($this_year/$prev_year) - 1)*100);
    if($ytd < 0){
        $dir_ytd = 'down';
        $col_ytd = 'danger';
    }else{
       $dir_ytd = 'up';
       $col_ytd = 'success'; 
    }
    
    //YTD comparison total sales
    if($prev_year_total_sales == 0){
        $prev_year_total_sales = 1;
    }
    $sales_ytd = ((($total_sales/$prev_year_total_sales) - 1)*100);
    if($sales_ytd < 0){
        $dir_sales = 'down';
        $col_sales = 'danger';
    }else{
       $dir_sales = 'up';
       $col_sales = 'success'; 
    }
    
?>
<div class="row">
<div class="col-md-12">
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
</div>
<div class="col-md-3">
    <div class="card">
        <div class="card-header pd-y-10 pd-x-10 d-flex align-items-center justify-content-between">
                <h6 class="tx-semibold mg-b-0"><?= $campus->campus_name ?></h6>
        </div><!-- card-header -->
        <div class="card-body pd-25">
            <div class="row" style="text-align: center;">
                  <div class="col-md-12 mg-b-10">
                    <p class="tx-11 tx-uppercase tx-spacing-1 tx-medium tx-color-03">Royalty this month</p>
                    <h4 class="tx-normal tx-rubik tx-spacing--1" ><?= number_format($this_month,1) ?></h4>
                    <p> <small class="tx-11 tx-<?= $col ?> letter-spacing--2"><i class="icon ion-md-arrow-<?= $dir ?>"></i> <?= number_format($mtd,1) ?>%</small><small class="tx-11 letter-spacing--2"> than previous month</small></p>
                  </div>           
                  <div class="col-md-12 mg-b-10">
                    <p class="tx-11 tx-uppercase tx-spacing-1 tx-medium tx-color-03">Royalty this year</p>
                    <h4 class="tx-normal tx-rubik tx-spacing--1"><?= number_format($this_year,1) ?></h4>
                    <p> <small class="tx-11 tx-<?= $col_ytd ?> letter-spacing--2"><i class="icon ion-md-arrow-<?= $dir_ytd ?>"></i> <?= number_format($ytd,1) ?>%</small><small class="tx-11 letter-spacing--2"> than previous month</small></p>
                  </div>
                  <div class="col-md-12 mg-b-10">
                    <p class="tx-11 tx-uppercase tx-spacing-1 tx-medium tx-color-03">Paid Royalty <?= date('Y') ?></p>
                    <h4 class="tx-normal tx-rubik tx-spacing--1"><?= number_format($total_paid,1) ?></h4>                    
                  </div>
                  <div class="col-md-12 mg-b-10">
                    <p class="tx-11 tx-uppercase tx-spacing-1 tx-medium tx-color-03">UnPaid Royalty <?= date('Y') ?></p>
                    <h4 class="tx-normal tx-rubik tx-spacing--1"><?= number_format($total_unpaid,1) ?></h4>                    
                  </div>
                  <div class="col-md-12 mg-b-10">
                    <p class="tx-11 tx-uppercase tx-spacing-1 tx-medium tx-color-03">Total Campus Sales <?= date('Y') ?></p>
                    <h4 class="tx-normal tx-rubik tx-spacing--1"><?= number_format($total_sales,1) ?></h4>
                    <p> <small class="tx-11 tx-<?= $col_sales ?> letter-spacing--2"><i class="icon ion-md-arrow-<?= $dir_sales ?>"></i> <?= number_format($sales_ytd,1) ?>%</small><small class="tx-11 letter-spacing--2"> than previous year</small></p>
                  </div>
            </div>
        </div>
    </div>
</div>
    <div class="col-md-9">
        <div class="card"> 
            <div class="card-body"> 
                <ul class="nav nav-tabs nav-justified" id="myTab3" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="home-tab3" data-toggle="tab" href="#home3" role="tab" aria-controls="home" aria-selected="true">Royalt</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="profile-tab3" data-toggle="tab" href="#profile3" role="tab" aria-controls="profile" aria-selected="false">Invoices</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="contact-tab3" data-toggle="tab" href="#contact3" role="tab" aria-controls="contact" aria-selected="false">Action</a>
                    </li>
                </ul>
                <div class="tab-content bd bd-gray-300 bd-t-0 pd-20" id="myTabContent3">
                    <div class="tab-pane fade show active" id="home3" role="tabpanel" aria-labelledby="home-tab3">
                        <div class="card">
                            <div class="card-body">
                                <table id="eco-table-responsive" class="table table-bordered table-striped">
                                    <thead>
                                      <tr>
                                        <th style="font-weight: bold;">Date</th>
                                        <th style="font-weight: bold;">Campus Sales</th>
                                        <th style="font-weight: bold;">Rate</th>
                                        <th style="font-weight: bold;">Royalty</th>
                                        <th style="font-weight: bold;">Status</th>
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
                                            <td style="text-align: left"><?= date('D d-M-y', strtotime($r->date)) ?></td>
                                            <td style="text-align: right"><?= number_format($r->sales,2) ?></td>
                                            <td style="text-align: right"><?= number_format($r->royalty).'%' ?></td>
                                            <td style="text-align: right"><?= number_format($royalty_amount,2) ?></td>
                                            <td style="text-align: center">
                                            <?php
                                                if($r->royalty_status == 'Paid'){
                									if($r->date >= date('Y').'-01-01'){$total_paid = $total_paid + $royalty_amount;}                                    
                                                ?>
                                                <span class="badge badge-success"><?= $r->royalty_status ?></span> 
                                            <?php }elseif($r->royalty_status == 'Unpaid'){
                								if($r->date >= date('Y').'-01-01'){$total_unpaid = $total_unpaid + $royalty_amount;}
                                            ?>
                                                <span class="badge badge-warning"><?= $r->royalty_status ?></span> 
                                            <?php } ?>
                                            </td>
                                        </tr>    
                                    <?php $i++; } ?>                        
                                    </tbody>
                                </table>
                            </div>
                        </div>  
                    </div>
                    <div class="tab-pane fade" id="profile3" role="tabpanel" aria-labelledby="profile-tab3">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-body">
                                        <table id="eco-table-unresponsive1" class="table table-bordered table-striped" style="width: 100%">
                                            <thead>
                                              <tr>
                                                <th style="font-weight: bold;">Invoice No</th>
                                                <th style="font-weight: bold;">Amount (Tsh)</th>
                                                <th style="font-weight: bold;">From</th>
                                                <th style="font-weight: bold;">To</th>
                                                <th style="font-weight: bold;">Status</th>
                                                <th style="font-weight: bold;">Maker</th>
                                                <th style="font-weight: bold;">Action</th>
                                              </tr>
                                            </thead>
                                            <tbody>
                                            <?php
                                                $x = 1;
                                                foreach($invoices as $i){ ?>
                                                  <tr>
                                                    <td><?= $i->invoice_no ?></td>
                                                    <td style="text-align: right;"><?= number_format($i->amount,2) ?></td>
                                                    <td><?= date('d-M-y', strtotime($i->from_date)) ?></td>
                                                    <td><?= date('d-M-y', strtotime($i->to_date)) ?></td>
                                                    <td>
                                                    <?php
                                                        if($i->status == 'Paid'){ ?>
                                                        <span class="badge badge-success"><?= $i->status ?></span> 
                                                    <?php }else{ ?>
                                                        <span class="badge badge-warning"><?= $i->status ?></span> 
                                                    <?php } ?>
                                                    </td>
                                                    <td><?= $i->maker_id ?></td>
                                                    <td style="text-align: center;"><a href="<?= base_url('cd9a25f4b5b0854f5c667e9ea64ca992'.'/'.$i->id.'/'.$campus->campus_code) ?>" target="_blank" title="Download"><span class="badge badge-pill badge-light"><i class="fa fa-download"></i></span></a></td>    
                                                </tr>  
                                            <?php $x++; } ?>                        
                                            </tbody>
                                        </table>
                                    </div>
                                </div>                                
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="contact3" role="tabpanel" aria-labelledby="contact-tab3">
                        <div class="row">
                            <div class="col-md-6">
                            <?php if(!empty($this->session->userdata('campus_invoice_add'))){ ?> 
                                <div class="card">
                                    <form method="POST" action="<?= base_url('campus/viewCampusRoyalty/'.str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($campus_id)).'/'.$layout) ?>">
                                        <div class="card-header pd-y-10 pd-x-10 d-flex align-items-center justify-content-between">
                                                <h6 class="tx-semibold mg-b-0">Generate Invoice</h6>
                                        </div><!-- card-header -->
                                        <div class="card-body">
                                            <div class="form-row">
                                                <input type="hidden" name="invoice" value="generate"/>
                                				<input type="hidden" name="layout" value="<?= $layout ?>"/>
                                                <div class="form-group col-md-6">
                                                  <input type="text" id="dateFrom" class="form-control" placeholder="From" name="from_date" required="required" autocomplete="off"/>
                                                </div>
                                                <div class="form-group col-md-6">
                                                  <input type="text" id="dateTo" class="form-control" placeholder="To" name="to_date" required="required" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-footer bg-transparent pd-y-10 pd-x-10">
                                            <button type="reset" class="btn btn-secondary">Cancel</button>
                                            <button type="submit" class="btn btn-primary pull-right" >Submit</button>
                                        </div>
                                    </form>
                                </div>
                            <?php } ?> 
                        </div>
                        <div class="col-md-6">
                            <?php if(!empty($this->session->userdata('campus_invoice_pay'))){ ?>   
                                <div class="card">
                                    <form method="POST" action="<?= base_url('campus/viewCampusRoyalty/'.str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($campus_id)).'/'.$layout) ?>" >
                                        <div class="card-header pd-y-10 pd-x-10 d-flex align-items-center justify-content-between">
                                                <h6 class="tx-semibold mg-b-0">Pay Invoice</h6>
                                        </div>
                                        <div class="card-body">
                                            <input type="hidden" name="invoice" value="pay"/>
                                            <div class="form-group">
                                                <select class="custom-select" name="invoice_id" style="width: 100%;">
                                                    <option value="">Select invoice</option>
                                                    <?php foreach($unpaid_invoices as $ui){ ?>
                                                      <option value="<?= $ui->id ?>"><?= $ui->invoice_no ?></option>      
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="card-footer bg-transparent pd-y-10 pd-x-10">
                                            <button type="reset" class="btn btn-secondary">Cancel</button>
                                            <button type="submit" class="btn btn-success pull-right" >Submit</button>
                                        </div>
                                    </form>
                                </div>
                            <?php } ?> 
                        </div>
                        </div>
                    </div>
                </div>
           </div>            
         </div> 
    </div>
</div>
<script>
      $(function(){
        'use strict'
        var dateFormat = 'dd-M-yy',
        from = $('#dateFrom')
        .datepicker({
          defaultDate: '+1w',
          dateFormat: 'dd-M-yy',
          numberOfMonths: 2
        })
        .on('change', function() {
          to.datepicker('option','minDate', getDate( this ) );
        }),
        to = $('#dateTo').datepicker({
          defaultDate: '+1w',
          dateFormat: 'dd-M-yy',
          numberOfMonths: 2
        })
        .on('change', function() {
          from.datepicker('option','maxDate', getDate( this ) );
        });

        function getDate( element ) {
          var date;
          try {
            date = $.datepicker.parseDate( dateFormat, element.value );
          } catch( error ) {
            date = null;
          }

          return date;
        }
      });
      
      // Clearable selection
        $('.select2-clear').select2({
          minimumResultsForSearch: Infinity,
          placeholder: 'Choose one',
          allowClear: true
        });


     //datatable ecowater un-responsive
        $('#eco-table-unresponsive1').DataTable({
          order: [],
          autoWidth: true,
          language: {
            searchPlaceholder: 'Search...',
            sSearch: '',
            lengthMenu: 'Show _MENU_ entries',
          }
        });

</script>
  
    