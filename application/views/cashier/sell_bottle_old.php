<div class="row">
    <div class="col-md-12">
        <?php if (validation_errors()): ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                <?= validation_errors(); ?>
            </div>
        <?php endif; ?>
        <?php if (!empty($success)) { ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                <?= $success ?>
            </div>
        <?php } ?>
        <?php if ($error != '') { ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <h6 class="alert-heading"><span class="fa fa-ban"></span> Subscriber not eligible for loan, see below errors :</h6>
                <?= $error ?>
            </div>
        <?php } ?>
        <div class="card">
            <form method="POST" action="<?= base_url('ae892dc5d86252a3617a66d8524fe3247da3b566d767dec82f2f8a4e41e11cae/' . $sub_data->sub_id) ?>">
                <div class="card-body">
                    <input type="hidden" name="cashier_id" value="<?= $this->session->userdata('cashier_id') ?>"/>
                    <input type="hidden" name="sub_id" value="<?= $sub_data->sub_id ?>"/>
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Subscriber Name : <span class="tx-danger">*</span></strong></label>
                        <input type="text" id="sub-name" class="form-control" name="sub_name" value="<?= $sub_data->sub_name ?>" disabled="disabled">
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Card No. : <span class="tx-danger">*</span></strong></label>
                        <input type="text" id="card-no" class="form-control" name="card_no" value="<?= $sub_data->card_no ?>" disabled="disabled">
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Bottle : <span class="tx-danger">*</span></strong></label>
                        <select  class="custom-select select2" name="bottle" style="width: 100%" autocomplete="off" required="required">
                            <option value="">--Select--</option>
                            <?php foreach ($bottles as $b) { ?>
                                <option value="<?= $b->id ?>" <?= set_select('bottle', $b->id); ?> ><?= $b->bottle_name . ' | ' . round($b->litres, 0) . ' ltr' . ' | ' . round($b->loan_rate, 0) . '%' . ' | Max ' . $b->max_sell ?></option> 
                            <?php } ?> 
                        </select>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Quantity : <span class="tx-danger">*</span></strong></label>
                        <input type="number" min="1" id="quantity" class="form-control" name="quantity" value="<?= set_value('quantity'); ?>" required="required" autocomplete="off"/>
                    </div>
                    <div class="col-md-12 mg-t-20 mg-md-t-10">
                        <label class="form-control-label"><strong>Mobile : <span class="tx-danger">*</span></strong></label>
                        <input type="number" min="255" id="quantity" class="form-control" name="mobile" value="<?= set_value('mobile'); ?>" required="required" autocomplete="off"/>
                    </div>
                </div>
                <div class="card-footer mg-t-20">
                    <button class="btn btn-secondary" type="reset">Reset</button>
                    <?php if ($error == '') { ?>                        
                        <button class="btn btn-info pull-right" type="submit">Submit</button>
                    <?php } ?>                    
                </div>
            </form>
        </div>
    </div>
</div>