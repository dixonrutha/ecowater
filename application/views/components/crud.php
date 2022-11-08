<?php
foreach($content->css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<div class="row">
    <div class="col-md-12 col-lg-12 col-xl-12">
    <?php
        $success =  $success = $this->session->flashdata('success');
        if (!empty($success)){ ?>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <?= $success ?>
        </div>
    <?php } ?>
    <?php
        $error =  $success = $this->session->flashdata('error');
        if (!empty($error)){ ?>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <?= $error ?>
        </div>
    <?php } ?>
    <?php
        $warning=  $success = $this->session->flashdata('warning');
        if (!empty($warning)){ ?>
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <?= $warning ?>
        </div>
    <?php } ?>
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