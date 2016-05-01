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
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/global/plugins/bootstrap-datepicker/css/datepicker3.css"/>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/global/plugins/select2/select2.css"/>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
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
    <?php $this->load->view('admin/vheader_admin'); ?>
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
    <div class="page-content">
        <div class="container">

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

            <div class="portlet-body">
                <div class="row margin-top-10">
                    <!-- Untuk Ukuran Kotak -->
                    <!-- <div class="col-md-3 margin-top-5 col-centered" style="left:40%;"> -->
                    <div class="col col-sm-12">
                        <!-- BEGIN EXAMPLE TABLE PORTLET-->
                        <div class="portlet box blue-hoki">
                            <div class="portlet-title">
                                <div class="caption caption-md">
                                    <i class="icon-bar-chart theme-font hide"></i>
                                    <span class="caption-subject theme-font bold uppercase">Daftar Banned Blubuk</span>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="scroller" style="height: 305px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
                                    <div class="general-item-list">
                                        <table class="table table-bordered table-hover" id="sample_2">
                                            <thead>
                                                <tr>
                                                    <th style="text-align: center;">Foto Profil</th>
                                                    <th style="text-align: center;">Email</th>
                                                    <th style="text-align: center;">Nama</th>
                                                    <th style="text-align: center;">
                                                        <i class="fa fa-pencil"></i>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php if(!empty($data_desc)): ?>
                                                <?php $no = 1; ?>
                                                <?php foreach ($data_desc as $row): ?>
                                                <tr>
                                                    <td style="text-align: center;">
                                                        <?php
                                                        $row->foto_profil;
                                                        $file_ext = strtolower(end(explode('.', $row->foto_profil)));

                                                        if ($file_ext == null) {
                                                            echo '';
                                                        }else{
                                                            $fname = $row->foto_profil;
                                                            echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="150px"/>'; // substr, ngilangin ./
                                                        }
                                                        ?> 
                                                    </td>
                                                    <td style="text-align: center;">
                                                        <?= $row->email ?>
                                                    </td>
                                                    <td style="text-align: center;">
                                                        <?= $row->name?>
                                                    </td>
                                                    <td style="text-align: center;">
                                                        <a class="green" 
                                                        href="<?php echo base_url() . '/admin/unbanned_user/' . $row->id; ?>" 
                                                        data-toggle="modal" data-target="#unbanned_user">Unbanned                                                                        
                                                        </a>
                                                    </td>
                                                    <div class="modal fade" id="unbanned_user" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                    </div>
                                                </tr>
                                            <?php endforeach; ?>
                                            </tbody>
                                            <?php else: ?>
                                                <tr class="center">
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td></td>
                                                </tr>
                                            <?php endif; ?>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>









        </div>
        <!-- END PAGE CONTENT INNER -->
    </div>
</div>
<!-- END PAGE CONTENT -->
<!-- END PAGE CONTAINER -->
<!-- BEGIN JAVASCRIPTS (Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<?php $this->load->view('core_plugins2'); ?>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->

<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/jquery-validation/js/additional-methods.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-pwstrength/pwstrength-bootstrap.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/admin/pages/scripts/bootbox.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!--<script src="<//?php echo base_url(); ?>assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>-->
<script src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<?php echo base_url(); ?>assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/table-managed.js"></script>
<script src="<?php echo base_url(); ?>assets/chat/ajaxku_forum.php?base_url=<?php echo base_url(); ?>"></script>
<script src="<?php echo base_url(); ?>assets/chat/js/bootstrap.js"></script>
<!--<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/blubuk/forum/buat_forum.js"></script>-->


<!--<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/dbexpert/dashboard/charts-flotcharts.js"></script>-->
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function() {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        QuickSidebar.init(); // init quick sidebar
        Demo.init(); // init demo features
        // BuatForum.init();
        TableManaged.init();
        // Ajaxku.init();
    });
</script>

    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>