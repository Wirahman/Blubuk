<input type="hidden" id="id_modal_lihat_forum" value="<?php echo $forum->id_forum; ?>">
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header green">
            <a class="close" href="<?php echo site_url('/home/lihat_komentar_forum') ?>"></a>                                                                              
            <span class="user-info">
                <?php
                if ($forum->foto_user == null) {
                    echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                }else{
                    $fname = $forum->foto_user;
                    echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                }
               ?>                                                                                        
            </span>
            <?php echo $forum->name ?>
            <span class="item-label"><?= date("d-m-Y h:i:s", strtotime($forum->waktu)) ?></span>
        </div>

        <div class="modal-body">
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
            <div class="item-details">
                <span class="bold uppercase"><?= $forum->judul_forum ?></span>
            </div>                                                                                        
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
                    href="<?php echo site_url('/') ?>">
                    Silahkan Login Untuk Komentar...                
                    </a>

                    <a class="green" 
                    href="<?php echo site_url('/user/pendaftaran_user') ?>">
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
                        
                    </div>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            
        </div>
    </div>
</div>