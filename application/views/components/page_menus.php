<ul class="nav nav-aside">
    <li class="nav-label">Menus</li>
	<?php
	    if($pageurl == base_url()){
             $d_active = "active";   
                }else{
            $d_active = "";
        }
	 ?>
    <li class="nav-item <?= $d_active ?>"><a href="<?= base_url('dashboard') ?>" class="nav-link"><i data-feather="home"></i>&nbsp&nbsp<span>Dashboard</span></a></li>
    <?php
        $titles = $this->db->order_by('sort','ASC')->get('menutitles')->result();
        foreach ($titles as $title){
            $menus = $this->db->order_by('sort','ASC')->get_where('menus', array('menu_title'=>$title->id))->result();
            $ua2array = array();
            foreach($menus as $me){
                $ua2 = $this->db->where(array('group_name'=>$this->session->userdata("usertypeid"), 'menu_name'=>$me->id))->count_all_results('usergroupsaccess');                
                if($me->page_link == $pageurl){
                    $menu_id = $me->id;
                    $title_id = $title->id;
                    $t_active = "active show";
                    $m_active = "active";
                }else{
                    $t_active = "";
                    $m_active = "";
                }                
                $ua2array1 = array_push($ua2array, $ua2);
            }
            if((empty($menus) || (array_sum($ua2array) == 0)) && $this->session->userdata("usertypeid") != 1){
                continue;
             }
            ?>
            <li class='nav-item with-sub <?php if($title->id == $title_id){ echo "active show";} ?>'>
                <!--<a href="" class="nav-link"><i class="<?= $title->title_icon ?>"></i>&nbsp&nbsp<span><?= $title->title_name ?></span> </a>-->
                <a href="" class="nav-link"><i data-feather="<?= $title->feather_icon ?>"></i><span><?= $title->title_name ?></span> </a>
                    <ul style="padding-bottom: 0px;">
                        <?php foreach($menus as $m){
                            $ua = $this->db->where(array('group_name'=>$this->session->userdata("usertypeid"), 'menu_name'=>$m->id))->count_all_results('usergroupsaccess');
                            if($ua == 0 && ($this->session->userdata("usertypeid") != 1)){
                                continue;
                            }
                        ?>
                            <li class='<?php if($m->id == $menu_id){ echo "active";} ?>'><a href="<?= base_url($m->page_link) ?>"><?= $m->menu_name ?></a></li>
                        <?php } ?>
                    </ul>
            </li>
        <?php }
    ?>
</ul>