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
                <h1>RESET
                    <small>PASSWORD</small>
                </h1>
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
                    <a href="#">Home</a><i class="fa fa-circle"></i>
                </li>
                <li>
                    <a href="form_controls.html">User</a>
                    <i class="fa fa-circle"></i>
                </li>
                <li class="active">
                    Reset Password
                </li>
            </ul>
            <!-- END PAGE BREADCRUMB -->

            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8 margin-top-20">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet box blue-hoki">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-user-md"></i>Form Reset Password
                            </div>
                            <div class="tools">
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="note note-success">
                                <p>
                                    Isi form reset password berikut dengan lengkap dan benar. Tanda <font color="red">*</font> berarti wajib diisi.
                                </p>
                            </div>
                            <div class="alert alert-danger display-hide">
                                <button class="close" data-close="alert"></button>
                                <i class="fa fa-times"></i> Alamat email tidak terdaftar.
                            </div>
                            <div class="alert alert-success display-hide"></div>
                            <div class="alert alert-info display-hide"><i class="fa fa-spin fa-refresh"></i> Silahkan tunggu...</div>
                            <!-- BEGIN FORM-->
                            <form method="post" id="form_reset_password" autocomplete="off" class="form-horizontal" action="<?php echo site_url('home')?>">
                                <div class="form-body">
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Email <span class="required">
										* </span></label>

                                        <div class="col-md-7">
                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input type="text" class="form-control" name="email" id="email">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Password Baru <span class="required">
										* </span></label>

                                        <div class="col-md-7">
                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input type="password" class="form-control" name="password" id="password">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-offset-3 col-md-9">
											<span class="help-block">Anda belum punya akun? Silahkan melakukan <a class="text-danger"
                                                                                                                  href="<?php echo site_url('user/register') ?>">pendaftaran</a> terlebih dahulu.
											</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-offset-3 col-md-9">
                                            <button id="submit" type="submit" class="btn blue-hoki"><i class="fa fa-check"></i> Reset</button>
                                            <button id="cancel" type="submit" class="btn blue-hoki"><i class="fa fa-times"></i> Cancel</button>
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
<div class="page-prefooter">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>About</h2>

                <p>
                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam dolore.
                </p>
            </div>
            <div class="col-md-3 col-sm-6 col-xs12 footer-block">
                <h2>Subscribe Email</h2>

                <div class="subscribe-form">
                    <form action="javascript:;">
                        <div class="input-group">
                            <input type="text" placeholder="mail@email.com" class="form-control">
							<span class="input-group-btn">
							<button class="btn" type="submit">Submit</button>
							</span>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>Follow Us On</h2>
                <ul class="social-icons">
                    <li>
                        <a href="javascript:;" data-original-title="rss" class="rss"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="facebook" class="facebook"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="twitter" class="twitter"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="googleplus" class="googleplus"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="linkedin" class="linkedin"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="youtube" class="youtube"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="vimeo" class="vimeo"></a>
                    </li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>Contacts</h2>
                <address class="margin-bottom-40">
                    Phone: 800 123 3456<br>
                    Email: <a href="mailto:info@metronic.com">info@metronic.com</a>
                </address>
            </div>
        </div>
    </div>
</div>
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
<script>
    jQuery(document).ready(function () {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        QuickSidebar.init(); // init quick sidebar
        Demo.init(); // init demo features
        Signup.init();
    });
</script>
<script>
    <?php
    if(isset($error)){
        if($error == "captcha") {
            echo "$('.alert-danger').show();";
            echo "var icon = $('#captcha').parent('.input-icon').children('i');";
            echo "icon.removeClass('fa-check').addClass('fa-warning');";
            echo "icon.attr('data-original-title', 'Captcha Salah').tooltip({'container': 'body'});";
            echo "$('#captcha').closest('.form-group').removeClass('has-success').addClass('has-error');"; // set error class to the control grou
        }
    }
    ?>
</script>
<!-- BEGIN GOOGLE RECAPTCHA -->
<script type="text/javascript">
    var RecaptchaOptions = {
        theme: 'custom',
        custom_theme_widget: 'recaptcha_widget'
    };
</script>
<script type="text/javascript" src="https://www.google.com/recaptcha/api/challenge?k=6Lf20gATAAAAAC8X4jBWSvoRfP_TJ1WYwn_HL-Dy"></script>
<!-- END GOOGLE RECAPTCHA -->
</body>
<!-- END BODY -->
</html>