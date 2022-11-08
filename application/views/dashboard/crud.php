<?php 
foreach($content->css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<div class="row">
    <div class="col-md-12">
    <div class="card">
        <div class="card-body pd-lg-15">
            <?= $content->output; ?>
        </div>
    </div>
    </div>
</div>
<?php foreach($content->js_files as $file): ?>
        <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>