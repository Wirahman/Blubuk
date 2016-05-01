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
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>
assets/global/plugins/bootstrap-datepicker/css/datepicker3.css"/>

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
<?php $this->load->view('header_publik');?>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
	<!-- BEGIN PAGE HEAD -->
	<div class="page-head" style="background-color:rgb(239,243,248)">
		<!-- Space Iklan -->
		<div class="container">

			<!-- <div class="page-title">
				<b><h2>Silahkan Daftarkan Akun Agan Dihalaman Ini... ^^</h2></b>
			</div> -->

		</div>
	</div>
	<!-- END PAGE HEAD -->
	<!-- BEGIN PAGE CONTENT -->
	<div class="page-content">
		<div class="container">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
							<h4 class="modal-title">Modal title</h4>
						</div>
						<div class="modal-body">
							 Widget settings form goes here
						</div>
						<div class="modal-footer">
							<button type="button" class="btn blue">Save changes</button>
							<button type="button" class="btn default" data-dismiss="modal">Close</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN EXAMPLE TABLE PORTLET-->
					<div class="portlet box blue-hoki">
                        <div class="portlet-title">
                            <div class="caption">
                                Silahkan Daftarkan Diri Anda Disini...
                            </div>
                            <div class="tools">
                            </div>
                        </div>
						<div class="portlet-body">

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

							<!-- <div class="note note-success">
								<p>
									Isi formulir pendaftaran berikut dengan lengkap dan benar. Tanda <font color="red">*</font> berarti wajib diisi.
								</p>
							</div> -->
							<div class="alert alert-danger display-hide">
								<button class="close" data-close="alert"></button>
								<i class="fa fa-times"></i> Waduh... Ada Yang Belum Lengkap Tuh, Silahkan Dilengkapi Terlebih Dahulu Ya... ^^ 
							</div>
							<div class="alert alert-success display-hide"></div>
							<div class="alert alert-info display-hide"><i class="fa fa-spin fa-refresh"></i> Sabar Ya... Akun Agan Sedang Diproses... ^^</div>
							<!-- BEGIN FORM-->
							<form action = "pendaftaran_user" method="post" id="form_pendaftaran" autocomplete="off" class="form-horizontal">
								<div class="form-body">
									<div class="form-group">
										<label class="control-label col-md-3"></label>
										<!-- <label class="control-label col-md-3">Nama <span class="required">
										* </span></label> -->
										<div class="col-md-4">
											<div class="input-icon right">
												<i class="fa"></i>
												<input type="text" class="form-control" name="name" id="name" placeholder="Nama">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3"></label>
										<!-- <label class="control-label col-md-3">Email <span class="required">
										* </span></label> -->
										<div class="col-md-4">
											<div class="input-icon right">
												<i class="fa"></i>
												<input type="text" class="form-control" name="email" id="email" placeholder="Email">
											</div>
										</div>
									</div>
									<div class="form-group password-strength">
										<label class="control-label col-md-3"></label>
										<!-- <label class="control-label col-md-3">Password <span class="required">
										* </span></label> -->
										<div class="col-md-4">
											<div class="input-icon right">
												<i class="fa"></i>
												<input type="password" class="form-control" name="password" id="password" placeholder="Password">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3"></label>
										<!-- <label class="control-label col-md-3">Password (Konfirmasi) <span class="required">
										* </span></label> -->
										<div class="col-md-4">
											<div class="input-icon right">
												<i class="fa"></i>
												<input type="password" class="form-control" name="confirm_password" id="confirm_password" placeholder="Password Konfirmasi">
											</div>
										</div>
									</div>
																		
									<div class="form-group">										
										<div class="col-md-offset-3 col-md-9">
											<button id="submit" type="submit" class="btn blue-hoki"><i class="fa fa-check"></i> Daftar</button>
										</div>
									</div>
								</div>
							</form>
							<!-- END FORM-->	

						</div>
					</div>
					<!-- END EXAMPLE TABLE PORTLET-->
				</div>
			</div>
		</div>
		<!-- END PAGE CONTENT-->
	</div>
	<!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->
<!-- BEGIN PRE-FOOTER -->
<!-- END PRE-FOOTER -->
<!-- BEGIN FOOTER -->
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<?php $this->load->view('core_plugins');?>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/jquery-validation/js/additional-methods.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-pwstrength/pwstrength-bootstrap.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<?php echo base_url();?>assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/blubuk/user/pendaftaran.js"></script>
<script>	
jQuery(document).ready(function() {       
	Metronic.init(); // init metronic core components
	Layout.init(); // init current layout
	QuickSidebar.init(); // init quick sidebar
	Demo.init(); // init demo features
    Pendaftaran.init();
});
</script>
</body>
<!-- END BODY -->
</html>