<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class model_dokumen extends CI_Model {

    private $table_name;

    // Model Constructor
    public function __construct() {
        parent::__construct();
        $this->table_name = "upload_file";
    }

    public function input_file_pengalaman($file_name, $file_size) {
        $sql = "insert into $this->table_name (nama_file, ukuran_file) values ($file_name, $file_size)";
        $konfirm = $this->db->query($sql);
        if ($konfirm):
            return 'sukses';
        else:
            return 'gagal';
        endif;
    }
}
