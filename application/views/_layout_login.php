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
    <title>Ecowater | Login</title>
    <!-- vendor css 
    <link href="<?= base_url('lib/@fortawesome/fontawesome-free/css/all.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('lib/ionicons/css/ionicons.min.css') ?>" rel="stylesheet">
    -->
    <link href="<?= base_url('lib/@fortawesome/fontawesome-free/css/font-awesome.min.css') ?>" rel="stylesheet">
    <!-- DashForge CSS -->
    <link rel="stylesheet" href="<?= base_url('assets/css/dashforge.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/css/dashforge.auth.css') ?>">
	<style>
	@font-face
		{
			font-family : "Ubuntu-R";
			src: url('<?= base_url('assets/fonts/ubuntu/Ubuntu-R.woff') ?>');
		}
	</style>
  </head>
<body style=" background-size: fill; background-repeat: repeat;background-position: center; font-family: Ubuntu-R; line-height: 1; background-color: #E1E3DA;" >
    <!--
    <header class="navbar navbar-header navbar-header-fixed">
      <div class="navbar-brand">
       <a href="https://ecowaterinternational.com/" target="_blank" class="df-logo"><span style="color: #7DC243; font-weight: bold;">eco</span><span style="color: #0779BC; font-weight: bold;">water</span></a>
      </div>
    </header> 
    -->
    <div class="content content-fixed content-auth">
      <div class="container">
        <div class="media align-items-stretch justify-content-center ht-100p pos-relative">		
          <div class="media-body align-items-center d-none d-lg-flex">
            <div class="mx-wd-600">
              <img src="<?= base_url('assets/img/login_back_2.png') ?>" width="400" class="img-fluid" alt="">
            </div>
          </div>
          <div class="sign-wrapper mg-lg-l-50 mg-xl-l-60">
            <form class="wd-250 wd-md-350 bd bd-gray-300 rounded pd-30 bg-white"  action="<?= base_url('auth/login') ?>" method="POST">
                <!-- Alert -->
                <?php
                $message2 = $this->session->flashdata('message');
                $success = $this->session->flashdata('success');
                if(!empty($message2)){ ?>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                        <?= $message2 ?>
                    </div>
                <?php }elseif(!empty($message)){ ?>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                        <?= $message ?>
                    </div>
               <?php }elseif(!empty($success)){ ?>
                   <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                        <?= $success ?>
                    </div>
              <?php } ?>
                <!-- Alert end -->
                <div class="wd-100p">
                    <h5 class="tx-color-01 mg-b-5" style="text-align: center; margin-bottom: 15px;"><strong>Login to start your session</strong></h5>
                  <div class="form-group">
                    <label class="mg-b-10-f">Username <span class="tx-danger">*</span></label>
                    <input type="text" class="form-control" name="identity" placeholder="Enter your username" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');"/>
                  </div>
                  <div class="form-group">
                      <label class="mg-b-10-f">Password <span class="tx-danger">*</span></label>
                    <input type="password" class="form-control" placeholder="Enter your password" name="password" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');" />
                  </div>
                  <button class="btn btn-info btn-block">Sign In</button>
                  <br />
                  <div class="divider-text">&copy; eCloud v2.0.0</div>
                </div>
            </form>
          </div><!-- sign-wrapper -->
        </div><!-- media -->
      </div><!-- container -->
    </div><!-- content -->    
    <script src="<?= base_url('lib/jquery/jquery.min.js') ?>"></script>
    <script src="<?= base_url('lib/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
    <script src="<?= base_url('lib/feather-icons/feather.min.js') ?>"></script>
    <script src="<?= base_url('lib/perfect-scrollbar/perfect-scrollbar.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/dashforge.js') ?>"></script>
    <!-- append theme customizer -->
    <script src="<?= base_url('lib/js-cookie/js.cookie.js') ?>"></script>
    <script>
      $(function(){
        'use script'

        window.darkMode = function(){
          $('.btn-white').addClass('btn-dark').removeClass('btn-white');
        }

        window.lightMode = function() {
          $('.btn-dark').addClass('btn-white').removeClass('btn-dark');
        }

        var hasMode = Cookies.get('df-mode');
        if(hasMode === 'dark') {
          darkMode();
        } else {
          lightMode();
        }
      })
    </script>
  </body>
</html>
