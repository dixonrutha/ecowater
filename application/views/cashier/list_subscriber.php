<div class="row">
	<div class="col-md-12">
		<div class="card">
		  <div class="card-body">
		    <table id="eco-table" class="table-bordered table-sm table-hover" style="border-collapse: collapse">
		    	<thead class="thead-dark">
	                <tr>
	                    <th style="font-size: 13px">Subscriber Name</th>
	                    <th style="font-size: 13px">Card No.</th>
	                    <th style="font-size: 13px">Mobile</th>
	                </tr>
            	</thead>
            	<tbody>
            		<?php
            			$i = 1;
            			foreach ($subscribers as $s) { ?>
            			<tr>
	            			<td><?= $s->sub_name ?></td>
	            			<td><?= $s->card_no ?></td>
	            			<td><?= $s->mobile ?></td>
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
            lengthMenu: 'Show _MENU_ entries',
          }
        });
	});
</script>