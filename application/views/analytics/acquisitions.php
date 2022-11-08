<div class="card mg-t-15">
    <div class="card-header pd-y-20 d-md-flex align-items-center justify-content-between"> 
        <h6 class="mg-b-0">
            <strong><span style="font-size: 20px;">Subscribers Acquisitions</span></strong>
            <br/><br/>
            <strong>Start:</strong> <?= $heading_start ?> 
            &nbsp;&nbsp;&nbsp;&nbsp;
            <strong>End:</strong> <?= $heading_end ?>
        </h6>
        <ul class="list-inline d-flex mg-t-20 mg-sm-t-10 mg-md-t-0 mg-b-0">
            <li class="list-inline-item d-flex align-items-center">
                <a href="<?= base_url('analytics/exportCampusAcquisation') ?>" type="button" class="btn btn-outline-success rounded-pill pull-right"><span class="fa fa-file-excel-o"></span> &nbsp; &nbsp;Export to Excel</a>
            </li>
        </ul> 
    </div>
    <div class="card-body">
        <table class="table table-bordered table-striped table-sm" id="datatable">
            <thead>
                <tr>
                    <th style="font-weight: bold; width: 5%;">SN</th>
                    <th style="font-weight: bold;">Campus Name</th>
                    <th style="font-weight: bold;">Total Subscriptions</th>
                    <th style="font-weight: bold;">Percentage of Total</th>
                    <th style="font-weight: bold;">Paid Subscriptions</th>
                    <th style="font-weight: bold;">Free Subscriptions</th>
                    <th style="font-weight: bold;">Total Subscriptions Fees</th>
                </tr>
            </thead>
                    <tbody>
                    <?php
                        if($days == 0){
                            $days = 1;
                        }
                        $i = 1;
                        $total_sub_count_new = 0;
                        foreach($acquisitions as $aa){
                            $total_sub_count_new = $total_sub_count_new + $aa->sub_count_new;
                        }
                        $total_sub_count_new_div = $total_sub_count_new;
                        if($total_sub_count_new == 0){
                            $total_sub_count_new_div = 1;
                        }
                        $total_sub_fee = 0;
                        $total_paid_sub_count = 0;
                        $total_free_sub_count = 0;                 
                        foreach($acquisitions as $a){ 
                            $perc_of_total = ($a->sub_count_new / $total_sub_count_new_div)*100;
                            $total_sub_fee = $total_sub_fee + $a->sub_fee;
                            $total_paid_sub_count = $total_paid_sub_count + $a->paid_sub_count;
                            $total_free_sub_count = $total_free_sub_count + $a->free_sub_count;
                            ?>
                        <tr>
                          <td><?= $i.'.' ?></td>
                          <td><?= $a->campus_name ?></td>
                          <td style="text-align: right;"><?= number_format($a->sub_count_new,0) ?></td>
                          <td style="text-align: right;"><?= number_format($perc_of_total,2).' %' ?></td>
                          <td style="text-align: right;"><?= number_format($a->paid_sub_count,0) ?></td>
                          <td style="text-align: right;"><?= number_format($a->free_sub_count,0) ?></td>
                          <td style="text-align: right;"><?= number_format($a->sub_fee,2) ?></td>
                        </tr>  
                    <?php $i++; } ?>                                             
                    </tbody>
                    <tfoot>
                        <tr>
                            <td style="font-weight: bold;" colspan="2">Total</td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_sub_count_new,0) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_sub_count_new/$total_sub_count_new_div*100,0).' %' ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_paid_sub_count,0) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_free_sub_count,0) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_sub_fee,2) ?></td>
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