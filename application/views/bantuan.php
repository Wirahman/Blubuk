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
    <?php $this->load->view('head_global_mandatory_styles'); ?>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/global/plugins/bootstrap-datepicker/css/datepicker3.css"/>

    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME STYLES -->
    <?php $this->load->view('head_theme_styles'); ?>
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
<?php $this->load->view('header_publik'); ?>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
    <!-- BEGIN PAGE HEAD -->
    <div class="page-head">
        <div class="container">
            <!-- BEGIN PAGE TITLE -->
            <div class="page-title">
                <h1>KONTAK KAMI</h1>
            </div>
            <!-- END PAGE TITLE -->
        </div>
    </div>
    <!-- END PAGE HEAD -->
    <!-- BEGIN PAGE CONTENT -->
    <div class="page-content">
        <div class="container">
            <!-- BEGIN PAGE BREADCRUMB -->
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <a href="#">Beranda</a><i class="fa fa-circle"></i>
                </li>
                <li class="active">
                    Kontak Kami
                </li>
            </ul>
            <!-- END PAGE BREADCRUMB -->

            <div class="portlet light">
                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row margin-bottom-20">
                                <div class="col-md-6">
                                    <div class="space20">
                                    </div>
                                    <h3 class="form-section">Informasi</h3>

                                    <p>
                                        Aplikasi ini disediakan sebagai wadah informasi mengenai RKS PANDAWA.
                                    </p>

                                    <div class="well">
                                        <h4>ALAMAT</h4>
                                        <address>
                                            <br>
                                            Jl. Pemuda Dalam No.19, Kranji<br>
                                            Bekasi Barat <br>
                                        </address>
                                        <address>
                                            <strong>Email</strong><br>
                                            <a href="mailto:#">
                                                Wira_uk@yahoo.com </a>
                                        </address>
                                        <ul class="social-icons margin-bottom-10">
                                            <li>
                                                <a href="https://www.facebook.com/wirahman.rkslankers.7" data-original-title="facebook" class="facebook">
                                                </a>
                                            </li>
                                            <!-- <li>
                                                <a href="javascript:;" data-original-title="github" class="github">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" data-original-title="Goole Plus" class="googleplus">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" data-original-title="linkedin" class="linkedin">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" data-original-title="rss" class="rss">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" data-original-title="skype" class="skype">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" data-original-title="twitter" class="twitter">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" data-original-title="youtube" class="youtube">
                                                </a>
                                            </li> -->
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="space20">
                                    </div>
                                    <!-- BEGIN FORM-->
                                    <form action="javascript:;">
                                        <h3 class="form-section">User Guide</h3>

                                        <p>
                                            Untuk memudahkan pengguna sistem Database Expert KUMKM untuk mengoperasikan sistem ini,<br/> 
                                            kami menyediakan user guide untuk bisa di 
                                            <a href="<?php echo base_url() . 'dokumen/user_guide/umum/User Manual Penggunaan Akun.pdf'; ?>" target="_blank"><i class="fa fa-download"> Download</i></a>
                                        </p>
                                    </form>
                                    <!-- END FORM-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- END PAGE CONTENT-->
    </div>
    <!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->
<!-- BEGIN PRE-FOOTER -->
<?php $this->load->view('prefooter'); ?>
<!-- END PRE-FOOTER -->
<!-- BEGIN FOOTER -->
<?php $this->load->view('footer'); ?>
<!-- END FOOTER -->
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
<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/dbexpert/user/register.js"></script>
<!-- BEGIN GOOGLE RECAPTCHA -->

<!-- END GOOGLE RECAPTCHA -->
</body>
<!-- END BODY -->
</html>