        
      <footer class="main-footer">
        <div class="container">
        <div class="pull-right hidden-xs">
          
        </div>
        <b>Ecowater Platform | </b><span class="text-red"> &copy <?= date('Y') ?></span>
        </div><!-- /.container -->
      </footer>
    </div><!-- ./wrapper -->
    
    <!-- jQuery UI 1.11.4 -->
    <!-- <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script> -->
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>    
    <!-- Bootstrap 3.3.5 -->
    <script src="<?= base_url("assets_old/bootstrap/js/bootstrap.min.js"); ?>"></script>
    <!-- Sparkline -->
    <script src="<?= base_url("assets_old/plugins/sparkline/jquery.sparkline.min.js"); ?>"></script>
    <!-- jQuery Knob Chart -->
    <script src="<?= base_url("assets_old/plugins/knob/jquery.knob.js"); ?>"></script>
    <!-- daterangepicker -->
   <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"); ?>"></script> -->
    <script src="<?= base_url("assets_old/plugins/daterangepicker/moment.min.js") ?>"></script>
    <script src="<?= base_url("assets_old/plugins/daterangepicker/daterangepicker.js"); ?>"></script>	
    <!-- datepicker -->    
    <script src="<?= base_url("assets_old/plugins/datepicker/bootstrap-datepicker.js"); ?>"></script>
    <!-- Slimscroll -->
    <script src="<?= base_url("assets_old/plugins/slimScroll/jquery.slimscroll.min.js"); ?>"></script>
    <!-- FastClick -->
    <script src="<?= base_url("assets_old/plugins/fastclick/fastclick.min.js"); ?>"></script>
    <!-- AdminLTE App -->
    <script src="<?= base_url("assets_old/dist/js/app.min.js"); ?>"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <!--<script src="<?= base_url("assets_old/dist/js/pages/dashboard.js"); ?>"></script>-->
    <!-- AdminLTE for demo purposes -->
    <script src="<?= base_url("assets_old/dist/js/demo.js"); ?>"></script>    
    <!-- Bootstrap WYSIHTML5 -->
    <script src="<?= base_url('assets_old/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js') ?>"></script>
	
    <script src="<?= base_url("assets_old/plugins/datatables/jquery.dataTables.min.js"); ?>"></script>    
    <script src="<?= base_url("assets_old/plugins/datatables/dataTables.bootstrap.min.js"); ?>"></script>    
    <script src="<?= base_url("assets_old/plugins/select2/select2.full.min.js"); ?>"></script>
    <!-- 
    <script src="<?= base_url('assets_old/plugins/propeller.min.js');?>"></script>
    <script type="text/javascript" src="<?= base_url('assets_old/plugins/sweetalert.min.js');?>"></script> -->
    
<script>    
    function resetForm(e, thisobj) {
        thisform = thisobj.closest('form');
        selectbox_in_form = thisform.find('select');

        // completely remove selected when it has been assigned.
        selectbox_in_form.find('option:selected').removeAttr('selected');
        selectbox_in_form.val('');
        selectbox_in_form.change();

            delete selectbox_in_form;
            delete thisform;
        }// resetForm

    $(function() {
        // activate Select2
        $('.select2').select2();
    });
</script>
<script type="text/javascript">
        SyntaxHighlighter.all();
</script>
<script>
    $(document).ready(function(){
  $('.date').mask('00/00/0000');
  $('.time').mask('00:00:00');
  $('.date_time').mask('00/00/0000 00:00:00');
  $('.cep').mask('00000-000');
  $('.phone').mask('0000-0000');
  $('.phone_with_ddd').mask('(00) 0000-0000');
  $('.phone_us').mask('(000) 000-0000');
  $('.mixed').mask('AAA 000-S0S');
  $('.cpf').mask('000.000.000-00', {reverse: true});
  $('.cnpj').mask('00.000.000/0000-00', {reverse: true});
  $('#money').mask('000,000,000,000,000', {reverse: true});
  $('.money2').mask("#.##0,00", {reverse: true});
  $('.ip_address').mask('0ZZ.0ZZ.0ZZ.0ZZ', {
    translation: {
      'Z': {
        pattern: /[0-9]/, optional: true
      }
    }
  });
  $('.ip_address').mask('099.099.099.099');
  $('.percent').mask('##0,00%', {reverse: true});
  $('.clear-if-not-match').mask("00/00/0000", {clearIfNotMatch: true});
  $('.placeholder').mask("00/00/0000", {placeholder: "__/__/____"});
  $('.fallback').mask("00r00r0000", {
      translation: {
        'r': {
          pattern: /[\/]/,
          fallback: '/'
        },
        placeholder: "__/__/____"
      }
    });
  $('.selectonfocus').mask("00/00/0000", {selectOnFocus: true});
});
</script>
    <script type="text/javascript">
        $(window).load(function() {
    		// Animate loader off screen
    		$(".se-pre-con").fadeOut("slow");;
    	});
    </script>
  </body>
</html>

