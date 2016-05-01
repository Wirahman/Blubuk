<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class model_upload_foto extends CI_Model {

    private $table_name;

    // Model Constructor
    public function __construct() {
        parent::__construct();
        $this->table_name = "upload_foto";
    }

    public function input_file_pengalaman($nama_foto, $ukuran_foto) {
        $sql = "insert into $this->table_name (nama_foto, ukuran_foto) values ($nama_foto, $ukuran_foto)";
        $konfirm = $this->db->query($sql);
        if ($konfirm):
            return 'sukses';
        else:
            return 'gagal';
        endif;
    }
}
