<!DOCTYPE html>
<!--[if IE 8]>
<html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <?php $this->load->view('head_title_meta'); ?>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <script src="<?= base_url() ?>assets/admin/pages/scripts/jquery-1.10.2.js"></script>
    <script src="<?= base_url() ?>assets/admin/pages/scripts/bootstrap.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/global/plugins/jquery.min.js" type="text/javascript"></script>
    <?php $this->load->view('head_global_mandatory_styles'); ?>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
    <link href="<?php echo base_url(); ?>assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url(); ?>assets/global/plugins/morris/morris.css" rel="stylesheet" type="text/css">

    <!-- END PAGE LEVEL PLUGIN STYLES -->
    <!-- BEGIN PAGE STYLES -->
    <link href="<?php echo base_url(); ?>assets/admin/pages/css/tasks.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/highchart/highmaps.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/highchart/exporting.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/highchart/id-all.js"></script>
    <!-- END PAGE STYLES -->
    <!-- BEGIN THEME STYLES -->
    <?php $this->load->view('head_theme_styles'); ?>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico">
    <?php $this->load->view('home/vheader_blubuk'); ?>
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
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
     <!-- Buat Space Iklan -->
    <!-- <div class="page-head" style="background-color:rgb(239,243,248)">
        <div class="container">
            <div class="page-title">
                <h1>BERANDA
                    <small>STATISTIK & LAPORAN</small>
                </h1>
            </div>
            <div class="page-toolbar">
            </div>
        </div>
    </div> -->
    
    <!-- END PAGE HEAD -->
    <!-- BEGIN PAGE CONTENT -->
    <div class="page-content">
        <div class="container">

            <div class="row row-centered">
                <div class="col-md-8 margin-top-20 col-centered">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet box blue-hoki">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-user"></i>Ganti Password Anda 
                                <?php echo $this->session->userdata('username'); ?>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="alert alert-danger display-hide">
                                <button class="close" data-close="alert"></button>
                                <i class="fa fa-times"></i> Password Tidak Dapat Dirubah...
                            </div>
                            <div class="alert alert-success display-hide"></div>
                            <div class="alert alert-info display-hide"><i class="fa fa-spin fa-refresh"></i> Silahkan tunggu... Proses Ganti Email sedang berjalan...</div>
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
                            
                            <!-- BEGIN FORM-->
                            <form action = "ganti_password" method="post" id="form_ganti_password" autocomplete="off" class="form-horizontal">
                            
                                <div class="form-group">
                                    <label class="control-label col-md-3">Password Lama <span class="required">
                                    * </span></label>

                                    <div class="col-md-7">
                                        <div class="input-icon right">
                                            <i class="fa"></i>
                                            <input type="password" class="form-control" name="old_password" id="old_password">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Password Baru <span class="required">
                                    * </span></label>

                                    <div class="col-md-7">
                                        <div class="input-icon right">
                                            <i class="fa"></i>
                                            <input type="password" class="form-control" name="new_password" id="new_password">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Konfirmasi Password <span class="required">
                                    * </span></label>

                                    <div class="col-md-7">
                                        <div class="input-icon right">
                                            <i class="fa"></i>
                                            <input type="password" class="form-control" name="conf_password" id="conf_password">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-offset-5 col-md-9">
                                        <button id="ganti_password" type="submit" class="btn blue-hoki"><i class="fa fa-check"></i> Ganti Password</button>
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
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<?php $this->load->view('core_plugins'); ?>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/jquery-validation/js/additional-methods.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-pwstrength/pwstrength-bootstrap.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<?php echo base_url(); ?>assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/blubuk/user/ganti_password.js"></script>
<script>
    jQuery(document).ready(function () {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        QuickSidebar.init(); // init quick sidebar
        Demo.init(); // init demo features
        GantiPassword.init();
    });
</script>
<!-- END GOOGLE RECAPTCHA -->
</body>
<!-- END BODY -->
</html>