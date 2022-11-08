<style>
    #notif_heading2{
        font-size: 12px; text-align: center; font-weight: bold; 
    }    
    #notif_heading1{
        font-size: 10px;
    }
</style>
<header class="main-header">
    <!-- Logo -->
    <a href="<?= base_url('dc7161be3dbf2250c8954e560cc35060') ?>" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>EW&#8482;</b></span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Ecowater&#8482;</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!--              Notification start here-->
<!--                <li class="dropdown notifications-menu">
                    <?php
                    $cond = array('code' => 'long time no');
                    $stat_notif_count = $this->db->like($cond)->where(array('date_registered >=' => date('Y-m-d') . ' 01:00:00'))->from('commands_incoming')->count_all_results();
                    $stat_notif_data = $this->db->like($cond)->order_by('date_registered', 'DESC')->where(array('date_registered >=' => date('Y-m-d') . ' 01:00:00'))->get('commands_incoming')->result();
                    ?>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-home"></i>
                        <span class="label label-danger"><?= $stat_notif_count ?></span>
                    </a>
                    <ul class="dropdown-menu" id="notif_heading1">
                        <li class="header" id="notif_heading2"> You have <?= $stat_notif_count ?> notifications</li>
                        <li>
                            <ul class="menu">
                                <?php foreach ($stat_notif_data as $s) { ?>
                                    <li>
                                        <a href="#" title="<?= $s->code ?>">
                                            <i class="fa fa-home text-red"></i> <?= $s->code ?><br/>
                                            <i class="fa fa-clock-o text-red"></i> <?= date('D d-M-Y H:i:s', strtotime($s->date_registered)) ?>
                                        </a>
                                    </li>
                                <?php } ?>
                            </ul>
                        </li>
                        <li class="footer"><a href="#">View all</a></li>
                    </ul>
                </li>-->
                <!--              Notification End here-->
                <li class="dropdown user user-menu" >
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="<?= base_url("assets_old/unknown.png") ?>" class="user-image" alt="User Image">
                        <span class="hidden-xs"><?= $this->session->userdata("name") ?></span>
                    </a>
                    <ul class="dropdown-menu" >

                        <li class="user-header">
                            <img src="<?= base_url("assets_old/unknown.png") ?>" class="img-circle" alt="User Image">
                            <p>
                                <?= $this->session->userdata("name") ?> - <?= $this->session->userdata("usertype") ?>
                            </p>
                        </li>
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="<?= base_url("9e588699ede691c1e13412e0e41bda1a") ?>" class="btn btn-default btn-flat">Password</a>
                            </div>                  
                            <div class="pull-right">
                                <a href="<?= base_url("f5584ffebc757d61a28ea9a379e36a62") ?>" class="btn btn-default btn-flat">Logout</a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>