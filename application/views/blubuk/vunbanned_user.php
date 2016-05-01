<input type="hidden" id="id_tampil_pencarian" value="<?php echo $pencarian->id; ?>">
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header green">
            <form action="unbanned_user" method="post" id="form_pertemanan" autocomplete="off" class="form-horizontal" enctype="multipart/form-data">        
                <div class="form-body">

                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>                                                                                
                    <span class="user-info">
                        <?php
                        if ($pencarian->foto == null) {
                            echo '<img src="'.base_url().'/images/foto_profil/no_profil.jpg" width="20" height="20" />'; // substr, ngilangin ./
                        }else{
                            $fname = $pencarian->foto;
                            echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="20" height="20" />'; // substr, ngilangin ./
                        }
                       ?>                                                                                        
                    </span>
                    <?php echo $pencarian->nama_lengkap ?>

                    <button class="btn btn-danger">
                        <i class="fa fa-minus"></i> Unbanned Pengguna
                    </button>    

                    <div class="input-icon right">
                        <input type="hidden" id="userid1" name="userid1" class="userid1"  value="<?= $pencarian->id ?>">
                    </div>
   
                </div>             
            </form>

        </div>

        <div class="modal-body">
            <!-- <form action="home/komentar" method="post" id="form_komentar_status" autocomplete="off" class="form-horizontal" enctype="multipart/form-data"> -->      
                <div class="row">
                    <input id="id" name="id" type="hidden" value="<?= $pencarian->id ?>">
                    <div class="col-md-6">
                       <?php
                        $fname = $pencarian->foto;
                        echo '<img src="'.base_url().'/images/foto_profil/'.$fname.'" width="200" height="150" />'; // substr, ngilangin ./
                       ?>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Nama Lengkap </label>

                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input id="nama_lengkap" name="nama_lengkap" type="text" class="form-control" placeholder="Nama Lengkap"  value="<?= $pencarian->nama_lengkap ?>" readonly="true">
                            </div>
                        </div>
                    </div>
                    <!--/span-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Jenis Kelamin </label>

                            <div class="input-icon right">
                                <i class="fa"></i>
                                <select id="jenis_kelamin" name="jenis_kelamin" class="form-control" value="<?= $pencarian->jenis_kelamin ?>" disabled="true">
                                    <option value="L" <?php echo $pencarian->jenis_kelamin == 'L' ? 'selected' : ''; ?>>Laki-laki</option>
                                    <option value="P" <?php echo $pencarian->jenis_kelamin == 'P' ? 'selected' : ''; ?>>Perempuan</option>
                                </select>
                                <!-- <span class="help-block">Pilih jenis kelamin Anda. </span> -->
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <!-- <div class="form-group">
                            <label class="control-label" for="tanggal_lahir">Tanggal Lahir </label>

                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input id="tanggal_lahir" name="tanggal_lahir" type="date" class="form-control" value="<?= date("m/d/Y", strtotime($pencarian->tanggal_lahir))?>" readonly="true"/>
                                
                            </div>
                        </div> -->
                    </div>
                </div>
                
            </div>
            <!-- </form> -->
        </div>
        <div class="modal-footer">
            
        </div>
    </div>
</div>




