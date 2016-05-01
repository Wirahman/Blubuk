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
    <style type="text/css">
        /* centered columns styles */
        .row-centered {
            text-align: center;
        }

        .col-centered {
            display: inline-block;
            float: none;
            /* reset the text-align */
            text-align: left;
            /* inline-block space fix */
            margin-right: -4px;
        }
    </style>
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
    <div class="page-head" style="background-color:rgb(239,243,248)">
        <div class="container" style="height:140px">
            <!-- BEGIN PAGE TITLE -->
            <div class="hor-menu pull-right">
                <div class="nav navbar-nav hor-menu pull-right">
                   <form method="post" id="form_login_bajaj" autocomplete="off" class="form-horizontal">
                        <div class="form-group">
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                                <div class="input-icon right">
                                    <i class="fa"></i>
                                    <input type="text" class="form-control" name="email" id="email" placeholder="Email">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-7">
                                <div class="input-icon right">
                                    <i class="fa"></i>
                                    <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                                </div>
                            </div>
                            <button id="login" type="submit" class="btn blue-hoki"><i class="fa fa-check"></i> Masuk</button>
                            <div class="form-group">
                                <div class="col-md-7">
                                    <span class="help-block"><a class="btn" style="font-size: small" href="<?php echo site_url('user/forgot_password') ?>">Lupa Password?</a></span>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- END MEGA MENU -->
            </div>
        </div>
    </div>
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
                                <i class="fa fa-sign-in"></i>Daftar Email
                            </div>
                            <div class="tools">
                            </div>
                        </div>
                        <div class="portlet-body">

                            <div class="form-group">
                                <?php 
                                $pesan=$this->session->flashdata('message');
                                if(!empty($pesan)):
                                ?>
                                    <div>
                                        <div class="alert alert-success">
                                            <button class="close" data-dismiss="alert" type="button">
                                                <i class="icon-remove"></i>
                                            </button>
                                            <center>
                                                <strong>
                                                    <?php echo $this->session->flashdata('message');?>
                                                </strong><br>
                                            </center>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            </div>

                            <div class="alert alert-danger display-hide">
                                <button class="close" data-close="alert"></button>
                                <i class="fa fa-times"></i> Ada beberapa data yang tidak lengkap atau tidak sesuai dengan persyaratan. Silahkan dilengkapi/diperbaiki. 
                            </div>
                            <div class="alert alert-success display-hide"></div>
                            <div class="alert alert-info display-hide"><i class="fa fa-spin fa-refresh"></i> Silahkan tunggu. Permintaan anda sedang diproses.</div>
                            <!-- BEGIN FORM-->
                            <form action = "register_bajaj" method="post" id="form_register_bajaj" autocomplete="off" class="form-horizontal">
                                <div class="form-body">
                                    <div class="form-group">
                                        <label class="control-label col-md-3"><span class="required"></span></label>
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
                                        <label class="control-label col-md-3"><span class="required"></span></label>
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
                                        <label class="control-label col-md-3"><span class="required"></span></label>
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
                                        <label class="control-label col-md-3"><span class="required"></span></label>
                                        <!-- <label class="control-label col-md-3">Password (Konfirmasi) <span class="required">
                                        * </span></label> -->
                                        <div class="col-md-4">
                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input type="password" class="form-control" name="confirm_password" id="confirm_password" placeholder="Konfirmasi Password">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3"><span class="required"></span></label>
                                        <!-- <label class="control-label col-md-3">Captcha <span class="required">
                                        * </span></label> -->
                                        <div class="col-md-9">
                                            <!-- BEGIN REPCAPTCHA -->
                                            <div id="recaptcha_widget" class="form-recaptcha">
                                                <div class="form-recaptcha-img" style="width: 325px">
                                                    <a id="recaptcha_image" href="#">
                                                    </a>
                                                    <div class="recaptcha_only_if_incorrect_sol display-none" style="color:red">
                                                         <i class="fa fa-times"></i> Salah. Silahkan coba lagi.
                                                    </div>
                                                </div>
                                                <div class="input-group" style="width: 325px">
                                                    <div class="input-icon right">
                                                    <i class="fa"></i>
                                                    <input type="text" class="form-control" id="recaptcha_response_field" name="recaptcha_response_field" placeholder="Captcha">
                                                    </div>
                                                    <div class="input-group-btn">
                                                        <a class="btn default" href="javascript:Recaptcha.reload()">
                                                        <i class="fa fa-refresh"></i>
                                                        </a>
                                                        <a class="btn default recaptcha_only_if_image" href="javascript:Recaptcha.switch_type('audio')">
                                                        <i title="Get an audio CAPTCHA" class="fa fa-headphones"></i>
                                                        </a>
                                                        <a class="btn default recaptcha_only_if_audio" href="javascript:Recaptcha.switch_type('image')">
                                                        <i title="Get an image CAPTCHA" class="fa fa-picture-o"></i>
                                                        </a>
                                                        <a class="btn default" href="javascript:Recaptcha.showhelp()">
                                                        <i class="fa fa-question-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <p class="help-block">
                                                    <span class="recaptcha_only_if_image">
                                                    Masukkan huruf/angka yang tertulis di atas </span>
                                                    <span class="recaptcha_only_if_audio">
                                                    Masukkan angka-angka yang terdengar </span>
                                                </p>
                                            </div>
                                            <!-- END REPCAPTCHA -->
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-offset-3 col-md-9">
                                            <span class="help-block">
                                                <input type="checkbox" name="termcondition" id="termcondition"> 
                                                Saya telah membaca, memahami, dan menyetujui syarat dan ketentuan layanan ini.
                                            </span>
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
<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/bajaj/user/login_bajaj.js"></script>
<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/bajaj/user/register_bajaj.js"></script>
<script>
    jQuery(document).ready(function () {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        QuickSidebar.init(); // init quick sidebar
        Demo.init(); // init demo features
        Login_Bajaj.init();
        Register_Bajaj.init();
    });
</script>
<!-- BEGIN GOOGLE RECAPTCHA -->
<script type="text/javascript">
    var RecaptchaOptions = {
       theme : 'custom',
       custom_theme_widget: 'recaptcha_widget'
    };
</script>
<script type="text/javascript" src="https://www.google.com/recaptcha/api/challenge?k=6Lf20gATAAAAAC8X4jBWSvoRfP_TJ1WYwn_HL-Dy"></script>
<!-- END GOOGLE RECAPTCHA -->
</body>
<!-- END BODY -->
</html>