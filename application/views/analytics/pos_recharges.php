<div class="card mg-t-15">
    <div class="card-header pd-y-20 d-md-flex align-items-center justify-content-between">
        <h6 class="mg-b-0">
            <strong><span style="font-size: 20px;">POS Recharges</span></strong>
            <br/><br/>
            <strong>Start:</strong> <?= $heading_start ?> 
            &nbsp;&nbsp;&nbsp;&nbsp;
            <strong>End:</strong> <?= $heading_end ?>
        </h6>
        <ul class="list-inline d-flex mg-t-20 mg-sm-t-10 mg-md-t-0 mg-b-0">
            <li class="list-inline-item d-flex align-items-center">
                <a href="<?= base_url('analytics/exportPOSRecharges') ?>" type="button" class="btn btn-outline-success rounded-pill pull-right"><span class="fa fa-file-excel-o"></span> &nbsp; &nbsp;Export to Excel</a>
            </li>
        </ul>
    </div>
    <div class="card-body">
        <table class="table table-bordered table-striped table-sm" id="datatable">
            <thead>
                <tr>
                    <th style="font-weight: bold; width: 5%;">SN</th>
                    <th style="font-weight: bold;">POS</th>
                    <th style="font-weight: bold;">Total Recharge</th>
                    <th style="font-weight: bold;">AVG per day</th>
                    <th style="font-weight: bold;">Perc. of total</th>
                    <th style="font-weight: bold;">No. of Transactions</th>
                </tr>
            </thead>
                    <tbody>
                    <?php
                        if($days == 0){
                            $days = 1;
                        }
                        $total_recharge = 0;
                        foreach($recharges as $rr){
                            $total_recharge = $total_recharge + $rr->recharge;
                        }
                        $total_recharge_div = $total_recharge;
                        if($total_recharge == 0){
                           $total_recharge_div = 1; 
                        }                  
                        $i = 1;
                        $total_trans_count = 0;                                       
                        foreach($recharges as $r){ 
                            $avg_per_day = $r->recharge/$days;
                            $per_of_total = ($r->recharge/$total_recharge_div)*100;
                            $total_trans_count = $total_trans_count + $r->trans_count;
                            ?>
                        <tr>
                          <td><?= $i.'.' ?></td>
                          <td><?= $r->pos_name.' - '.$r->campus_name ?></td>
                          <td style="text-align: right;"><?= number_format($r->recharge,2) ?></td>
                          <td style="text-align: right;"><?= number_format($avg_per_day,2) ?></td>
                          <td style="text-align: right;"><?= number_format($per_of_total,2).' %' ?></td>
                          <td style="text-align: right;"><?= number_format($r->trans_count,0) ?></td>
                        </tr>  
                    <?php $i++; } ?>                                             
                    </tbody>
                    <tfoot>
                        <tr>
                            <td style="font-weight: bold;" colspan="2">Total</td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_recharge,2) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_recharge/$days,2) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_recharge/$total_recharge_div*100,0).' %' ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_trans_count,0) ?></td>
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