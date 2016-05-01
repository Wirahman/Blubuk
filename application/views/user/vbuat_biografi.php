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
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/global/plugins/bootstrap-datepicker/css/datepicker3.css"/>
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
                    <div class="portlet box blue-hoki">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-user"></i>Biografi 
                                <?php echo $this->session->userdata('username'); ?>
                            </div>
                        </div>
                        <div class="portlet-body form">
                            <!-- BEGIN FORM-->
                            <?php if(empty($data)): ?>

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
                            <form id="form_biografi" class="horizontal-form" autocomplete="off" method="post" enctype="multipart/form-data">
                                <div class="form-body">

                                    <div class="alert alert-danger display-hide">
                                        <button class="close" data-close="alert"></button>
                                        <i class="fa fa-times"></i> Ada beberapa data yang tidak lengkap atau tidak sesuai dengan persyaratan. Silahkan dilengkapi/diperbaiki.
                                    </div>

                                    <div class="alert alert-success display-hide"></div>

                                    <div class="alert alert-info display-hide"><i class="fa fa-spin fa-refresh"></i> Silahkan tunggu. Permintaan anda sedang diproses.</div>
                                    <h3 class="form-section">Foto Profil
                                    <?php echo $this->session->userdata('username'); ?></h3>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label"></label>
                                                <div class="form-group">
                                                   <?php
                                                    echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="200" height="150" />'; // substr, ngilangin ./
                                                   ?>

                                                </div>
                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <input id="foto" name="foto" type="file" class="foto">
                                                    <p style="color: red">
                                                        Ekstensi Foto yang diperkenankan: jpg, jpeg, png<br/>
                                                        Size/ukuran File Foto tidak boleh lebih dari 2 Mb.
                                                    </p>
                                                <!-- </div> -->
                                            </div>
                                        </div>      
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Nama Lengkap</label>

                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <input id="nama_lengkap" name="nama_lengkap" type="text" class="form-control" placeholder="Nama Lengkap" 
                                                    value="<?php echo $this->session->userdata('username'); ?>">
                                                    
                                                <!-- </div> -->

                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Jenis Kelamin</label>
                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <select id="jenis_kelamin" name="jenis_kelamin" class="form-control" value="">
                                                        <option>Pilih Jenis Kelamin</option>
                                                        <option value="L">Laki-laki</option>
                                                        <option value="P">Perempuan</option>
                                                    </select>
                                                <!-- </div> -->
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <!--/row-->
                                    <div class="row">
                                        <!--/span-->
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="tanggal_lahir">Tanggal Lahir</label>

                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <input id="tanggal_lahir" name="tanggal_lahir" type="text" class="form-control date-picker" placeholder="bulan/hari/tahun"/>
                                                <!-- </div> -->
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="form-field-1"> Agama </label>
                                                <select id="agama" name="agama" class="form-control">
                                                    <option value=""></option>
                                                    <?php
                                                    foreach ($agama as $data) {
                                                        echo '<option value="' . $data->id . '">' . $data->nama_agama . '</option>';
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                        </div>



                                        <!-- <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Agama</label>
                                                <div class="input-icon right">
                                                    <i class="fa"></i>
                                                    <select id="agama" name="agama" class="form-control" value="">
                                                        <option>Pilih Jenis Kelamin</option>
                                                        <option value="Islam">Islam</option>
                                                        <option value="Katholik">Kristen(Katholik)</option>
                                                        <option value="Protestan">Kristen(Protestan)</option>
                                                        <option value="Hindu">Hindu</option>
                                                        <option value="Buddha">Buddha</option>
                                                        <option value="Khonghucu">Khonghucu</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div> -->
                                        <!--/span-->
                                    </div>
                                    <!--/row-->
                                    <div class="row">
                                        <!--/span-->
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Telepon</label>

                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <input id="telpon" name="telpon" type="text" class="form-control" placeholder="02X XXX XXXX" value="" onkeyup="checkonlynumber(this);">
                                                <!-- </div> -->
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Telepon Seluler</label>

                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <input id="ponsel" name="ponsel" type="text" class="form-control" placeholder="08XX XXXX XXXX" value="" onkeyup="checkonlynumber(this);">
                                                <!-- </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!--/row-->
                                    <h3 class="form-section">Alamat</h3>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Alamat</label>

                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <input id="alamat" name="alamat" type="text" class="form-control" value="">
                                                <!-- </div> -->
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Kode Pos</label>

                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <input id="kode_pos" name="kode_pos" type="text" class="form-control" value="" onkeyup="checkonlynumber(this);">
                                                <!-- </div> -->
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Provinsi</label>
                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <select id="provinsi" name="provinsi" class="form-control">
                                                        <option value="">Pilih Provinsi</option>
                                                        <?php
                                                        $queryProvinsi = mysql_query("SELECT * FROM provinsi order by nama_provinsi");
                                                        while ($dataProvinsi = mysql_fetch_array($queryProvinsi)) {
                                                        echo '<option value="' . $dataProvinsi['id'] . '">' . $dataProvinsi['nama_provinsi'] . '</option>';
                                                        }
                                                        ?>
                                                    </select>
                                                <!-- </div> -->
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Kabupaten</label>
                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <select id="kabupaten" name="kabupaten" class="form-control">
                                                        <option value="">Pilih Kabupaten</option>
                                                        <?php
                                                        $queryKabupaten = mysql_query("SELECT * FROM kabupaten order by nama_kabupaten");
                                                        while ($dataKabupaten = mysql_fetch_array($queryKabupaten)) {
                                                        echo '<option value="' . $dataKabupaten['id'] . '">' . $dataKabupaten['nama_kabupaten'] . '</option>';
                                                        }
                                                        ?>
                                                    </select>
                                                <!-- </div> -->
                                            </div>
                                        </div>
                                        <!--/span-->
                                        <!--/span-->
                                    </div>
                                    <!--/row-->
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <!-- <span class="help-block">
                                                    <input type="checkbox" name="termcondition" id="termcondition">
                                                    Data yang saya masukkan adalah benar, saya bersedia menerima sanksi apabila data yang dimasukkan tersebut adalah palsu.
                                                </span> -->
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="form-actions right">
                                        <button id="submit" type="submit" class="btn blue-hoki"><i class="fa fa-check"></i> Submit</button>
                                    </div>
                                </div>
                            </form>
                            













                            <?php else: ?>
                            <!--update data personal-->
                            <form id="form_update_biografi" class="horizontal-form" autocomplete="off" method="post" enctype="multipart/form-data">
                                <div class="form-body">
                                    <div class="alert alert-danger display-hide">
                                        <button class="close" data-close="alert"></button>
                                        <i class="fa fa-times"></i> Ada beberapa data yang tidak lengkap atau tidak sesuai dengan persyaratan. Silahkan dilengkapi/diperbaiki.
                                    </div>

                                    <div class="alert alert-success display-hide"></div>

                                    <div class="alert alert-info display-hide"><i class="fa fa-spin fa-refresh"></i> Silahkan tunggu. Permintaan anda sedang diproses.</div>
                                    <h3 class="form-section">Biografi
                                    <?php echo $this->session->userdata('username'); ?></h3>












                                    <input id="id" name="id" type="hidden" value="<?= $data_update_biografi->id ?>">
                                    <div class="row">
                                        <div class="col-md-12">
                                           <?php
                                            $fname = $data_update_biografi->foto;
                                            echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="200" height="150" />'; // substr, ngilangin ./
                                           ?>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label">Foto Profil</label>

                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                        <input id="foto" name="foto" type="file" class="foto">
                                                        <p style="color: red">
                                                            Ekstensi Foto yang diperkenankan: jpg, jpeg, png<br/>
                                                            Size/ukuran File Foto tidak boleh lebih dari 2 Mb.
                                                        </p>
                                                        <span class="help-block">Nama Foto Terakhir Yang Anda Upload. </span>
                                                        <a href="<?php echo base_url() . '/images/personal/' . $data_update_biografi->foto; ?>" target="_blank">
                                                            <?= $data_update_biografi->foto?>
                                                        </a>
                                                        <input id="foto1" name="foto1" type="hidden" class="foto1"  value="<?= $data_update_biografi->foto ?>" readonly>
                                                <!-- </div> -->
                                            </div>
                                        </div>      
                                    </div>


                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Nama Lengkap<!--  <span class="required"> * </span> --></label>

                                                <div class="input-icon right">
                                                    <i class="fa"></i>
                                                    <input id="nama_lengkap" name="nama_lengkap" type="text" class="form-control" placeholder="Nama Lengkap" value="<?= $data_update_biografi->nama_lengkap ?>">
                                                    <!-- <span class="help-block">Isi dengan Nama Lengkap Anda. </span> -->
                                                </div>

                                            </div>
                                        </div>
                                        <!--/span-->
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Jenis Kelamin<!--  <span class="required"> * </span> --></label>

                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <select id="jenis_kelamin" name="jenis_kelamin" class="form-control" value="<?= $data_update_biografi->jenis_kelamin ?>">
                                                        <option>Pilih Jenis Kelamin</option>
                                                        <option value="L" <?php echo $data_update_biografi->jenis_kelamin == 'L' ? 'selected' : ''; ?>>Laki-laki</option>
                                                        <option value="P" <?php echo $data_update_biografi->jenis_kelamin == 'P' ? 'selected' : ''; ?>>Perempuan</option>
                                                    </select>
                                                    <!-- <span class="help-block">Pilih jenis kelamin Anda. </span> -->
                                                <!-- </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                        <!--/span-->
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="tanggal_lahir">Tanggal Lahir<!--  <span class="required"> * </span> --></label>

                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <!--<input id="tanggal_lahir" name="tanggal_lahir" type="text" class="form-control date-picker">-->
                                                    <input id="tanggal_lahir" name="tanggal_lahir" type="text" class="form-control date-picker" value="<?= date("m/d/Y", strtotime($data_update_biografi->tanggal_lahir))?>">
                                                    <!-- <span class="help-block"> Format Tanggal Lahir Bulan-Tanggal-Tahun  </span> -->
                                                <!-- </div> -->
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="form-field-1"> Agama </label>
                                                    <select id="agama" name="agama" class="form-control">
                                                        <option value="">Pilih Provinsi</option>
                                                        <?php foreach ($agama as $row):?>
                                                        <option value="<?php echo $row->id;?>" <?php if ($row->id === $data->agama): echo 'selected="selected"'; endif; ?>><?php echo $row->nama_agama;?></option>
                                                        <?php endforeach;?>
                                                    </select>
                                            </div>
                                        </div>
                                    </div>








                                    
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Telepon<!--  <span class="required"> * </span> --></label>

                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <!-- <input id="telpon" name="telpon" type="text" class="form-control" placeholder="02X XXX XXXX" value="<?= $data->telpon ?>" onkeyup="checkonlynumber(this);"> -->
                                                    <input id="telpon" name="telpon" type="text" class="form-control" placeholder="02X XXX XXXX" value="<?= $data_update_biografi->telpon ?>">
                                                    <!-- <span class="help-block">Isi dengan nomor telepon rumah Anda. </span> -->
                                                <!-- </div> -->
                                            </div>
                                        </div>    
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Telepon Seluler<!--  <span class="required"> * </span> --></label>

                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <input id="ponsel" name="ponsel" type="text" class="form-control" placeholder="08XX XXXX XXXX" value="<?= $data->ponsel ?>">
                                                    <!-- <span class="help-block">Isi dengan nomor ponsel Anda. </span> -->
                                                <!-- </div> -->
                                            </div>
                                        </div>                         
                                    </div>

                                    <h3 class="form-section">Alamat</h3>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Alamat<!--  <span class="required"> * </span> --></label>

                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <input id="alamat" name="alamat" type="text" class="form-control" value="<?= $data->alamat ?>">
                                                <!-- </div> -->
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Kode Pos<!--  <span class="required"> * </span> --></label>

                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <input id="kode_pos" name="kode_pos" type="text" class="form-control" value="<?= $data->kode_pos ?>" onkeyup="checkonlynumber(this);">
                                                <!-- </div> -->
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Provinsi<!--  <span class="required"> * </span> --></label>
                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <select id="provinsi" name="provinsi" class="form-control">
                                                        <option value="">Pilih Provinsi</option>
                                                        <?php foreach ($provinsi as $row):?>
                                                        <option value="<?php echo $row->id;?>" <?php if ($row->id === $data->provinsi): echo 'selected="selected"'; endif; ?>><?php echo $row->nama_provinsi;?></option>
                                                        <?php endforeach;?>
                                                    </select>
                                                   <!--  <span class="help-block">Pilih Provinsi Anda Tinggal. </span> -->
                                                <!-- </div> -->
                                            </div>
                                        </div>



                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">Kabupaten<!--  <span class="required"> * </span> --></label>
                                                <!-- <div class="input-icon right"> -->
                                                    <i class="fa"></i>
                                                    <select id="kabupaten" name="kabupaten" class="form-control">
                                                        <option value="">Pilih Kabupaten</option>
                                                        <?php foreach ($kabupaten as $row):?>
                                                        <option value="<?php echo $row->id;?>" <?php if ($row->id === $data->kabupaten): echo 'selected="selected"'; endif; ?>><?php echo $row->nama_kabupaten;?></option>
                                                        <?php endforeach;?>
                                                    </select>
                                                    <!-- <span class="help-block">Pilih Kabupaten Anda Tinggal. </span> -->
                                                <!-- </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    

                                    <!-- <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <span class="help-block">
                                                    <input type="checkbox" name="termcondition" id="termcondition">
                                                    Data yang saya masukkan adalah benar, saya bersedia menerima sanksi apabila data yang dimasukkan tersebut adalah palsu.
                                                </span>
                                            </div>
                                        </div>
                                    </div> -->
                                    
                                    <div class="form-actions right">
                                        <button onclick="history.back();" type="button" class="btn default">Cancel</button>
                                        <button id="submit" type="submit" class="btn blue-hoki"><i class="fa fa-check"></i> Submit</button>
                                    </div>
                                </div>
                            </form>
                            <?php endif;?>
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
        <script src="<?php echo base_url(); ?>assets/admin/pages/scripts/components-pickers.js" type="text/javascript"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/admin/pages/scripts/bootbox.min.js"></script>
        <script src="<?php echo base_url(); ?>assets/admin/pages/scripts/blubuk/user/biografi.js"></script>
        <script src="<?php echo base_url(); ?>assets/admin/pages/scripts/blubuk/user/update_biografi.js"></script>
        <script>
            jQuery(document).ready(function() {
                Metronic.init(); // init metronic core components
                Layout.init(); // init current layout
                QuickSidebar.init(); // init quick sidebar
                Demo.init(); // init demo features
                ComponentsPickers.init();
                Biografi.init(); // init data personal
                UpdateBiografi.init(); // init data personal
            });

        </script>
        
        <script language="javascript">
            $(document).ready(function() {
                $('#provinsi').change(function() {
                    $.post("<?php echo site_url(); ?>/user/get_kabupaten/" + $('#provinsi').val(), {}, function(obj) {
                        $('#kabupaten').html(obj);
                    });
                });

            });
            
            function checkonlynumber(ob) {
                var validChars = /[^0-9-+]/gi;
                if (validChars.test(ob.value)) {
                    ob.value = ob.value.replace(validChars, "");
                }
            }
        </script>
</body>
<!-- END BODY -->
</html>