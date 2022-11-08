<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" type="image/png" sizes="96x96" href="<?= base_url('assets_old/ms-icon-150x150.png') ?>">
    <title>EcoWater | <?= $title ?></title>
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
    
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="<?= base_url('assets_old/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') ?>" />  
    
    <!-- jQuery 2.1.4 -->
    <script src="<?= base_url("assets_old/plugins/jQuery/jQuery-2.1.4.min.js"); ?>"></script>
    
    <script src="<?= base_url('/assets_old/plugins/jQuery-Mask-Plugin-master/dist/jquery.mask.min.js'); ?>"></script>

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
    	background: url('<?= base_url('assets_old/eco_loader.gif'); ?>') center no-repeat #fff;
    }
  </style>
  </head>
  <body class="hold-transition skin-blue sidebar-collapse sidebar-mini" style="font-size: 12px;">
  <div class="se-pre-con"></div>
    <div class="wrapper">