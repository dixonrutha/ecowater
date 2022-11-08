<aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
<!--          <div class="user-panel">
            <div class="pull-left image">
              <img src="<?= base_url("assets_old/unknown.png")?>" class="user-image" alt="User Image">
            </div>
            <div class="pull-left info">
              <p><?= $this->session->userdata("name") ?></p>
              <a href="#"><i class="fa fa-circle text-success"></i> Logged in</a>
            </div>
          </div>-->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu" style="font-size: 14px">
              <li class="header"><strong>MAIN NAVIGATION</strong></li>
              <?php
                if($pageurl == base_url()){
                    $dactive = 'active';   
                }else{
                    $dactive = '';
                }
                ?>
                <li class="<?= $dactive ?>">
                  <a href="<?= base_url('dc7161be3dbf2250c8954e560cc35060') ?>">
                    <i class="fa fa-dashboard"></i>
                    <span> Dashboard </span>
                  </a>
                 </li>
                 <?php
                    $titles = $this->db->order_by("sort", "asc")->get('menutitles');
                    foreach ($titles->result() as $title){
                        $aclass = '';
                        $menus = $this->db->order_by("sort", "asc")->get_where('menus', array('menu_title'=>$title->id));
                        $ua2array = array();
                        foreach ($menus->result() as $menu)
                        {
                            $ua2 = $this->db->where(array('group_name'=>$this->session->userdata("usertypeid"), 'menu_name'=>$menu->id))->count_all_results('usergroupsaccess');            
                            if($menu->page_link == $pageurl){
                                $aclass = 'active';
                            }
                            $ua2array1 = array_push($ua2array, $ua2);
                        }
                        if((empty($menus->result()) || (array_sum($ua2array) == 0)) && $this->session->userdata("usertypeid") != 1){
                            continue;
                        }?>
                        <li class="treeview <?= $aclass ?>">
                            <a href="#">
                              <i class="fa <?= $title->title_icon ?>"></i> <span><?= $title->title_name ?></span> <i class="fa fa-angle-left pull-right"></i>
                            </a>                            
                            <ul class="treeview-menu">
                                <?php
                                foreach ($menus->result() as $menu){
                                    $bclass = '';
                                    if($menu->page_link == $pageurl){
                                        $bclass = 'active';
                                    }
                                    $ua = $this->db->where(array('group_name'=>$this->session->userdata("usertypeid"), 'menu_name'=>$menu->id))->count_all_results('usergroupsaccess');
                                    if($ua == 0 && ($this->session->userdata("usertypeid") != 1)){
                                        continue;
                                    } ?>
                                <li class="<?= $bclass ?>"><a href="<?= base_url($menu->page_link) ?>"><i class="fa fa-circle-o"></i> <?= $menu->menu_name ?></a></li>
                               <?php }
                            ?>
                            </ul>
                          </li>
                   <?php }             
                 ?>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
