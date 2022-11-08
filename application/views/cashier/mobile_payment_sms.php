<div class="row">
    <div class="col-md-12 col-sm-12">
        <form method="POST" action="<?= base_url('b0cbf919ab3638e70a5b377db94cd5ba89012c87335745c1902fccb8d0ac6949') ?>">
        <div class="card">           
            <div class="card-body">
                <?php if (validation_errors()): ?>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                      <?= validation_errors(); ?>
                    </div>
                <?php endif; ?>
                <?php if (!empty($this->session->flashdata('success'))): ?>
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                      <?= $this->session->flashdata('success') ?>
                    </div>
                <?php endif; ?>
                <input type="hidden" name="sub_id" value="<?= $sub->sub_id ?>"/>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label tx-semibold">Mobile <span class="tx-danger">*</span></label>
                    <div class="col-md-10">
                        <input type="number" name="mobile" value="<?= $sub->mobile ?>" class="form-control mg-b-15" required="required">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" name="update_mobile" class="custom-control-input" id="customCheck1">
                            <label class="custom-control-label" for="customCheck1">Update subscriber mobile number</label>
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label tx-semibold">Name</label>
                     <div class="col-md-10">
                        <input type="text" name="sub_name" value="<?= $sub->sub_name ?>" class="form-control" disabled="disabled">
                     </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label tx-semibold">Card No.</label>
                     <div class="col-md-10">
                        <input type="text" name="card_luhn" value="<?= $sub->card_luhn ?>" class="form-control" disabled="disabled">
                     </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label tx-semibold">Message</label>
                    <div class="col-md-10 mg-b-10">
                        <textarea name="message" class="form-control" rows="2" readonly="readonly"><?= $message ?></textarea>
                    </div>
                </div>                
                <a class="btn btn-secondary" href="<?= base_url('043390f2871d161b988b175ead45b6210be8853f05325c453be74989a1479712') ?>">Cancel</a>
                <button class="btn btn-info pull-right" type="submit">Send</button>
            </div>            
        </div> 
        </form>
    </div>   
</div>
