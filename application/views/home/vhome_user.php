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
                <!-- Untuk Ukuran Kotak -->
                <!-- <div class="col-md-3 margin-top-5 col-centered" style="left:40%;"> -->
                <div class="col-md-6 col-sm-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet box blue-hoki">
                        <div class="portlet-title">
                            <div class="caption">
                               Pesan Status 
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
                            <form action="home/index" method="post" id="form_buat_status" autocomplete="off" class="form-horizontal" enctype="multipart/form-data">        
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <div class="input-group input-icon right">
                                            <textarea class="span12" id="isi" name="isi" class="form-control" placeholder="Isi Update" cols="64" rows="6"></textarea> 
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <div class="input-icon right">
                                            <i class="fa"></i>
                                            <input id="foto" name="foto" type="file" class="foto">
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="col-md-6">
                                    <div class="form-group">
                                        <i class="fa"></i>
                                        <select id="status" name="status" class="form-control" value="">
                                            <option value="Public">Public</option>
                                            <option value="Teman">Teman</option>
                                            <option value="Private">Private</option>
                                        </select>
                                    </div>
                                </div> -->
                                <div class="modal-footer">
                                    <a href="#" class="btn btn-info" data-toggle="popover"  id="emot" type="button" data-placement="top" title="Emoticons (klik)">
                                    <i class="fa fa-eye"></i></a>
                                    <button type="submit" class="btn blue-hoki">Update</button>
                                </div>
                            </form>
                            <!-- END FORM-->
                        </div>
                    </div>
                    <!-- END EXAMPLE TABLE PORTLET-->
                </div>

                <!-- Buat Space Iklan -->
                <div class="col-md-6 col-sm-12">
                    <div class="portlet box blue-hoki">
                        <div class="portlet-title">
                            <div class="caption caption-md">
                                <i class="icon-bar-chart theme-font hide"></i>
                                <span class="caption-subject theme-font bold uppercase">Sponsor</span>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="scroller" style="height: 305px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
                                <div class="general-item-list">
                                    <img src="<?php echo base_url(); ?>/images/sponsor/allah.jpg" width="150px"/>

                                    <img src="<?php echo base_url(); ?>/images/sponsor/muhammad.jpg" width="150px"/>
                                    
                                    <img src="<?php echo base_url(); ?>/images/sponsor/RKS.jpg" width="150px"/>
                                    
                                    <img src="<?php echo base_url(); ?>/images/sponsor/Bajaj.jpg" width="150px"/>

                                    <a href="https://shopee.co.id/hanny_miushoppu" target="_blank">
                                    <img src="<?php echo base_url(); ?>/images/sponsor/miu shoppu.jpg" width="150px"/>
                                    </a>
                                    
                                    <a href="http://adf.ly/1Z0gGp" target="_blank">
                                        <img src="<?php echo base_url(); ?>/images/sponsor/juado.jpg" width="150px"/>
                                    </a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row margin-top-10">
                <!-- Untuk Ukuran Kotak -->
                <!-- <div class="col-md-3 margin-top-5 col-centered" style="left:40%;"> -->

                <div class="col-md-6 col-sm-12">
                    <div class="portlet box blue-hoki"><div class="portlet-title">
                            <div class="caption caption-md">
                                <i class="icon-bar-chart theme-font hide"></i>
                                <span class="caption-subject theme-font bold uppercase">Status <?php echo $this->session->userdata('username'); ?></span>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="scroller" style="height: 500px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
                                <div class="general-item-list">
                                    <table class="table table-light table-hover">
                                        <thead>
                                        </thead>
                                        <tbody>                                
                                            <script type="text/javascript">
                                                //Disini
                                                var listOfStatusPribadi = [];
                                            </script>
                                            <?php if (!empty($data_desc_pribadi)): ?>
                                                <?php $no = 1; ?>
                                                <?php foreach ($data_desc_pribadi as $row): ?>
                                                    <tr>
                                                        <td>
                                                            <div class="item">
                                                                <div class="item-head">
                                                                    <div class="item-details">
                                                                        <span class="user-info">
                                                                            <?php
                                                                            if ($row->foto_user == null) {
                                                                                echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                                                                            }else{
                                                                                $fname = $row->foto_user;
                                                                                echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                                                                            }
                                                                           ?>                                                                                
                                                                        </span>
                                                                        <?php echo $row->name ?>
                                                                        <span class="item-label"><?= date("d-m-Y h:i:s", strtotime($row->waktu)) ?></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="item">
                                                                <div class="item-body">
                                                                    <div class="item-details">
                                                                        <span id="status_pribadi_<?php echo $no; ?>">
                                                                            <?= substr($row->isi , 0, 200)?>
                                                                        </span>
                                                                        <script type="text/javascript">
                                                                            // Disini
                                                                            listOfStatusPribadi.push('status_pribadi_<?php echo $no; ?>');                                                                            
                                                                        </script>
                                                                    </div>
                                                                    <div class="item-details">
                                                                        <?php
                                                                        $row->foto;
                                                                        $file_ext = strtolower(end(explode('.', $row->foto)));

                                                                        if ($file_ext == null) {
                                                                            echo '';
                                                                        }else{
                                                                            $fname = $row->foto;
                                                                            echo '<img src="'.base_url().'/images/status/'.$fname.'" width="150px"/>'; // substr, ngilangin ./
                                                                        }
                                                                        ?> 
                                                                    </div>
                                                                    <a class="green" 
                                                                    href="<?php echo site_url('home/komentar_status/' . $row->id); ?>" 
                                                                    data-toggle="modal" data-target="#komentar_status">Komentari                                                                        
                                                                    </a>
                                                                    <a class="green" 
                                                                    href="<?php echo site_url('home/hapus_status/' . $row->id); ?>" 
                                                                    data-toggle="modal" data-target="#hapus_status">Hapus                                                                        
                                                                    </a>
                                                                    <div class="modal fade" id="hapus_status" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                <?php $no ++; ?>
                                                <?php endforeach; ?>
                                        <?php else: ?>
                                            <td style="text-align: center;">
                                            --- Belum Ada Update Yang Tersedia ---
                                            </td>
                                        <?php endif; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-6 col-sm-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet box blue-hoki">
                        <div class="portlet-title">
                            <div class="caption caption-md">
                                <i class="icon-bar-chart theme-font hide"></i>
                                <span class="caption-subject theme-font bold uppercase">Status Teman <?php echo $this->session->userdata('username'); ?></span>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="scroller" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
                                <div class="general-item-list">
                                    <table id = "status_teman" class="table table-light table-hover">
                                        <thead>
                                        </thead>
                                        <tbody>   
                                        <?php 
                                        // Chek apakah variable array_ditambah_teman kosong atau tidak
                                        if (!empty($data_desc)):?>
                                            <script type="text/javascript">
                                                //Disini
                                                var listOfStatusTeman = [];
                                            </script>
                                            <?php $no = 1; ?>
                                            <?php 
                                            // Pecah array dalam variable array_ditambah_teman
                                            $teman = explode(",", $data_desc);
                                            foreach ($teman as $key => $value): 
                                                $sql_teman = mysql_query("SELECT * FROM status WHERE user_id = '$value' order by id desc") or die(mysql_error());
                                                while($row=mysql_fetch_array($sql_teman)):
                                                ?>
                                                    <tr>
                                                        <td>
                                                            <?php
                                                            if ($row['foto_user'] == null) {
                                                                echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                                                            }else{
                                                                $fname = $row['foto_user'];
                                                                echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                                                            }
                                                           ?>  
                                                            <?php echo $row['name'] ?>       
                                                            <?= date("d-m-Y h:i:s", strtotime($row['waktu'])) ?>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                        <td>
                                                            <?php
                                                            $row['foto'];
                                                            $file_ext = strtolower(end(explode('.', $row['foto'])));

                                                            if ($file_ext == null) {
                                                                echo '';
                                                            }else{
                                                                $fname = $row['foto'];
                                                                echo '<img src="'.base_url().'/images/status/'.$fname.'" width="150px"/>'; // substr, ngilangin ./
                                                            }
                                                            ?> 
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <span id="status_teman_<?php echo $no; ?>">
                                                                <?= substr($row['isi'] , 0, 200)?>
                                                            </span>
                                                            <script type="text/javascript">
                                                                // Disini
                                                                listOfStatusTeman.push('status_teman_<?php echo $no; ?>');                                                                            
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <a class="green" 
                                                            href="<?php echo site_url('home/komentar_status/' . $row['id']); ?>" 
                                                            data-toggle="modal" data-target="#komentar_status">Komentari                                                                        
                                                            </a>
                                                            <div class="modal fade" id="komentar_status" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                            </div>
                                                        </td>
                                                    </tr>
                                        <?php $no ++; ?>
                                        <?php endwhile; ?>
                                        <?php endforeach; ?>
                                        <?php else: ?>
                                            <td style="text-align: center;">
                                            --- Belum Ada Update Yang Tersedia ---
                                            </td>
                                        <?php endif; ?>


                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    </div>
                </div>

                <!-- <div class="container">
                    <div class="col-md-6 col-sm-12">
                        <div class="portlet box blue-hoki">
                            <div id="boxpesan"></div>
                        </div>
                        <div class="span6 offset2">
                            <form method="post" action="" id="formpesan" class="form-inline">
                            <input class="input-xlarge" name="pesan" type="text" placeholder="Ketik Pesan kemudian Enter !" required x-moz-errormessage="Ketik pesannya gan !">
                            <input type='submit' value='Kirim' class='btn btn-info pull-right' id='pencet'>
                            </form>
                            <audio controls id="suara">
                            <source src="../assets/chat.mp3" type="audio/mpeg">
                            Your browser does not support the audio element.
                            </audio>
                        </div>
                    </div>
                </div> -->



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
        // BuatStatus.init();
        // KomentarStatus.init();
        Ajaxku.init();
    });

    // Disini
    for (var i = 0; i < listOfStatusPribadi.length; i ++) {
        var statusPribadi = document.getElementById(listOfStatusPribadi[i]);
        var stringStatus = statusPribadi.innerHTML;
        statusPribadi.innerHTML = renderEmot(stringStatus);
    }


    for (var i = 0; i < listOfStatusTeman.length; i ++) {
        var statusTeman = document.getElementById(listOfStatusTeman[i]);
        var stringStatusTeman = statusTeman.innerHTML;
        statusTeman.innerHTML = renderEmotTeman(stringStatusTeman);
    }
</script>

    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
