<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class blubuk extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('model_user');
        $this->load->model('model_biografi');
        $this->load->model('model_upload_foto');
        $this->load->model('model_status');
        $this->load->model('model_komentar_status');
        $this->load->model('model_map');
        $this->load->model('model_berita');
        $this->load->helper('url');
        $this->load->library('input');

        // Kalau Belum Login maka Ke menu Pendaftaran
        if (!$this->session->userdata('username')){
            redirect('user');
            return;
        }elseif ($this->session->userdata('id_role') != 3){
            redirect('user/logout');
            return;
        }
        date_default_timezone_set('Asia/Jakarta');
    }

    public function index(){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $data['status'] = $this->model_status->getByIdUser($id);
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        $data['data_desc'] = $this->model_status->get_all_desc();
        $data['status'] = $this->model_status->get_status($id);
        // $data['berita'] = $this->model_berita->get_berita($id);

        if(isset($_POST['isi'])){
            $status['user_id'] = $this->session->userdata('userid');
            $status['email'] = $this->session->userdata('email');
            $status['name'] = $this->session->userdata('username');
            $status['foto_user'] = $this->session->userdata('foto');
            $status['isi'] = $this->input->post('isi');
            $status['status'] = $this->input->post('status');
            $status['waktu'] = date('Y-m-d h:i:s', time());

            if (isset($_FILES['foto']['name'])) {
                $status['foto'] = $_FILES['foto']['name'];
                $file_name = $_FILES['foto']['name'];
                $file_ext = strtolower(end(explode('.', $status['foto'])));
                $file_size = $_FILES['foto']['size'];
                $file_tmp = $_FILES['foto']['tmp_name'];
                $lokasi = 'images/status/' . time() . '.' . $file_ext;
                if ($file_size < 5242880) {
                    $status['foto'] = time() . "." . $file_ext;
                    move_uploaded_file($file_tmp, $lokasi);
                }
            }
            $resp = $this->model_status->create($status);
            if($resp){
                $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Status Sudah Dibuat...');
                redirect('blubuk');
            }else{
                $this->session->set_flashdata('message_gagal', '<i class="fa fa-times"></i> Status Gagal Dibuat...');
                redirect('blubuk');
            }
        }
        $this->load->view('blubuk/vhome_user', $data);
    }

    public function komentar(){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');   
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);

        if(isset($_POST['isi_komentar'])){
            $komentar_status['user_id'] = $this->session->userdata('userid');
            $komentar_status['email'] = $this->session->userdata('email');
            $komentar_status['name'] = $this->session->userdata('username');
            $komentar_status['foto_user'] = $this->session->userdata('foto');
            $komentar_status['isi'] = $this->input->post('isi_komentar');
            $komentar_status['waktu'] = date('Y-m-d h:i:s', time());

            if (isset($_FILES['foto_komentar']['name'])) {
                $komentar_status['foto_komentar'] = $_FILES['foto_komentar']['name'];
                $file_name = $_FILES['foto_komentar']['name'];
                $file_ext = strtolower(end(explode('.', $komentar_status['foto_komentar'])));
                $file_size = $_FILES['foto_komentar']['size'];
                $file_tmp = $_FILES['foto_komentar']['tmp_name'];
                $lokasi = 'images/komentar_status/' . time() . '.' . $file_ext;
                if ($file_size < 5242880) {
                    $komentar_status['foto_komentar'] = time() . "." . $file_ext;
                    move_uploaded_file($file_tmp, $lokasi);
                }
            }            
            $resp = $this->model_komentar_status->create($komentar_status);
            if($resp){
                $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Komentar Sudah Dibuat...');
                redirect('blubuk');
            }else{
                $this->session->set_flashdata('message_gagal', '<i class="fa fa-times"></i> Komentar Gagal Dibuat...');
                redirect('blubuk');
            }
        }
        $this->load->view('blubuk/vhome_user', $data);
    }

    function jin_date_sql($date) {
        $exp = explode('/', $date);
        if (count($exp) == 3) {
            $date = $exp[2] . '-' . $exp[0] . '-' . $exp[1];
        }
        return $date;
    }

    function jin_date_str($date) {
        $exp = explode('-', $date);
        if (count($exp) == 3) {
            $date = $exp[2] . '/' . $exp[0] . '/' . $exp[1];
        }
        return $date;
    }


}

?>
