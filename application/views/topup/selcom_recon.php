<div class="row">
    <div class="col-md-12">
        <?php if (!empty(validation_errors())) { ?>
            <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <?= validation_errors(); ?>
            </div>
        <?php } elseif (!empty($this->session->flashdata('error'))) { ?>
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
    </div>
    <div class='col-md-3'>
        <div class="card">
            <div class="card-header">
                <h6><strong>Upload Selcom File</strong></h6>
            </div>
            <form method='POST' action='<?= base_url('topup/selcomRecon') ?>' enctype='multipart/form-data'>  
                <div class="card-body">
                    <div class="custom-file">
                        <label class="custom-file-label">Choose File</label>
                        <input type="file" name='file' class="custom-file-input" accept=".xlsx, .xls, .csv" id="customFile">
                    </div>
                    <div id="file-upload-filename" style="margin-top: 10px;">                  
                    </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-info">Submit</button>
                </div>
            </form>
        </div>
        <div class="card mg-t-15 mg-b-15">
            <div class="card-body">
                <div class="btn-group-vertical mg-b-5  btn-block">
                    <a class="btn btn-outline-success"  href="<?= base_url('topup/selcomReconFinish') ?>" onClick="return confirm('Are you sure you want to process data?')">Process Upload</a>
                    <a class='btn btn-outline-danger' href="<?= base_url('topup/selcomReconTruncate') ?>" onClick="return confirm('Are you sure you want to clear data?')">Clear Data</a>
                    <a class='btn btn-outline-info' href="<?= base_url('topup/selcomReconSample') ?>">Download Sample</a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-9">
        <div class="card">
            <div class="card-body">              
                <ul class="nav nav-line" id="myTab5" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="home-tab5" data-toggle="tab" href="#home5" role="tab" aria-controls="home" aria-selected="true"><strong>Working</strong></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab5" data-toggle="tab" href="#profile5" role="tab" aria-controls="profile" aria-selected="false"><strong>On Selcom not in eCloud</strong></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab5" data-toggle="tab" href="#contact5" role="tab" aria-controls="contact" aria-selected="false"><strong>On eCloud not in Selcom</strong></a>
                    </li>
                </ul>
                <div class="tab-content mg-t-20" id="myTabContent5">
                    <!-- Working -->
                    <div class="tab-pane fade show active" id="home5" role="tabpanel" aria-labelledby="home-tab5">                        
                        <table class="table table-bordered table-striped table-sm mg-b-0" id="dtable2">
                            <thead class="thead-dark">
                                <tr>
                                    <th >processed</th>
                                    <th >matched</th>
                                    <th >trn_date</th>
                                    <th >time</th>
                                    <th >transid</th>
                                    <th >reference</th>
                                    <th >amount</th>
                                    <th >phone</th>
                                    <th >channel</th>                            
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($recon as $s) { ?>
                                    <tr>
                                        <td><?= $s->processed ?></td>
                                        <td><?= $s->matched ?></td>
                                        <td><?= date('d/M/Y', strtotime($s->report_date)) ?></td>
                                        <td><?= date('H:i:s', strtotime($s->report_date)) ?></td>
                                        <td><?= $s->transid ?></td>
                                        <td><?= $s->reference ?></td>
                                        <td style="text-align: right"><?= number_format($s->amount, 2) ?></td>
                                        <td><?= $s->phone ?></td>
                                        <td><?= $s->Channel ?></td>                                
                                    </tr>
                                <?php } ?>                
                            </tbody>
                        </table>
                    </div>
                    <!-- Working End -->
                    <!-- On Selcom not in eCloud -->
                    <div class="tab-pane fade" id="profile5" role="tabpanel" aria-labelledby="profile-tab5">                        
                        <table class="table table-bordered table-striped table-sm mg-b-0" id="dtable1">
                            <thead class="thead-dark">
                                <tr>
                                    <th>action</th>
                                    <th >trn_date</th>
                                    <th >time</th>
                                    <th >transid</th>
                                    <th >reference</th>
                                    <th >amount</th>
                                    <th >phone</th>
                                    <th >channel</th>                            
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($on_selcom_not_cloud as $s) { ?>
                                    <tr>
                                        <td><a href="javascript:void(0);" data-recon_id="<?= $s->id ?>" data-selcom_ref="<?= $s->reference ?>" data-amount="<?= number_format($s->amount, 2) ?>" data-trn_date="<?= $s->report_date ?>" data-trnid_oper="<?= $s->transid ?>" data-channel="<?= $s->Channel ?>" class="item_missing btn btn-xs btn-outline-success" >Post</a></td>
                                        <!--<td><a href="<?= base_url('topup/paymentPostTransaction/' . $s->id . '/' . $s->reference) ?>" class="btn btn-xs btn-outline-success" >Post</a></td>-->
                                        <td><?= date('d/M/Y', strtotime($s->report_date)) ?></td>
                                        <td><?= date('H:i:s', strtotime($s->report_date)) ?></td>
                                        <td><?= $s->transid ?></td>
                                        <td><?= $s->reference ?></td>
                                        <td style="text-align: right"><?= number_format($s->amount, 2) ?></td>
                                        <td><?= $s->phone ?></td>
                                        <td><?= $s->Channel ?></td>                                
                                    </tr>
                                <?php } ?>                
                            </tbody>
                        </table>
                    </div>
                    <!-- On Selcom not in eCloud End-->
                    <!-- On eCloud not in Selcom -->
                    <div class="tab-pane fade" id="contact5" role="tabpanel" aria-labelledby="contact-tab5">
                        <div class="btn-group mg-b-10" role="group" aria-label="Basic example">
                            <a class='btn btn-outline-success' href="<?= base_url('topup/onCloudMisingSelcomExport') ?>">Export to Excel</a>
                        </div>
                        <table class="table table-bordered table-striped table-sm mg-b-0" id="dtable3">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Eco Ref</th>
                                    <th>Card No.</th>
                                    <th>Amount</th>
                                    <th>Operator</th>
                                    <th>Mobile Ref</th>
                                    <th>Initiator</th>
                                    <th>Selcom Ref.</th>
                                    <th>Timestamp</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($on_cloud_not_selcom as $s) { ?>
                                    <tr>
                                        <td><?= $s->eco_ref ?></td>
                                        <td><?= $s->utilityref_card_no ?></td>
                                        <td style="text-align: right"><?= number_format($s->amount, 2) ?></td>
                                        <td><?= $s->operator ?></td>
                                        <td><?= $s->transid_operator ?></td>
                                        <td><?= $s->msisdn ?></td>
                                        <td><?= $s->reference_selcom ?></td>
                                        <td><?= date('d/M/Y H:i:s', strtotime($s->timestamp_selcom)) ?></td>
                                    </tr>
                                <?php } ?>                
                            </tbody>
                        </table>
                    </div>
                    <!-- On eCloud not in Selcom -->
                </div>
            </div>
        </div>
    </div>

    <!--Post transaction missing on cloud-->
    <form>
        <div class="modal fade" id="Modal_Missing" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Post Transaction Missing on Cloud</h5>
                    </div>                    
                    <div class="modal-body">
                        <!-- Error/Success alerts <div> Start-->
                        <div id="missing-message" style="display: none;">

                        </div>
                        <!-- Error/Success alerts <div> End -->
                        <div class="form-group row" id="loadgif" style="display: none">
                            <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                        </div>
                        <input type="hidden" name="recon_id" id="recon_id" />
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Selcom Reference</label>
                            <div class="col-md-8">
                                <input type="text" name="selcom_ref" id="selcom_ref" class="form-control input-sm" disabled autocomplete="off" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Amount</label>
                            <div class="col-md-8">
                                <input type="text" name="amount" id="amount" class="form-control input-sm" disabled autocomplete="off" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Channel</label>
                            <div class="col-md-8">
                                <input type="text" name="channel" id="channel" class="form-control input-sm" disabled autocomplete="off"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Operator ID</label>
                            <div class="col-md-8">
                                <input type="text" name="trnid_oper" id="trnid_oper" class="form-control input-sm" disabled autocomplete="off"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Transaction Date</label>
                            <div class="col-md-8">
                                <input type="text" name="trn_date" id="trn_date" class="form-control input-sm" disabled autocomplete="off"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Card No. <span class="tx-danger">*</span></label>
                            <div class="col-md-8">
                                <input type="number" name="card_no" id="card_no" placeholder="Enter card number without prefix eg. 6447745" class="form-control input-sm" required="required" autocomplete="off"/>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary pull-left" data-dismiss="modal">Close</button>
                        <button type="button" type="submit" id="btn-post-missing" class="btn btn-success">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!--Post transaction missing on cloud end-->    
</div>

<script>
    $(function () {
        $('#dtable1').DataTable({
            //responsive: true,
            order: [],
            autoWidth: true,
            language: {
                searchPlaceholder: 'Search...',
                sSearch: '',
                lengthMenu: 'Show _MENU_ entries',
            }
        });

        $('#dtable2').DataTable({
            responsive: true,
            order: [],
            autoWidth: true,
            language: {
                searchPlaceholder: 'Search...',
                sSearch: '',
                lengthMenu: 'Show _MENU_ entries',
            }
        });

        $('#dtable3').DataTable({
            //responsive: true,
            order: [],
            autoWidth: true,
            language: {
                searchPlaceholder: 'Search...',
                sSearch: '',
                lengthMenu: 'Show _MENU_ entries',
            }
        });

    });
</script>

<script type="text/javascript">
    var input = document.getElementById('customFile');
    var infoArea = document.getElementById('file-upload-filename');
    input.addEventListener('change', showFileName);
    function showFileName(event) {
        // the change event gives us the input it occurred in 
        var input = event.srcElement;
        // the input has an array of files in the `files` property, each one has a name that you can use. We're just using the name here.
        var fileName = input.files[0].name;
        // use fileName however fits your app best, i.e. add it into a div
        infoArea.textContent = 'File name: ' + fileName;
    }
</script>

<script type="text/javascript">
    $(document).ready(function () {
        //get data for topup record
        $('#profile5').on('click', '.item_missing', function () {
            var recon_id = $(this).data('recon_id');
            var trn_date = $(this).data('trn_date');
            var trnid_oper = $(this).data('trnid_oper');
            var selcom_ref = $(this).data('selcom_ref');
            var channel = $(this).data('channel');
            var amount = $(this).data('amount');
            //jQuery("div#result8").hide();
            jQuery("div#missing-message").hide();

            $('#Modal_Missing').modal('show');
            $('[name="recon_id"]').val(recon_id);
            $('[name="selcom_ref"]').val(selcom_ref);
            $('[name="trn_date"]').val(trn_date);
            $('[name="trnid_oper"]').val(trnid_oper);
            $('[name="channel"]').val(channel);
            $('[name="amount"]').val(amount);
            $('[name="card_no"]').val("");
        });
    });

    //ajax post missing transaction
    $('#btn-post-missing').on('click', function () {
        var recon_id = $('#recon_id').val();
        var card_no = $('#card_no').val();
        jQuery("div#loadgif").show();
        jQuery("div#missing-message").hide();
        //alert(message);
        $.ajax({
            type: "POST",
            url: "<?php echo site_url('topup/ajaxPostMissingTransaction') ?>",
            dataType: "JSON",
            data: {recon_id: recon_id, card_no: card_no},
            success: function (data) {
                var action = data.action;
                var message = data.message;
                if (action === 'success') {
                    jQuery("div#loadgif").hide();
                    jQuery("div#missing-message").show();
                    jQuery("div#missing-message").html(message);
                    setTimeout(function () {
                        window.location.reload();
                    }, 1000);
                } else {
                    jQuery("div#loadgif").hide();
                    jQuery("div#missing-message").show();
                    jQuery("div#missing-message").html(message);
                }
            }
        });
        return false;
    });

</script>