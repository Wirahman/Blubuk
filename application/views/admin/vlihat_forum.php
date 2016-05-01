<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<?php $this->load->view('head_title_meta');?>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<?php $this->load->view('head_global_mandatory_styles');?>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>
assets/global/plugins/bootstrap-datepicker/css/datepicker3.css"/>

<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<?php $this->load->view('head_theme_styles');?>
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
<?php $this->load->view('header_publik');?>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
	<!-- BEGIN PAGE HEAD -->
	<div class="page-head" style="background-color:rgb(239,243,248)">
		<!-- Space Iklan -->
		<div class="container">

			<!-- <div class="page-title">
				<b><h2>Silahkan Daftarkan Akun Agan Dihalaman Ini... ^^</h2></b>
			</div> -->

		</div>
	</div>
	<!-- END PAGE HEAD -->
	<!-- BEGIN PAGE CONTENT -->
	<div class="page-content">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN EXAMPLE TABLE PORTLET-->
					<div class="portlet box blue-hoki">
                        <div class="portlet-title">
                            <div class="caption">
                                <span class="bold uppercase"><?= $forum->judul_forum ?></span>
                            </div>
                            <div class="tools">
                            </div>
                        </div>
						<div class="portlet-body">
				            <div class="item-details">
				                <?php
				                $forum->foto_forum;
				                $file_ext = strtolower(end(explode('.', $forum->foto_forum)));

				                if ($file_ext == null) {
				                    echo '';
				                }else{
				                    $fname = $forum->foto_forum;
				                    echo '<img src="'.base_url().'/images/forum/'.$fname.'" width="150px"/>'; // substr, ngilangin ./
				                }
				                ?> 
				            </div>     

				            <!-- <div class="item-details">
				                <span class="bold uppercase">
				                	<?= $forum->judul_forum ?>
				                </span>
				            </div>   -->  
				            <br></br>
				            <div class="item-details">
				                <span><?= $forum->isi_forum ?></span>
				            </div>
				            <br></br>
				            <form action="komentar_forum" method="post" id="form_forum_status" autocomplete="off" class="form-horizontal" enctype="multipart/form-data">
				                <div class="form-body">
				                                     
				                <?php if (!empty($forum_desc)): ?>
				                <div class="portlet-title">
				                    <div class="caption caption-md">
				                        <i class="icon-bar-chart theme-font hide"></i>
				                        <span class="caption-subject theme-font bold uppercase">forum Teman</span>
				                    </div>
				                </div>
				                               
				                <?php $no = 1; ?>
				                <?php foreach ($forum_desc as $forum_desc): ?>
				                <span class="user-info">
				                    <?php
				                    if ($forum_desc->foto_user == null) {
				                        echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
				                    }else{
				                        $fname = $forum_desc->foto_user;
				                        echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
				                    }
				                   ?>                                                                                
				                </span>
				                <div class="item-details">
				                    <span><?= $forum_desc->name ?></span>
				                    <span class="item-label"><?= date("d-m-Y h:i:s", strtotime($forum_desc->waktu)) ?></span>
				                </div>
				                <div class="item-details">
				                    <span><?= $forum_desc->isi ?></span>
				                </div>
				                <div class="item-details">
				                        <?php
				                        $forum_desc->foto;
				                        $file_ext = strtolower(end(explode('.', $forum_desc->foto)));

				                        if ($file_ext == null) {
				                            echo '';
				                        }else{
				                            $fname = $forum_desc->foto;
				                            echo '<img src="'.base_url().'/images/komentar_forum/'.$fname.'" width="150px"/>'; // substr, ngilangin ./
				                        }
				                        ?> 
				                </div>
				                <?php endforeach; ?>
				                <?php else: ?>
				                <span class="caption-subject theme-font">Belum Ada Komentar...</span>
				                <?php endif; ?>

				                    <br></br>
				                     <div class="form-group">
				                         <label class="col-md-3 control-label"></label>
				                         <div class="col-md-4">
				                            <input type="hidden" id="id_forum" name="id_forum" class="form-control" value="<?= $forum->id_forum ?>">
				                         </div>
				                     </div>
				                    <!-- Space kosong belum kepikiran 
				                    <div class="item-details">
				                        <?php if (empty($forum->foto)) { ?>
				                            <span></span>
				                        <?php } ?>
				                        <?php if (!empty($forum->foto)) { ?>
				                            <img width = "100px" class="item-pic" src="<?php echo base_url(); ?>images/status/<?php echo $forum->foto; ?>">
				                        <?php } ?>
				                    </div> -->                                                                                        
				                    <!-- <div class="item-details">
				                        <span><?= $forum->isi ?></span>
				                    </div> -->
				                    <span class="caption-subject theme-font">

				                    <a class="green" 
				                    href="<?php echo site_url('') ?>">
				                    Silahkan Login Untuk Komentar...                
				                    </a>

				                    <a class="green" 
				                    href="<?php echo site_url('user/pendaftaran_user') ?>">
				                    Atau Daftar Disini                
				                    </a>
				                    
				                    </span>
				                    <!-- <div class="form-group">
				                        <div class="col-md-4">
				                            <div class="input-group input-icon right">
				                                <textarea class="span12" id="isi_forum" name="isi_forum" class="form-control" cols="64" rows="6"></textarea> 
				                            </div>
				                        </div>
				                    </div>
				                    <div class="form-group">
				                        <div class="col-md-4">
				                            <div class="input-icon right">
				                                <i class="fa"></i>
				                                <input id="foto_forum" name="foto_forum" type="file" class="foto_forum">
				                            </div>
				                        </div>
				                    </div> -->
				                    <div class="modal-footer">
				                    	
									<!-- Iklan Google -->			                        
									<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
									<!-- Iklan Panjang Kebawah -->
									<ins class="adsbygoogle"
									     style="display:inline-block;width:728px;height:90px"
									     data-ad-client="ca-pub-9789912539837308"
									     data-ad-slot="8596183673"></ins>
									<script>
									(adsbygoogle = window.adsbygoogle || []).push({});
									</script>
									<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
									<!-- Iklan Keatas -->
									<ins class="adsbygoogle"
									     style="display:inline-block;width:300px;height:600px"
									     data-ad-client="ca-pub-9789912539837308"
									     data-ad-slot="1072916876"></ins>
									<script>
									(adsbygoogle = window.adsbygoogle || []).push({});
									</script>
									<!-- Iklan adfly -->
									<script type="text/javascript"> 
									    var adfly_id = 13092433; 
									    var popunder_frequency_delay = 0; 
									</script> 
									<script src="https://cdn.adf.ly/js/display.js"></script> 


				                    </div>
				                </div>
				            </form>
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
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Iklan Panjang Kebawah -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-9789912539837308"
     data-ad-slot="8596183673"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Iklan Keatas -->
<ins class="adsbygoogle"
     style="display:inline-block;width:300px;height:600px"
     data-ad-client="ca-pub-9789912539837308"
     data-ad-slot="1072916876"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
<!-- END PAGE CONTAINER -->
<!-- BEGIN PRE-FOOTER -->
<!-- END PRE-FOOTER -->
<!-- BEGIN FOOTER -->
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<?php $this->load->view('core_plugins');?>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/jquery-validation/js/additional-methods.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-pwstrength/pwstrength-bootstrap.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<?php echo base_url();?>assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/admin/pages/scripts/blubuk/user/pendaftaran.js"></script>
<script>	
jQuery(document).ready(function() {       
	Metronic.init(); // init metronic core components
	Layout.init(); // init current layout
	QuickSidebar.init(); // init quick sidebar
	Demo.init(); // init demo features
    Pendaftaran.init();
});
</script>
</body>
<!-- END BODY -->
</html>