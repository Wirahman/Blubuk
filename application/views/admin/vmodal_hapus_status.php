<input type="hidden" id="id_modal_hapus_status" value="<?php echo $status->id; ?>">
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header green">
            <a class="close" href="<?php echo site_url('admin') ?>"></a> 
        </div>

        <div class="modal-body">
            <form action="admin/hapus_status" method="post" id="form_komentar_status" autocomplete="off" class="form-horizontal" enctype="multipart/form-data">
                <div class="form-body">
                    <input type="hidden" id="id_status" name="id_status" class="form-control" value="<?= $status->id ?>">
                    <button type="submit" class="btn-danger">Hapus</button>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            
        </div>
    </div>
</div>