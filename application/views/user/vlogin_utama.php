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
            <!-- <div class="hor-menu pull-left">
                <div class="nav navbar-nav hor-menu pull-left">
                    <img src="<?php echo base_url(); ?>assets/admin/layout3/img/ilmu.png" alt="logo" class="logo-default">
                </div>
            </div> -->
            
            <div class="hor-menu pull-right">
                <div class="nav navbar-nav hor-menu pull-right">
                   <form method="post" id="form_login" autocomplete="off" class="form-horizontal">
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
                                    <input type="password" class="form-control" name="password_login" id="password_login" placeholder="Password">
                                </div>
                            </div>
                            <button id="login" type="submit" class="btn blue-hoki"><i class="fa fa-check"></i> Masuk</button>
                            <div class="form-group">
                                <div class="col-md-7">
                                    <!-- <span class="help-block"><a class="btn" style="font-size: small" href="<?php echo site_url('/user/forgot_password') ?>">Lupa Password?</a></span> -->
                                    <span class="help-block"><a class="btn" style="font-size: small" href="http://adf.ly/1YpnUX">Lupa Password?</a></span>
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

                            <div class="alert alert-danger display-hide">
                                <button class="close" data-close="alert"></button>
                                <i class="fa fa-times"></i> Silahkan Lengkapi Terlebih Dahulu Ya... 
                            </div>
                            <div class="alert alert-success display-hide"></div>
                            <div class="alert alert-info display-hide"><i class="fa fa-spin fa-refresh"></i> Pembuatan Akun Sedang Diproses...</div>
                            <!-- BEGIN FORM-->
                            <form action = "<?php echo site_url('user/pendaftaran_user_utama'); ?>" method="post" id="form_pendaftaran" autocomplete="off" class="form-horizontal">
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
<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/blubuk/user/login.js"></script>
<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/blubuk/user/pendaftaran_utama.js"></script>
<script>
    jQuery(document).ready(function () {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        QuickSidebar.init(); // init quick sidebar
        Demo.init(); // init demo features
        Login.init();
        PendaftaranUtama.init();
    });
</script>
</body>
<!-- END BODY -->
</html>
