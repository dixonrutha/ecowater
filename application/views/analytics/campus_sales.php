<div class="card mg-t-15">
    <div class="card-header pd-y-20 d-md-flex align-items-center justify-content-between">
        <h6 class="mg-b-0">
            <strong><span style="font-size: 20px;">Campus Sales</span></strong>
            <br/><br/>
            <strong>Start:</strong> <?= $heading_start ?> 
            &nbsp;&nbsp;&nbsp;&nbsp;
            <strong>End:</strong> <?= $heading_end ?>
        </h6>
        <ul class="list-inline d-flex mg-t-20 mg-sm-t-10 mg-md-t-0 mg-b-0">
            <li class="list-inline-item d-flex align-items-center">
                <a href="<?= base_url('analytics/exportCampusSales') ?>" type="button" class="btn btn-outline-success rounded-pill pull-right"><span class="fa fa-file-excel-o"></span> &nbsp; &nbsp;Export to Excel</a>
            </li>
        </ul>
    </div>
    <div class="card-body">
        <table class="table table-bordered table-striped table-sm" id="datatable">
            <thead>
                <tr>
                    <th style="font-weight: bold; width: 5%;">SN</th>
                    <th style="font-weight: bold;">Campus Name</th>
                    <th style="font-weight: bold;">Card Sales</th>
                    <th style="font-weight: bold;">Cash Sales</th>
                    <th style="font-weight: bold;">Total Sales</th>
                    <th style="font-weight: bold;">Perc. of Total</th>
                    <th style="font-weight: bold;">AVG per day</th>
                </tr>
            </thead>
                    <tbody>
                    <?php
                        if($days == 0){
                            $days = 1;
                        }
                        $total_sales = 0;
                        $total_card_sales = 0;
                        $total_cash_sales = 0;
                        foreach($campus_data as $cc){
                            $total_card_sales = $total_card_sales + $cc->card_sale;
                            $total_cash_sales = $total_cash_sales + $cc->cash_sale;
                            $total_sales = $total_sales + $cc->card_sale + $cc->cash_sale;
                        }
                        $total_sales_div = $total_sales;
                        if($total_sales == 0){
                           $total_sales_div = 1; 
                        }                  
                        $i = 1;
                        $campus_total_sales = 0;                                     
                        foreach($campus_data as $c){ 
                            $campus_total_sales = $c->card_sale + $c->cash_sale;
                            $avg_per_day = $campus_total_sales/$days;
                            $per_of_total = ($campus_total_sales/$total_sales_div)*100;
                            ?>
                        <tr>
                          <td><?= $i.'.' ?></td>
                          <td><?= $c->campus_name ?></td>
                          <td style="text-align: right;"><?= number_format($c->card_sale,2) ?></td>
                          <td style="text-align: right;"><?= number_format($c->cash_sale,2) ?></td>
                          <td style="text-align: right;"><?= number_format($campus_total_sales,2) ?></td>
                          <td style="text-align: right;"><?= number_format($per_of_total,2).' %' ?></td>
                          <td style="text-align: right;"><?= number_format($avg_per_day,2) ?></td>
                        </tr>  
                    <?php $i++; } ?>                                             
                    </tbody>
                    <tfoot>
                        <tr>
                            <td style="font-weight: bold;" colspan="2">Total</td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_card_sales,2) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_cash_sales,2) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_sales) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_sales/$total_sales_div*100,0).' %' ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_sales/$days,2) ?></td>
                        </tr>
                    </tfoot>
        </table>
    </div>
</div>
    <script>
        $(function(){
            $('#datatable').DataTable({
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