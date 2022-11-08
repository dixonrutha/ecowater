<div class="row">
	<div class="col-md-4">
		<div class="card">
		  <div class="card-body">
		    <h3 class="card-title" style="text-align: center; font-weight: bold;"><?= $validator->validator_id ?></h3>
		    <h6 class="card-subtitle mb-2 text-muted" style="text-align: center;"><?= $validator->station_name ?></h6>
		     	<ul class="list-group list-group-flush mg-b-0 tx-12">
                  <li class="list-group-item pd-x-0 d-flex justify-content-between">
                    <span class="tx-medium" style="font-weight: bold;">Validator GSM</span>
                    <span class="tx-rubik"><?= $validator->gsm ?></span>
                  </li>
                  <li class="list-group-item pd-x-0 d-flex justify-content-between">
                    <span class="tx-medium" style="font-weight: bold;">Status</span>
                    <span class="tx-rubik"><span class="badge badge-pill <?php if($validator->status=='Operating'){echo "badge-success";}else{echo "badge-danger";} ?>"><?= $validator->status ?></span></span>
                  </li>
                </ul>
		  </div>
		  <div class="card-footer" style="text-align: center;">
		  	<div class="btn-group" role="group">
			  <button type="button" class="btn btn-outline-success">Reboot</button>
			  <button type="button" class="btn btn-outline-info">Status</button>
			  <button type="button" class="btn btn-outline-warning">Sleep</button>
			  <button type="button" class="btn btn-outline-secondary">Start</button>
			</div>
		  </div>
		</div>
	</div>
	<div class="col-md-8">
		<div class="card">
			<div class="card-body">
				<ul class="nav nav-line" id="myTab5" role="tablist">
		            <li class="nav-item">
		              <a class="nav-link active" id="home-tab5" data-toggle="tab" href="#home5" role="tab" aria-controls="home" aria-selected="true">Communication Logs</a>
		            </li>
		            <li class="nav-item">
		              <a class="nav-link" id="profile-tab5" data-toggle="tab" href="#profile5" role="tab" aria-controls="profile" aria-selected="false">Confirmation Logs</a>
		            </li>
		            <li class="nav-item">
		              <a class="nav-link" id="contact-tab5" data-toggle="tab" href="#contact5" role="tab" aria-controls="contact" aria-selected="false">Status Logs</a>
		            </li>
          		</ul>
          		<div class="tab-content mg-t-20" id="myTabContent5">
		            <div class="tab-pane fade show active" id="home5" role="tabpanel" aria-labelledby="home-tab5">
		              <h6>Communication logs here</h6>
		              <p class="mg-b-0">Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam. Exercitation mollit sit culpa nisi culpa non adipisicing reprehenderit do dolore.</p>
		            </div>
		            <div class="tab-pane fade" id="profile5" role="tabpanel" aria-labelledby="profile-tab5">
		              <h6>Confirmation logs here</h6>
		              <p class="mg-b-0">Fugiat veniam incididunt anim aliqua enim pariatur veniam sunt est aute sit dolor anim. Velit non irure adipisicing aliqua ullamco irure incididunt irure non esse consectetur nostrud minim non minim occaecat.</p>
		            </div>
		            <div class="tab-pane fade" id="contact5" role="tabpanel" aria-labelledby="contact-tab5">
		              <h6>Status Logs</h6>
		              <p class="mg-b-0">Amet duis do nisi duis veniam non est eiusmod tempor incididunt tempor dolor ipsum in qui sit. Exercitation mollit sit culpa nisi culpa non adipisicing reprehenderit do dolore. Duis reprehenderit occaecat anim ullamco ad duis occaecat ex.</p>
		            </div>
		        </div>
			</div>
		</div>
	</div>
</div>