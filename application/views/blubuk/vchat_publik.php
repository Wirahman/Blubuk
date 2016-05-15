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
    <?php $this->load->view('home/vheader_blubuk'); ?>
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
                           Daftar Chat
                            <?php echo $this->session->userdata('username'); ?>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="alert alert-danger display-hide">
                            <button class="close" data-close="alert"></button>
                            <i class="fa fa-times"></i> Chat Gagal Dikirim...
                        </div>
                        <div class="alert alert-success display-hide"></div>
                        <div class="alert alert-info display-hide"><i class="fa fa-spin fa-refresh"></i> Silahkan tunggu... Proses Ganti Email sedang berjalan...</div>
                        
                        <!-- BEGIN FORM-->
                            <table class="table table-bordered table-hover" id="sample_2">
                                <thead>
                                </thead>
                                <tbody>                            
                                    <?php if (!empty($chat)): ?>
                                        <?php $no = 1; ?>
                                        <script type="text/javascript">
                                            //Disini
                                            var listOfPesan = [];
                                        </script>
                                        <?php foreach ($chat as $row): ?>
                                            <tr>
                                                <td>
                                                    <div class="item">
                                                        <div class="item-head">
                                                            <!-- Pengirim -->
                                                            <div class="item-details">
                                                                <span class="user-info">
                                                                    <?php
                                                                    if ($row->foto_profil1 == $this->session->userdata('foto')){

                                                                    }else{
                                                                        if ($row->foto_profil1 == null) {
                                                                            echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                                                                        }else{
                                                                            $fname = $row->foto_profil1;
                                                                            echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                                                                        }
                                                                    }
                                                                   ?>                                                                                
                                                                </span>
                                                                <?php
                                                                if ($row->nama1 == $this->session->userdata('username')){

                                                                }else{
                                                                   echo $row->nama1;
                                                                } 
                                                                ?>
                                                            </div>

                                                            <!-- Penerima -->
                                                            <div class="item-details">
                                                                <span class="user-info">
                                                                    <?php
                                                                    if ($row->foto_profil2 == $this->session->userdata('foto')){

                                                                    }else{

                                                                        if ($row->foto_profil2 == null) {
                                                                            echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                                                                        }else{
                                                                            $fname = $row->foto_profil2;
                                                                            echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                                                                        } 
                                                                    }
                                                                   ?>                                                                                
                                                                </span>
                                                                <?php
                                                                if ($row->nama2 == $this->session->userdata('username')){

                                                                }else{
                                                                   echo $row->nama2;
                                                                } 
                                                                ?>
                                                            </div>
                                                            <!-- <span class="item-label"><?= date("d-m-Y h:i:s", strtotime($row->waktu)) ?></span> -->
                                                        </div>
                                                    </div>
                                                    <div class="item">
                                                        <div class="item-body">
                                                            <div class="item-details">
                                                                <?php
                                                                $row->foto;
                                                                $file_ext = strtolower(end(explode('.', $row->foto)));

                                                                if ($file_ext == null) {
                                                                    echo '';
                                                                }else{
                                                                    $fname = $row->foto;
                                                                    echo '<img src="'.base_url().'/images/chat/'.$fname.'" width="150px"/>'; // substr, ngilangin ./
                                                                }
                                                                ?> 
                                                            </div>
                                                            <!--div class="item-details">
                                                                <span id="pesan_<?php echo $no; ?>"><?php echo $row->message ?></span>
		                                                        <script type="text/javascript">
		                                                            listOfPesan.push('pesan_<?php echo $no; ?>');                                                                            
		                                                        </script>
                                                            </div-->
                                                            <a class="green" 
                                                            href="<?php echo site_url('home/balas_chat/' . $row->id); ?>" 
                                                            data-toggle="modal" data-target="#balas_chat">Pesan                                                                        
                                                            </a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                <?php else: ?>
                                    <td style="text-align: center;">
                                    --- Belum Ada Chat Yang Tersedia ---
                                    </td>
                                <?php endif; ?>
                                </tbody>
                            </table>
                            <div class="modal fade" id="balas_chat" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
<!--script src="<?php echo base_url(); ?>assets/chat/ajaxku.js"></script-->
<script src="<?php echo base_url(); ?>assets/chat/ajaxku.php?base_url=<?php echo base_url(); ?>"></script>
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
        Ajaxku.init();
    });

    for (var i = 0; i < listOfPesan.length; i ++) {
        var pesan = document.getElementById(listOfPesan[i]);
        var stringPesan = pesan.innerHTML;
        pesan.innerHTML = renderEmot(stringPesan);
    }
</script>

    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
