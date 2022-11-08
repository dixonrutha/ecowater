<div class="row" id="ubuntu">    
    <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-olive-active"><i class="fa fa-calendar-minus-o"></i></span>
            <div class="info-box-content">
                <span class="info-box-text" style="font-weight: bold;">Sales <span style="text-transform: capitalize">(<?= date('M-Y') ?>)</span></span>
                <span class="info-box-number" style="text-align: center">TZS <?= number_format($month_sales->total_sales, 0) ?></span>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-blue-active"><i class="fa fa-money"></i></span>
            <div class="info-box-content">
                <span class="info-box-text"  style="font-weight: bold;">Earnings <span style="text-transform: capitalize">(<?= date('M-Y') ?>)</span></span>
                <span class="info-box-number" style="text-align: center">TZS <?= number_format($month_earn->t_amount, 0) ?></span>
            </div>
        </div>        
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-red-active"><i class="fa fa-calendar"></i></span>
            <div class="info-box-content">
                <span class="info-box-text" style="font-weight: bold;">Sales <span style="text-transform: capitalize">(<?= date('Y') ?>)</span></span>
                <span class="info-box-number" style="text-align: center">TZS <?= number_format($year_sales->total_sales, 0) ?> </span>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-aqua-active"><i class="fa fa-money"></i></span>
            <div class="info-box-content">
                <span class="info-box-text"  style="font-weight: bold;">Earnings <span style="text-transform: capitalize">(<?= date('Y') ?>)</span></span>
                <span class="info-box-number" style="text-align: center">TZS <?= number_format($year_earn->t_amount, 0) ?> </span>
            </div>
        </div>
    </div>
