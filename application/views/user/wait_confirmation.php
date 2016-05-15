<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<?php $this->load->view('head_title_meta');?>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<?php $this->load->view('head_global_mandatory_styles');?>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/global/plugins/bootstrap-datepicker/css/datepicker3.css"/>

<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<?php $this->load->view('head_theme_styles');?>
<!-- END THEME STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-quick-sidebar-over-content page-boxed page-header-fixed">
<!-- BEGIN HEADER -->
<?php
        // $this->session->sess_destroy();
        $this->load->view('header_publik');?>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
	<!-- BEGIN PAGE HEAD -->
	<!-- END PAGE HEAD -->
	<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<?php //$this->load->view('portlet_config');?>
			<!-- /.modal -->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN STYLE CUSTOMIZER -->
			<?php //$this->load->view('style_customizer');?>
			<!-- END STYLE CUSTOMIZER -->
			<!-- BEGIN PAGE HEADER-->

            <div class="form-group">
                <?php
                $pesan_sukses = $this->session->flashdata('berhasil');
                $pesan_gagal = $this->session->flashdata('gagal');
                if (!empty($pesan_sukses) || !empty($pesan_gagal)):
                    ?>
                <?php if($pesan_sukses):?>
                    <div>
                        <div class="alert alert-success">
                            <button class="close" data-dismiss="alert" type="button">
                                <i class="icon-remove"></i>
                            </button>
                                <i class="fa fa-check"></i>
                                <?php echo $this->session->flashdata('berhasil'); ?><br>
                        </div>
                    </div>
                <?php else:?>
                    <div>
                        <div class="alert alert-danger">
                            <button class="close" data-dismiss="alert" type="button">
                                <i class="icon-remove"></i>
                            </button>
                                <strong>
                                    <?php echo $this->session->flashdata('gagal'); ?>
                                </strong><br>
                        </div>
                    </div>
                <?php endif;?>
                <?php endif; ?>
            </div>

            <div class="portlet box blue-hoki">
            	<div class="portlet-title">
            		<div class="caption">
						Selamat Datang Di Blubuk...
            		</div>
            	</div>
            	<div class="portlet-body">
					<div class="row">
						<div class="col-md-12">
							<div class="alert alert-danger display-hide">
							</div>
							<div class="alert alert-success display-hide">
							</div>
							<div class="alert alert-info display-hide"><i class="fa fa-spin fa-refresh"></i> Silahkan tunggu. Permintaan anda sedang diproses.</div>
							<!-- BEGIN EXAMPLE TABLE PORTLET-->
							<div class="note note-success">
								Kepada <?php echo $this->session->userdata('username');?>,<br/><br/>
								Selamat Datang Di Blubuk.<br/>
								Saat Ini Akun Anda Belum Aktif... Untuk Mengaktifkannya, Silahkan Anda Buka Email Anda di <?php echo $this->session->userdata('email');?>... <br><br><br>
								<a href="<?php echo base_url();?>/user/resend_email" class="green"><i class="fa fa-share"></i> Kirim Ulang Email Konfirmasi</a>&nbsp;&nbsp;
								<a href="<?php echo base_url();?>/user/change_email_configuration" class="green"><i class="fa fa-refresh"></i> Ganti Alamat Email</a>
								<?php
                                	// Jika environment adalah development, konfirmasi via email di-bypass.
                                	// Jadi, cetak link konfirmasi di sini.
		                            if (defined('ENVIRONMENT') and (ENVIRONMENT == 'development')) {
		                            	echo '<br /><br />', anchor($this->session->flashdata('link_konfirmasi'));
		                            }
                                ?>
							</div>
							<div id="results"></div>
							<!-- END EXAMPLE TABLE PORTLET-->
						</div>
					</div>
            	</div>
            </div>

		</div>
	<!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->
<!-- BEGIN PRE-FOOTER -->

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<?php $this->load->view('core_plugins');?>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="<?php echo base_url();?>assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/global/plugins/jquery-validation/js/additional-methods.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/global/plugins/bootstrap-pwstrength/pwstrength-bootstrap.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<?php echo base_url();?>assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/admin/pages/scripts/blubuk/user/wait_confirmation.js"></script>
<script>	
jQuery(document).ready(function() {       
	Metronic.init(); // init metronic core components
	Layout.init(); // init current layout
	QuickSidebar.init(); // init quick sidebar
	Demo.init(); // init demo features
	WaitConfirmation.init();
});
</script>
</body>
<!-- END BODY -->
</html>
