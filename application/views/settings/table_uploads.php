<div class="row">
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
    <?php } ?>
    <div class='col-md-3'>
        <div class="card">
            <div class="card-header">
                <h6><strong>Upload File</strong></h6>
            </div>
            <form method='POST' action='<?= base_url('809e41f3c92e39b8a833737c57e29abf') ?>' enctype='multipart/form-data'>  
                <div class="card-body">
                    <div class="custom-file">
                        <label class="custom-file-label">Choose File</label>
                        <input type="file" name='file' class="custom-file-input" required='required' accept=".xlsx, .xls, .csv" id="customFile">
                    </div>
                    <div id="file-upload-filename" style="margin-top: 10px;">                  
                    </div>
                    <div class="form-group mg-t-10">
                        <label><strong>Category</strong></label>
                        <select class="custom-select" name='category' required='required'>
                            <option value=''>--Select--</option>
                            <option value='subscribers'>Subscribers</option>
                            <option value='topups'>Recharges</option> 
                        </select>
                    </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-info">Submit</button>
                </div>
            </form>
        </div>
    </div>
    <div class='col-md-9'>
        <div class="card">
            <div class="card-body">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"><strong>Subscribers</strong></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false"><strong>Recharges</strong></a>
                    </li>
                </ul>
                <div class="tab-content bd bd-gray-300 bd-t-0 pd-20" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <div class="btn-group mg-b-15" role="group" aria-label="Basic example">
                            <a class="btn btn-outline-info"  href="<?= base_url('settings/finishUploadSubscribers') ?>" onClick="confirm('Are you sure you want to finish upload?')">Finish Upload</a>
                            <a class='btn btn-outline-warning' href="<?= base_url('settings/truncateTable/subscribers') ?>" onClick="confirm('Are you sure you want to truncate table?')">Truncate Table</a>
                            <a class='btn btn-outline-info' href="<?= base_url('settings/downloadSample/subscribers') ?>">Download Sample</a>
                            <a class='btn btn-outline-warning' href="<?= base_url('settings/exportSubscriberDump') ?>">Export Dump</a>
                        </div>
                        <table class="table table-bordered table-striped table-sm mg-b-0" id="dtable2">
                            <thead class="thead-dark">
                                <tr>
                                    <th >Mobile</th>
                                    <th >Sub_name</th>
                                    <th >Card_no</th>
                                    <th >Gender</th>
                                    <th >Email</th>
                                    <th >Reg_date</th>
                                    <th >Category</th>
                                    <th >Campus</th>
                                    <th >Reg_plan</th>
                                    <th >Sub_fee_amt</th>
                                    <th >Top_up</th>
                                    <th >POS</th>
                                    <th >Topup_cat</th>
                                    <th >Upload_status</th>
                                    <th >Error</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($subscribers as $s) { ?>
                                    <tr>
                                        <td><?= $s->mobile ?></td>
                                        <td><?= $s->sub_name ?></td>
                                        <td><?= $s->card_no ?></td>
                                        <td><?= $s->gender ?></td>
                                        <td><?= $s->email ?></td>
                                        <td><?= date('d/m/Y', strtotime($s->reg_date)) ?></td>
                                        <td><?= $s->category ?></td>
                                        <td><?= $s->campus ?></td>
                                        <td><?= $s->reg_plan ?></td>
                                        <td><?= number_format($s->sub_fee_amt, 0) ?></td>
                                        <td><?= number_format($s->top_up, 0) ?></td>
                                        <td><?= $s->pos ?></td>
                                        <td><?= $s->topup_cat ?></td>
                                        <td><?= $s->upload_status ?></td>
                                        <td><?= $s->error ?></td>
                                    </tr>
                                <?php } ?>                
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <div class="btn-group mg-b-15" role="group" aria-label="Basic example">
                            <a class='btn btn-outline-success' href="<?= base_url('settings/finishUploadTopup') ?>" onClick="confirm('Are you sure you want to finish upload?')"> Finish Upload</a>
                            <a class='btn btn-outline-danger' href="<?= base_url('settings/truncateTable/topup') ?>" onClick="confirm('Are you sure you want to truncate table?')">Truncate Table</a>
                            <a class='btn btn-outline-success' href="<?= base_url('settings/downloadSample/topup') ?>">Download Sample</a>
                            <a class='btn btn-outline-danger' href="<?= base_url('settings/exportTopupDump') ?>">Export Dump</a>
                        </div>
                        <table class="table table-bordered table-striped table-sm mg-b-0" id="dtable1">
                            <thead class="thead-dark">
                            <th >#</th>
                            <th >Card_no</th>
                            <th >Amount</th>
                            <th >POS</th>
                            <th >Trn Date</th>
                            <th >Category</th>
                            <th >Error</th>
                            <th >Note</th>
                            </thead>
                            <tbody>
                                <?php
                                $i = 1;
                                foreach ($topup as $t) {
                                    ?>
                                    <tr>
                                        <td><?= $i . '.' ?></td>
                                        <td><?= $t->card_no ?></td>
                                        <td><?= number_format($t->amount, 0) ?></td>
                                        <td><?= $t->pos ?></td>
                                        <td><?= date('d/m/Y', strtotime($t->trn_date)) ?></td>
                                        <td><?= $t->category ?></td>
                                        <td><?= $t->error ?></td>
                                        <td><?= $t->note ?></td>
                                    </tr>
    <?php $i++;
} ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(function () {
        $('#dtable1').DataTable({
            // responsive: true,
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