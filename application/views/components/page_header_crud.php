<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Meta 
    <meta name="description" content="Ecowater">
    <meta name="author" content="ThemePixels"> -->
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<?= base_url('assets/img/favicon.png') ?>">
    <title>Ecowater | <?= $title ?></title>
    <?php foreach($content->js_files as $file): ?>
     <script src="<?php echo $file; ?>"></script>
    <?php endforeach; ?>
    <!-- Load jquery here -->
    <script src="<?= base_url('lib/jquery/jquery.min.js') ?>"></script>
    <script src="<?= base_url('lib/jqueryui/jquery-ui.min.js') ?>"></script>
    <!-- vendor css -->
    <link href="<?= base_url('lib/@fortawesome/fontawesome-free/css/font-awesome.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('lib/ionicons/css/ionicons.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('lib/select2/css/select2.min.css') ?>" rel="stylesheet">
    <script src="<?= base_url('lib/select2/js/select2.min.js') ?>"></script>
    <!-- Highcharts -- >
    <!-- High Charts -->
    <script src="<?= base_url("assets/highcharts/highcharts.js"); ?>"></script>
    <script src="<?= base_url("assets/highcharts/highcharts-3d.js"); ?>"></script>
    <script src="<?= base_url("assets/highcharts/modules/series-label.js"); ?>"></script>
    <script src="<?= base_url("assets/highcharts/modules/exporting.js"); ?>"></script>
    <script src="<?= base_url('assets/highcharts/modules/accessibility.js') ?>"></script>
    <!-- DashForge CSS -->
    <link rel="stylesheet" href="<?= base_url('assets/css/dashforge.css') ?>">
    <style>
	@font-face
		{
			font-family : "Ubuntu-R";
			src: url('<?= base_url('assets/fonts/ubuntu/Ubuntu-R.woff') ?>');
		}
		.ui-datepicker { 
		    position: relative; 
		    z-index: 10000 !important;
		}
	</style>
	<style>
	    .no-js #loader { display: none;  }
            .js #loader { display: block; position: absolute; left: 100px; top: 0; }
            .se-pre-con {
            	position: fixed;
            	left: 0px;
            	top: 0px;
            	width: 100%;
            	height: 100%;
            	z-index: 9999;
            	background: url(<?= base_url('assets/img/eco_loader.gif') ?>) center no-repeat #ecf0f5;
            }
	</style>
  </head>
<body style="font-family: Ubuntu-R; line-height: 1.5; font-size: 11px; background-color: #f7f9fd" >
    <!-- Loading GIF -->
   <div class="se-pre-con"></div>
    <!-- Loading GIF end -->
    <aside class="aside aside-fixed">
      <div class="aside-header" style="height: 49px;">
        <a href="<?= base_url() ?>" class="aside-logo"><span style="color: #7DC243; font-weight: bold;">eco</span><span style="color: #0779BC; font-weight: bold;">water</span></a>
        <a href="" class="aside-menu-link">
          <i data-feather="menu"></i>
          <i data-feather="x"></i>
        </a>
      </div>
	<div class="aside-body" style="background-color: #f7f9fd; height: calc(100%);">
        <div class="aside-loggedin">
         <!-- <div class="d-flex align-items-center justify-content-start">
            <a class="avatar avatar-online"><img src="<?= base_url('assets/img/unknown.png') ?>" class="rounded-circle" alt=""></a>
            <div class="aside-alert-link">
              <a href="<?= base_url('auth/logout') ?>" data-toggle="tooltip" title="Log out"><i data-feather="log-out"></i></a>
            </div>
          </div> -->
          <div class="aside-loggedin-user">
            <a href="#loggedinMenu" class="d-flex align-items-center justify-content-between mg-b-2" data-toggle="collapse">
              <h6 class="tx-semibold mg-b-0"><?= $this->session->userdata('name') ?></h6>
              <i data-feather="chevron-down"></i>
            </a>
            <p class="tx-color-03 tx-12 mg-b-0"><?= $this->session->userdata('usertype') ?></p>
          </div>
          <div class="collapse" id="loggedinMenu">
            <ul class="nav nav-aside mg-b-0">
              <li class="nav-item"><a href="#modal6" class="nav-link" data-toggle="modal" data-animation="effect-rotate-left"><i data-feather="lock"></i> <span>Password</span></a></li>
              <li class="nav-item"><a href="<?= base_url('auth/logout') ?>" class="nav-link"><i data-feather="log-out"></i> <span>Sign Out</span></a></li>
            </ul>
          </div>
        </div><!-- aside-loggedin -->
        <?php $this->load->view("components/page_menus"); ?>
      </div>
    </aside>

  <!--  <div class="content ht-100v pd-0" style="background-color: #f5f6fa;"> -->
    <div class="content ht-100v pd-0">
      <div class="content-header" style="height: 50px;">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb breadcrumb-style1 mg-b-5" style="background-color: #e9ecef0a">
                  <li class="breadcrumb-item" style="text-transform:capitalize"><?= $title ?></li>
                  <li class="breadcrumb-item active" style="text-transform:capitalize" aria-current="page"><?= $subtitle ?></li>
                </ol>
            </nav>
      </div>
      <div class="content-body">