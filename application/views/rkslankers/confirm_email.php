<!DOCTYPE html>
<!--[if IE 8]>
<html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
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
        <link rel="shortcut icon" href="favicon.ico"><div class="page-header">
    <!-- BEGIN HEADER TOP -->
    <div class="page-header-top bg-blue">
        <div class="container">
            <!-- BEGIN LOGO -->
            <div class="page-logo col-lg-5">
                <a href="#">
                    <img src="<?php echo base_url(); ?>assets/admin/layout3/img/logo-blubuk.png" alt="logo" class="logo-default">
                </a>
            </div>
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="menu-toggler"></a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                    <!-- BEGIN NOTIFICATION DROPDOWN -->

                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN TODO DROPDOWN -->

                    <!-- END TODO DROPDOWN -->

                    <!-- BEGIN INBOX DROPDOWN -->

                    <!-- END INBOX DROPDOWN -->

                    <!-- BEGIN USER LOGIN DROPDOWN -->

                    <!-- END USER LOGIN DROPDOWN -->
                </ul>
            </div>
            <!-- END TOP NAVIGATION MENU -->
        </div>
    </div>
    <!-- END HEADER TOP -->
    <!-- BEGIN HEADER MENU -->
    <div class="page-header-menu">
        <div class="container">
            <!-- BEGIN MEGA MENU -->
            <!-- DOC: Apply "hor-menu-light" class after the "hor-menu" class below to have a horizontal menu with white background -->
            <!-- DOC: Remove data-hover="dropdown" and data-close-others="true" attributes below to disable the dropdown opening on mouse hover -->
            <!-- <div class="hor-menu "> -->
                <ul class="nav navbar-nav">
                    <li class="iconify">
                        <a href="<?php echo site_url('blubuk') ?>"> <!-- <i class="icon-home"></i>  -->BERANDA</a>
                    </li>

                </ul>

        </div>
    </div>
    <!-- END HEADER MENU -->
</div>

</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body>
<!-- BEGIN HEADER -->
<!-- END HEADER -->
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
    <!-- BEGIN PAGE HEAD -->
    <div class="page-head">
        <div class="container">
            <!-- BEGIN PAGE TOOLBAR -->
            <div class="page-toolbar">
                <!-- BEGIN THEME PANEL -->

                <!-- END THEME PANEL -->
            </div>
            <!-- END PAGE TOOLBAR -->
        </div>
    </div>
    <!-- END PAGE HEAD -->
    <!-- BEGIN PAGE CONTENT -->
    <div class="page-content">
        <div class="container">
            <!-- BEGIN PAGE CONTENT INNER -->
            
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

            <div class="form-group">
                <?php 
                $pesan=$this->session->flashdata('messagedanger');
                if(!empty($pesan)):
                ?>
                    <div>
                        <div class="alert alert-danger">
                            <button class="close" data-dismiss="alert" type="button">
                                <i class="icon-remove"></i>
                            </button>
                            <center>
                                <strong>
                                    <?php echo $this->session->flashdata('messagedanger');?>
                                </strong><br>
                            </center>
                        </div>
                    </div>
                <?php endif; ?>
            </div>


            <!-- END PAGE CONTENT INNER -->
        </div>
    </div>
    <!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->
<!-- BEGIN JAVASCRIPTS (Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
        <?php $this->load->view('core_plugins'); ?>
        <!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="<?php echo base_url(); ?>assets/global/plugins/amcharts/amcharts/amcharts.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/amcharts/ammap/ammap.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/amcharts/ammap/maps/js/worldLow.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/amcharts/amstockcharts/amstock.js" type="text/javascript"></script>


<script src="<?php echo base_url(); ?>assets/global/plugins/flot/jquery.flot.min.js"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/flot/jquery.flot.stack.min.js"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/flot/jquery.flot.crosshair.min.js"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<?php echo base_url(); ?>assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/dbexpert/dashboard/charts-amcharts.js"></script>
<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/dbexpert/dashboard/charts-flotcharts.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function () {
        Metronic.init(); // init metronic core componets
        Layout.init(); // init layout
        Demo.init(); // init demo(theme settings page)
        ChartsAmcharts.init(); // init demo charts
        ChartsFlotcharts.initBarCharts();
        Index.init(); // init index page
        Tasks.initDashboardWidget(); // init tash dashboard widget

    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>