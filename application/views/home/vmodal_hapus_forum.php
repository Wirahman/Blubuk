<input type="hidden" id="id_modal_forum" value="<?php echo $forum->id_forum; ?>">
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header green">
            <a class="close" href="<?php echo site_url('admin/forum') ?>"></a>                                                                              
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
            <form action="hapus_komentar_forum" method="post" id="form_forum_status" autocomplete="off" class="form-horizontal" enctype="multipart/form-data">
                <div class="form-body">
                    <div class="form-group">
                        <label class="col-md-3 control-label"></label>
                        <div class="col-md-4">
                            <input type="hidden" id="id_forum" name="id_forum" class="form-control" value="<?= $forum->id_forum ?>">
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn red">Hapus</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            
        </div>
    </div>
</div>