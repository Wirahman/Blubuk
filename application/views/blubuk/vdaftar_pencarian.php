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
    <body class="page-quick-sidebar-over-content page-boxed page-header-fixed">
       
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
                    <div class="portlet box blue-hoki">
                        <div class="portlet-body form">
                            <!-- BEGIN FORM-->

                            <!--update data personal-->
                            <!--<form id="form_update_data_personal" class="horizontal-form" autocomplete="off" method="post" enctype="multipart/form-data">-->
                            <div class="form-body">
                                <table class="table table-bordered table-hover" id="sample_2">
                                    <thead>
                                    </thead>
                                    <tbody>                                
                                        <?php if (!empty($pencarian)): ?>
                                            <?php $no = 1; ?>
                                            <?php foreach ($pencarian as $row): ?>
                                            <tr>
                                                <td style="text-align:center;">

                                                    <?php
                                                    if ($row == null) {
                                                        echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                                                    }else{
                                                        $fname = $row->foto;
                                                        echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                                                    }
                                                   ?>
                                                        
                                                    <?= $row->nama_lengkap ?>

                                                    <a class="green" 
                                                    href="<?php echo site_url('home/tampil_pencarian/' . $row->id); ?>" 
                                                    data-toggle="modal" data-target="#tampil_pencarian"> 
                                                        <button class="btn btn-info btn-success">
                                                            <i class="fa fa-eye"></i> Lihat
                                                        </button>                                                                       
                                                    </a>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                        <?php else: ?>
                                            <tr class="center">
                                                <td style="text-align:center;">Nama / Email Yang Anda Cari Tidak Ada...</td>
                                            </tr>
                                        <?php endif; ?>
                                    </tbody>
                                </table>
                                <div class="modal fade" id="tampil_pencarian" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                </div>
                            </div>
                            <!--</form>-->
                            <!-- END FORM-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- end form personal -->
        </div>
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
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/admin/pages/scripts/bootbox.min.js"></script>
        <script>
            jQuery(document).ready(function() {
                Metronic.init(); // init metronic core components
                Layout.init(); // init current layout
                QuickSidebar.init(); // init quick sidebar
                Demo.init(); // init demo features
                // DataPersonal.init(); // init data personal
            });
        </script>
    </div>
</body>
<!-- END BODY -->
</html>