</div>
<div class="row" id="ubuntu"> 
    <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="box box-info">
            <div class="box-header with-border">
                <h5 class="box-title"><span class="fa fa-user"></span> My Details</h5>
            </div>
            <form action="<?= base_url('investors/updateInvestorDetails_1') ?>" method="POST">
                <div class="box-body">
                    <?php if (!empty($this->session->flashdata('error'))) { ?>
                        <div class="alert alert-danger alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <?= $this->session->flashdata('error'); ?>
                        </div>	
                    <?php } elseif (!empty($this->session->flashdata('success'))) { ?>
                        <div class="alert alert-success alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <?= $this->session->flashdata('success'); ?>
                        </div>
                    <?php } ?>					
                    <div class="form-group" style='margin-bottom: 9px'>
                        <label>Full name</label>
                        <input type="text" class="form-control input-sm" value='<?= $contract->first_name . " " . $contract->middle_name . " " . $contract->surname ?>' disabled>
                    </div>
                    <div class="form-group" style='margin-bottom: 9px'>
                        <label>Investment TZS</label>
                        <input type="text" class="form-control input-sm" value='<?= number_format($contract->invested_amount, 0) ?>' disabled>
                    </div>
                    <div class="form-group" style='margin-bottom: 9px'>
                        <label>Contract Date</label>
                        <input type="text" class="form-control input-sm" value='<?= date('d-M-Y', strtotime($contract->contract_date)) ?>' disabled>
                    </div>
                    <div class="form-group" style='margin-bottom: 9px'>
                        <label>Mobile</label>
                        <input type="number" min='1' class="form-control input-sm" name="investor_mobile" value='<?= $contract->mobile ?>' autocomplete="off" required="required">
                    </div>
                    <div class="form-group" style='margin-bottom: 9px'>
                        <label>Next of Kin</label>
                        <input type="text" class="form-control input-sm" name="next_kin_name" value='<?= $contract->next_of_kin ?>' autocomplete="off" required="required">
                    </div>
                    <div class="form-group" style='margin-bottom: 9px'>
                        <label>Next of Kin Mobile</label>
                        <input type="number" min='1' class="form-control input-sm" name="next_kin_mobile" value='<?= $contract->next_of_kin_mobile ?>' autocomplete="off" required="required">
                    </div>
                    <input type="hidden" name="contract_id" value="<?= $contract->id ?>"/>
                </div>
                <div class="box-footer">
                    <button type="reset" class="btn btn-default">Reset</button>
                    <button type="submit" class="btn btn-primary pull-right">Save</button>
                </div>
            </form>
        </div>
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="box box-solid">
            <div class="box-header">
                <h5 class="box-title"><span class="fa fa-file-pdf-o"></span> Statement</h5>				
            </div>
            <!-- For statement -->
            <div class="box-body">
                <?php if ($contract->revise === 'Y') { ?>
                    <form action="<?= base_url('investors/investorStatementRev') ?>" method="POST">
                    <?php } else { ?>
                        <form action="<?= base_url('investors/investorStatement') ?>" method="POST">
                        <?php } ?>				
                        <?php if (!empty($this->session->flashdata('stat_error'))) { ?>
                            <div class="alert alert-danger alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <?= $this->session->flashdata('stat_error'); ?>
                            </div>	
                        <?php } ?>	
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" placeholder="Start Date" name="start_date" class="form-control input-sm" id='start_date' data-date-end-date='0d' autocomplete="off" value="<?= set_value('start_date'); ?>" required="required" readonly="readonly"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-group">
                                    <input type="text" placeholder="End Date" name="end_date" class="form-control input-sm" id='end_date' data-date-end-date='0d' autocomplete="off" value="<?= set_value('end_date'); ?>" required="required" readonly="readonly"/>
                                </div>
                            </div>
                            <input type="hidden" name="contract_id" value="<?= $contract->id ?>"/>
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary btn-block"><span class="fa fa-download"></span> Download</button>
                            </div>
                        </div>
                    </form>
            </div>
            <!-- For statement -->
            <br/>
            <div class="box-header">
                <h5 class="box-title"><span class="fa fa-home"></span> My Stations</h5>				
            </div>
            <div class="box-body no-padding">
                <table class="table table-striped">
                    <?php
                    $i = 1;
                    foreach ($stations as $s) {
                        ?>
                        <tr>
                            <td style="width: 5%"><?= $i ?>.</td>
                            <td><?= $s->station_name ?></td>
                            <td style="width: 5%"><a href="<?= base_url('investors/viewStation/' . $s->station_id . '/' . $s->gsm . '/' . $contract_id) ?>" class="btn btn-xs btn-info"><span class="fa fa-search"></span></a></td>
                        </tr>	
                        <?php $i++;
                    } ?>					
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="box box-info">
            <div class="box-header with-border">
                <h5 class="box-title"><span class="fa fa-money"></span> My Earnings</h5>				
            </div>
            <div class="box-body">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Status</th>
                            <th>Rate</th>
                            <th>Total Sale</th>							
                            <th>Trans. Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $total_sales = 0;
                        $total_tran_amount = 0;
                        foreach ($sales as $s) {
                            ?>
                            <tr>
                                <td style='text-align: center'><?= date('d-M-Y', strtotime($s->sale_date)) ?></td>
                                <td style='text-align: center'><?= $s->status ?></td>
                                <td style='text-align: center'><?= $s->inv_rate . '%' ?></td>
                                <td style='text-align: right'><?= number_format($s->total_sales, 2) ?></td>							
                                <td style='text-align: right'><?= number_format($s->total_sales * $s->inv_rate / 100, 2) ?></td>						
                            </tr>
                            <?php
                            $total_sales = $total_sales + $s->total_sales;
                            $total_tran_amount = $total_tran_amount + ($s->total_sales * $s->inv_rate / 100);
                        }
                        ?>					
                    </tbody>
                    <tfoot>
                        <tr>
                            <th colspan='3'>Total</th>
                            <th style='text-align: right'><?= number_format($total_sales, 0) ?></th>
                            <th style='text-align: right'><?= number_format($total_tran_amount, 0) ?></th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
        $("#example1").DataTable({
            'order': [],
            pagingType: "full",
        });
        $('#example2').DataTable({
            "paging": false,
            "lengthChange": true,
            "searching": true,
            "ordering": true,
            "info": true,
            pagingType: "simple",
            'order': [],
            "autoWidth": false
        });
    });
</script>
<script>
    $(document).ready(function () {
        $('#start_date').datepicker({
            format: 'dd-M-yyyy',
            todayHighlight: true,
            weekStart: 1
        });
        $('#end_date').datepicker({
            format: 'dd-M-yyyy',
            todayHighlight: true,
            weekStart: 1
        })
    });
</script>