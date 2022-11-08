<div class="card mg-t-15">
    <div class="card-header pd-y-20 d-md-flex align-items-center justify-content-between">
        <h6 class="mg-b-0">
            <strong><span style="font-size: 20px;">Volume Sold by Campuses</span></strong>
            <br/><br/>
            <strong>Start:</strong> <?= $heading_start ?> 
            &nbsp;&nbsp;&nbsp;&nbsp;
            <strong>End:</strong> <?= $heading_end ?>
        </h6>
        <ul class="list-inline d-flex mg-t-20 mg-sm-t-10 mg-md-t-0 mg-b-0">
            <li class="list-inline-item d-flex align-items-center">
                <a href="<?= base_url('analytics/exportCampusVolume') ?>" type="button" class="btn btn-outline-success rounded-pill pull-right"><span class="fa fa-file-excel-o"></span> &nbsp; &nbsp;Export to Excel</a>
            </li>
        </ul>
    </div>
    <div class="card-body">
        <table class="table table-bordered table-striped table-sm" id="datatable">
            <thead>
                <tr>
                    <th style="font-weight: bold; width: 5%;">SN</th>
                    <th style="font-weight: bold;">Campus Name</th>
                    <th style="font-weight: bold;">Volume Sold (Ltr)</th>
                    <th style="font-weight: bold;">AVG per Day (Ltr)</th>
                    <th style="font-weight: bold;">Perc. of Total</th>
                </tr>
            </thead>
                    <tbody>
                    <?php
                        if($days == 0){
                            $days = 1;
                        }
                        $total_water_volume = 0;
                        foreach($volume as $vv){
                            $total_water_volume = $total_water_volume + $vv->water_volume;
                        }
                        $total_water_volume_div = $total_water_volume;
                        if($total_water_volume == 0){
                            $total_water_volume_div = 1;
                        }
                        $i = 1;                 
                        foreach($volume as $v){
                            $perc_of_total = ($v->water_volume / $total_water_volume_div) * 100;
                            ?>
                        <tr>
                          <td><?= $i.'.' ?></td>
                          <td><?= $v->campus_name ?></td>
                          <td style="text-align: right;"><?= number_format($v->water_volume,2) ?></td>
                          <td style="text-align: right;"><?= number_format($v->water_volume/$days,2) ?></td>
                          <td style="text-align: right;"><?= number_format($perc_of_total,2).' %' ?></td>
                        </tr>  
                    <?php $i++; } ?>                                             
                    </tbody>
                    <tfoot>
                        <tr>
                            <td style="font-weight: bold;" colspan="2">Total</td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_water_volume,2) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_water_volume/$days,2) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_water_volume/$total_water_volume_div*100,0).' %' ?></td>
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