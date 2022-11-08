<style>
    #table_td{
        padding: 4px 10px;
    }
</style>
<div class='row'>
    <div class="col-md-3">
        <div class="card">
            <div class="card-body">
                <h3 class="profile-username text-center"><?= $contract->first_name.' '.$contract->surname ?></h3>
                <ul class="list-group list-group-unbordered">
                    <li class="list-group-item">
                        <b>Invested Amount</b> <a class="pull-right"><?= number_format($contract->invested_amount,0) ?></a>
                    </li>
                    <li class="list-group-item">
                        <b>Contract No</b> <a class="pull-right"><?= $contract->contract_no ?></a>
                    </li>
    				<li class="list-group-item">
                        <b>Contract Date</b> <a class="pull-right"><?= date("d-M-Y", strtotime($contract->contract_date)) ?></a>
                    </li>
    				<li class="list-group-item">
                        <b>Payback Preference</b> <a class="pull-right"><?= $contract->payback_pref ?></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>    
    <!-- Stations start -->
    <div class="col-md-4" id="station-initial">
        <div class="card">
            <div class="card-header tx-medium" style="font-size: 15px;">
                <span class="fa fa-home"></span> Stations
                <a href="#Modal_Station" class="btn btn-xs btn-outline-info pull-right" data-toggle="modal" data-animation="effect-scale">Add Station</a>
            </div> 
            <div class="card-body" id="stations">
                <div class="form-group row" id="station-loadgif-2" style="display: none">
                    <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                </div>
                <!-- Error/Success alerts <div> Start-->
                <div id="remove-station-message" style="display: none;">
                
                </div>
                <!-- Error/Success alerts <div> End -->
                <table class="table table-bordered table-striped table-sm">
                    <thead class="thead-dark">
                        <tr>
                          <th scope="col" style="font-size: 13px">Station</th>
                          <th scope="col" style="font-size: 13px; width: 10%;">Action</th>
                        </tr>
                      </thead>                      
                      <tbody>
                        <?php foreach($stations as $s){ ?>
                            <tr>
                                <td id="table_td"><?= $s->station_name ?></td>
                                <td id="table_td"><a href="javascript:void(0);" class="btn btn-xs btn-outline-danger" data-remove_station_id="<?= $s->station_id ?>" data-remove_contract_id="<?= $contract_id ?>" id="remove-station"><i class="fa fa-trash"></i></a></td>
                            </tr>  
                        <?php } ?>                                       
                      </tbody>                                         
                </table>
            </div> 
        </div>
    </div>
    <!-- Stations end -->
    <!-- Add Station Modal start-->
      <div class="modal fade" id="Modal_Station" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel6">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content tx-14">
          <div class="modal-header">
            <h6 class="modal-title" id="exampleModalLabel6">Add Station</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form action="#" autocomplete="off">
          <div class="modal-body" style="overflow:hidden;">
          <!-- Error/Success alerts <div> Start-->
            <div id="station-message" style="display: none;">
            
            </div>
          <!-- Error/Success alerts <div> End -->
              <div class="form-group row" id="station-loadgif" style="display: none">
                <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
              </div>
                <input type="hidden" name="contract_id" value="<?= $contract_id ?>" id="contract_id"/>            
                <div class="form-group row">
                      <label class="col-md-4 control-label">Stations <span class="tx-danger">*</span></label>
                      <div class="col-md-8">
                          <select name="station_add" id="station_add" class="custom-select" >
                              <option value="">-- Select --</option>
                                  <?php
                                  foreach($stations_add as $sa){ ?>
                                      <option value="<?= $sa->id ?>" ><?= $sa->station_name ?> </option>
                                  <?php } ?>
                            </select>
                      </div>
                </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-xs btn-secondary tx-13" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-xs btn-success tx-13" id="btn_station">Save</button>
          </div>
          </form>
        </div>
      </div>
    </div>
    <script type="text/javascript">
        //Add station to contract
        $('#btn_station').on('click',function(){
            var station_add = $('#station_add').val();
            var contract_id = $('#contract_id').val();
            jQuery("div#station-loadgif").show();
            //alert(station_add);
            $.ajax({
                type : "POST",
                url  : "<?= site_url('investors/ajaxAddStation')?>",
                dataType : "JSON",
                data : {station_add:station_add, contract_id:contract_id},
                success: function(data){
                    var action = data.action;
                    var message = data.message;
                    if (action === 'okay'){
                        jQuery("div#station-loadgif").hide();                    
                        jQuery("div#station-message").show();
                        jQuery("div#station-message").html(message); 
                        setTimeout(function(){location.reload();}, 1000);                      
                        //$('#Modal_Station').modal('hide');
                    }else{
                        jQuery("div#station-loadgif").hide();                    
                        jQuery("div#station-message").show();
                        jQuery("div#station-message").html(message);
                    }
                }
            });
            return false;
        });
        //Remove station from contract
        $('#stations').on('click','#remove-station',function(){
            var remove_station_id = $(this).data('remove_station_id');
            var remove_contract_id = $(this).data('remove_contract_id');
            jQuery("div#station-loadgif-2").show();
            //alert(remove_contract_id);
            $.ajax({
                type : "POST",
                url  : "<?= site_url('investors/ajaxRemoveStation')?>",
                dataType : "JSON",
                data : {remove_station_id:remove_station_id, remove_contract_id:remove_contract_id},
                success: function(data){
                    var action = data.action;
                    var message = data.message;
                    if (action === 'okay'){
                        jQuery("div#station-loadgif-2").hide();                    
                        jQuery("div#remove-station-message").show();
                        jQuery("div#remove-station-message").html(message); 
                        setTimeout(function(){location.reload();}, 1000); 
                    }else{
                        jQuery("div#station-loadgif-2").hide();                    
                        jQuery("div#remove-station-message").show();
                        jQuery("div#remove-station-message").html(message);
                    }
                }
            });
            return false;
        });
    </script>
    <!-- Add Station Modal end-->
    <!-- Exit rates start -->
    <div class="col-md-5">
        <div class="card">
            <div class="card-header tx-medium" style="font-size: 15px;">
                <span class="fa fa-exchange"></span> Exit Rates
                <a href="#Modal_Rate" class="btn btn-xs btn-outline-success pull-right" data-toggle="modal" data-animation="effect-scale">Add Rate</a>
            </div> 
            <div class="card-body" id="rate">
                <div class="form-group row" id="rate-loadgif-2" style="display: none">
                    <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                </div>
                <!-- Error/Success alerts <div> Start-->
                <div id="remove-rate-message" style="display: none;">
                
                </div>
                <!-- Error/Success alerts <div> End -->
                <table class="table table-bordered table-striped table-sm">
                    <thead class="thead-dark">
                        <tr>
                          <th scope="col" style="font-size: 13px">Year No.</th>
                          <th scope="col" style="font-size: 13px">Rate</th>
                          <th scope="col" style="font-size: 13px">Start Date</th>
                          <th scope="col" style="font-size: 13px">End Date</th>
                          <th scope="col" style="font-size: 13px; width: 10%;">Action</th>
                        </tr>
                      </thead>
                      <tbody>
                      <?php foreach($rates as $r){ ?>
                           <tr>
                              <td id="table_td"><?= $r->year_no ?></td>
                              <td id="table_td"><?= $r->int_rate.'%' ?></td>
                              <td id="table_td"><?= date("d-M-Y", strtotime($r->start_date)) ?></td>
                              <td id="table_td"><?= date("d-M-Y", strtotime($r->end_date)) ?></td>
                              <td id="table_td"><a href="javascript:void(0);" class="btn btn-xs btn-outline-danger" data-rate_id="<?= $r->id ?>" id="remove-rate"><i class="fa fa-trash"></i></a></td>
                            </tr>  
                      <?php } ?>                                               
                      </tbody>
                </table>
            </div> 
        </div>
    </div>
    <div class="modal fade" id="Modal_Rate" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel6">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content tx-14">
          <div class="modal-header">
            <h6 class="modal-title" id="exampleModalLabel6">Add Rate</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form action="#" autocomplete="off">
          <div class="modal-body" style="overflow:hidden;">
          <!-- Error/Success alerts <div> Start-->
            <div id="rate-message" style="display: none;">
            
            </div>
          <!-- Error/Success alerts <div> End -->
              <div class="form-group row" id="rate-loadgif" style="display: none">
                <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
              </div>
                <input type="hidden" name="rate_contract_id" value="<?= $contract_id ?>" id="rate_contract_id"/>            
                <div class="form-group row">
                      <label class="col-md-4 control-label">Year No. <span class="tx-danger">*</span></label>
                      <div class="col-md-8">
                          <input class="form-control" type="number" name="rate_year" id="rate_year"/> 
                      </div>
                </div>
                <div class="form-group row">
                      <label class="col-md-4 control-label">Int. Rate <span class="tx-danger">*</span></label>
                      <div class="col-md-8">
                          <input class="form-control" type="number" name="rate_int_rate" id="rate_int_rate"/> 
                      </div>
                </div>
                <div class="form-group row">
                      <label class="col-md-4 control-label">Start Date </label>
                      <div class="col-md-8">
                          <input class="form-control" type="date" name="rate_start_date" id="rate_start_date"/> 
                      </div>
                </div>
                <div class="form-group row">
                      <label class="col-md-4 control-label">End Date </label>
                      <div class="col-md-8">
                          <input class="form-control" type="date" name="rate_end_date" id="rate_end_date"/> 
                      </div>
                </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-xs btn-secondary tx-13" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-xs btn-success tx-13" id="btn_rate">Save</button>
          </div>
          </form>
        </div>
      </div>
    </div>
    <script>
        //Add rate
        $('#btn_rate').on('click',function(){
            var rate_contract_id = $('#rate_contract_id').val();
            var rate_year = $('#rate_year').val();
            var rate_int_rate = $('#rate_int_rate').val();
            var rate_start_date = $('#rate_start_date').val();
            var rate_end_date = $('#rate_end_date').val();
            jQuery("div#rate-loadgif").show();
            //alert(rate_start_date);
            $.ajax({
                type : "POST",
                url  : "<?= site_url('investors/ajaxAddRate')?>",
                dataType : "JSON",
                data : {rate_contract_id:rate_contract_id, rate_year:rate_year, rate_int_rate:rate_int_rate, rate_start_date:rate_start_date, rate_end_date:rate_end_date},
                success: function(data){
                    var action = data.action;
                    var message = data.message;
                    if (action === 'okay'){
                        jQuery("div#rate-loadgif").hide();                    
                        jQuery("div#rate-message").show();
                        jQuery("div#rate-message").html(message); 
                        setTimeout(function(){location.reload();}, 1000);                      
                        //$('#Modal_Station').modal('hide');
                    }else{
                        jQuery("div#rate-loadgif").hide();                    
                        jQuery("div#rate-message").show();
                        jQuery("div#rate-message").html(message);
                    }
                }
            });
            return false;
        });
        //Remove rate from contract
        $('#rate').on('click','#remove-rate',function(){
            var rate_id = $(this).data('rate_id');
            jQuery("div#rate-loadgif-2").show();
            //alert(remove_contract_id);
            $.ajax({
                type : "POST",
                url  : "<?= site_url('investors/ajaxRemoveRate')?>",
                dataType : "JSON",
                data : {rate_id:rate_id},
                success: function(data){
                    var action = data.action;
                    var message = data.message;
                    if (action === 'okay'){
                        jQuery("div#rate-loadgif-2").hide();                    
                        jQuery("div#remove-rate-message").show();
                        jQuery("div#remove-rate-message").html(message); 
                        setTimeout(function(){location.reload();}, 1000); 
                    }else{
                        jQuery("div#rate-loadgif-2").hide();                    
                        jQuery("div#remove-rate-message").show();
                        jQuery("div#remove-rate-message").html(message);
                    }
                }
            });
            return false;
        });
    </script>
    <!-- Exit rates start -->
</div>