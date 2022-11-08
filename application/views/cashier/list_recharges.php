<div class="row">
	<div class="col-md-12">
		<div class="card">
		  <div class="card-body">
		    <table id="eco-table" class="table-bordered table-sm table-hover" style="border-collapse: collapse">
		    	<thead class="thead-dark">
	                <tr>
	                    <th style="font-size: 13px">Card No.</th>
	                    <th style="font-size: 13px">Amount</th>
	                    <th style="font-size: 13px">Sub Name</th>
	                    <th style="font-size: 13px">Trn Reference</th>
	                    <th style="font-size: 13px">Category</th>
	                    <th style="font-size: 13px">POS</th>
	                </tr>
            	</thead>
            	<tbody>
            		<?php
            			$i = 1;
            			foreach ($recharges as $r) { ?>
            			<tr>
	            			<td><?= $r->card_no ?></td>
	            			<td style="text-align: right;"><?= number_format($r->amount,0) ?></td>
	            			<td><?= $r->sub_name ?></td>
	            			<td><?= $r->trn_ref_no ?></td>
	            			<td><?= $r->category ?></td>
	            			<td><?= $r->pos ?></td>
            			</tr>
            		<?php } ?>            		
            	</tbody>
		    </table>
		  </div>
		</div>
	</div>
</div>

<script>
	$(function(){
		// datatable ecowater
        $('#eco-table').DataTable({
          responsive: true,
          order: [],
          autoWidth: true,
          language: {
            searchPlaceholder: 'Search...',
            sSearch: '',
            lengthMenu: 'Show _MENU_ entries'
          }
        });
	});
</script>