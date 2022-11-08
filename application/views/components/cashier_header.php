<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Meta -->
    <meta name="description" content="Responsive Bootstrap 4 Dashboard Template">
    <meta name="author" content="ThemePixels">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<?= base_url('assets/img/favicon.png') ?>">
    <title>Ecowater | <?= $title ?></title>
    <!-- Load jquery here -->
    <script src="<?= base_url('lib/jquery/jquery.min.js') ?>"></script>
    <script src="<?= base_url('lib/jqueryui/jquery-ui.min.js') ?>"></script>
    <!-- vendor css -->
    <link href="<?= base_url('lib/@fortawesome/fontawesome-free/css/font-awesome.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('lib/ionicons/css/ionicons.min.css') ?>" rel="stylesheet">

    <link href="<?= base_url('lib/datatables.net-dt/css/jquery.dataTables.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('lib/datatables.net-responsive-dt/css/responsive.dataTables.min.css') ?>" rel="stylesheet">

    <link href="<?= base_url('lib/select2/css/select2.min.css') ?>" rel="stylesheet">
    <script src="<?= base_url('lib/select2/js/select2.min.js') ?>"></script>
    <!-- DashForge CSS -->
    <link rel="stylesheet" href="<?= base_url('assets/css/dashforge.css') ?>">

    <style>
        @font-face {
            font-family: "Ubuntu-R";
            src: url('<?= base_url('assets/fonts/ubuntu/Ubuntu-R.woff') ?>');
        }

        .ui-datepicker {
            position: relative;
            z-index: 10000 !important;
        }
    </style>
    <style>
        .no-js #loader {
            display: none;
        }

        .js #loader {
            display: block;
            position: absolute;
            left: 100px;
            top: 0;
        }

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
<body class="mn-ht-100v d-flex flex-column"
      style="font-family: Ubuntu-R; line-height: 1.5; font-size: 11px; background-color: #f7f9fd">
<header class="navbar navbar-header navbar-header-fixed">
    <div class="navbar-brand">
        <a href="<?= base_url('dashboard/cashierDashboard') ?>" class="aside-logo"><span
                style="color: #7DC243; font-weight: bold;">eco</span><span style="color: #0779BC; font-weight: bold;">water</span></a>
    </div>
    <div id="navbarMenu" class="navbar-menu-wrapper">
        <div class="navbar-menu-header">
            <a href="../../index.html" class="df-logo">dash<span>forge</span></a>
            <a id="mainMenuClose" href=""><i data-feather="x"></i></a>
        </div>
    </div>
    <div class="navbar-right">
        <a href="<?= base_url('auth/logout') ?>"
           class="btn btn-sm btn-light btn-block rounded-pill"><strong><?= $this->session->userdata('username') ?> | <i
                    data-feather="log-out"></i> Log Out</strong></a>
    </div>
</header>

<div class="content content-fixed">
    <div class="container pd-x-0 pd-lg-x-10 pd-xl-x-0">
        <div class="d-sm-flex align-items-center justify-content-between mg-b-20 mg-lg-b-25 mg-xl-b-30">
            <div>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb breadcrumb-style1 mg-b-5">
                        <li class="breadcrumb-item"><?= $title ?></li>
                        <li class="breadcrumb-item tx-info" aria-current="page"><?= $subtitle ?></li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <!-- container -->
    <?php if (!empty($this->session->flashdata('access_denied'))) { ?>
        <div class="row">
            <div class="col-md-12">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <?= $this->session->flashdata('access_denied') ?>
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                </div>
            </div>
        </div>
    <?php } ?>
