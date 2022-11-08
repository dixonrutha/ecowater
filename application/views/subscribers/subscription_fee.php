<?php 
foreach($content->css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<div class="row">
    <div class="col-md-12">
        <div class="card">
          <div class="card-body">
             <ul class="nav nav-line" id="myTab5" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active" id="home-tab5" data-toggle="tab" href="#home5" role="tab" aria-controls="home" aria-selected="true">Listing</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="profile-tab5" data-toggle="tab" href="#profile5" role="tab" aria-controls="profile" aria-selected="false">Analysis</a>
                </li>
              </ul>
          <div class="tab-content mg-t-20" id="myTabContent5">
            <div class="tab-pane fade show active" id="home5" role="tabpanel" aria-labelledby="home-tab5">
                <?= $content->output; ?>
            </div>
            <div class="tab-pane fade" id="profile5" role="tabpanel" aria-labelledby="profile-tab5">              
                <div class="row">
                <div id="container" class="col-md-7"></div>
                <div class="col-md-5">
        <!-- Paid Subscriptions -->
        <div class="col-md-12 col-xs-12 mg-t-5">
            <div class="card">
                <div class="card-header">
                    <h6 class="mg-b-0">Paid Subscriptions</h6>                
                </div>
                <div class="card-body pd-sm-15 pd-lg-20">
                    <div class="row row-sm">
                        <div class="col-md-4">
                            <div class="media">
                              <div class="wd-40 ht-40 rounded bd bd-2 bd-success d-flex flex-shrink-0 align-items-center justify-content-center op-6">
                                <i data-feather="users" class="wd-20 ht-20 tx-primary stroke-wd-3"></i>
                              </div>
                              <div class="media-body mg-l-10">
                                <h4 class="tx-normal tx-rubik tx-spacing--2 lh-1 mg-b-5" style="font-size: 13px;"><?= number_format($paid_today->sub_count,0) ?></h4>
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
                                <h4 class="tx-normal tx-rubik tx-spacing--2 lh-1 mg-b-5" style="font-size: 13px;"><?= number_format($paid_mtd->sub_count,0) ?></h4>
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
                                <h4 class="tx-normal tx-rubik tx-spacing--2 lh-1 mg-b-5" style="font-size: 13px;"><?= number_format($paid_ytd->sub_count,0) ?></h4>
                                <p class="tx-10 tx-uppercase tx-medium tx-color-03 tx-spacing-1 tx-nowrap mg-b-0">YEAR <?= date('Y') ?></p>
                              </div><!-- media-body -->
                            </div><!-- media -->
                        </div><!-- col -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Paid Subscriptions -->
        <!-- Subscription Fee Analysis -->
        <div class="col-md-12 col-xs-12 mg-t-5">
            <div class="card" style="min-height: 120px;">
                <div class="card-header">
                    <h6 class="mg-b-0">Fee Collected</h6>
                </div>
                <div class="card-body">
                    <div class="row row-xs">
                      <div class="col-4 col-lg">
                        <div class="d-flex align-items-baseline">
                          <span class="d-block wd-8 ht-8 rounded-circle bg-primary"></span>
                          <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Fee <br/>today</span>
                        </div>
                        <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($sub_fee_today->sub_fee_amount,0) ?></h5>
                      </div><!-- col -->
                      <div class="col-4 col-lg">
                        <div class="d-flex align-items-baseline">
                          <span class="d-block wd-8 ht-8 rounded-circle bg-teal"></span>
                          <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Fee <br/><?= date('M-y') ?></span>
                        </div>
                        <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($sub_fee_mtd->sub_fee_amount,0) ?></h5>
                      </div><!-- col -->
                      <div class="col-4 col-lg">
                        <div class="d-flex align-items-baseline">
                          <span class="d-block wd-8 ht-8 rounded-circle bg-gray-300"></span>
                          <span class="d-block tx-10 tx-uppercase tx-medium tx-spacing-1 tx-color-03 mg-l-7">Fee <br/>year <?= date('Y') ?></span>
                        </div>
                        <h5 class="tx-normal tx-rubik tx-spacing--1 mg-l-15 mg-b-0"><?= number_format($sub_fee_ytd->sub_fee_amount,0) ?></h5>
                      </div><!-- col -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Subscription Fee Analysis -->
        <!-- Free Subscriptions -->
        <div class="col-md-12 col-xs-12 mg-t-5">
            <div class="card">
                <div class="card-header">
                    <h6 class="mg-b-0">Free Subscriptions</h6>                
                </div>
                <div class="card-body pd-sm-15 pd-lg-20">
                    <div class="row row-sm">
                        <div class="col-md-4">
                            <div class="media">
                              <div class="wd-40 ht-40 rounded bd bd-2 bd-success d-flex flex-shrink-0 align-items-center justify-content-center op-6">
                                <i data-feather="users" class="wd-20 ht-20 tx-primary stroke-wd-3"></i>
                              </div>
                              <div class="media-body mg-l-10">
                                <h4 class="tx-normal tx-rubik tx-spacing--2 lh-1 mg-b-5" style="font-size: 13px;"><?= number_format($free_today->sub_count,0) ?></h4>
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
                                <h4 class="tx-normal tx-rubik tx-spacing--2 lh-1 mg-b-5" style="font-size: 13px;"><?= number_format($free_mtd->sub_count,0) ?></h4>
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
                                <h4 class="tx-normal tx-rubik tx-spacing--2 lh-1 mg-b-5" style="font-size: 13px;"><?= number_format($free_ytd->sub_count,0) ?></h4>
                                <p class="tx-10 tx-uppercase tx-medium tx-color-03 tx-spacing-1 tx-nowrap mg-b-0">YEAR <?= date('Y') ?></p>
                              </div><!-- media-body -->
                            </div><!-- media -->
                        </div><!-- col -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Free Subscriptions -->   
    </div>
       </div>
            </div>
          </div>
          </div>
        </div>
    </div>    
</div>
<div class="row">
    <div class="col-md-12 mg-t-10">
        
    </div>
</div>
<?php foreach($content->js_files as $file): ?>
        <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<script>
var chart = Highcharts.chart('container', {
	credits: {
    enabled: false
},
    title: {
        text: 'Fee Collected'
    },

    subtitle: {
        text: 'Last Seven Days'
    },
yAxis: {
            title: {
                text: 'Amount'
            }
        },
    xAxis: {
        categories: [
		<?php foreach($fees_seven_days as $f){ ?>
			'<?= date("d-M-y", strtotime($f->sub_registration_date)); ?>',	
		<?php } ?>
		]
    },

    series: [{
        type: 'column',
        colorByPoint: true,
        data: [<?php foreach($fees_seven_days as $f){
			echo round($f->fee).",";
		} ?>],
        showInLegend: false
    }]

});

</script>