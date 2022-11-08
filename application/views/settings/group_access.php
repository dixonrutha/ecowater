<?php 
foreach($content->css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<link rel="stylesheet" href="<?= base_url("assets/iCheck/square/blue.css"); ?>"/>
<div class="row">
    <div class="col-md-12">
        <div class="alert alert-primary" role="alert"><strong>Group Access Configuration for <?= strtoupper($group_name) ?></strong></div>
        <?php
            $success = $this->session->flashdata('success');
            $error = $this->session->flashdata('error');
            if(!empty($success)){ ?>
                <div class="alert alert-success alert-dismissable col-md-12">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <?= $success ?>
                </div>
            <?php }elseif(!empty($error)){ ?>
                <div class="alert alert-error alert-dismissable col-md-12">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <?= $error ?>
                </div>
        <?php } ?>        
    </div>
    <!-- Menus start -->
    <div class="col-md-6">
    
    </div>
    <!-- Access rights end -->
    <div class="col-md-12">
        <div class="media align-items-stretch">
            <ul class="nav nav-tabs flex-column wd-150" id="myTab4" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" id="home-tab4" data-toggle="tab" href="#home4" role="tab" aria-controls="home" aria-selected="true">Menus</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="profile-tab4" data-toggle="tab" href="#profile4" role="tab" aria-controls="profile" aria-selected="false">Permissions</a>
              </li>
            </ul>
            <div class="media-body">
              <div class="tab-content bd bd-gray-300 bd-l-0 pd-20" id="myTabContent4">
                <!-- Menus start -->              
                <div class="tab-pane fade show active" id="home4" role="tabpanel" aria-labelledby="home-tab4">
                    <div class="card">
                      <div class="card-body">
                        <?= $content->output; ?>
                      </div>
                    </div>  
                </div>
                <!-- Menus end -->  
                <!-- Access rights start -->
                <div class="tab-pane fade" id="profile4" role="tabpanel" aria-labelledby="profile-tab4">
                    <div class="card">
                        <?php if($group_id != 1) { echo form_open("settings/usergroupsaccess/".$group_id); ?>
                        <div class="card-body">
                            <input type="hidden" value="<?= $group_id ?>" name="group" />
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th rowspan="2" class="text-center" style="font-weight: bold;">Module Name</th>
                                        <th colspan="5" class="text-center" style="font-weight: bold;">Permissions</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="font-weight: bold;">View</th>
                                        <th class="text-center" style="font-weight: bold;">Add</th>
                                        <th class="text-center" style="font-weight: bold;">Edit</th>
                                        <th class="text-center" style="font-weight: bold;">Delete</th>
                                        <th class="text-center" style="font-weight: bold;">Miscellaneous</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Subscribers</td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="sub_view" <?php echo $p->{'sub_view'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="sub_add" <?php echo $p->{'sub_add'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="sub_edit" <?php echo $p->{'sub_edit'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="sub_delete" <?php echo $p->{'sub_delete'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="sub_topup" <?php echo $p->{'sub_topup'} ? "checked" : ''; ?>>
                                            <label class="padding05"> Topup</label>
                                            <input type="checkbox" value="1" class="checkbox" name="sub_sms" <?php echo $p->{'sub_sms'} ? "checked" : ''; ?>>
                                            <label class="padding05"> SMS</label>
                                            <input type="checkbox" value="1" class="checkbox" name="sub_mail" <?php echo $p->{'sub_mail'} ? "checked" : ''; ?>>
                                            <label class="padding05"> Mail</label>
                                            <input type="checkbox" value="1" class="checkbox" name="sub_statement" <?php echo $p->{'sub_statement'} ? "checked" : ''; ?>>
                                            <label class="padding05"> Statement</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Stations</td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="stat_view" <?php echo $p->{'stat_view'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="stat_add" <?php echo $p->{'stat_add'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="stat_edit" <?php echo $p->{'stat_edit'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="stat_delete" <?php echo $p->{'stat_delete'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="stat_sales" <?php echo $p->{'stat_sales'} ? "checked" : ''; ?>>
                                            <label class="padding05"> Sales</label>
                                            <input type="checkbox" value="1" class="checkbox" name="stat_statement" <?php echo $p->{'stat_statement'} ? "checked" : ''; ?>>
                                            <label class="padding05"> Statement</label>
                                            <input type="checkbox" value="1" class="checkbox" name="stat_start" <?php echo $p->{'stat_start'} ? "checked" : ''; ?>>
                                            <label class="padding05"> Start</label>
                                            <input type="checkbox" value="1" class="checkbox" name="stat_shutdown" <?php echo $p->{'stat_shutdown'} ? "checked" : ''; ?>>
                                            <label class="padding05"> Shutdown</label>
                                            <input type="checkbox" value="1" class="checkbox" name="stat_restart" <?php echo $p->{'stat_restart'} ? "checked" : ''; ?>>
                                            <label class="padding05"> Restart</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Topup</td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="topup_view" <?php echo $p->{'topup_view'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="topup_add" <?php echo $p->{'topup_add'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="topup_edit" <?php echo $p->{'topup_edit'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="topup_delete" <?php echo $p->{'topup_delete'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="topup_pos" <?php echo $p->{'topup_pos'} ? "checked" : ''; ?>>
                                            <label class="padding05"> POS</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Cards</td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="card_view" <?php echo $p->{'card_view'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="card_add" <?php echo $p->{'card_add'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="card_edit" <?php echo $p->{'card_edit'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="card_delete" <?php echo $p->{'card_delete'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Filters</td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="filter_view" <?php echo $p->{'filter_view'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="filter_add" <?php echo $p->{'filter_add'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="filter_edit" <?php echo $p->{'filter_edit'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="filter_delete" <?php echo $p->{'filter_delete'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center"></td>
                                    </tr>
                                    <tr>
                                        <td>Filter Maintenance</td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="filter_maint_view" <?php echo $p->{'filter_maint_view'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="filter_maint_add" <?php echo $p->{'filter_maint_add'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="filter_maint_edit" <?php echo $p->{'filter_maint_edit'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="filter_maint_delete" <?php echo $p->{'filter_maint_delete'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="filter_maint_statement" <?php echo $p->{'filter_maint_statement'} ? "checked" : ''; ?>>
                                            <label class="padding05"> Statement</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Branch</td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="branch_view" <?php echo $p->{'branch_view'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="branch_add" <?php echo $p->{'branch_add'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="branch_edit" <?php echo $p->{'branch_edit'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="branch_delete" <?php echo $p->{'branch_delete'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center"></td>
                                    </tr>
                                    <tr>
                                        <td>Campus</td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="campus_view" <?php echo $p->{'campus_view'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="campus_add" <?php echo $p->{'campus_add'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="campus_edit" <?php echo $p->{'campus_edit'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                                            <input type="checkbox" value="1" class="checkbox" name="campus_delete" <?php echo $p->{'campus_delete'} ? "checked" : ''; ?>>
                                        </td>
                                        <td class="text-center">
                							<input type="checkbox" value="1" class="checkbox" name="campus_invoice_add" <?php echo $p->{'campus_invoice_add'} ? "checked" : ''; ?>>
                                            <label class="padding05"> Invoice Add</label>
                							<input type="checkbox" value="1" class="checkbox" name="campus_invoice_pay" <?php echo $p->{'campus_invoice_pay'} ? "checked" : ''; ?>>
                                            <label class="padding05"> Invoice Pay</label>
                							<input type="checkbox" value="1" class="checkbox" name="campus_invoice_delete" <?php echo $p->{'campus_invoice_delete'} ? "checked" : ''; ?>>
                                            <label class="padding05"> Invoice Delete</label>
                						</td>
                                    </tr>
                                </tbody>
                            </table>
                            <button type="submit" class="btn btn-primary pull-right" style="margin-bottom: 10px;" name="submitForm" value="permissions">Save</button>

                        </div>
                        <?php echo form_close(); } ?>
                    </div>


                </div>

                <!-- Access rights end -->
              </div>
            </div><!-- media-body -->
        </div>
    </div>
</div>
<script src="<?= base_url("assets/iCheck/icheck.min.js"); ?>"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%'
    });
  });
</script>
<?php foreach($content->js_files as $file): ?>
        <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>