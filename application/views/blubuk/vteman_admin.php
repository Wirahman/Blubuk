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
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/global/plugins/bootstrap-datepicker/css/datepicker3.css"/>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/global/plugins/select2/select2.css"/>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>

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
    <!-- BEGIN PAGE CONTENT -->
    <div class="page-content">
        <div class="container">
            <div class="form-group">
                <?php 
                $pesan=$this->session->flashdata('message');
                if(!empty($pesan)):
                ?>
                    <div>
                        <div class="alert alert-success">
                            <button class="close" data-dismiss="alert" type="button">
                                <i class='fa fa-check'></i>
                                <!-- <i class="icon-check"></i> -->
                            </button>
                                    <?php echo $this->session->flashdata('message');?>
                                <br>
                        </div>
                    </div>
                <?php endif; ?>
            </div>

            <div class="row margin-top-10">
                <div class="portlet box blue-hoki">
                    <div class="portlet-title">
                        <div class="caption">
                           Permintaan Teman
                            <?php echo $this->session->userdata('username'); ?>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="alert alert-danger display-hide">
                            <button class="close" data-close="alert"></button>
                            <i class="fa fa-times"></i> Status Tidak Dapat DiUpdate...
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
                            <table class="table table-bordered table-hover" id="sample_2">
                                <thead>
                                </thead>
                                <tbody>                    

                                    <?php 
                                    // Chek apakah variable array_ditambah_teman kosong atau tidak
                                    if (!empty($array_ditambah_teman)):?>
                                        <?php 
                                        // Pecah array dalam variable array_ditambah_teman
                                        $ditambah_teman = explode(",", $array_ditambah_teman);
                                        foreach ($ditambah_teman as $key => $value): 
                                            $sql_ditambah_teman = mysql_query("SELECT * FROM users WHERE id = '$value' LIMIT $id ") or die(mysql_error());
                                            while($row=mysql_fetch_array($sql_ditambah_teman)):
                                            ?>
                                        <?php $no = 1; ?>
                                        <tr>
                                            <td style="text-align:center;">
                                                <?php
                                                echo '<img src="'.base_url().'/images/foto_profil/'.$row['foto_profil'].'" width="20" height="20" />'; // substr, ngilangin ./
                                                ?>

                                                <?= $row['name'] ?>

                                                <a class="green" 
                                                href="<?php echo base_url() . 'admin/terima_teman/' . $row['id']; ?>" 
                                                data-toggle="modal" data-target="#terima_teman"> 
                                                    <button class="btn btn-info btn-success">
                                                        <i class="fa fa-eye"></i> Lihat
                                                    </button>                                                                       
                                                </a>

                                            </td>
                                        </tr>
                                    <?php endwhile; ?>
                                    <?php endforeach; ?>
                                    <?php else: ?>
                                        <tr class="center">
                                            <td style="text-align:center;">Tidak Ada Permintaan Teman Baru...</td>
                                        </tr>
                                    <?php endif; ?>
                                </tbody>
                            </table>
                            <div class="modal fade" id="terima_teman" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            </div>
                        <!-- END FORM-->
                    </div>
                </div>

                <div class="portlet box blue-hoki">
                    <div class="portlet-title">
                        <div class="caption">
                           Teman
                            <?php echo $this->session->userdata('username'); ?>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="alert alert-danger display-hide">
                            <button class="close" data-close="alert"></button>
                            <i class="fa fa-times"></i> Status Tidak Dapat DiUpdate...
                        </div>
                        <div class="alert alert-success display-hide"></div>
                        <div class="alert alert-info display-hide"><i class="fa fa-spin fa-refresh"></i> Silahkan tunggu... Proses Ganti Email sedang berjalan...</div>
                        
                        <!-- BEGIN FORM-->
                            <table class="table table-bordered table-hover" id="sample_2">
                                <thead>
                                </thead>
                                <tbody>    
                                    <?php 
                                    // Chek apakah variable array_ditambah_teman kosong atau tidak
                                    if (!empty($array_teman)):?>
                                        <?php 
                                        // Pecah array dalam variable array_ditambah_teman
                                        $teman = explode(",", $array_teman);
                                        foreach ($teman as $key => $value): 
                                            $sql_teman = mysql_query("SELECT * FROM users WHERE id = '$value' LIMIT $id ") or die(mysql_error());
                                            while($row=mysql_fetch_array($sql_teman)):
                                            ?>
                                        <?php $no = 1; ?>
                                        <tr>
                                            <td style="text-align:center;">
                                                <?php
                                                echo '<img src="'.base_url().'/images/foto_profil/'.$row['foto_profil'].'" width="20" height="20" />'; // substr, ngilangin ./
                                                ?>

                                                <?= $row['name'] ?>

                                                <a class="green" 
                                                href="<?php echo base_url() . 'admin/profil_teman/' . $row['id']; ?>" 
                                                data-toggle="modal" data-target="#profil_teman"> 
                                                    <button class="btn btn-info btn-success">
                                                        <i class="fa fa-eye"></i> Lihat
                                                    </button>                                                                       
                                                </a>

                                                <a class="green" 
                                                href="<?php echo base_url() . 'admin/pop_up_chat/' . $row['id']; ?>" 
                                                data-toggle="modal" data-target="#pop_up_chat"> 
                                                    <button class="btn btn-success">
                                                        <i class="fa fa-envelope"></i> Pesan
                                                    </button>                                                                       
                                                </a>

                                            </td>
                                        </tr>
                                    <?php endwhile; ?>
                                    <?php endforeach; ?>
                                    <?php else: ?>
                                        <tr class="center">
                                            <td style="text-align:center;">Tidak Ada Permintaan Teman Baru...</td>
                                        </tr>
                                    <?php endif; ?>
                                </tbody>
                            </table>
                            <div class="modal fade" id="terima_teman" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            </div>
                            <div class="modal fade" id="profil_teman" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            </div>
                            <div class="modal fade" id="pop_up_chat" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            </div>
                        <!-- END FORM-->
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
<script src="<?php echo base_url(); ?>assets/chat/js/jQuery.js"></script>
<script src="<?php echo base_url(); ?>assets/chat/ajaxku_chat.js"></script>
<script src="<?php echo base_url(); ?>assets/chat/js/bootstrap.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/blubuk/status/buat_status.js"></script>
<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/blubuk/status/komentar_status.js"></script>


<!--<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/dbexpert/dashboard/charts-flotcharts.js"></script>-->
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function() {   
        $('#status_teman').dataTable();
        var oTable1 = $('#status_teman').dataTable({
            "aoColumns": [
            {"bSortable": false},
            null,null,null,null,null,
            {"bSortable": false}
            ]
        });
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        QuickSidebar.init(); // init quick sidebar
        Demo.init(); // init demo features
        BuatStatus.init();
        KomentarStatus.init();
        Ajaxku_Chat.init();
    });
</script>

    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>