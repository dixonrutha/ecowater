<div class="card mg-t-15">
    <div class="card-header pd-y-20 d-md-flex align-items-center justify-content-between"> 
        <h6 class="mg-b-0">
            <strong><span style="font-size: 20px;">Impacts by Campuses</span></strong>
            <br/><br/>
            <strong>Start:</strong> <?= $heading_start ?> 
            &nbsp;&nbsp;&nbsp;&nbsp;
            <strong>End:</strong> <?= $heading_end ?>
        </h6>
        <ul class="list-inline d-flex mg-t-20 mg-sm-t-10 mg-md-t-0 mg-b-0">
            <li class="list-inline-item d-flex align-items-center">
                <a href="<?= base_url('analytics/exportImpactCampus') ?>" type="button" class="btn btn-outline-success rounded-pill pull-right"><span class="fa fa-file-excel-o"></span> &nbsp; &nbsp;Export to Excel</a>
            </li>
        </ul> 
    </div>
    <div class="card-body">
        <table class="table table-bordered table-striped table-sm" id="datatable">
            <thead>
                <tr>
                    <th style="font-weight: bold; width: 5%;">SN</th>
                    <th style="font-weight: bold;">Campus Name</th>
                    <th style="font-weight: bold;">Bottles Saved</th>
                    <th style="font-weight: bold;">Money Saved</th>
                    <th style="font-weight: bold;">Carbon Mitigated (g)</th>
                </tr>
            </thead>
                    <tbody>
                    <?php
                        $i = 1;
                        $total_bottle_saved = 0;
                        $total_money_saved = 0;
                        $total_carbon_avoid = 0;             
                        foreach($impacts as $imp){ 
                            $total_bottle_saved = $total_bottle_saved + $imp->bottle_saved;
                            $total_money_saved = $total_money_saved + $imp->money_saved;
                            $total_carbon_avoid = $total_carbon_avoid + $imp->carbon_avoid;
                            ?>
                        <tr>
                          <td><?= $i.'.' ?></td>
                          <td><?= $imp->campus_name ?></td>
                          <td style="text-align: right;"><?= number_format($imp->bottle_saved,0) ?></td>
                          <td style="text-align: right;"><?= number_format($imp->money_saved,2) ?></td>
                          <td style="text-align: right;"><?= number_format($imp->carbon_avoid,2) ?></td>
                        </tr>  
                    <?php $i++; } ?>                                             
                    </tbody>
                    <tfoot>
                        <tr>
                            <td style="font-weight: bold;" colspan="2">Total</td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_bottle_saved,0) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_money_saved,2) ?></td>
                            <td style="font-weight: bold; text-align: right;"><?= number_format($total_carbon_avoid,2) ?></td>
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