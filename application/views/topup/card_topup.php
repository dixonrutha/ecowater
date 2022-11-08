<script src='<?= base_url("assets/js/jquery.mask.min.js") ?>'></script>
<?php foreach ($content->css_files as $file): ?>
    <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<div class="row">
    <div class="col-md-3">        
        <div class="card" id="topup-form">
            <div class="card-header  tx-medium"><strong>Card Recharge</strong></div>
            <!-- <form action="<?= base_url('topup/cardTopup') ?>" method="POST"> -->
            <form action="#" method="POST" id="cform" name="cform">
                <div class="card-body">
                    <div class="alert alert-warning" role="alert">
                        currently enabled for cashier only.
                    </div>
                    <!-- Error/Success alerts <div> Start-->
                    <div id="add-topup-message" style="display: none;">

                    </div>
                    <!-- Error/Success alerts <div> End -->
                    <div class="form-group" id="add-topup-loadgif" style="display: none; text-align: center;">
                        <img src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                    </div>
                    <div class="form-group">
                        <label>Card Number <span class="tx-danger">*</span></label>
                        <input type="number" class="form-control input-sm" name="card_no" id="card_no" autocomplete="off" placeholder="eg. 1037" min="1" />
                    </div>
                    <div class="form-group">
                        <label>Amount <span class="tx-danger">*</span></label>
                        <input type="text" class="form-control input-sm money" name="amount" id="amount" autocomplete="off"/>
                    </div>
                    <div class="form-group">
                        <label>POS <span class="tx-danger">*</span></label>
                        <select  class="custom-select" name="pos" id="pos" style="width: 100%" autocomplete="off">
                            <option value="">--Select--</option>
                            <?php foreach ($pos as $p) { ?>
                                <option value="<?= $p->pos_name ?>" ><?= $p->pos_name . ' - ', $p->campus_name ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Category <span class="tx-danger">*</span></label>
                        <select  class="custom-select input-sm" name="category" id="category" autocomplete="off">
                            <option value="">--Select--</option>
                            <?php foreach ($topup_cat as $t) { ?>
                                <option value="<?= $t->category ?>" ><?= $t->category ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Trn Date</label>
                        <input type="date" class="form-control input-sm" name="trn_date" placeholder="Default today if left blank" id='trn_date' data-date-end-date='0d' autocomplete="off" />
                    </div>
                </div>


                <div class="card-footer">
                    <button type="reset" class="btn btn-secondary btn-sm" onclick="resetForm(event, $(this));">Clear</button>
                    <?php if (!empty($this->session->userdata('topup_add'))) { ?>
                        <!--<button type="submit" class="btn btn-info btn-sm pull-right" id="add-topup">Submit</button>-->           
                    <?php } ?>                    
                </div>
            </form>
        </div>
    </div>


    <div class="col-md-9 mg-t-5">
        <div class="card">
            <div class="card-body">
                <?= $content->output; ?>
            </div>
        </div>        
    </div>
</div>
<?php foreach ($content->js_files as $file): ?>
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>

<script type="text/javascript">
                        $('.money').mask("#,##0", {reverse: true});
//ajax topup card
                        $('#add-topup').on('click', function () {
                            var card_no = $('#card_no').val();
                            var amount = $('#amount').val();
                            var pos = $('#pos').val();
                            var category = $('#category').val();
                            var trn_date = $('#trn_date').val();
                            jQuery("div#add-topup-loadgif").show();
                            jQuery("div#add-topup-message").hide();
//alert(message);
                            $.ajax({
                                type: "POST",
                                url: "<?php echo site_url('topup/ajaxAddTopup') ?>",
                                dataType: "JSON",
                                data: {card_no: card_no, amount: amount, pos: pos, category: category, trn_date: trn_date},
                                success: function (data) {
                                    var action = data.action;
                                    var message = data.message;
                                    if (data === 'okay') {
                                        $('[name="card_no"]').val("");
                                        $('[name="amount"]').val("");
                                        $('[name="pos"]').val("");
                                        $('[name="category"]').val("");
                                        $('[name="trn_date"]').val("");
                                        jQuery("div#add-topup-loadgif").hide();
                                        jQuery("div#add-topup-message").show();
                                        jQuery("div#add-topup-message").html(message);
                                    } else {
//alert (data);
                                        jQuery("div#add-topup-loadgif").hide();
                                        jQuery("div#add-topup-message").show();
                                        jQuery("div#add-topup-message").html(message);
                                    }
                                }
                            });
                            return false;
                        });
</script>