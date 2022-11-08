<?php $this->load->view("components/page_header"); ?>
<div class="container pd-x-0" style="max-width: 100%">
    <?php if (!empty($this->session->flashdata('access_denied'))) { ?>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <?= $this->session->flashdata('access_denied') ?>
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        </div>
    <?php } ?>    	
    <?php $this->load->view($subview); ?>  
</div>
<?php $this->load->view("components/page_footer"); ?>