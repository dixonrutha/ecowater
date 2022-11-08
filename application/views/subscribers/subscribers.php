<?php 
    if($this->session->flashdata('message'))
        $message = $this->session->flashdata('message');
    if($this->session->flashdata('error'))
        $error  = $this->session->flashdata('error');
    if($this->session->flashdata('success'))
        $success  = $this->session->flashdata('success');
?>
<div class="card">
  <div class="card-header">
      Search Subsriber
      <div class="btn-group pull-right">
          <a href="<?= base_url('71e166fa855a3ace69d42b1c62892571') ?>" class="btn btn-xs btn-outline-success"><i class="fa fa-user-plus"></i> New Subsriber</a>
          <a href="<?= base_url('a4df3aee914ed5bf20dc624ab373ba88') ?>" class="btn bt-xs btn-outline-secondary"><i class="fa fa-file-excel-o" ></i> Export All</a>
        </div>
      </div>
  <div class="card-body">
     <div class="row">
         <div class="col-md-12">
            <?php if(!empty($error) || !empty($message) || !empty($success) ){ ?>
                <?php if (!empty($error)): ?>
                        <div class="alert alert-danger alert-dismissable">
                            <i class="fa fa-ban"></i>
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <?= $error; ?>
                        </div>
                <?php endif; ?>
                <?php if (!empty($message)): ?>
                        <div class="alert alert-success alert-dismissable">
                            <i class="fa fa-info"></i>
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                           <?= $message; ?>
                        </div>
                <?php endif; ?>
                <?php if (!empty($success)): ?>
                        <div class="alert alert-success alert-dismissable">
                            <i class="fa fa-check"></i>
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                           <?= $success; ?>
                        </div>
                <?php endif; ?>
                <?php }?> 
         </div>
     </div>
    <form action="" method="get">
      <div class="row row-sm">
            <div class="col-md-3 col-xs-2 mg-t-20 mg-md-t-10">
            </div>
            <div class="col-md-6 col-xs-8 mg-t-20 mg-md-t-10">
                <div class="input-group mg-b-2">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1"><i class="fa fa-search"></i></span>
                  </div>
                  <input autocomplete="off" id="search" type="text" class="form-control" placeholder="Type subscriber name, card number or mobile" />
                </div>
            </div>
            <div class="col-md-3 col-xs-2 mg-t-20 mg-md-t-10">
            </div>
        </div>
    </form>
  </div>
  <div class="card-body">
      <div style="text-align: center; display: none" class="row1" id="ajaxserach">
          <img style="margin-bottom: 10px" src="<?php echo base_url('assets/img/loading3.gif'); ?>"/>
      </div>
      <div id="txtHint" style="text-align:center;" class="table-responsive">
          <strong style="font-size: 13px;">Subscriber(s) details will be displayed here..</strong>
      </div>
  </div>
  <!--START TOPUP MODAL-->
        <form data-parsley-validate>
            <div class="modal fade" id="Modal_Edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Card TopUp</h5>
                  </div>                    
                  <div class="modal-body">
                     <!-- Error alerts -->
                        <div id="top-error-1" style="display: none" class="alert alert-danger fade show" role="alert">
                          Error! Please fill all mandatory fields.
                        </div>
                        <div id="top-error-2" style="display: none" class="alert alert-danger fade show" role="alert">
                          Error! Topup date cannot be greater than subscriber registration date
                        </div>
                        <div id="top-success" style="display: none" class="alert alert-success fade show" role="alert">
                          Topup successfully added
                        </div>
                    <!-- Error alerts -->
                      <div class="form-group row" id="result8" style="display: none">
                          <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                      </div>
                      <input type="hidden" name="sub_id_topup" id="sub_id_topup" />
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Full Name</label>
                            <div class="col-md-8">
                                <input type="text" name="sub_name_topup" id="sub_name_topup" class="form-control input-sm" placeholder="Subscriber Name" disabled autocomplete="off" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Card Number</label>
                            <div class="col-md-8">
                                <input type="text" name="card_no_topup" id="card_no_topup" class="form-control input-sm" placeholder="Card No." disabled autocomplete="off" />
                            </div>
                        </div>
                      <div class="form-group row">
                            <label class="col-md-4 col-form-label">Amount <span class="tx-danger">*</span></label>
                            <div class="col-md-8">
                                <input type="text" name="money" id="money" class="form-control input-sm" autocomplete="off" required="required"/>
                            </div>
                        </div>
                      <div class="form-group row">
                            <label class="col-md-4 col-form-label">Category <span class="tx-danger">*</span></label>
                            <div class="col-md-8">
                                <select  class="form-control input-sm" name="category_topup" id="category_topup" autocomplete="off" required="required">
                                    <option value="">--Select--</option>
                                    <?php
                                        foreach ($topup_cat as $t) { ?>
                                           <option value="<?= $t->category ?>" ><?= $t->category ?></option> 
                                    <?php } ?>
                                </select>
                            </div>
                      </div>
                      <div class="form-group row">
                            <label class="col-md-4 col-form-label">POS <span class="tx-danger">*</span></label>
                            <div class="col-md-8">
                                <select  class="form-control" name="pos_topup" id="pos_topup" style="width: 100%" autocomplete="off" required="required">
                                    <option value="">--Select--</option>
                                    <?php
                                        foreach ($pos as $p) { ?>
                                           <option value="<?= $p->pos_name ?>" ><?= $p->pos_name.' - ',$p->campus_name ?></option> 
                                    <?php } ?>
                                </select>
                            </div>
                      </div>
                      <div class="form-group row">
                            <label class="col-md-4 col-form-label">Trn Date</label>
                            <div class="col-md-8">
                                <input type="text" name="trn_date_topup" id="trn_date_topup" placeholder="Default today if left blank" class="form-control input-sm trn_date" data-date-end-date='0d' autocomplete="off" readonly/>
                            </div>
                      </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary pull-left" data-dismiss="modal">Close</button>
                    <button type="button" type="submit" id="btn_update" class="btn btn-warning">Save</button>
                  </div>
                </div>
              </div>
            </div>
            </form>
        <!--END TOPUP MODAL-->
        
        <!--SMS MODAL START-->
        <form>
            <div class="modal fade" id="Modal_SMS" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">SMS Subscriber</h5>
                  </div>                    
                  <div class="modal-body">
                      <!-- Error alerts -->
                        <div id="sms-error-1" style="display: none" class="alert alert-danger fade show" role="alert">
                          Error! Please fill all mandatory fields.
                        </div>
                        <div id="sms-success" style="display: none" class="alert alert-success fade show" role="alert">
                          SMS sent successfully
                        </div>
                    <!-- Error alerts -->
                      <div class="form-group row" id="loadgif_sms" style="display: none">
                          <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                      </div>
                      <input type="hidden" name="sub_id_sms" id="sub_id_sms" />
                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Full Name</label>
                            <div class="col-md-10">
                                <input type="text" name="sub_name_sms" id="sub_name_sms" class="form-control input-sm" placeholder="Subscriber Name" disabled autocomplete="off" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Card No.</label>
                            <div class="col-md-10">
                                <input type="text" name="card_no_sms" id="card_no_sms" class="form-control input-sm" placeholder="Card No." disabled autocomplete="off" />
                            </div>
                        </div>
                      <div class="form-group row">
                            <label class="col-md-2 col-form-label">Mobile</label>
                            <div class="col-md-10">
                                <input type="text" name="mobile_sms" id="mobile_sms" class="form-control input-sm" autocomplete="off" disabled autocomplete="off"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Message <span class="tx-danger">*</span></label>
                            <div class="col-md-10">
                                <textarea class="form-control" rows="7" name="message" id="message" placeholder="Message.." autocomplete="off" required="required"></textarea>
                            </div>
                        </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary pull-left" data-dismiss="modal">Close</button>
                    <button type="button" type="submit" id="btn_sms" class="btn btn-success">Send</button>
                  </div>
                </div>
              </div>
            </div>
            </form>
        <!--SMS MODAL END-->
        
        <!--EMAIL MODAL START-->
        <form>
            <div class="modal fade" id="Modal_Mail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Email Subscriber</h5>
                  </div>                    
                  <div class="modal-body">
                      <!-- Error alerts -->
                        <div id="email-error-1" style="display: none" class="alert alert-danger fade show" role="alert">
                          Error! Please fill all mandatory fields.
                        </div>
                        <div id="email-success" style="display: none" class="alert alert-success fade show" role="alert">
                          Email sent successfully
                        </div>
                    <!-- Error alerts -->
                      <div class="form-group row" id="loadgif_mail" style="display: none">
                          <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                      </div>
                      <input type="hidden" name="sub_id_mail" id="sub_id_mail" />
                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Full Name</label>
                            <div class="col-md-4">
                                <input type="text" name="sub_name_mail" id="sub_name_mail" class="form-control input-sm" placeholder="Subscriber Name" disabled autocomplete="off" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Card No.</label>
                            <div class="col-md-4">
                                <input type="text" name="card_no_mail" id="card_no_mail" class="form-control input-sm" placeholder="Card No." readonly="readonly" autocomplete="off" />
                            </div>
                        </div>
                      <div class="form-group row">
                            <label class="col-md-2 col-form-label">eMail ID</label>
                            <div class="col-md-4">
                                <input type="text" name="email_mail" id="email_mail" class="form-control input-sm" autocomplete="off" disabled />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Email Subject <span class="tx-danger">*</span></label>
                            <div class="col-md-10">
                                <input type="text" name="subject_mail" id="subject_mail" class="form-control input-sm" autocomplete="off" required="required"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Message <span class="tx-danger">*</span></label>
                            <div class="col-md-10">
                            <textarea class="textarea" name="message_mail" id="message_mail" placeholder="Message..." style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" required="required"></textarea>
                                
                            </div>
                        </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary pull-left" data-dismiss="modal">Close</button>
                    <button type="button" type="submit" id="btn_mail" class="btn btn-secondary">Send</button>
                  </div>
                </div>
              </div>
            </div>
            </form>
        <!--EMAIL MODAL END-->
