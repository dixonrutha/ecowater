<div class="row">
    <div class="col-md-12">
        <?php if(!empty($this->session->flashdata('v_error'))){ ?>
    		<div class="alert alert-danger alert-dismissible fade show" role="alert">
                <?= $this->session->flashdata('v_error') ?>
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
    	<?php } ?>
        <form action="<?= base_url('topup/reverseMobPayment') ?>" method="POST">
        <div class="card">
            <div class="card-header tx-bold">Update Payment</div>
            <div class="card-body">
              <input type="hidden" name="payment_id" value="<?= $payment->id ?>" >
              <div class="form-group row">
                <label class="col-md-2 col-form-label">Ecowater Ref.</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" value="<?= $payment->eco_ref ?>" disabled >
                </div>
              </div>
              <div class="form-group row">
                <label class="col-md-2 col-form-label">Initiator</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" value="<?= $payment->msisdn ?>" disabled >
                </div>
              </div>
              <?php if($payment->validator_status == '104'){ ?>
                <input type="hidden" value="unvalidated" name="payment_state" >
                    <div class="form-group row">
                        <input type="hidden" value="<?= $payment->utilityref_card_no ?>" name="old_card" >                        
                        <label class="col-md-2 col-form-label">Card No. *</label>
                        <div class="col-md-4">
                            <input type="number" class="form-control" value="<?= $payment->utilityref_card_no ?>" name="utilityref_card_no" />
                        </div>
                    </div>
              <div class="form-group row">
                <label class="col-md-2 col-form-label">Validation</label>
                <div class="col-md-4">
                    <span class="badge badge-warning mg-b-5 mg-t-5">Pending</span>
                    <input type="hidden" class="form-control" value="104" name="validator_status" />
                </div>
              </div>
              <?php  }elseif($payment->validator_status == '100'){ ?>
                <input type="hidden" value="validated" name="payment_state" >
                  <div class="form-group row">                       
                        <label class="col-md-2 col-form-label">Card No.</label>
                        <div class="col-md-4">
                            <input type="number" class="form-control" value="<?= $payment->utilityref_card_no ?>" name="utilityref_card_no" readonly="readonly"/>
                        </div>
                  </div>
                <div class="form-group row">
                    <label class="col-md-2 col-form-label">Validation *</label>
                    <div class="col-md-4">
                        <span class="badge badge-success mg-b-5">Validated</span>
                        <input type="hidden" class="form-control" value="100" name="old_validator_status"/>
                        <select class="custom-select" name="validator_status" >
                            <option value="100" selected="selected" >Validated</option>
                            <option vvalue="104" >Pending</option>
                        </select>
                    </div>
                </div>
              <?php } ?>
              
               <div class="form-group row">
                    <label class="col-md-2 col-form-label">Amount</label>
                    <div class="col-md-4">
                        <input type="text" class="form-control" value="<?= $payment->amount ?>" disabled >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-2 col-form-label">Timestamp</label>
                    <div class="col-md-4">
                        <input type="text" class="form-control" value="<?= $payment->timestamp_selcom ?>" disabled >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-2 col-form-label">Maker</label>
                    <div class="col-md-4">
                        <input type="text" class="form-control" value="<?= $payment->maker_id ?>" disabled >
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <a href="<?= base_url('topup/selcomPayments') ?>" class="btn btn-sm btn-secondary" type="reset">Exit</a>
                <button class="btn btn-sm btn-info pull-right" type="submit">Save</button>
            </div>
      </div>
    </form>
    </div>
</div>