<input type="hidden" id="id_tampil_chat" value="<?php echo $teman->id; ?>">
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header green">
            <form action="pop_up_chat" method="post" id="form_chat" autocomplete="off" class="form-horizontal" enctype="multipart/form-data">        
                <div class="form-body">

                    <a class="close" href="<?php echo site_url('/admin/teman') ?>"></a>                                                                                
                   
                   <span class="user-info">
                        <?php
                        if ($teman->foto_profil == null) {
                            echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                        }else{
                            $fname = $teman->foto_profil;
                            echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                        }
                       ?>                                                                                        
                    </span>

                    <?php echo $teman->name ?>

                    <div class="input-icon right">
                        <input type="hidden" id="userid1" name="userid1" class="userid1"  value="<?= $sendiri->id ?>">
                    </div>

                    <div class="input-icon right">
                        <input type="hidden" id="email1" name="email1" class="email1"  value="<?= $sendiri->email ?>">
                    </div>

                    <div class="input-icon right">
                        <input type="hidden" id="nama1" name="nama1" class="nama1"  value="<?= $sendiri->name ?>">
                    </div>

                    <div class="input-icon right">
                        <input type="hidden" id="foto_profil1" name="foto_profil1" class="foto_profil1"  value="<?= $sendiri->foto_profil ?>">
                    </div>

                    <div class="input-icon right">
                        <input type="hidden" id="userid2" name="userid2" class="userid2"  value="<?= $teman->id ?>">
                    </div>
                            
                    <div class="input-icon right">
                        <input type="hidden" id="email2" name="email2" class="email2"  value="<?= $teman->email ?>">
                    </div>
                            
                    <div class="input-icon right">
                        <input type="hidden" id="nama2" name="nama2" class="nama2"  value="<?= $teman->name ?>">
                    </div>
                                  
                    <div class="input-icon right">
                        <input type="hidden" id="foto_profil2" name="foto_profil2" class="foto_profil2"  value="<?= $teman->foto_profil ?>">
                    </div>
                            
                </div>             
            </form>

        </div>

        <div class="modal-body">
            <div class="portlet box blue-hoki">
                <div class="portlet-title">
                    <div class="caption">
                       Tulis Pesan Kepada 
                        <?php echo $teman->name; ?>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="alert alert-info display-hide"><i class="fa fa-spin fa-refresh"></i> Silahkan tunggu... Proses Pengiriman Pesan Sedang berjalan...</div>
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
                    <form action="chat" method="post" id="form_chat" autocomplete="off" class="form-horizontal" enctype="multipart/form-data">        
                        <div class="form-group">
                            <div class="col-md-4">
                                <div class="input-icon right">
                                    <input type="hidden" id="userid1" name="userid1" class="userid1"  value="<?= $sendiri->id ?>">
                                </div>

                                <div class="input-icon right">
                                    <input type="hidden" id="email1" name="email1" class="email1"  value="<?= $sendiri->email ?>">
                                </div>

                                <div class="input-icon right">
                                    <input type="hidden" id="nama1" name="nama1" class="nama1"  value="<?= $sendiri->name ?>">
                                </div>

                                <div class="input-icon right">
                                    <input type="hidden" id="foto_profil1" name="foto_profil1" class="foto_profil1"  value="<?= $sendiri->foto_profil ?>">
                                </div>

                                <div class="input-icon right">
                                    <input type="hidden" id="userid2" name="userid2" class="userid2"  value="<?= $teman->id ?>">
                                </div>
                                        
                                <div class="input-icon right">
                                    <input type="hidden" id="email2" name="email2" class="email2"  value="<?= $teman->email ?>">
                                </div>
                                        
                                <div class="input-icon right">
                                    <input type="hidden" id="nama2" name="nama2" class="nama2"  value="<?= $teman->name ?>">
                                </div>
                                              
                                <div class="input-icon right">
                                    <input type="hidden" id="foto_profil2" name="foto_profil2" class="foto_profil2"  value="<?= $teman->foto_profil ?>">
                                </div>
                                        
                                <div class="input-group input-icon right">
                                    <textarea class="span12" id="message" name="message" class="form-control" placeholder="Isi Pesan" cols="64" rows="6"></textarea> 
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
                        <div class="modal-footer">
                            <a href="#" class="btn btn-info" data-toggle="popover" id="emot" type="button" data-placement="top" title="Emoticons (klik)">
                            <i class="fa fa-eye"></i></a>
                            <button type="submit" class="btn blue-hoki">Kirim</button>
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
            </div>
        </div>
        <div class="modal-footer">
            
        </div>
    </div>
</div>

<script src="<?php echo base_url(); ?>assets/chat/js/jQuery.js"></script>
<script src="<?php echo base_url(); ?>assets/chat/ajaxku_chat.php?base_url=<?php echo base_url(); ?>"></script>
<script src="<?php echo base_url(); ?>assets/chat/js/bootstrap.js"></script>