</div>

<script>
$(document).ready(function(){
    var typingTimer;                //timer identifier
    var doneTypingInterval = 3000;  //time in ms, 5 second for example
    var $input = $('#search');    
    //on keyup, start the countdown
    $input.on('keyup', function () {
      jQuery("#ajaxserach").show();
      clearTimeout(typingTimer);
      typingTimer = setTimeout(doneTyping, doneTypingInterval);
    });

    //on keydown, clear the countdown 
    $input.on('keydown', function () {
      clearTimeout(typingTimer);
    });

    //user is "finished typing," do something
    function doneTyping () {
      var str =  $("#search").val();
       $("#ajaxserach").show();
       if(str === "") {
            $("#ajaxserach").hide();
            $( "#txtHint" ).html("<strong style='font-size: 13px'>Subscriber(s) details will be displayed here..</strong>"); 
       }else {
            $.get( 
                "<?php echo base_url();?>subscribers/ajaxSearchSubscribers?id="+str,
                function( data ){
                    $("#ajaxserach").hide();
                    $( "#txtHint" ).html( data );  
                    }
                );
       }
    }
});  
</script>
<script type="text/javascript">
	$(document).ready(function(){	
		//get data for topup record
        $('#txtHint').on('click','.item_edit',function(){
            var sub_id = $(this).data('sub_id');
            var sub_name = $(this).data('sub_name');
            var card_no  = $(this).data('card_no');
            jQuery("div#result8").hide();
            jQuery("div#top-error-1").hide();
            jQuery("div#top-error-2").hide();
            jQuery("div#top-success").hide();
            
            $('#Modal_Edit').modal('show');
            $('[name="sub_id_topup"]').val(sub_id);
            $('[name="sub_name_topup"]').val(sub_name);
            $('[name="card_no_topup"]').val(card_no);
            $('[name="money"]').val("");
            $('[name="category_topup"]').val("");
            $('[name="trn_date_topup"]').val("");
            $('[name="pos_topup"]').val("");
        });

        //save topup details
         $('#btn_update').on('click',function(){
            var sub_id = $('#sub_id_topup').val();
            var card_no = $('#card_no_topup').val();
            var amount   = $('#money').val();
            var category   = $('#category_topup').val();
            var pos     = $('#pos_topup').val();
            var trn_date   = $('#trn_date_topup').val();
            jQuery("div#result8").show();
            jQuery("div#top-error-1").hide();
            jQuery("div#top-error-2").hide();
            jQuery("div#top-success").hide();
            //alert(amount);
            $.ajax({
                type : "POST",
                url  : "<?php echo site_url('subscribers/addTopup')?>",
                dataType : "JSON",
                data : {sub_id:sub_id , card_no:card_no, amount:amount, category:category, trn_date:trn_date, pos:pos},
                success: function(data){
                    if (data === 'okay'){
                        $('[name="sub_id_topup"]').val("");
                        $('[name="sub_name_topup"]').val("");
                        $('[name="card_no_topup"]').val("");
                        $('[name="money"]').val("");
                        $('[name="category_topup"]').val("");
                        $('[name="trn_date_topup"]').val("");
                        $('[name="pos_topup"]').val("");
                        //show_product();
                        //alert('Topup done successfully');
                        jQuery("div#top-success").show();
                        jQuery("div#result8").hide();
                        setTimeout(function() {$('#Modal_Edit').modal('hide');}, 2000);
                    }else if(data === 'reg_date_error'){
                        //alert('Error! Topup date cannot be greater than subscriber registration date');
                        jQuery("div#top-error-2").show();
                        jQuery("div#result8").hide();
                    }else{
                        //alert('Error! Please fill all mandatory field');
                        jQuery("div#top-error-1").show();
                        jQuery("div#result8").hide();
                    }
                }
            });
            return false;
        });
    
    //get data for sms subscriber
    $('#txtHint').on('click','.item_sms',function(){
        var sub_id = $(this).data('sub_id');
        var sub_name = $(this).data('sub_name');
        var card_no  = $(this).data('card_no');
        var mobile  = $(this).data('mobile');
        jQuery("div#loadgif_sms").hide();
        jQuery("div#sms-error-1").hide();
        jQuery("div#sms-success").hide();

        $('#Modal_SMS').modal('show');
        $('[name="sub_id_sms"]').val(sub_id);
        $('[name="sub_name_sms"]').val(sub_name);
        $('[name="card_no_sms"]').val(card_no);
         $('[name="mobile_sms"]').val(mobile);
        $('[name="message"]').val("");
    });
    
    //send SMS to subscriber
     $('#btn_sms').on('click',function(){
        var sub_id = $('#sub_id_sms').val();
        var card_no = $('#card_no_sms').val();
        var mobile = $('#mobile_sms').val();
        var message   = $('#message').val();
        jQuery("div#loadgif_sms").show();
        jQuery("div#sms-error-1").hide();
        jQuery("div#sms-success").hide();
        //alert(message);
        $.ajax({
            type : "POST",
            url  : "<?php echo site_url('subscribers/smsSingleSubscriber')?>",
            dataType : "JSON",
            data : {sub_id:sub_id , card_no:card_no, mobile:mobile, message:message},
            success: function(data){
                if (data === 'okay'){
                    $('[name="sub_id_sms"]').val("");
                    $('[name="sub_name_sms"]').val("");
                    $('[name="card_no_sms"]').val("");
                    $('[name="mobile_sms"]').val("");
                    $('[name="message"]').val("");
                    jQuery("div#loadgif_sms").hide();
                    jQuery("div#sms-success").show();
                    setTimeout(function() {$('#Modal_SMS').modal('hide');}, 2000);
                }else{
                    jQuery("div#sms-error-1").show();
                    jQuery("div#loadgif_sms").hide();
                }
            }
        });
        return false;
    });
    
    //get data for email subscriber
    $('#txtHint').on('click','.item_mail',function(){
        var sub_id = $(this).data('sub_id');
        var sub_name = $(this).data('sub_name');
        var card_no  = $(this).data('card_no');
        var email  = $(this).data('email');
        jQuery("div#loadgif_mail").hide();
        jQuery("div#email-error-1").hide();
        jQuery("div#email-success").hide();

        $('#Modal_Mail').modal('show');
        $('[name="sub_id_mail"]').val(sub_id);
        $('[name="sub_name_mail"]').val(sub_name);
        $('[name="card_no_mail"]').val(card_no);
        $('[name="email_mail"]').val(email);
        //$('[name="message_mail"]').val("");
    });
    
    //send email to subscriber
     $('#btn_mail').on('click',function(){
        var sub_id = $('#sub_id_mail').val();
        var card_no = $('#card_no_mail').val();
        var email = $('#email_mail').val();
        var subject = $('#subject_mail').val();
        var message   = $('#message_mail').val();
        jQuery("div#loadgif_mail").show();
        jQuery("div#email-error-1").hide();
        jQuery("div#email-success").hide();
        //alert(message);
        $.ajax({
            type : "POST",
            url  : "<?php echo site_url('subscribers/emailSingleSubscriber')?>",
            dataType : "JSON",
            data : {sub_id:sub_id , card_no:card_no, email:email, subject:subject, message:message},
            success: function(data){
                if (data === 'okay'){
                    $('[name="sub_id_mail"]').val("");
                    $('[name="sub_name_mail"]').val("");
                    $('[name="card_no_mail"]').val("");
                    $('[name="email_mail"]').val("");
                    $('[name="subject_mail"]').val("");
                    $('[name="message_mail"]').val("");
                    jQuery("div#loadgif_mail").hide();
                    jQuery("div#email-success").show();
                    setTimeout(function() {$('#Modal_SMS').modal('hide');}, 2000);
                }else{
                    jQuery("div#email-error-1").show();
                    jQuery("div#loadgif_mail").hide();
                }
            }
        });
        return false;
    });

});
</script>
<script>
    $(document).ready(function () {
    $('.trn_date').datepicker({
        showOtherMonths: true,
          selectOtherMonths: true,
          changeMonth: true,
          changeYear: true,
          dateFormat: 'dd-M-yy',
          maxDate: 0
    });
});
</script>
