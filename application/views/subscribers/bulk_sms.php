<div class="card">
<form method="POST" action="<?= base_url('sms/subscribersBulkSMS') ?>">
    <div class="card-header">
        Subscribers Bulk SMS
    </div>
    <div class="card-body">
        <div class="form-row">
            <div class="form-group col-md-4">
                <label>Category</label>
                <select class="form-control select2" name="category" style="width: 100%">
                    <option value="">--Select--</option>
                    <?php foreach ($sub_cat as $c) { ?>
                    <option value="<?= $c->category ?>" <?= set_select('category', $c->category); ?> ><?= $c->category ?></option> 
                    <?php } ?>
                </select>
            </div>
            <div class="form-group col-md-4">
                <label>Campus</label>
                <select  class="form-control select2" name="campus_code" style="width: 100%">
                    <option value="">--Select--</option>
                    <?php foreach ($campus as $c) { ?>
                    <option value="<?= $c->campus_code ?>" <?= set_select('campus_code', $c->campus_code); ?> ><?= $c->campus_name ?></option> 
                    <?php } ?>
                </select>
            </div>
            <div class="form-group col-md-4">
                <label>Subscriber Status</label>
                <select  class="form-control select2" name="sub_stat_dormancy" style="width: 100%">
                    <option value="">--Select--</option>
                    <option value="D">Dormant</option>
                    <option value="N">Normal</option>
                    <option value="G">Good</option>
                    <option value="E">Excellent</option>
                </select>
            </div>
            <div class="form-group col-md-12" style="margin-top: 25px;">
                <textarea class="form-control" rows="7" name="message" placeholder="Message.."></textarea>
            </div>             
        </div>
    </div>
    <div class="card-footer">        
        <button class="btn btn-secondary" type="reset">Clear</button>
        <button type="submit" class="btn btn-sm btn-primary pull-right"> Send</button>
    </div>
</form>
</div>