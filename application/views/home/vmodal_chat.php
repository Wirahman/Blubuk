<input type="hidden" id="id_modal_chat" value="<?php echo $chat->id; ?>">
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header green">
            <a class="close" href="<?php echo site_url('home/chat_publik') ?>"></a>                                                                              
            <span class="user-info">
                <?php
                if ($chat->foto_profil1 == $this->session->userdata('foto')){
                    if ($chat->foto_profil2 == null) {
                        echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                    }else{
                        $fname = $chat->foto_profil2;
                        echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                    }
                }else{
                    if ($chat->foto_profil1 == null) {
                        echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                    }else{
                        $fname = $chat->foto_profil1;
                        echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                    }
                }

               ?>                                                                                     
            </span>
            <?php 
            if ($chat->nama1 == $this->session->userdata('username')){
                echo $chat->nama2;
            }else{
                echo $chat->nama1;
            }
            ?>
            <!-- <span class="item-label"><?= date("d-m-Y h:i:s", strtotime($chat->waktu)) ?></span> -->
        </div>

        <div class="modal-body">
            <div class="item-details">
                <?php
                $chat->foto;
                $file_ext = strtolower(end(explode('.', $chat->foto)));

                if ($file_ext == null) {
                    echo '';
                }else{
                    $fname = $chat->foto;
                    echo '<img src="'.base_url().'/images/chat/'.$fname.'" width="150px"/>'; // substr, ngilangin ./
                }
                ?> 
            </div>                                                                                    
            <!-- <div class="item-details">
                <span id="chat_message"><?= $chat->message ?></span>
            </div>
            <br></br> -->
            <form action="balas_chat" method="post" id="form_chat_status" autocomplete="off" class="form-horizontal" enctype="multipart/form-data">
                <div class="form-body">
                                     
                <?php if (!empty($chat_desc)): ?>
                <div class="portlet-title">
                    <div class="caption caption-md">
                        <i class="icon-bar-chart theme-font hide"></i>
                        <!-- <span class="caption-subject theme-font bold uppercase">Pesan</span> -->
                    </div>
                </div>
                               
                <?php $no = 1; ?>
                <script type="text/javascript">
                	var listOfChatDesc = [];
                </script>
                <?php foreach ($chat_desc as $chat_desc_item): ?>
                <span class="user-info">
                    <?php
                    if ($chat_desc_item->foto_profil == null) {
                        echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                    }else{
                        $fname = $chat_desc_item->foto_profil;
                        echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                    }
                   ?>                                                                                
                </span>
                <div class="item-details">
                    <span><?= $chat_desc_item->nama ?></span>
                    <span class="item-label"><?= date("d-m-Y h:i:s", strtotime($chat_desc_item->waktu)) ?></span>
                </div>
                <div class="item-details">
                    <span id="chat_desc_item_<?php echo $no; ?>"><?= $chat_desc_item->message ?></span>
                    <script type="text/javascript">
                    	listOfChatDesc.push('chat_desc_item_<?php echo $no; ?>');
                    </script>
                </div>
                <div class="item-details">
                        <?php
                        $chat_desc_item->foto;
                        $file_ext = strtolower(end(explode('.', $chat_desc_item->foto)));

                        if ($file_ext == null) {
                            echo '';
                        }else{
                            $fname = $chat_desc_item->foto;
                            echo '<img src="'.base_url().'/images/komentar_chat/'.$fname.'" width="150px"/>'; // substr, ngilangin ./
                        }
                        ?> 
                </div>
                <?php $no ++; ?>
                <?php endforeach; ?>
                <?php else: ?>
                <?php endif; ?>

                     <div class="form-group">
                         <label class="col-md-3 control-label"></label>
                         <div class="col-md-4">
                            <input type="hidden" id="id_chat" name="id_chat" class="form-control" value="<?= $chat->id ?>">
                         </div>
                     </div>
                    <div class="form-group">
                        <div class="col-md-4">
                            <div class="input-group input-icon right">
                                <textarea class="span12" id="message" name="message" class="form-control" cols="64" rows="6"></textarea> 
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
                </div>
            </form>
        </div>
        <div class="modal-footer">
            
        </div>
    </div>
</div>

<script src="<?php echo base_url(); ?>assets/chat/js/jQuery.js"></script>
<script src="<?php echo base_url(); ?>assets/chat/ajaxku_chat.php?base_url=<?php echo base_url(); ?>"></script>
<script src="<?php echo base_url(); ?>assets/chat/js/bootstrap.js"></script>

<script type="text/javascript">
	var chatMessage = document.getElementById('chat_message');
    var stringChatMessage = chatMessage.innerHTML;
    chatMessage.innerHTML = renderEmot(stringChatMessage);

    for (var i = 0; i < listOfChatDesc.length; i ++) {
        var chatDesc = document.getElementById(listOfChatDesc[i]);
        var stringChatDesc = chatDesc.innerHTML;
        chatDesc.innerHTML = renderEmot(stringChatDesc);
    }
</script>
