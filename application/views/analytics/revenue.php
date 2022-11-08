<div class="card mg-t-15">
            <div class="card-header pd-y-20 d-md-flex align-items-center justify-content-between">
                <h6 class="mg-b-0"><strong><span style="font-size: 20px;">Campuses Revenue</span></strong>  <br/><br/><strong>Start:</strong> <?= $heading_start ?> <strong>&nbsp;&nbsp;&nbsp;&nbsp;End:</strong> <?= $heading_end ?></h6>
                <ul class="list-inline d-flex mg-t-20 mg-sm-t-10 mg-md-t-0 mg-b-0">
                    <li class="list-inline-item d-flex align-items-center">
                    <a href="<?= base_url('analytics/exportReport') ?>" type="button" class="btn btn-outline-success rounded-pill pull-right"><span class="fa fa-file-excel-o"></span> &nbsp; &nbsp;Export to Excel</a>
                    </li>
                </ul> 
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped table-sm" id="revenue-table">
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
                        if($total_revenue_final == 0){
                           $total_revenue_final = 1; 
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
                    <?php $i++; } 
                        if($total_revenue == 0){
                            $total_revenue = 1;
                        }
                    ?>                                             
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
    <script>
        $(function(){
            $('#revenue-table').DataTable({
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