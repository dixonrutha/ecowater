<div class="row">
    <div class="col-md-12">
        <div class="card">
            <form action="<?= base_url('analytics/reports') ?>" method="POST">
            <div class="card-body">
                <?php
                $error = $this->session->flashdata('error');
                $success = $this->session->flashdata('success');
                if(!empty($error)){ ?>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                        <?= $error ?>
                    </div>
                <?php }elseif(!empty($success)){ ?>
                   <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                        <?= $success ?>
                    </div>
              <?php } ?>
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <label><strong>Start Month</strong></label>
                        <input type="month" name="start_month" class="form-control" placeholder="Start Month" style="min-height: 38px"/>
                    </div>
                    <div class="form-group col-md-2">
                        <label><strong>End Month</strong></label>
                        <input type="month" name="end_month" class="form-control" placeholder="End Month" style="min-height: 38px"/>
                    </div>
                    <div class="form-group col-md-3">
                        <label><strong>Report <span class="tx-danger">*</span></strong></label>
                        <select class="custom-select select2" name="report_name">
                            <option value="">Select</option>
                            <?php foreach($reports as $r){ ?>
                            <option value="<?= $r->short_desc ?>"><?= $r->report_name ?></option>      
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group col-md-3 mg-t-25" style="text-align: center;">
                        <div class="btn-group">
                          <button type="submit" class="btn btn-info rounded-pill" style="margin-right: 7px">View Report</button>
                          <button type="reset" class="btn btn-light rounded-pill">Reset Form</button>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
    <div class="col-md-12">
        <!-- Default landing page -->
        <div class="card mg-t-15" id="landing" style="display: <?= $show_hide_landing ?>;">
            <div class="card-header pd-y-20 d-md-flex align-items-center justify-content-between">
                <h6 class="mg-b-0"><strong><span style="font-size: 20px;">Campuses Revenue</span></strong>  <br/><br/><strong>Start:</strong> <?= date('M-y', strtotime('last day of previous month')) ?> <strong>&nbsp;&nbsp;&nbsp;&nbsp;End:</strong> <?= date('M-y', strtotime('last day of previous month')) ?></h6>
                <ul class="list-inline d-flex mg-t-20 mg-sm-t-10 mg-md-t-0 mg-b-0">
                    <li class="list-inline-item d-flex align-items-center">
                    <a href="<?= base_url('analytics/exportReport') ?>" type="button" class="btn btn-outline-success rounded-pill pull-right"><span class="fa fa-file-excel-o"></span> &nbsp; &nbsp;Export to Excel</a>
                    </li>
                </ul>                
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped table-sm" id="landing-table" style="border-collapse: collapse">
                    <thead>
                        <tr>
                          <th style="font-weight: bold; width: 5%;">SN</th>
                          <th style="font-weight: bold;">Campus Name</th>
                          <th style="font-weight: bold;">Recharges</th>
                          <th style="font-weight: bold;">Cash Sales</th>
                          <th style="font-weight: bold;">Subscription Fees</th>
                          <th style="font-weight: bold;">Total Revenue</th>
                          <th style="font-weight: bold;">AVG per day</th>
                          <th style="font-weight: bold;">Perc. of Total</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php                        
                        $i = 1;
                        $total_recharge = 0;
                        $total_cash_sale = 0;
                        $total_sub_fee = 0;
                        $total_revenue = 0;
                        $total_revenue_final = 1;
                        foreach($campus_data as $cc){
                           $total_revenue_final =  $total_revenue_final + $cc->recharge + $cc->cash_sale + $cc->sub_fee;
                        }
                        $total_revenue_per_day = 0;
                        $total_percentage = 0;
                        
                        foreach($campus_data as $cd){
                            $total_recharge = $total_recharge + $cd->recharge;
                            $total_cash_sale = $total_cash_sale + $cd->cash_sale;
                            $total_sub_fee = $total_sub_fee + $cd->sub_fee;
                            $campus_revenue = $cd->recharge+$cd->cash_sale+$cd->sub_fee;
                            $total_revenue = $total_revenue + $campus_revenue;
                            $revenue_per_day = $campus_revenue / $days_in_month;
                            $total_revenue_per_day = $total_revenue_per_day + $revenue_per_day;
                            $percentage_of_total = ($campus_revenue / $total_revenue_final)*100;
                            ?>
                        <tr>
                          <td><?= $i.'.' ?></td>
                          <td><?= $cd->campus_name ?></td>
                          <td style="text-align: right;"><?= number_format($cd->recharge,2) ?></td>
                          <td style="text-align: right;"><?= number_format($cd->cash_sale,2) ?></td>
                          <td style="text-align: right;"><?= number_format($cd->sub_fee,2) ?></td>
                          <td style="text-align: right;"><?= number_format($campus_revenue,2) ?></td>
                          <td style="text-align: right;"><?= number_format($revenue_per_day,2) ?></td>
                          <td style="text-align: right;"><?= number_format($percentage_of_total,2).' %' ?></td>
                        </tr>  
                    <?php $i++; } ?>                                             
                    </tbody>
                    <tfoot>
                        <tr>
                            <td style="font-weight: bold;" colspan="2">Total</td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_recharge,2) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_cash_sale,2) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_sub_fee,2) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_revenue,2) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_revenue_per_day,2) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_revenue/$total_revenue*100,0).' %' ?></td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
        <!-- Default landing page end-->
        <!-- Other reports -->
        <div style="display: <?= $show_hide_other ?>;">
              <?= $report_layout ?> 
        </div>
        <!-- Other reports -->
    </div>
</div>
<script>
        $(function(){
            $('#landing-table').DataTable({
              responsive: true,
              order: [],
              autoWidth: true,
              pageLength: 50,
              language: {
                searchPlaceholder: 'Search...',
                sSearch: '',
                lengthMenu: 'Show _MENU_ entries',
              }
            });
        });       
</script>