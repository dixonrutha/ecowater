<?php $this->load->view("components/page_header_side_bar_collapse_old"); ?>
<?php $this->load->view("components/page_topbar_old"); ?>
<?php $this->load->view("components/page_menu_old"); ?>
 <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="container" style="width: 100%">
        <section class="content-header">
          <h1>
            <?= $title ?> | <small><b><?= $subtitle ?></b></small>
          </h1>
          
        </section>

        <!-- Main content -->
        <section class="content">
          <?php $this->load->view($subview) ?> 
        </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
      
<?php $this->load->view("components/page_footer_old"); ?>


