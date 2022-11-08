<script src='<?= base_url("assets/js/jquery.mask.min.js") ?>'></script>
<?php
if ($this->session->flashdata('success'))
    $success = $this->session->flashdata('success');
if ($this->session->flashdata('error'))
    $error = $this->session->flashdata('error');
// cashier float balance
$float_balance = $this->session->userdata('cashier_current_float') - $this->session->userdata('cashier_used_float');
$div = $this->session->userdata('cashier_current_float');
if ($this->session->userdata('cashier_current_float') == 0) {
    $div = 1;
}
$per_float_remain = $float_balance / $div;
$message = "Your current float balance is Tsh " . number_format($float_balance, 2);
if ($per_float_remain == 0) {
    $alert = 'danger';
    $message = "Your current float balance is Tsh 0.00 You can only add SPECIAL OFFER recharges";
} elseif ($per_float_remain <= 0.3) {
    $alert = 'warning';
} else {
    $alert = 'info';
}
?>
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
                <br/><br/>
                <a href="<?= base_url('b0cbf919ab3638e70a5b377db94cd5ba89012c87335745c1902fccb8d0ac6949') ?>"
                   class="alert-link"><i>Click here to send sms about mobile payments</i></a>
            </div>
        <?php } elseif (!empty($error)) { ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                <?= $error ?>
            </div>
        <?php } elseif (!empty ($this->session->flashdata('success_sms'))) { ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                <?= $this->session->flashdata('success_sms') ?>
            </div>
        <?php } ?>
        <div class="card">
            <form method="POST"
                  action="<?= base_url('043390f2871d161b988b175ead45b6210be8853f05325c453be74989a1479712') ?>">
                <div class="card-body">
                    <div class="form-group">
                        <label><strong>Card Number <span class="tx-danger">*</span></strong></label>
                        <!--<input type="number" class="form-control input-sm" name="card_no" value="<?= set_value('card_no'); ?>" id="card_no" autocomplete="off" placeholder="eg. 1350009230483" min="1" required="required"/>-->
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" style="font-size: 1em;">135000</span>
                            </div>
                            <input type="text" name="card_no" class="form-control"
                                   placeholder="Exclude first 6 digits eg. 0923042" maxlength="7"
                                   value="<?= set_value('card_no'); ?>" autocomplete="off" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="alert alert-<?= $alert ?>  alert-dismissible fade show" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            </button>
                            <strong><?= $message ?></strong>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <label><strong>Amount <span class="tx-danger">*</span></strong></label>
                        <input type="text" class="form-control input-sm money" name="amount"
                               value="<?= set_value('amount'); ?>" id="amount" autocomplete="off" required="required"/>
                    </div>
                    <div class="form-group">
                        <label><strong>Channel <span class="tx-danger">*</span></strong></label>
                        <?php
                        $pos_selected = '';
                        $val_selected = '';
                        if ($cashier->pay_mode == 'POS') {
                            $pos_selected = " selected ='selected' ";
                        } elseif ($cashier->pay_mode == 'VALIDATOR') {
                            $val_selected = " selected ='selected' ";
                        }
                        ?>
                        <select class="form-control select2" style="width: 100%" name="channel" autocomplete="off" required="required">
                            <option value="">--Select--</option>
                            <option value="<?= $cashier->pos_name ?>" <?php if ($cashier->pay_mode == 'VALIDATOR') {
                                echo 'disabled="disabled"';
                            } ?> <?= $pos_selected ?> >POS
                            </option>
                            <option value="validator" <?php if ($cashier->pay_mode == 'POS') {
                                echo 'disabled="disabled"';
                            } ?> <?= $val_selected ?> >Validator
                            </option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label><strong>Category <span class="tx-danger">*</span></strong></label>
                        <select class="form-control select2" style="width: 100%" name="category" id="category" autocomplete="off"
                                required="required">
                            <option value="">--Select--</option>
                            <?php
                            foreach ($topup_cat as $t) {
                                $disabled = '';
                                if ($cashier->offer == 'N' && $t->category == 'SPECIAL_OFFER') {
                                    $disabled = "disabled";
                                }
                                if ($cashier->recharge == 'N' && $t->category == 'RECHARGE') {
                                    $disabled = "disabled";
                                }
                                ?>
                                <option
                                    value="<?= $t->category ?>" <?= set_select('category', $t->category); ?> <?= $disabled ?> ><?= $t->category ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <!--                    <div class="form-group">
                                  <label><strong>Transaction Date</strong></label>
                                  <input type="date" class="form-control input-sm" name="trn_date" placeholder="Default today if left blank" id='trn_date' data-date-end-date='0d' autocomplete="off" />
                                </div>-->
                </div>
                <div class="card-footer mg-t-20">
                    <button class="btn btn-secondary" type="reset">Reset</button>
                    <button class="btn btn-info pull-right" type="submit">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript">

    $('.money').mask("#,##0", {reverse: true});

    /*
     //ajax topup card
     $('#add-topup').on('click',function(){
     var card_no = $('#card_no').val();
     var amount = $('#amount').val();
     var pos = $('#pos').val();
     var category = $('#category').val();
     var trn_date = $('#trn_date').val();
     jQuery("div#add-topup-loadgif").show();
     jQuery("div#add-topup-message").hide();
     //alert(message);
     $.ajax({
     type : "POST",
     url  : "<?php echo site_url('topup/ajaxAddTopup')?>",
     dataType : "JSON",
     data : {card_no:card_no , amount:amount, pos:pos, category:category, trn_date:trn_date},
     success: function(data){
     var action = data.action;
     var message = data.message;
     if (data === 'okay'){
     $('[name="card_no"]').val("");
     $('[name="amount"]').val("");
     $('[name="pos"]').val("");
     $('[name="category"]').val("");
     $('[name="trn_date"]').val("");
     jQuery("div#add-topup-loadgif").hide();
     jQuery("div#add-topup-message").show();
     jQuery("div#add-topup-message").html(message);
     }else{
     //alert (data);
     jQuery("div#add-topup-loadgif").hide();
     jQuery("div#add-topup-message").show();
     jQuery("div#add-topup-message").html(message);
     }
     }
     });
     return false;
     });
     */
</script>
<script>
    $(function(){
        // Basic with search
        $('.select2').select2({
            placeholder: 'Select',
            searchInputPlaceholder: 'Search options'
        });
    });
</script>