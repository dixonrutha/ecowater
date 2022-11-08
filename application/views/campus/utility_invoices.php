<div class="row">
    <div class="col-md-9">
        <div class="card">
            <div class="card-body">
                <ul class="nav nav-line" id="myTab5" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="home-tab5" data-toggle="tab" href="#home5" role="tab" aria-controls="home" aria-selected="true" style="font-weight: bold; font-size: 14px;">Utility Usage</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab5" data-toggle="tab" href="#profile5" role="tab" aria-controls="profile" aria-selected="false" style="font-weight: bold; font-size: 14px;">Invoices</a>
                    </li>
                </ul>        
                <div class="tab-content mg-t-20" id="myTabContent5">
                    <div class="tab-pane fade show active" id="home5" role="tabpanel" aria-labelledby="home-tab5">
                        <table id="eco-table-responsive" class="table table-bordered table-striped">
                            <thead>
                                <tr>						
                                    <th style="font-weight: bold">Month</th>
                                    <th style="font-weight: bold">Station</th>
                                    <th style="font-weight: bold">Utility</th>
                                    <th style="font-weight: bold">Units</th>
                                    <th style="font-weight: bold">Unit Price</th>
                                    <th style="font-weight: bold">Total Cost</th>
                                    <th style="font-weight: bold">Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $i = 1;
                                $mtd = 0;
                                $ytd = 0;
                                foreach ($bills as $b) {
                                    $year = date('Y', strtotime($b->charge_month));
                                    if ($b->charge_month === date('M-Y')) {
                                        $mtd = $mtd + $b->total_cost;
                                    }
                                    if ($year === date('Y')) {
                                        $ytd = $ytd + $b->total_cost;
                                    }
                                    ?>
                                    <tr>
                                        <td><?= $b->charge_month ?></td>
                                        <td><?= $b->station_name ?></td>
                                        <td><?= $b->type ?></td>
                                        <td style="text-align:right"><?= $b->units ?></td>
                                        <td style="text-align:right"><?= number_format($b->unit_price, 2) ?></td>								
                                        <td style="text-align:right"><?= number_format($b->total_cost, 2) ?></td>
                                        <td>
                                            <?php if ($b->status == 'Paid') { ?>
                                                <span class="badge badge-success"><?= $b->status ?></span> 
                                            <?php } elseif ($b->status == 'Unpaid') { ?>
                                                <span class="badge badge-warning"><?= $b->status ?></span> 
                                            <?php } ?>
                                        </td>
                                    </tr>	
                                    <?php
                                    $i++;
                                }
                                ?>					
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="profile5" role="tabpanel" aria-labelledby="profile-tab5">
                        <table id="eco-table-unresponsive" class="table table-bordered table-striped table-sm">
                            <thead>
                                <tr>
                                    <th style="font-weight: bold">Invoice No</th>
                                    <th style="font-weight: bold">Water</th>
                                    <th style="font-weight: bold">Electricity</th>
                                    <th style="font-weight: bold">Total</th>
                                    <th style="font-weight: bold">Month</th>
                                    <th style="font-weight: bold">Status</th>
                                    <th style="font-weight: bold">Maker</th>
                                    <th style="font-weight: bold">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $x = 1;
                                foreach ($invoices as $i) {
                                    ?>
                                    <tr>
                                        <td><?= $i->invoice_no ?></td>
                                        <td style="text-align: right"><?= number_format($i->water, 2) ?></td>
                                        <td style="text-align: right"><?= number_format($i->electricity, 2) ?></td>
                                        <td style="text-align: right"><?= number_format($i->water + $i->electricity, 2) ?></td>
                                        <td><?= $i->bill_month ?></td>
                                        <td>
                                            <?php if ($i->status == 'Paid') { ?>
                                                <span class="badge badge-success"><?= $i->status ?></span> 
                                            <?php } elseif ($i->status == 'Unpaid') { ?>
                                                <span class="badge badge-warning"><?= $i->status ?></span> 
                                            <?php } ?>
                                        </td>
                                        <td><?= $i->maker_id ?></td>
                                        <td style="text-align: center">
                                            <div class="btn-group">
                                                <?php if ($i->status != 'Paid' && !empty($this->session->userdata('campus_invoice_add'))) { ?>
                                                    <a href="<?= base_url('campus/payUtilityInvoice/' . str_replace(array('+', '/', '='), array('-', '_', '~'), $this->encryption->encrypt($i->id)) . '/' . $campus_id) ?>" class="btn btn-xs btn-success" onclick="return confirm('Are you sure you want to pay this invoice?');" title="Pay Invoice"><span class="fa fa-dollar"></span></a>
                                                <?php } ?>									
                                                <a href="<?= base_url('campus/downloadUtilityInvoice/' . $i->id . '/' . str_replace(array('+', '/', '='), array('-', '_', '~'), $this->encryption->encrypt($campus_id))) ?>" class="btn btn-xs btn-light" target="_blank" title="Download Invoice"><span class="fa fa-download"></span></a>
                                                <?php if ($i->status != 'Paid' && !empty($this->session->userdata('campus_invoice_add'))) { ?>
                                                    <a href="<?= base_url('campus/deleteUtilityInvoice/' . str_replace(array('+', '/', '='), array('-', '_', '~'), $this->encryption->encrypt($i->id)) . '/' . $campus_id . '/' . $i->bill_month) ?>" class="btn btn-xs btn-danger" onclick="return confirm('Are you sure you want to delete this invoice?');" title="Delete Invoice"><span class="fa fa-trash-o"></span></a>
                                                <?php } ?>									
                                            </div>
                                        </td>
                                    </tr>							
                                    <?php
                                    $x++;
                                }
                                ?>						
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card">
            <div class="card-body">
                <h4 class="profile-username text-center"><?= $campus->campus_name ?></h4>
                <p class="text-muted text-center"><?= $campus->campus_code ?></p>
                <ul class="list-group list-group-unbordered">
                    <li class="list-group-item">
                        <b>MTD Cost</b> <a class="pull-right"><?= number_format($mtd, 2) ?></a>
                    </li>
                    <li class="list-group-item">
                        <b>YTD Cost</b> <a class="pull-right"><?= number_format($ytd, 2) ?></a>
                    </li>
                </ul>
            </div>
            <hr />            
            <?php if (!empty($this->session->userdata('campus_invoice_add'))) { ?>   
                <!--   <div class="box box-warning"> -->
                <form method="POST" action="<?= base_url('campus/viewCampusUtility/' . str_replace(array('+', '/', '='), array('-', '_', '~'), $this->encryption->encrypt($campus_id)) . '/' . $layout) ?>">
                    <div class="card-body">
                        <?php
                        $errors = validation_errors();
                        $error = $this->session->flashdata('error');
                        $success = $this->session->flashdata('success');
                        if (!empty($errors)) {
                            ?>
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <?= $errors; ?>
                            </div>
                        <?php } elseif (!empty($success)) { ?>
                            <div class="alert alert-success alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <?= $success; ?>
                            </div>
                        <?php } elseif (!empty($error)) { ?>
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <?= $error; ?>
                            </div>
                        <?php } ?>
                        <p class="text-muted text-center"><strong>Generate Invoice</strong></p>
                        <input type="hidden" name="invoice" value="generate"/>
                        <input type="hidden" name="action" value="generate"/>
                        <div class="form-group">
                            <input type="month" name="bill_month" class="form-control input-sm" placeholder="Month" required="required" autocomplete="off" />
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-warning btn-xs pull-right" style="margin-bottom: 10px;">Generate</button>
                        </div>                        
                    </div>
                </form>
                <!-- </div> -->
            <?php } ?>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $('#from').datepicker({
            format: "mm-yyyy",
            viewMode: "months",
            minViewMode: "months"
        })
    });
</script>
<script>
    $(function () {
        // datatable ecowater un-responsive
        $('#eco-table-unresponsive').DataTable({
            order: [],
            autoWidth: true,
            language: {
                searchPlaceholder: 'Search...',
                sSearch: '',
                lengthMenu: 'Show _MENU_ entries',
            }
        });
    });
</script>