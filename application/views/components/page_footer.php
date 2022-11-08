     <!-- Change Password Modal -->
        <div class="modal fade" id="Modal_Password" role="dialog" aria-labelledby="exampleModalLabel6" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content tx-14">
              <div class="modal-header">
                <h6 class="modal-title" id="exampleModalLabel6"><span data-feather="lock"></span> Password Change</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <form action="#" autocomplete="off" >
              <div class="modal-body">
                  <!-- Error/Success alerts <div> Start-->
                    <div id="password-alert" style="display: none;">
                    
                    </div>
                  <!-- Error/Success alerts <div> End -->
                  <div class="form-group row" id="password-loadgif" style="display: none">
                    <img style="margin-left: 50%" src="<?php echo base_url('assets/img/xcrudgif.gif'); ?>"/>
                  </div>
                <div class="form-group row">
                  <label class="col-md-4 col-form-label">Current Password <span class="tx-danger">*</span></label>
                  <div class="col-md-8">
                    <input type="password" name="c_pass_old" id="c_pass_old" class="form-control input-sm" autocomplete="off" required="required" />
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-md-4 control-label">New Password <span class="tx-danger">*</span></label>
                  <div class="col-md-8">
                      <input type="password" name="c_pass_new" id="c_pass_new" class="form-control" autocomplete="off" required="required" />
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-md-4 control-label">Confirm Password <span class="tx-danger">*</span></label>
                  <div class="col-md-8">
                      <input type="password" name="c_pass_confirm" id="c_pass_confirm" class="form-control" autocomplete="off" required="required" />
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-xs btn-secondary tx-13" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-xs btn-success tx-13" id="btn_password">Submit</button>
              </div>
              </form>
            </div>
          </div>
        </div>
     <!-- Change Password Modal end-->
     </div>
    </div>
    <script src="<?= base_url('lib/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
    <script src="<?= base_url('lib/feather-icons/feather.min.js') ?>"></script>
    <script src="<?= base_url('lib/perfect-scrollbar/perfect-scrollbar.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/dashforge.js') ?>"></script>
    <script src="<?= base_url('assets/js/dashforge.aside.js') ?>"></script>
	<script src="<?= base_url('lib/datatables.net/js/jquery.dataTables.min.js') ?>"></script>
    <script src="<?= base_url('lib/datatables.net-dt/js/dataTables.dataTables.min.js') ?>"></script>
    <script src="<?= base_url('lib/datatables.net-responsive/js/dataTables.responsive.min.js') ?>"></script>
    <script src="<?= base_url('lib/datatables.net-responsive-dt/js/responsive.dataTables.min.js') ?>"></script>
    <script src="<?= base_url('lib/quill/quill.min.js') ?>"></script>
    <script src="<?= base_url('lib/select2/js/select2.min.js') ?>"></script>
    <!-- Change password js start -->
    <script type="text/javascript">
        $('#btn_password').on('click',function(){
            var c_pass_old = $('#c_pass_old').val();
            var c_pass_new = $('#c_pass_new').val();
            var c_pass_confirm = $('#c_pass_confirm').val();
            jQuery("div#password-loadgif").show();
            jQuery("div#password-alert").hide();
            //alert(message);
            $.ajax({
                type : "POST",
                url  : "<?php echo site_url('auth/change_password')?>",
                dataType : "JSON",
                data : {c_pass_old:c_pass_old , c_pass_new:c_pass_new, c_pass_confirm:c_pass_confirm},
                success: function(data){
                    var action = data.action;
                    var message = data.message;
                    if (data === 'okay'){
                        $('[name="c_pass_old"]').val("");
                        $('[name="c_pass_new"]').val("");
                        $('[name="c_pass_confirm"]').val("");
                        jQuery("div#password-loadgif").hide();
                        jQuery("div#password-alert").show();
                        jQuery("div#password-alert").html(message);
                        //This code doesn't work, it was intended to reload page, same code works fine on other page
                        setTimeout(function(){location.reload();}, 2000);
                        //This code doesn't work, it was intended to reload page, same code works fine on other page
                    }else{
                        //alert (data);
                        jQuery("div#password-loadgif").hide();
                        jQuery("div#password-alert").show();
                        jQuery("div#password-alert").html(message); 
                    }
                }
            });
            return false;
        });
    </script>
    <!-- Change password js end -->
<!-- Script for loading GIF -->
<script>
	// Wait for window load
	$(window).on('load',function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");
	}); 
</script>
<!-- Script for loading GIF end-->
    <script>
      $(function(){
        'use strict'

        $('#example2').DataTable({
          responsive: true,
          //"order": [],
          language: {
            searchPlaceholder: 'Search...',
            sSearch: '',
            lengthMenu: 'Show _MENU_ entries',
          }
        });

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
        
        // datatable ecowater 2
        $('#eco-table2').DataTable({
          responsive: true,
          order: [],
          autoWidth: true,
          language: {
            searchPlaceholder: 'Search...',
            sSearch: '',
            lengthMenu: 'Show _MENU_ entries',
          }
        });

        // datatable ecowater un-responsive
        $('#eco-table-responsive').DataTable({
          order: [],
          autoWidth: true,
          language: {
            searchPlaceholder: 'Search...',
            sSearch: '',
            lengthMenu: 'Show _MENU_ entries',
          }
        });

        // Select2
     //   $('.dataTables_length select').select2({ minimumResultsForSearch: Infinity });

      });
    </script>
    <script>
      $(function(){
        'use strict'

        $('#Modal_Password').on('show.bs.modal', function (event) {

          var animation = $(event.relatedTarget).data('animation');
          $(this).addClass(animation);
        })

        // hide modal with effect
        $('#Modal_Password').on('hidden.bs.modal', function (e) {
          $(this).removeClass (function (index, className) {
              return (className.match (/(^|\s)effect-\S+/g) || []).join(' ');
          });
        });

      });
      
      $(function(){
        'use strict'

        // Basic with search
        $('.select2').select2({
          placeholder: 'Choose one',
          searchInputPlaceholder: 'Search options'
        });

        // Disable search
        $('.select2-no-search').select2({
          minimumResultsForSearch: Infinity,
          placeholder: 'Choose one'
        });

        // Clearable selection
        $('.select2-clear').select2({
          minimumResultsForSearch: Infinity,
          placeholder: 'Choose one',
          allowClear: true
        });

        // Limit selection
        $('.select2-limit').select2({
          minimumResultsForSearch: Infinity,
          placeholder: 'Choose one',
          maximumSelectionLength: 2
        });

      });
    </script>
    <script>
      $(function(){
        $('[data-toggle="tooltip"]').tooltip()
      });
    </script>
  </body>
</html>
