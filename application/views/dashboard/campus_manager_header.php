<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Ecowater Cloud</title>
<link rel="icon" type="image/png" sizes="96x96" href="<?= base_url('assets_old/ms-icon-150x150.png') ?>">
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="<?= base_url("assets_old/bootstrap/css/bootstrap.min.css"); ?>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?= base_url("assets_old/font-awesome/css/font-awesome.min.css"); ?>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?= base_url("assets_old/dist/css/AdminLTE.min.css"); ?>">
    <!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<?= base_url('assets_old/dist/css/skins/skin-blue.min.css') ?>">
    <!-- iCheck -->
    <link rel="stylesheet" href="<?= base_url("assets_old/plugins/iCheck/flat/blue.css"); ?>">
    <!-- Date Picker -->
    <link rel="stylesheet" href="<?= base_url("assets_old/plugins/datepicker/datepicker3.css"); ?>">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="<?= base_url("assets_old/plugins/daterangepicker/daterangepicker-bs3.css"); ?>">    
    <link rel="stylesheet" href="<?= base_url("assets_old/plugins/datatables/dataTables.bootstrap.css"); ?>">    
    <link rel="stylesheet" href="<?= base_url("assets_old/plugins/select2/select2.min.css"); ?>">          
    <!-- jQuery 2.1.4 -->
    <script src="<?= base_url("assets_old/plugins/jQuery/jQuery-2.1.4.min.js"); ?>"></script>    
    <!-- High Charts -->
    <script src="<?= base_url("assets_old/code/highcharts.js"); ?>"></script>
    <script src="<?= base_url("assets_old/code/highcharts-3d.js"); ?>"></script>
    <script src="<?= base_url("assets_old/code/modules/series-label.js"); ?>"></script>
    <script src="<?= base_url("assets_old/code/modules/exporting.js"); ?>"></script>       
    <style type="text/css">
        .highlight{
           color: Red !important;
        }
    </style>
    <style>
	@font-face {
		font-family: 'Ubuntu';
		font-style: normal;
		font-weight: 400;
                src: local('Ubuntu'), url(<?= base_url('assets_old/ubuntufont/Ubuntu-Light.ttf') ?>) format('woff');
	}	
	body {
                font-family: Ubuntu, "times new roman", times, roman, serif;
        }
    /* Style for loader */    
    .no-js #loader { display: none;  }
    .js #loader { display: block; position: absolute; left: 100px; top: 0; }
    .se-pre-con {
    	position: fixed;
    	left: 0px;
    	top: 0px;
    	width: 100%;
    	height: 100%;
    	z-index: 9999;
    	background: url('<?= base_url('assets_old/loader_gif.gif'); ?>') center no-repeat #fff;
    }
  </style>
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav" style="font-size: 12px;">
<div class="wrapper">
  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container" style="width: 98%">
        <div class="navbar-header">
          <a class="navbar-brand"><b>Ecowater&#8482;</b></a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>
		<div class="collapse navbar-collapse pull-left" id="navbar-collapse">
			<ul class="nav navbar-nav" style="font-size: 14px">
				 <li class="active"><a href="<?= base_url('dashboard') ?>"><span class="fa fa-home"></span> <b>Home</b></a></li>
			</ul>
		</div>
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <li class="dropdown user user-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="<?= base_url("assets_old/unknown.png")?>" class="user-image" alt="User Image">
                <span class="hidden-xs"><?= $this->session->userdata("name") ?></span>
              </a>
              <ul class="dropdown-menu">
                <li class="user-header">
                  <img src="<?= base_url("assets_old/unknown.png")?>" class="img-circle" alt="User Image">
                  <p>
                    <?= $this->session->userdata("name") ?>
                    <small><strong><?php
		$x = $this->db->get_where('campus',array('id'=>$this->session->userdata("campus")))->row();
			if($x){ echo $x->campus_name; }
		?></strong></small>
                  </p>
                </li>
                <li class="user-footer">
                  <div class="pull-left">
                    <a href="<?= '#' ?>" class="btn btn-default btn-flat">Password</a>
                  </div>
                  <div class="pull-right">
                    <a href="<?= base_url("f5584ffebc757d61a28ea9a379e36a62")?>" class="btn btn-default btn-flat">Logout</a>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <div class="content-wrapper">
    <div class="container" style="width: 100%">
      <!-- Main content -->
    <section class="content">	  
	<div class="row">
		<div class="col-md-12">
			<?php if(!empty($this->session->flashdata('access_denied'))){?>
							<div class="alert alert-danger alert-dismissable">
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
									<?= $this->session->flashdata('access_denied') ?>
							</div>  
						<?php }elseif(!empty($this->session->flashdata('warning'))){ ?>
							<div class="alert alert-warning alert-dismissable">
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
									<?= $this->session->flashdata('warning') ?>
							</div> 
						<?php } ?> 
		</div>
	</div>
