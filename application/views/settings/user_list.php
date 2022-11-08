<style>
    #table_td{
        padding: 4px 10px;
    }
</style>
<div class="card">
      <div class="card-header d-md-flex align-items-center justify-content-between">
          <h5><span class="fa fa-users"></span> System users </h5>
          <ul class="list-inline d-flex mg-t-2 mg-sm-t-2 mg-md-t-0 mg-b-0">
            <li class="list-inline-item d-flex align-items-center">
              <a href="#modal6" class="btn btn-xs btn-outline-success pull-right" data-toggle="modal" data-animation="effect-scale"><i class="fa fa-user-plus"></i> New User</a>
            </li>
          </ul>        
      </div>
      <div class="card-body" id="users">
            <div id="btn-grp-loadgif" style="margin-left: 45%; margin-right: 45; display: none;">
                <img src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
            </div>
            <div id="btn-grp-res" style="display: none;">
            
            </div>      
          <table id="eco-table-responsive" class="table-bordered table-sm table-hover" style="border-collapse: collapse">
            <thead class="thead-dark">
                <tr>
                    <th style="font-size: 13px">Full name</th>
                    <th style="font-size: 13px">Username</th>
                    <th style="font-size: 13px">Email</th>
                    <th style="font-size: 13px">Group</th>
                    <th style="font-size: 13px">Status</th>
                    <th style="font-size: 13px">Last login</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $i = 1;
                    foreach($users as $u){ ?>
                       <tr>
                            <td id="table_td"><?= $u->name ?></td>
                            <td id="table_td"><?= $u->username ?></td>
                            <td id="table_td"><a href="mailto:<?= $u->email ?>"><?= $u->email ?></a></td>
                            <td id="table_td"><?= $u->group_name ?></td>
                            <td id="table_td">
                                <?php
                                    if($u->active == 1){
                                        echo '<span class="badge badge-success">Active</span>';
                                    }else{
                                        echo '<span class="badge badge-danger">Inactive</span>';
                                    }
                                ?>
                            </td>
                            <td id="table_td">
                            <?php
                                if(strtotime($u->date_last_login) == ''){
                                    echo '';
                                }else{
                                    echo date('D d-M-y H:i', strtotime($u->date_last_login));
                                }
                            ?>
                            </td>
                            <td style="text-align: right;" id="table_td">                                                                
                               <div class="btn-group">                               
                                  <?php if($u->active == 1){ ?>
                                    <a href="javascript:void(0);" data-user_id="<?= $u->id ?>" class="btn btn-xs btn-outline-secondary login_attempt" data-toggle="tooltip" data-placement="top" title="Clear login attempt"><i class="fa fa-eraser"></i></a>
                                    <a href="javascript:void(0);" data-user_id_deact="<?= $u->id ?>" class="btn btn-xs btn-outline-danger deactivate" data-toggle="tooltip" data-placement="top" title="Deactivate"><i class="fa fa-ban"></i></a>
                                  <?php }else{ ?>
                                      <a href="javascript:void(0);" data-user_id="<?= $u->id ?>" class="btn btn-xs btn-outline-success activate" data-toggle="tooltip" data-placement="top" title="Activate"><i class="fa fa-check"></i></a>
                                  <?php } ?>
                                  <a href="javascript:void(0);" class="btn btn-xs btn-outline-info view" data-user_id="<?= $u->id ?>" data-user_name="<?= $u->name ?>" data-user_username="<?= $u->username ?>" data-user_email="<?= $u->email ?>" data-user_group="<?= $u->user_group ?>" data-user_campus="<?= $u->campus ?>" data-user_mobile_no="<?= $u->mobile_no ?>" data-toggle="tooltip" data-placement="top" title="View/Edit"><i class="fa fa-search"></i></a>
                               </div>
                            </td>
                        </tr> 
                <?php $i++; } ?>
            </tbody>
        </table>
      </div>
      <!-- User add Modal -->
      <div class="modal fade" id="modal6" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel6">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content tx-14">
          <div class="modal-header">
            <h6 class="modal-title" id="exampleModalLabel6"><span class="fa fa-user-plus"></span> New user</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form action="#" autocomplete="off">
          <div class="modal-body" style="overflow:hidden;">
          <!-- Error alerts -->
            <div id="error-1" style="display: none" class="alert alert-danger fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
            </div>
            <div id="success" style="display: none" class="alert alert-success fade show" role="alert">
                User successfully registered.
            </div>
          <!-- Error alerts -->
              <div class="form-group row" id="loadgif" style="display: none">
                <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
              </div>
            <div class="form-group row">
              <label class="col-md-4 col-form-label">Full Name <span class="tx-danger">*</span></label>
              <div class="col-md-8">
                <input type="text" name="name" id="name" class="form-control input-sm" autocomplete="off" required="required" />
              </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4 control-label">Username <span class="tx-danger">*</span></label>
              <div class="col-md-8">
                  <input type="text" name="identity" id="identity" class="form-control" autocomplete="off" required="required" />
              </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4 control-label">Mobile</label>
              <div class="col-md-8">
                  <input type="text" name="mobile" id="mobile" class="form-control" autocomplete="off" />
              </div>
            </div>
            <div class="form-group row">
                  <label class="col-md-4 control-label">Group <span class="tx-danger">*</span></label>
                  <div class="col-md-8">
                      <select name="user_group" id="user_group" class="custom-select" >
                          <option value="">-- Select --</option>
                              <?php
                              foreach($groups as $g){ ?>
                                  <option value="<?= $g->id ?>" ><?= $g->group_name ?> </option>
                              <?php } ?>
                        </select>
                  </div>
            </div>
		    <div class="form-group row">
                  <label class="col-md-4 control-label">Campus (Optional)</label>
                  <div class="col-md-8">
                      <select name="campus" id="campus" class="custom-select">
                          <option value="">-- Select --</option>
                              <?php
                              foreach($campus as $c){ ?>
                                  <option value="<?= $c->id ?>" ><?= $c->campus_name ?> </option>
                              <?php } ?>
                        </select>
                  </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4 control-label">Email <span class="tx-danger">*</span></label>
              <div class="col-md-8">
                  <input type="email" id="email" name="email" class="form-control" autocomplete="off" required="required" />
              </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4 control-label">Password <span class="tx-danger">*</span></label>
              <div class="col-md-8">
                  <input type="password" name="password" id="password" class="form-control" autocomplete="off" required="required" />
              </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4 control-label">Confirm Password <span class="tx-danger">*</span></label>
              <div class="col-md-8">
                  <input type="password" name="password_confirm" id="password_confirm" class="form-control" autocomplete="off" required="required" />
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-xs btn-secondary tx-13" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-xs btn-success tx-13" id="btn_add">Submit</button>
          </div>
          </form>
        </div>
      </div>
    </div>
      <!-- User add Modal end-->
      <!-- User view/edit Modal start-->
      <div class="modal fade" id="Modal_View" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel6">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content tx-14">
          <div class="modal-header">
            <h6 class="modal-title" id="exampleModalLabel6"><span class="fa fa-edit"></span> View/Edit User</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form action="#" autocomplete="off">
          <div class="modal-body" style="overflow:hidden;">
          <!-- Error/Success alerts <div> Start-->
            <div id="view-message" style="display: none;">
            
            </div>
          <!-- Error/Success alerts <div> End -->
              <div class="form-group row" id="view-loadgif" style="display: none">
                <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
              </div>
            <input type="hidden" name="user_id" id="user_id"/>
            <div class="form-group row">
              <label class="col-md-4 col-form-label">Full Name <span class="tx-danger">*</span></label>
              <div class="col-md-8">
                <input type="text" name="user_name" id="user_name" class="form-control input-sm" autocomplete="off" required="required" />
              </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4 control-label">Username <span class="tx-danger">*</span></label>
              <div class="col-md-8">
                  <input type="text" name="user_username" id="user_username" class="form-control" autocomplete="off" required="required" disabled="disabled"/>
              </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4 control-label">Email <span class="tx-danger">*</span></label>
              <div class="col-md-8">
                  <input type="email" id="user_email" name="user_email" class="form-control" autocomplete="off" required="required" />
                  <input type="hidden" id="user_email_old" name="user_email_old" />
              </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4 control-label">Mobile</label>
              <div class="col-md-8">
                  <input type="number" min="1" id="user_mobile_no" name="user_mobile_no" class="form-control" autocomplete="off" />
              </div>
            </div>
            <div class="form-group row">
                  <label class="col-md-4 control-label">Group <span class="tx-danger">*</span></label>
                  <div class="col-md-8">
                      <select name="user_edit_group" id="user_edit_group" class="custom-select" >
                          <option value="">-- Select --</option>
                              <?php
                              foreach($groups as $g){ ?>
                                  <option value="<?= $g->id ?>" ><?= $g->group_name ?> </option>
                              <?php } ?>
                        </select>
                  </div>
            </div>
		    <div class="form-group row">
                  <label class="col-md-4 control-label">Campus (Optional)</label>
                  <div class="col-md-8">
                      <select name="user_campus" id="user_campus" class="custom-select" style="width: 100%;">
                          <option value="0">-- Select --</option>
                              <?php
                              foreach($campus as $c){ ?>
                                  <option value="<?= $c->id ?>" ><?= $c->campus_name ?> </option>
                              <?php } ?>
                        </select>
                  </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4 control-label">Password</label>
              <div class="col-md-8">
                  <input type="password" name="edit_password" id="edit_password" class="form-control" autocomplete="off" required="required" />
              </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4 control-label">Confirm Password</label>
              <div class="col-md-8">
                  <input type="password" name="edit_password_confirm" id="edit_password_confirm" class="form-control" autocomplete="off" required="required" />
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-xs btn-secondary tx-13" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-xs btn-success tx-13" id="btn_edit">Save</button>
          </div>
          </form>
        </div>
      </div>
    </div>
      <!-- User view/edit Modal end-->
    </div>
