     <!-- Change Password Modal -->
    <div class="modal fade" id="modal6" role="dialog" aria-labelledby="exampleModalLabel6" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content tx-14">
          <div class="modal-header">
            <h6 class="modal-title" id="exampleModalLabel6"><span data-feather="lock"></span> Password Change</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form action="#" data-parsley-validate>
          <div class="modal-body">
            <div class="form-group row">
              <label class="col-md-4 col-form-label">Current Password <span class="tx-danger">*</span></label>
              <div class="col-md-8">
                <input type="password" name="old" minlength="6" class="form-control input-sm" autocomplete="off" required>
              </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4 control-label">New Password <span class="tx-danger">*</span></label>
              <div class="col-md-8">
                  <input type="password" name="new" minlength="6" class="form-control" autocomplete="off" required/>
              </div>
            </div>
            <div class="form-group row">
              <label class="col-md-4 control-label">Confirm Password <span class="tx-danger">*</span></label>
              <div class="col-md-8">
                  <input type="password" name="new_confirm" minlength="6" class="form-control" autocomplete="off" required/>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-xs btn-secondary tx-13" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-xs btn-success tx-13">Save</button>
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

        $('#modal6').on('show.bs.modal', function (event) {

          var animation = $(event.relatedTarget).data('animation');
          $(this).addClass(animation);
        })

        // hide modal with effect
        $('#modal6').on('hidden.bs.modal', function (e) {
          $(this).removeClass (function (index, className) {
              return (className.match (/(^|\s)effect-\S+/g) || []).join(' ');
          });
        });

      });
    </script>
  </body>
</html>
