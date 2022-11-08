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
    <title>Ecowater | Template</title>
    <!-- vendor css -->
    <link href="<?= base_url('lib/@fortawesome/fontawesome-free/css/all.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('lib/ionicons/css/ionicons.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('lib/jqvmap/jqvmap.min.css') ?>" rel="stylesheet">
    <!-- DashForge CSS -->
    <link rel="stylesheet" href="<?= base_url('assets/css/dashforge.css') ?>">
  </head>
<body>
    <aside class="aside aside-fixed">
      <div class="aside-header" style="height: 49px;">
        <a href="../../index.html" class="aside-logo">Eco<span>water</span></a>
        <a href="" class="aside-menu-link">
          <i data-feather="menu"></i>
          <i data-feather="x"></i>
        </a>
      </div>
	<div class="aside-body" style="background-color: #f7f9fd">
        <div class="aside-loggedin">
          <div class="d-flex align-items-center justify-content-start">
            <a href="" class="avatar"><img src="https://via.placeholder.com/500" class="rounded-circle" alt=""></a>
            <div class="aside-alert-link">
              <a href="" data-toggle="tooltip" title="Log out"><i data-feather="log-out"></i></a>
            </div>
          </div>
          <div class="aside-loggedin-user">
            <a href="#loggedinMenu" class="d-flex align-items-center justify-content-between mg-b-2" data-toggle="collapse">
              <h6 class="tx-semibold mg-b-0">Innocent Ruseke</h6>
              <i data-feather="chevron-down"></i>
            </a>
            <p class="tx-color-03 tx-12 mg-b-0">Administrator</p>
          </div>
          <div class="collapse" id="loggedinMenu">
            <ul class="nav nav-aside mg-b-0">
              <li class="nav-item"><a href="" class="nav-link"><i data-feather="lock"></i> <span>Password</span></a></li>
              <li class="nav-item"><a href="" class="nav-link"><i data-feather="log-out"></i> <span>Sign Out</span></a></li>
            </ul>
          </div>
        </div><!-- aside-loggedin -->
        <ul class="nav nav-aside">
          <li class="nav-label">Menus</li>
		  <!-- add class="nav-link" to make it active -->
          <li class="nav-item active"><a href="dashboard-one.html" class="nav-link"><i data-feather="shopping-bag"></i> <span>Dashboard</span></a></li>
		  <li class="nav-item with-sub active show">
            <a href="" class="nav-link"><i data-feather="user"></i> <span>Subsribers</span></a>
            <ul>
              <li class="active"><a href="page-profile-view.html">All Subscriber</a></li>
              <li><a href="page-connections.html">Search Subscriber</a></li>
              <li><a href="page-groups.html">New Subscriber</a></li>
              <li><a href="page-events.html">Subscription Fees</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </aside>

    <div class="content ht-100v pd-0" style="background-color: #f5f6fa;">
      <div class="content-header" style="height: 50px;"> </div>

      <div class="content-body">
        <div class="container pd-x-0">
          <div class="d-sm-flex align-items-center justify-content-between mg-b-0 mg-lg-b-5 mg-xl-b-5">
            <div>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb breadcrumb-style1 mg-b-5">
                  <li class="breadcrumb-item"><a>Ecowater</a></li>
                  <li class="breadcrumb-item" aria-current="page">Dashboard</li>
                </ol>
              </nav>
            </div>
          </div>
          <div class="row row-xs">
            <div class="col-sm-6 col-lg-3">
              <div class="card card-body">
                <h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Conversion Rate</h6>
                <div class="d-flex d-lg-block d-xl-flex align-items-end">
                  <h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1">0.81%</h3>
                  <p class="tx-11 tx-color-03 mg-b-0"><span class="tx-medium tx-success">1.2% <i class="icon ion-md-arrow-up"></i></span></p>
                </div>
                <div class="chart-three">
                    <div id="flotChart3" class="flot-chart ht-30"></div>
                  </div><!-- chart-three -->
              </div>
            </div><!-- col -->
            <div class="col-sm-6 col-lg-3 mg-t-10 mg-sm-t-0">
              <div class="card card-body">
                <h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Unique Purchases</h6>
                <div class="d-flex d-lg-block d-xl-flex align-items-end">
                  <h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1">3,137</h3>
                  <p class="tx-11 tx-color-03 mg-b-0"><span class="tx-medium tx-danger">0.7% <i class="icon ion-md-arrow-down"></i></span></p>
                </div>
                <div class="chart-three">
                    <div id="flotChart4" class="flot-chart ht-30"></div>
                  </div><!-- chart-three -->
              </div>
            </div><!-- col -->
            <div class="col-sm-6 col-lg-3 mg-t-10 mg-lg-t-0">
              <div class="card card-body">
                <h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Avg. Order Value</h6>
                <div class="d-flex d-lg-block d-xl-flex align-items-end">
                  <h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1">$306.20</h3>
                  <p class="tx-11 tx-color-03 mg-b-0"><span class="tx-medium tx-danger">0.3% <i class="icon ion-md-arrow-down"></i></span></p>
                </div>
                <div class="chart-three">
                    <div id="flotChart5" class="flot-chart ht-30"></div>
                  </div><!-- chart-three -->
              </div>
            </div><!-- col -->
            <div class="col-sm-6 col-lg-3 mg-t-10 mg-lg-t-0">
              <div class="card card-body">
                <h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Order Quantity</h6>
                <div class="d-flex d-lg-block d-xl-flex align-items-end">
                  <h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1">1,650</h3>
                  <p class="tx-11 tx-color-03 mg-b-0"><span class="tx-medium tx-success">2.1% <i class="icon ion-md-arrow-up"></i></span></p>
                </div>
                <div class="chart-three">
                    <div id="flotChart6" class="flot-chart ht-30"></div>
                  </div><!-- chart-three -->
              </div>
            </div><!-- col -->
            <div class="col-md-4 mg-t-5">
              <div class="card">
                <div class="card-header pd-y-10 d-md-flex align-items-center justify-content-between">
                  <h6 class="mg-b-0">Recurring Revenue Growth</h6>
                </div><!-- card-header -->
                <div class="card-body pd-b-0">
                  <div class="row mg-b-5">
					CONTENT HERE
                  </div><!-- row -->
                </div><!-- card-body -->
              </div><!-- card -->
            </div>
			<!-- END HERE -->
            <div class="col-lg-4 col-xl-4 mg-t-10">
              <div class="card ht-lg-100p">
                <div class="card-header d-flex align-items-center justify-content-between">
                  <h6 class="mg-b-0">Real-Time Sales</h6>
                </div><!-- card-header -->
                <div class="card-body pd-b-0">
                  <div class="row mg-b-5">
					CONTENT HERE
                  </div><!-- row -->
                </div><!-- card-body -->
              </div>
            </div>
          </div><!-- row -->
        </div><!-- container -->
      </div>
	 <footer class="footer" style="background-color: #f5f6fa;">
      <div>
        <span>&copy; 2020 Ecowater CLoud v2.0.0 </span>
      </div>
    </footer>
    </div>
    <script src="<?= base_url('lib/jquery/jquery.min.js') ?>"></script>
    <script src="<?= base_url('lib/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
    <script src="<?= base_url('lib/feather-icons/feather.min.js') ?>"></script>
    <script src="<?= base_url('lib/perfect-scrollbar/perfect-scrollbar.min.js') ?>"></script>
    <script src="<?= base_url('lib/jquery.flot/jquery.flot.js') ?>"></script>
    <script src="<?= base_url('lib/jquery.flot/jquery.flot.stack.js') ?>"></script>
    <script src="<?= base_url('lib/jquery.flot/jquery.flot.resize.js') ?>"></script>
    <script src="<?= base_url('lib/chart.js/Chart.bundle.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/dashforge.js') ?>"></script>
    <script src="<?= base_url('assets/js/dashforge.aside.js') ?>"></script>
    <script src="<?= base_url('assets/js/dashforge.sampledata.js') ?>"></script>
    <script src="<?= base_url('assets/js/dashboard-one.js') ?>"></script>
	<script src="<?= base_url('assets/js/dashforge.filemgr.js') ?>"></script>
    <!-- append theme customizer -->
    <script src="<?= base_url('lib/js-cookie/js.cookie.js') ?>"></script>
  </body>
</html>
