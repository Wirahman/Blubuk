<input type="hidden" id="id_modal_komentar" value="<?php echo $status->id; ?>">
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header green">
            <a class="close" href="<?php echo site_url('home') ?>"></a>                                                                              
            <span class="user-info">
                <?php
                if ($status->foto_user == null) {
                    echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                }else{
                    $fname = $status->foto_user;
                    echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                }
               ?>                                                                                        
            </span>
            <?php echo $status->name ?>
            <span class="item-label"><?= date("d-m-Y h:i:s", strtotime($status->waktu)) ?></span>
        </div>

        <div class="modal-body">
            <div class="item-details">
                <?php
                $status->foto;
                $file_ext = strtolower(end(explode('.', $status->foto)));

                if ($file_ext == null) {
                    echo '';
                }else{
                    $fname = $status->foto;
                    echo '<img src="'.base_url().'/images/status/'.$fname.'" width="150px"/>'; // substr, ngilangin ./
                }
                ?> 
            </div>                                                                                        
            <div class="item-details">
                <span><?= $status->isi ?></span>
            </div>
            <br></br>
            <form action="home/komentar_status" method="post" id="form_komentar_status" autocomplete="off" class="form-horizontal" enctype="multipart/form-data">
                <div class="form-body">
                                     
                <?php if (!empty($komentar_desc)): ?>
                <div class="portlet-title">
                    <div class="caption caption-md">
                        <i class="icon-bar-chart theme-font hide"></i>
                        <span class="caption-subject theme-font bold uppercase">Komentar Teman</span>
                    </div>
                </div>
                               
                <?php $no = 1; ?>
                <?php foreach ($komentar_desc as $komentar_desc): ?>
                <span class="user-info">
                    <?php
                    if ($komentar_desc->foto_user == null) {
                        echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                    }else{
                        $fname = $komentar_desc->foto_user;
                        echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                    }
                   ?>                                                                                
                </span>
                <div class="item-details">
                    <span><?= $komentar_desc->name ?></span>
                    <span class="item-label"><?= date("d-m-Y h:i:s", strtotime($komentar_desc->waktu)) ?></span>
                </div>
                <div class="item-details">
                    <span><?= $komentar_desc->isi ?></span>
                </div>
                <div class="item-details">
                        <?php
                        $komentar_desc->foto;
                        $file_ext = strtolower(end(explode('.', $komentar_desc->foto)));

                        if ($file_ext == null) {
                            echo '';
                        }else{
                            $fname = $komentar_desc->foto;
                            echo '<img src="'.base_url().'/images/komentar_status/'.$fname.'" width="150px"/>'; // substr, ngilangin ./
                        }
                        ?> 
                </div>
                <?php endforeach; ?>
                <?php else: ?>
                <span class="caption-subject theme-font">Mau Jadi Yang Pertama memberikan Komentar?</span>
                <?php endif; ?>

                    <br></br>
                    <span class="caption-subject theme-font bold uppercase">Tulis Komentar Anda Disini</span>
                            
                     <div class="form-group">
                         <label class="col-md-3 control-label"></label>
                         <div class="col-md-4">
                            <input type="hidden" id="id_status" name="id_status" class="form-control" value="<?= $status->id ?>">
                         </div>
                     </div>
                    <!-- Space kosong belum kepikiran 
                    <div class="item-details">
                        <?php if (empty($status->foto)) { ?>
                            <span></span>
                        <?php } ?>
                        <?php if (!empty($status->foto)) { ?>
                            <img width = "100px" class="item-pic" src="<?php echo base_url(); ?>images/status/<?php echo $status->foto; ?>">
                        <?php } ?>
                    </div> -->                                                                                        
                    <!-- <div class="item-details">
                        <span><?= $status->isi ?></span>
                    </div> -->
                    <div class="form-group">
                        <div class="col-md-4">
                            <div class="input-group input-icon right">
                                <textarea class="span12" id="isi_komentar" name="isi_komentar" class="form-control" cols="64" rows="6"></textarea> 
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-4">
                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input id="foto_komentar" name="foto_komentar" type="file" class="foto_komentar">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn blue-hoki">Komentar</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            
        </div>
    </div>
</div>