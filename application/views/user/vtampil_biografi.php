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
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-user"></i>Biografi 
                                <?php echo $this->session->userdata('username'); ?> 
                            </div>
                        </div>
                        <div class="portlet-body form">
                            <!-- BEGIN FORM-->

                            <!--update data personal-->
                            <!--<form id="form_update_data_personal" class="horizontal-form" autocomplete="off" method="post" enctype="multipart/form-data">-->
                            <div class="form-body">
                                <h3 class="form-section">Biografi 
                                <?php echo $this->session->userdata('username'); ?>
                                    <a href="<?= site_url() ?>user/buat_biografi/<?php echo $data->id; ?> " class="pull-right">
                                        <button class="btn-primary">
                                            <i class="fa fa-pencil"></i> Ubah Profil
                                        </button>
                                    </a>
                                </h3>
                                
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
                                
                                <div class="row">
                                    <input id="id" name="id" type="hidden" value="<?= $data->id ?>">
                                    <div class="col-md-6">
					                   <?php
                                        $fname = $data->foto;
                                        echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="200" height="150" />'; // substr, ngilangin ./
					                   ?>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Nama Lengkap </label>

                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input id="nama_lengkap" name="nama_lengkap" type="text" class="form-control" placeholder="Nama Lengkap"  value="<?= $data->nama_lengkap ?>" readonly="true">
                                            </div>

                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Jenis Kelamin </label>

                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <select id="jenis_kelamin" name="jenis_kelamin" class="form-control" value="<?= $data->jenis_kelamin ?>" disabled="true">
                                                    <option></option>
                                                    <option value="L" <?php echo $data->jenis_kelamin == 'L' ? 'selected' : ''; ?>>Laki-laki</option>
                                                    <option value="P" <?php echo $data->jenis_kelamin == 'P' ? 'selected' : ''; ?>>Perempuan</option>
                                                </select>
                                                <!-- <span class="help-block">Pilih jenis kelamin Anda. </span> -->
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label" for="tanggal_lahir">Tanggal Lahir </label>

                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input id="tanggal_lahir" name="tanggal_lahir" type="date" class="form-control" value="<?= date("m/d/Y", strtotime($data->tanggal_lahir))?>" readonly="true"/>
                                                
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Agama </label>

                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input id="agama" name="agama" type="text" class="form-control" value="<?= $data->nama_agama ?>" readonly="true">
                                                
                                            </div>
                                        </div>
                                    </div>


                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Telepon </label>

                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input id="telpon" name="telpon" type="text" class="form-control" placeholder="02X XXX XXXX" value="<?= $data->telpon ?>" readonly="true">
                                                
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Telepon Seluler </label>

                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input id="ponsel" name="ponsel" type="text" class="form-control" placeholder="08XX XXXX XXXX" value="<?= $data->ponsel ?>" readonly="true">
                                                
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <h3 class="form-section">Alamat</h3>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Alamat  </label>

                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input id="alamat" name="alamat" type="text" class="form-control" value="<?= $data->alamat ?>" readonly="true">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Kode Pos </label>

                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input id="kode_pos" name="kode_pos" type="text" class="form-control" value="<?= $data->kode_pos ?>" disabled="true">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">


                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Provinsi </label>

                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input id="provinsi" name="provinsi" type="text" class="form-control" value="<?= $data->nama_provinsi ?>" readonly="true">
                                                
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">Kabupaten </label>

                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input id="kabupaten" name="kabupaten" type="text" class="form-control" value="<?= $data->nama_kabupaten ?>" readonly="true">
                                                
                                            </div>
                                        </div>
                                    </div>

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
            });

            $('.tanggal').datepicker({
                dateFormat: 'dd-mm-yy',
                changeMonth: true,
                changeYear: true
            });
        </script>
    </div>
</body>
<!-- END BODY -->
</html>