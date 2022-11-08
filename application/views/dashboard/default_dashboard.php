<div class="row row-xs">
    <div class="col-md-12">
        <div class="alert alert-primary" role="alert" style="text-align: center;"><strong>Welcome : <?= $full_name ?></strong></div>
    </div>
    <!-- New Subscribers -->
    <div class="col-md-4 col-xs-12 mg-t-5">
        <div class="card">
            <div class="card-header">
                <h6 class="mg-b-0">New Subscribers</h6>                
            </div>
            <div class="card-body pd-sm-15 pd-lg-20">
                <div class="row row-sm">
                    <div class="col-md-4">
                        <div class="media">
                          <div class="wd-40 ht-40 rounded bd bd-2 bd-success d-flex flex-shrink-0 align-items-center justify-content-center op-6">
                            <i data-feather="users" class="wd-20 ht-20 tx-primary stroke-wd-3"></i>
                          </div>
                          <div class="media-body mg-l-10">
                            <h4 class="tx-normal tx-rubik tx-spacing--2 lh-1 mg-b-5" style="font-size: 13px;"><?= number_format($sub_today->sub_count,0) ?></h4>
                            <p class="tx-10 tx-uppercase tx-medium tx-color-03 tx-spacing-1 tx-nowrap mg-b-0">TODAY</p>
                          </div><!-- media-body -->
                        </div><!-- media -->
                    </div><!-- col -->
                    <div class="col-md-4">
                        <div class="media">
                          <div class="wd-40 ht-40 rounded bd bd-2 bd-gray-500 d-flex flex-shrink-0 align-items-center justify-content-center op-6">
                            <i data-feather="users" class="wd-20 ht-20 tx-gray-500 stroke-wd-3"></i>
                          </div>
                          <div class="media-body mg-l-10">
                            <h4 class="tx-normal tx-rubik tx-spacing--2 lh-1 mg-b-5" style="font-size: 13px;"><?= number_format($sub_mtd->sub_count,0) ?></h4>
                            <p class="tx-10 tx-uppercase tx-medium tx-color-03 tx-spacing-1 tx-nowrap mg-b-0"><?= date('M-Y') ?></p>
                          </div><!-- media-body -->
                        </div><!-- media -->
                    </div>
                    <div class="col-md-4">
                        <div class="media">
                          <div class="wd-40 ht-40 rounded bd bd-2 bd-warning d-flex flex-shrink-0 align-items-center justify-content-center op-6">
                            <i data-feather="users" class="wd-20 ht-20 tx-primary stroke-wd-3"></i>
                          </div>
                          <div class="media-body mg-l-10">
                            <h4 class="tx-normal tx-rubik tx-spacing--2 lh-1 mg-b-5" style="font-size: 13px;"><?= number_format($sub_ytd->sub_count,0) ?></h4>
                            <p class="tx-10 tx-uppercase tx-medium tx-color-03 tx-spacing-1 tx-nowrap mg-b-0">YEAR <?= date('Y') ?></p>
                          </div><!-- media-body -->
                        </div><!-- media -->
                    </div><!-- col -->
                </div>
            </div>
        </div>
    </div>
    <!-- New Subscribers end-->
    <div class="col-md-4 col-xs-12 mg-t-5">
        <div class="card">
            <div class="card-header">
                <h6 class="mg-b-0">Customer Base</h6>
            </div><!-- card-header -->
              <div class="card-body tx-center">
                <h5 class="tx-normal tx-rubik tx-30 tx-spacing--1 mg-b-0"><?= number_format($active_sub->sub_count,0) ?></h5>
                <p class="tx-11 tx-uppercase tx-semibold tx-spacing-1 tx-color-02">Active Subscribers Across all campuses</p>                
              </div>
        </div>
    </div>
    <!-- Valume Sold -->
    <div class="col-md-4 col-xs-12 mg-t-5">
        <div class="card" style="min-height: 120px;">
            <div class="card-header">
                <h6 class="mg-b-0">Volume Analysis (Litres)</h6>
            </div>
            <div class="card-body">
                <div class="row row-xs">
                  <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                      <span class="d-block wd-8 ht-8 rounded-circle bg-primary"></span>
                      <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Volume sold today</span>
                    </div>
                    <h4 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($volumes_today->volume,0) ?></h4>
                  </div><!-- col -->
                  <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                      <span class="d-block wd-8 ht-8 rounded-circle bg-teal"></span>
                      <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Volume sold <?= date('M-Y') ?></span>
                    </div>
                    <h4 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($volumes_mtd->volume,0) ?></h4>
                  </div><!-- col -->
                  <div class="col-4 col-lg">
                    <div class="d-flex align-items-baseline">
                      <span class="d-block wd-8 ht-8 rounded-circle bg-gray-300"></span>
                      <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Volume sold year <?= date('Y') ?></span>
                    </div>
                    <h4 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($volumes_ytd->volume,0) ?></h4>
                  </div><!-- col -->
                </div>
            </div>
        </div>
    </div>
    <!-- Valume Sold end-->
    <!-- Subscriber status -->
    <div class="col-md-12 pd-t-10 bd-b-0">
        <div class="card">
            <div class="card-body">
                <ul class="nav nav-line" id="myTab5" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="home-tab5" data-toggle="tab" href="#home5" role="tab" aria-controls="home" aria-selected="true">General Performance</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="profile-tab5" data-toggle="tab" href="#profile5" role="tab" aria-controls="profile" aria-selected="false">Performance By Group</a>
                    </li>
                </ul>
                <div class="tab-content mg-t-20" id="myTabContent5">
                    <div class="tab-pane fade show active" id="home5" role="tabpanel" aria-labelledby="home-tab5" style="min-height: auto;">
                      <div class="card">
                        <div class="card-header pd-t-10 bd-b-0">
                            <h6>General Subscribers Performance</h6>
                        </div>
                            <div class="card-body pd-y-0">
                                <?php
                                    $sub_total = 0;
                                    foreach($sub_perf as $p){
                                        $sub_total = $sub_total + $p->sub_count;
                                    }
                                ?>
                                <table class="table">
                                    <tbody>
                                        <?php
                                            foreach($sub_perf as $p){
                                                if($p->sub_stat_dormancy == 'E'){ ?>
                                                    <tr>
                                                      <td><span class="badge badge-primary">Excellent</span></td>
                                                      <td class="text-right"><?= number_format($p->sub_count,0) ?></td>
                                                      <td class="text-right"><?= number_format($p->sub_count/$sub_total*100,1) ?>%</td>
                                                    </tr>
                                               <?php }elseif($p->sub_stat_dormancy == 'G'){ ?>
                                                    <tr>
                                                      <td><span class="badge badge-success">Good</span></td>
                                                      <td class="text-right"><?= number_format($p->sub_count,0) ?></td>
                                                      <td class="text-right"><?= number_format($p->sub_count/$sub_total*100,1) ?>%</td>
                                                    </tr>
                                              <?php }elseif($p->sub_stat_dormancy == 'N'){ ?>
                                                    <tr>
                                                      <td><span class="badge badge-warning">Normal</span></td>
                                                      <td class="text-right"><?= number_format($p->sub_count,0) ?></td>
                                                      <td class="text-right"><?= number_format($p->sub_count/$sub_total*100,1) ?>%</td>
                                                    </tr>
                                              <?php }elseif($p->sub_stat_dormancy == 'D'){ ?>
                                                    <tr>
                                                      <td><span class="badge badge-danger">Dormant</span></td>
                                                      <td class="text-right"><?= number_format($p->sub_count,0) ?></td>
                                                      <td class="text-right"><?= number_format($p->sub_count/$sub_total*100,1) ?>%</td>
                                                    </tr>
                                              <?php }
                                            }
                                        ?>                        
                                      </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="profile5" role="tabpanel" aria-labelledby="profile-tab5" style="min-height: auto;">
                        <div class="card">
                            <div class="card-header pd-t-10 bd-b-0">
                                <h6>Performance By Group</h6>
                            </div>
                            <div class="card_body pd-y-0">
                                <table class="table table-bordered table-striped mg-b-1">
                                  <thead>
                                    <tr>
                                        <th><strong>Group</strong></th>
                                        <th style="text-align: center"><strong><span class="badge badge-primary">Excelent</span></strong></th>
                                        <th style="text-align: center"><strong><span class="badge badge-success">Good</span></strong></th>
                                        <th style="text-align: center"><strong><span class="badge badge-warning">Normal</span></strong></th>
                                        <th style="text-align: center"><strong><span class="badge badge-danger">Dormant</span></strong></th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <?php
                                    //print_r($categories);
                                        foreach($categories as $c){?>
                                            <tr>
                                            <td style="text-align: left"><?= $c->category ?></td>
                                            <?php
                                                //Excelent
                                                $data = $this->db->get_where('sub_stat_vw',array('category'=>$c->category,'sub_stat_dormancy'=>'E'));
                                                if($data->num_rows() >= 1){
                                                    $result = $data->row();
                                                    echo '<td style="text-align: center">'.number_format($result->sub_count,0).'</td>';
                                                }else{
                                                    echo '<td style="text-align: center">0</td>';
                                                }
                                                // Good
                                                $data = $this->db->get_where('sub_stat_vw',array('category'=>$c->category,'sub_stat_dormancy'=>'G'));
                                                if($data->num_rows() >= 1){
                                                    $result = $data->row();
                                                    echo '<td style="text-align: center">'.number_format($result->sub_count,0).'</td>';
                                                }else{
                                                    echo '<td style="text-align: center">0</td>';
                                                }
                                                // Normal
                                                $data = $this->db->get_where('sub_stat_vw',array('category'=>$c->category,'sub_stat_dormancy'=>'N'));
                                                if($data->num_rows() >= 1){
                                                    $result = $data->row();
                                                    echo '<td style="text-align: center">'.number_format($result->sub_count,0).'</td>';
                                                }else{
                                                    echo '<td style="text-align: center">0</td>';
                                                }
                                                // Dormant
                                                $data = $this->db->get_where('sub_stat_vw',array('category'=>$c->category,'sub_stat_dormancy'=>'D'));
                                                if($data->num_rows() >= 1){
                                                    $result = $data->row();
                                                    echo '<td style="text-align: center">'.number_format($result->sub_count,0).'</td>';
                                                }else{
                                                    echo '<td style="text-align: center">0</td>';
                                                }
                                            ?>
                                            </tr>                            
                                      <?php  }  ?>                    
                                  </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    
    <!-- Subscriber status -->
</div>
