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
    <!-- vendor css -->
    <link href="<?= base_url('lib/@fortawesome/fontawesome-free/css/all.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('lib/ionicons/css/ionicons.min.css') ?>" rel="stylesheet">
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
  <body 
  style='
	background-image:    url(<?= base_url('assets/img/login_back_img.jpg') ?>);
    background-size:     fill;
    background-repeat:   repeat;
    background-position: center;
	font-family: Ubuntu-R;
	line-height: 1;
  ' >
    <div class="content content-fixed content-auth">
      <div class="container">
        <div class="media align-items-stretch justify-content-center ht-100p pos-relative">
		
          <div class="media-body align-items-center d-none d-lg-flex">
            <div class="mx-wd-600">
              <img src="<?= base_url('assets/img/login_bottle.png') ?>" class="img-fluid" alt="">
            </div>
          </div>
          <div class="sign-wrapper mg-lg-l-50 mg-xl-l-60">
		<h6 class="tx-color-01 mg-b-5"><strong>Password expired, please change</strong></h6>
            <div style="margin-bottom: 0.5rem;">
            <form class="wd-250 wd-sm-300 bd bd-gray-300 rounded pd-30 bg-white"  action="<?= base_url('auth/password_expired') ?>" method="POST">
            <!-- Alert -->
                <?php
                $error = $this->session->flashdata('error');
                $success = $this->session->flashdata('success');
                if(!empty($errors)){ ?>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
                        <?= $error ?>
                    </div>
                <?php }elseif(!empty($success)){ ?>
                   <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                        <?= $success ?>
                    </div>
              <?php } ?>
                <!-- Alert end -->
              <div class="form-group">
                 <label for="username">Username <span class="tx-danger">*</span></label>
                <input type="text" class="form-control" placeholder="Enter your username" name="identity" value="<?= $username ?>" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
              </div>
              <div class="form-group">
                <label for="password">Current Password <span class="tx-danger">*</span></label>
                <input type="password" class="form-control" placeholder="Enter your password" name="pass_old" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
              </div>
              <div class="form-group">
                <label for="password">New Password <span class="tx-danger">*</span></label>
                <input type="password" class="form-control" placeholder="Enter your password" name="pass_new" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required="required" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" />
              </div>
              <div class="form-group">
                <label for="password">Confirm New Password <span class="tx-danger">*</span></label>
                <input type="password" class="form-control" placeholder="Enter your password" name="pass_confirm" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"  required="required" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" />
              </div>
              <button type="submit" class="btn btn-success btn-block rounded-pill">Login</button>
            </form>
            </div>
          </div><!-- sign-wrapper -->
        </div><!-- media -->
      </div><!-- container -->
    </div><!-- content -->
    <footer class="footer" style="background-color: #e3e7ed03;">
      <div>
        <span style="color: #f2f3f5; text-transform:capitalize;">&copy; <?= date('Y') ?> Ecowater Cloud v2.0.0 </span>
      </div>
    </footer>
	
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
