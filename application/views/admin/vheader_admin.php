<style type="text/css">
  /*Style Notifikasi*/
  .konfirmasi_pesan
  {
    background: #e02424;   
    margin-left:7px;
    right: 5px;
    top: -5px;
    padding: 2px 6px;
    color: #fff;
    font: bold .9em Tahoma, Arial, Helvetica;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
  }
  /*Membuat Menu*/
  .menu ul{
  margin:0;
  padding:0;
  }
  .menu li{
  list-style:none;
  color:#FFF;
  float:left;
  display:inline;
  position:relative;
  }
  .menu li a{
  display:block;
  background:0;
  color:#000;
  text-decoration:none;
  font:bold 14px Arial;
  outline:none;
  padding:7px 30px;
  }
  .menu li a:hover{
  background:#2a2a2a;
  color:#FFF;
  }
</style>
<div class="page-header">
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
                <ul class="nav navbar-nav">
                    <li class="iconify">
                        <a href="<?php echo site_url('admin') ?>"> <!-- <i class="icon-home"></i>  -->SAMPUL</a>
                    </li>
                    <li class="iconify">
                        <a href="<?php echo site_url('admin/teman_mobile') ?>"> <!-- <i class="icon-home"></i>  -->TEMAN</a>
                    </li>
                    <li class="iconify">
                        <a href="<?php echo site_url('admin/chat_publik') ?>"> <!-- <i class="icon-home"></i>  -->PESAN</a>
                    </li>
                    <li class="">
                        <a href="<?php echo site_url('admin/forum_mobile'); ?>"><!-- <i class="icon-book-open"> --></i> FORUM</a>
                    </li>
                    <li class="">
                        <a href="<?php echo site_url('admin/biografi_mobile'); ?>"><!-- <i class="icon-book-open"></i> --> BIOGRAFI</a>
                    </li>
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
                        <a href="<?php echo site_url('admin') ?>"> <!-- <i class="icon-home"></i>  -->SAMPUL</a>
                    </li>
                    <li class="iconify">
                        <a href="<?php echo site_url('admin/teman') ?>"> <!-- <i class="icon-home"></i>  -->TEMAN</a>
                    </li>
                    <li class="iconify">
                        <a href="<?php echo site_url('admin/chat_publik') ?>"> <!-- <i class="icon-home"></i>  -->PESAN</a>
                    </li>
                    <li class="">
                        <a href="<?php echo site_url('admin/forum'); ?>"><!-- <i class="icon-book-open"> --></i> FORUM</a>
                    </li>
                    <li class="">
                        <a href="<?php echo site_url('admin/daftar_banned'); ?>"><!-- <i class="icon-book-open"></i> --> DAFTAR BANNED</a>
                    </li>
                    <!--<li class="menu-dropdown mega-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown" href="javascript:;" class="dropdown-toggle">
                            <i class="icon-settings"></i> PENGATURAN <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 210px">
                            <li>
                                <div class="mega-menu-content">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <a href="#" class="iconify">
                                                        <i class="icon-user"></i>
                                                        Akun Saya</a>
                                                </li>
                                                <li>
                                                    <a href="<//?php echo site_url('user/change_email_expert') ?>" class="iconify">
                                                        <i class="icon-envelope"></i>
                                                        Ganti Email </a>
                                                </li>
                                                <li>
                                                    <a href="<//?php echo site_url('user/change_password_expert') ?>" class="iconify">
                                                        <i class="icon-key"></i>
                                                        Ganti Password </a>
                                                </li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>-->
                    <!--<li>
                        <a href="<//?php echo site_url('user/logout') ?>" class="iconify">
                            <i class="icon-logout"></i>
                        Logout </a>
                    </li>-->
                    <!--<p class="navbar-text navbar-right" style="color: white">Selamat datang, <a href="#" class="navbar-link" style="color: lightgrey"><//?= $this->session->userdata('username');?></a>.</p>-->

                    <!-- BEGIN HEADER SEARCH BOX -->
                    <form class="search-form" action="<?php echo site_url('admin/pencarian') ?>" method="POST">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Cari Teman" id="query" name="query" style="width:300px">
                            <span class="input-group-btn">
                            <a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
                            </span>
                        </div>
                    </form>

                    <!-- END HEADER SEARCH BOX -->
                </ul>

            <!-- </div> -->
            <div class="hor-menu pull-right">
                <div class="nav navbar-nav hor-menu pull-right">
                    <li class="light-blue">

                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown" href="javascript:;" class="dropdown-toggle">
                            <span class="user-info">
                                <?php
                                if ($data == null) {
                                    echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                                }else{
                                    $fname = $data->foto;
                                    echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                                }
                               ?>
                                    
                            </span>
                            <span class="user-info">
                                <small>Selamat Datang,</small>
                                <?php echo $this->session->userdata('username'); ?><span class="konfirmasi_pesan" id="jumlah_konfirmasi">10</span>
                            </span>
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                            <li>
                                <a href="<?php echo site_url('user/notifikasi') ?>" class="iconify">
                                    <i class="icon-envelope"></i>
                                    Notifikasi <span class="konfirmasi_pesan" id="jumlah_konfirmasi">10</span></a>
                            </li>
                            <li>
                                <a href="<?php echo site_url('user/biografi') ?>" class="iconify">
                                    <i class="icon-user"></i>
                                    Biografi </a>
                            </li>
                            <li>
                                <a href="<?php echo site_url('user/ganti_password') ?>" class="iconify">
                                    <i class="icon-key"></i>
                                    Ganti Password </a>
                            </li>

                            <li class="divider"></li>
                            <li>
                                <a href="<?php echo site_url('user/logout') ?>" class="iconify">
                                    <i class="icon-logout"></i>
                                    Keluar 
                                </a>
                            </li>
                        </ul>
                    </li>
                </div>
                <!-- END MEGA MENU -->
            </div>
        </div>
    </div>
    <!-- END HEADER MENU -->
</div>
