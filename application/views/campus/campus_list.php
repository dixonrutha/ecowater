<style>
    #table_td{
        padding: 4px 10px;
    }
</style>
<div class="card">
    <div class="card-header">
        Utility Biils
    </div>
    <div class="card-body">
        <table id="eco-table-responsive" class="table-bordered table-hover table-sm" style="border-collapse: collapse">
            <thead class="thead-light">
                <tr>	
					<th style="width: 5%">#</th>
                    <th>Campus Name</th>
                    <th style="width: 10%">Code</th>
                    <th style="width: 20%"></th>
                </tr>
            </thead>
            <tbody>
				<?php
					$i = 1;
					foreach($campus as $c){ 
					?>
						<tr>
							<td id="table_td"><?= $i ?></td>
							<td id="table_td"><?= $c->campus_name ?></td>
							<td id="table_td"><?= $c->campus_code ?></td>
							<td style="text-align: center" id="table_td">
								<div class="btn-group">
								  <a href="<?= base_url('campus/viewCampusRoyalty/'.str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($c->id)) ) ?>" target="_blank" class="btn btn-xs btn-outline-success">Royalty</a>
								  <a href="<?= base_url('campus/viewCampusUtility/'.str_replace(array('+','/','='), array('-','_','~'),$this->encryption->encrypt($c->id)) ) ?>" target="_blank" class="btn btn-xs btn-outline-warning">Utility</a>
								</div>
							</td>
						</tr>	
					<?php $i++; } ?>					
            </tbody>
        </table>
    </div>
</div>