<script src="<?= base_url('lib/parsleyjs/parsley.min.js') ?>"></script>
<script type="text/javascript">
//ajax add new user
     $('#btn_add').on('click',function(){
        var name = $('#name').val();
        var identity = $('#identity').val();
        var mobile = $('#mobile').val();
        var user_group = $('#user_group').val();
        var campus = $('#campus').val();
        var email = $('#email').val();
        var password = $('#password').val();
        var password_confirm = $('#password_confirm').val();
        jQuery("div#loadgif").show();
        jQuery("div#error-1").hide();
        jQuery("div#success").hide();
        //alert(message);
        $.ajax({
            type : "POST",
            url  : "<?php echo site_url('settings/ajaxNewUser')?>",
            dataType : "JSON",
            data : {name:name , identity:identity, mobile:mobile, mobile:mobile, user_group:user_group, campus:campus, email:email, password:password, password_confirm:password_confirm},
            success: function(data){
                if (data === 'okay'){
                    $('[name="name"]').val("");
                    $('[name="identity"]').val("");
                    $('[name="mobile"]').val("");
                    $('[name="user_group"]').val("");
                    $('[name="campus"]').val("");
                    $('[name="email"]').val("");
                    $('[name="password"]').val("");
                    $('[name="password_confirm"]').val("");
                    jQuery("div#loadgif").hide();
                    jQuery("div#success").show();
                    setTimeout(function() {$('#modal6').modal('hide');}, 3000);
                    //location.reload();
                }else{
                    //alert (data);
                    jQuery("#loadgif").hide();
                    jQuery("#error-1").show();
                    jQuery("#error-1").html( data ); 
                }
            }
        });
        return false;
    });
    
    //ajax clear login attempt
     $('#users').on('click','.login_attempt',function(){
        var user_id =  $(this).data('user_id');
        jQuery("div#btn-grp-loadgif").show();
        jQuery("div#btn-grp-success").hide();
        jQuery("div#btn-grp-fail").hide(); 
        //alert(user_id);
        $.ajax({
            type : "POST",
            url  : "<?php echo site_url('settings/ajaxClearLogin')?>",
            dataType : "JSON",
            data : {user_id:user_id},
            success: function(data){
                var action = data.action;
                var message = data.message;
                //alert(message);
                if (action === 'okay'){
                    jQuery("div#btn-grp-loadgif").hide();
                    jQuery("#btn-grp-res").show();
                    jQuery("#btn-grp-res").html( message );
                }else{
                    jQuery("div#btn-grp-loadgif").hide();
                    jQuery("#btn-grp-res").show();
                    jQuery("#btn-grp-res").html(message); 
                }
            }
        });
        return false;
    });
    
    //ajax deactivate user
     $('#users').on('click','.deactivate',function(){
        var user_id_deact =  $(this).data('user_id_deact');
        jQuery("div#btn-grp-loadgif").show();
        jQuery("div#btn-grp-success").hide();
        jQuery("div#btn-grp-fail").hide(); 
        //alert(user_id);
        $.ajax({
            type : "POST",
            url  : "<?php echo site_url('settings/ajaxDeactivateUser')?>",
            dataType : "JSON",
            data : {user_id_deact:user_id_deact},
            success: function(data){
                var action = data.action;
                var message = data.message;
                //alert(message);
                if (action === 'okay'){
                    jQuery("div#btn-grp-loadgif").hide();
                    jQuery("#btn-grp-res").show();
                    jQuery("#btn-grp-res").html( message );
                }else{
                    jQuery("div#btn-grp-loadgif").hide();
                    jQuery("#btn-grp-res").show();
                    jQuery("#btn-grp-res").html(message); 
                }
            }
        });
        return false;
    });
    
    //ajax activate user
     $('#users').on('click','.activate',function(){
        var user_id =  $(this).data('user_id');
        jQuery("div#btn-grp-loadgif").show();
        jQuery("div#btn-grp-success").hide();
        jQuery("div#btn-grp-fail").hide(); 
        //alert(user_id);
        $.ajax({
            type : "POST",
            url  : "<?php echo site_url('settings/ajaxActivateUser')?>",
            dataType : "JSON",
            data : {user_id:user_id},
            success: function(res){
                var action = res.action;
                var message = res.message;
                if (action === 'okay'){
                    jQuery("div#btn-grp-loadgif").hide();
                    jQuery("#btn-grp-res").show();
                    jQuery("#btn-grp-res").html( message );
                }else{
                    jQuery("div#btn-grp-loadgif").hide();
                    jQuery("#btn-grp-res").show();
                    jQuery("#btn-grp-res").html(message); 
                }
            }
        });
        return false;
    });
    
    //get data for edit user
        $('#users').on('click','.view',function(){
            var user_id = $(this).data('user_id');
            var user_name = $(this).data('user_name');
            var user_username  = $(this).data('user_username');
            var user_email  = $(this).data('user_email');
            var user_email_old  = $(this).data('user_email');
            var user_edit_group  = $(this).data('user_group');
            var user_campus  = $(this).data('user_campus');
            var user_mobile_no  = $(this).data('user_mobile_no');
            jQuery("div#view-loadgif").hide();
            jQuery("div#view-message").hide();
            
            $('#Modal_View').modal('show');
            $('[name="user_id"]').val(user_id);
            $('[name="user_name"]').val(user_name);
            $('[name="user_username"]').val(user_username);
            $('[name="user_email"]').val(user_email);
            $('[name="user_email_old"]').val(user_email_old);
            $('[name="user_edit_group"]').val(user_edit_group);
            $('[name="user_campus"]').val(user_campus);
            $('[name="user_mobile_no"]').val(user_mobile_no);
            $('[name="edit_password"]').val("");
            $('[name="edit_password_confirm"]').val("");
        });
    
    //update user details
     $('#btn_edit').on('click',function(){
        var user_id = $('#user_id').val();
        var user_name = $('#user_name').val();
        var user_username = $('#user_username').val();
        var user_email = $('#user_email').val();
        var user_email_old = $('#user_email_old').val();
        var user_edit_group = $('#user_edit_group').val();
        var user_campus = $('#user_campus').val();
        var user_mobile_no = $('#user_mobile_no').val();
        var edit_password = $('#edit_password').val();
        var edit_password_confirm = $('#edit_password_confirm').val();
        jQuery("div#view-loadgif").show();
        //alert(edit_password);
        //alert(user_campus);
        $.ajax({
            type : "POST",
            url  : "<?php echo site_url('settings/ajaxEditUser')?>",
            dataType : "JSON",
            data : {user_id:user_id, user_name:user_name, user_username:user_username, user_email:user_email, user_email_old:user_email_old, user_edit_group:user_edit_group, user_campus:user_campus, user_mobile_no:user_mobile_no, edit_password:edit_password, edit_password_confirm:edit_password_confirm},
            success: function(data){
                var action = data.action;
                var message = data.message;
                if (action === 'okay'){
                    jQuery("div#view-loadgif").hide();                    
                    jQuery("div#view-message").show();
                    jQuery("div#view-message").html(message);
                    //setTimeout(function(){$('#Modal_View').modal('hide');}, 500);
                    //location.reload();
                    setTimeout(function(){location.reload();}, 2000);
                }else{
                    jQuery("div#view-loadgif").hide();                    
                    jQuery("div#view-message").show();
                    jQuery("div#view-message").html(message);
                }
            }
        });
        return false;
    });
        
</script>