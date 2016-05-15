<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class home extends CI_Controller
{

    public function __construct() {
        parent::__construct();
        $this->load->model('model_balas_chat');
        $this->load->model('model_biografi');
        $this->load->model('model_chat');
        $this->load->model('model_forum');
        $this->load->model('model_komentar_forum');
        $this->load->model('model_komentar_status');
        $this->load->model('model_pertemanan');
        $this->load->model('model_status');
        $this->load->model('model_tambah_teman');
        $this->load->model('model_teman');
        $this->load->model('model_upload_foto');
        $this->load->model('model_user');
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
        $data['id'] = $id;
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        // $data['data_desc'] = $this->model_status->get_all_desc();
        $data['data_desc_pribadi'] = $this->model_status->get_all_desc_pribadi($id);

        $query_teman = mysql_query("SELECT * FROM users WHERE id = $id");
        while($row=mysql_fetch_array($query_teman)){
            $data['data_desc'] = $row["teman"];
        }

        if(isset($_POST['isi'])){
            if(empty($_POST['isi']) && empty($_FILES['foto']['name'])){
                $this->session->set_flashdata('message_gagal', '<i class="fa fa-times"></i> Harap Isi terlebih dahulu yang ingin anda update...');
                redirect('home');
            }
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
                redirect('home');
            }else{
                $this->session->set_flashdata('message_gagal', '<i class="fa fa-times"></i> Status Gagal Dibuat...');
                redirect('home');
            }
        }
        $this->load->view('home/vhome_user', $data);
    }

    public function komentar_status($id_status){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');   
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        $data['status'] = $this->model_status->get_by_params(array('id'=>$id_status));
        $data['komentar_desc'] = $this->model_komentar_status->get_by_params(array('id_status'=>$id_status));

        if(isset($_POST['isi_komentar'])){
            $komentar_status['id_status'] = $this->input->post('id_status');
            $komentar_status['user_id'] = $this->session->userdata('userid');
            $komentar_status['email'] = $this->session->userdata('email');
            $komentar_status['name'] = $this->session->userdata('username');
            $komentar_status['foto_user'] = $this->session->userdata('foto');
            $komentar_status['isi'] = $this->input->post('isi_komentar');
            $komentar_status['waktu'] = date('Y-m-d h:i:s', time());

            if(isset($_FILES['foto_komentar']['name'])){
                $komentar_status['foto'] = $_FILES['foto_komentar']['name'];
                $file_name = $_FILES['foto_komentar']['name'];
                $file_ext = strtolower(end(explode('.', $komentar_status['foto'])));
                $file_size = $_FILES['foto_komentar']['size'];
                $file_tmp = $_FILES['foto_komentar']['tmp_name'];
                $lokasi = 'images/komentar_status/' . time() . '.' . $file_ext;
                if ($file_size < 5242880) {
                    $komentar_status['foto'] = time() . "." . $file_ext;
                    move_uploaded_file($file_tmp, $lokasi);
                }
            }
            $resp = $this->model_komentar_status->create($komentar_status);
            if($resp){
                $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Komentar Sudah Dibuat...');
                redirect('home');
            }else{
                $this->session->set_flashdata('message_gagal', '<i class="fa fa-times"></i> Komentar Gagal Dibuat...');
                redirect('home');
            }
        }
        $this->load->view('home/vmodal_komentar', $data);
    }

    public function hapus_status($id_status){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');   
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        $data['status'] = $this->model_status->get_by_params(array('id'=>$id_status));
        $data['komentar_desc'] = $this->model_komentar_status->get_by_params(array('id_status'=>$id_status));

        if(isset($_POST['id_status'])){
            $id_hapus_status = $this->input->post('id_status');

            $resp = $this->model_status->delete($id_hapus_status);
            if($resp){
                $this->session->set_flashdata('berhasil', 'Status Sudah Dihapus...');
                redirect('home');
            }else{
                $this->session->set_flashdata('gagal', '<i class="fa fa-times"></i> Status Gagal Dihapus...');
                redirect('home');
            }

        }
        $this->load->view('home/vmodal_hapus_status', $data);
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

    public function pencarian()
    {
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        if(isset($_POST['query']))
        {
            $query = $this->input->post('query');
            $resp = $this->model_biografi->get_pencarian($query);
            $data['pencarian'] = $this->model_biografi->get_pencarian($query);
            $this->load->view('blubuk/vdaftar_pencarian', $data);
        }
    }

    public function tampil_pencarian($id_pencarian)
    {
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');   
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        $data['pencarian'] = $this->model_biografi->get_by_params(array('id'=>$id_pencarian));

        if(isset($_POST['userid2'])){
            $userid1 = $this->input->post('userid1');
            $userid2 = $this->input->post('userid2');

            $sql_cek_tambah_teman = mysql_query("SELECT * FROM users WHERE id = $userid2 LIMIT $userid2"); 
            while($row=mysql_fetch_array($sql_cek_tambah_teman)) { 
                $array_tambah_teman = $row["tambah_teman"];
            }
            $sql_cek_ditambah_teman = mysql_query("SELECT * FROM users WHERE id = $userid1 LIMIT $userid1"); 
            while($row=mysql_fetch_array($sql_cek_ditambah_teman)) {
                $array_ditambah_teman = $row["ditambah_teman"];
            }

            $tambah_teman = explode(",", $array_tambah_teman);
            $ditambah_teman = explode(",", $array_ditambah_teman);

            if ($array_tambah_teman != "") { 
              $array_tambah_teman = "$array_tambah_teman,$userid1"; 
            } 
            else { 
              $array_tambah_teman = "$userid1"; 
            }

            if ($array_ditambah_teman != "") { 
              $array_ditambah_teman = "$array_ditambah_teman,$userid2"; 
            } 
            else { 
              $array_ditambah_teman = "$userid2"; 
            }
            //simpan perubahan array
            $resp = mysql_query("UPDATE users SET tambah_teman='$array_tambah_teman' WHERE id=$userid2");
            $req = mysql_query("UPDATE users SET ditambah_teman='$array_ditambah_teman' WHERE id=$userid1");

            if($resp & $req){
                $this->session->set_flashdata('berhasil', 'Permintaan Pertemanan Sudah Dikirim...');
                redirect('home/teman');
            }else{
                $this->session->set_flashdata('gagal', '<i class="fa fa-times"></i> Permintaan Pertemanan Gagal Dikirim...');
                redirect('home/teman');
            }
        }
        $this->load->view('blubuk/vtampil_pencarian', $data);
    }

    public function teman(){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $teman['id'] = $id;
        $teman['data'] = $this->model_biografi->getsemua($id);

        // Ambil field ditambah teman dari table users
        // Data yang diambil ditampung dalam variable array_ditambah_teman

        $query_tambah_teman = mysql_query("SELECT * FROM users WHERE id = $id");
        while($row=mysql_fetch_array($query_tambah_teman)){
            $teman['array_ditambah_teman'] = $row["ditambah_teman"];
        }

        $query_teman = mysql_query("SELECT * FROM users WHERE id = $id");
        while($row=mysql_fetch_array($query_teman)){
            $teman['array_teman'] = $row["teman"];
        }

        $this->load->view('blubuk/vteman', $teman);
    }

    public function teman_mobile(){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $teman['id'] = $id;
        $teman['data'] = $this->model_biografi->getsemua($id);

        // Ambil field ditambah teman dari table users
        // Data yang diambil ditampung dalam variable array_ditambah_teman

        $query_tambah_teman = mysql_query("SELECT * FROM users WHERE id = $id");
        while($row=mysql_fetch_array($query_tambah_teman)){
            $teman['array_ditambah_teman'] = $row["ditambah_teman"];
        }

        $query_teman = mysql_query("SELECT * FROM users WHERE id = $id");
        while($row=mysql_fetch_array($query_teman)){
            $teman['array_teman'] = $row["teman"];
        }

        $this->load->view('blubuk/vteman_mobile', $teman);
    }

    public function terima_teman($idterima_teman)
    {
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');   
        $data['id'] = $id;
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        $data['terima_teman'] = $this->model_user->get_by_params(array('id'=>$idterima_teman));
        $data['biografi'] = $this->model_biografi->get_by_params(array('id'=>$idterima_teman));


        if(isset($_POST['userid2'])){
            // Ambil Database dari tambah_teman
            $userid1 = $this->input->post('userid1');
            $userid2 = $this->input->post('userid2');

            $sql_cek_tambah_teman = mysql_query("SELECT * FROM users WHERE id = $userid2 LIMIT $userid2"); 
            while($row=mysql_fetch_array($sql_cek_tambah_teman)) { 
                $array_tambah_teman = $row["tambah_teman"];
            }
            $sql_cek_ditambah_teman = mysql_query("SELECT * FROM users WHERE id = $userid1 LIMIT $userid1"); 
            while($row=mysql_fetch_array($sql_cek_ditambah_teman)) {
                $array_ditambah_teman = $row["ditambah_teman"];
            }

            $tambah_teman = explode(",", $array_tambah_teman);
            $ditambah_teman = explode(",", $array_ditambah_teman);

            foreach ($tambah_teman as $key => $value) {
                if ($value == $userid1) {
                  unset($tambah_teman[$key]);
                } 
            }

            $hapus_tambah_teman = implode(",", $tambah_teman);

            $resp_tambah_teman = mysql_query("UPDATE users SET tambah_teman='$hapus_tambah_teman' WHERE id=$userid2");

            foreach ($ditambah_teman as $key => $value) {
                if ($value == $userid2) {
                  unset($ditambah_teman[$key]);
                } 
            }

            $hapus_ditambah_teman = implode(",", $ditambah_teman);

            //simpan perubahan array
            $req_tambah_teman = mysql_query("UPDATE users SET ditambah_teman='$hapus_ditambah_teman' WHERE id=$userid1");

            $sql_cek_teman = mysql_query("SELECT * FROM users WHERE id = $userid2 LIMIT $userid2"); 
            while($row=mysql_fetch_array($sql_cek_teman)) { 
                $array_teman = $row["teman"];
            }
            $sql_cek_teman1 = mysql_query("SELECT * FROM users WHERE id = $userid1 LIMIT $userid1"); 
            while($row=mysql_fetch_array($sql_cek_teman1)) {
                $array_teman1 = $row["teman"];
            }

            $teman = explode(",", $array_teman);
            $teman1 = explode(",", $array_teman1);

            if ($array_teman != "") { 
              $array_teman = "$array_teman,$userid1"; 
            } 
            else { 
              $array_teman = "$userid1"; 
            }

            if ($array_teman1 != "") { 
              $array_teman1 = "$array_teman1,$userid2"; 
            } 
            else { 
              $array_teman1 = "$userid2"; 
            }
            //simpan perubahan array
            $resp = mysql_query("UPDATE users SET teman='$array_teman' WHERE id=$userid2");
            $req = mysql_query("UPDATE users SET teman='$array_teman1' WHERE id=$userid1");
            if($resp_tambah_teman & $req_tambah_teman & $resp & $req){
                $this->session->set_flashdata('berhasil', 'Anda Memiliki Teman Baru...');
                redirect('home/teman');
            }else{
                $this->session->set_flashdata('gagal', '<i class="fa fa-times"></i> Anda Gagal Berteman...');
                redirect('home/teman');
            }
        }
        $this->load->view('blubuk/vtampil_terima_teman', $data);
    }

    public function profil_teman($idteman){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $data['id'] = $id;
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        $data['teman'] = $this->model_user->get_by_params(array('id'=>$idteman));
        $data['biografi'] = $this->model_biografi->get_by_params(array('id'=>$idteman));

        $this->load->view('blubuk/vtampil_profil_teman', $data);
    }

    public function hapus_teman()
    {
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');   
        $data['id'] = $id;
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);

        if(isset($_POST['userid2'])){
            $userid1 = $this->input->post('userid1');
            $userid2 = $this->input->post('userid2');

            $sql_cek_teman = mysql_query("SELECT * FROM users WHERE id = $userid2 LIMIT $userid2");
            while($row = mysql_fetch_array($sql_cek_teman)){
                $array_teman = $row['teman'];
            }

            $sql_cek_teman1 = mysql_query("SELECT * FROM users WHERE id = $userid1 LIMIT $userid1");
            while($row = mysql_fetch_array($sql_cek_teman1)){
                $array_teman1 = $row['teman'];
            }

            $teman = explode(",", $array_teman);
            $teman1 = explode(",", $array_teman1);

            foreach ($teman as $key => $value) {
                if ($value == $userid1) {
                    unset($teman[$key]);
                }
            }

            foreach ($teman1 as $key => $value) {
                if ($value == $userid2) {
                    unset($teman1[$key]);
                }
            }

            $hapus_teman = implode(",", $teman);
            $hapus_teman1 = implode(",", $teman1);

            $resp = mysql_query("UPDATE users SET teman = '$hapus_teman' WHERE id = $userid2 ");
            $req = mysql_query("UPDATE users SET teman = '$hapus_teman1' WHERE id = $userid1 ");

            if($resp & $req){
                $this->session->set_flashdata('berhasil', 'Pertemanan Anda Sudah Dihapus...');
                redirect('home/teman');
            }else{
                $this->session->set_flashdata('gagal', '<i class="fa fa-times"></i> Pertemanan Anda Gagal Dihapus...');
                redirect('home/teman');
            }
        }

    }

    public function pertemanan(){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        if(isset($_POST['userid2'])){
            $user_id1['userid1'] = $this->input->post('userid1'). ',' ;
            $user_id2['userid2'] = $this->input->post('userid2'). ',' ;

            // explode('.', $status['foto'])
            // $lokasi = 'images/status/' . time() . '.' . $file_ext;


            // $this->model_user->update($userid,array('password'=>$new_password));

            $resp = $this->model_user->update($this->input->post('userid1'),array('terima_teman'=>$user_id1));
            $req = $this->model_user->update($this->input->post('userid2'),array('tambah_teman'=>$user_id2));
            if($resp & $req){
                $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Permintaan Pertemanan Sudah Dikirim...');
                redirect('home');
            }else{
                $this->session->set_flashdata('message_gagal', '<i class="fa fa-times"></i> Permintaan Pertemanan Gagal Dikirim...');
                redirect('home');
            }
        }
        $this->load->view('blubuk/vhome_user', $data);
    }

    public function forum_mobile(){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $forum['name'] = $name;
        $forum['data'] = $this->model_biografi->getsemua($id);
        $forum['data_desc'] = $this->model_forum->get_all_desc();

        $this->load->view('blubuk/vforum_mobile', $forum);
    }

    public function forum(){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $forum['name'] = $name;
        $forum['data'] = $this->model_biografi->getsemua($id);
        $forum['data_desc'] = $this->model_forum->get_all_desc();

        $this->load->view('blubuk/vforum', $forum);
    }

    public function buat_forum(){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $forum['name'] = $name;
        $forum['data'] = $this->model_biografi->getsemua($id);

        if(! empty($_POST['judul_forum'])){
            if(! empty($_POST['isi_forum'])){
                $modal_forum['user_id'] = $this->session->userdata('userid');
                $modal_forum['email'] = $this->session->userdata('email');
                $modal_forum['name'] = $this->session->userdata('username');
                $modal_forum['foto_user'] = $this->session->userdata('foto');
                $modal_forum['judul_forum'] = $this->input->post('judul_forum');
                $modal_forum['isi_forum'] = $this->input->post('isi_forum');
                $modal_forum['waktu'] = date('Y-m-d h:i:s', time());

                if(isset($_FILES['foto_forum']['name'])){
                    $modal_forum['foto_forum'] = $_FILES['foto_forum']['name'];
                    $file_name = $_FILES['foto_forum']['name'];
                    $file_ext = strtolower(end(explode('.', $modal_forum['foto_forum'])));
                    $file_size = $_FILES['foto_forum']['size'];
                    $file_tmp = $_FILES['foto_forum']['tmp_name'];
                    $lokasi = 'images/forum/' . time() . '.' . $file_ext;
                    if ($file_size < 5242880) {
                        $modal_forum['foto_forum'] = time() . "." . $file_ext;
                        move_uploaded_file($file_tmp, $lokasi);
                    }
                }
                $resp = $this->model_forum->create($modal_forum);
                if($resp){
                    $this->session->set_flashdata('berhasil', ' Forum Sudah Dibuat...');
                    redirect('home/forum');
                }else{
                    $this->session->set_flashdata('gagal', '<i class="fa fa-times"></i> Forum Gagal Dibuat...');
                    redirect('home/forum');
                }
            }else{
                $this->session->set_flashdata('gagal', 'Isi Forum Belum Diisi...');
                redirect('home/forum');
            }
        }elseif(empty($_POST['judul_forum'])){
            $this->session->set_flashdata('gagal', 'Judul Forum Belum Diisi...');
            redirect('home/forum');
        }
        $this->load->view('blubuk/vforum', $forum);
    }

    public function komentar_forum($id_forum){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');   
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        $data['forum'] = $this->model_forum->get_by_params(array('id_forum'=>$id_forum));
        $data['forum_desc'] = $this->model_komentar_forum->get_by_params(array('id_forum'=>$id_forum));

        if(isset($_POST['isi_forum'])){
            $komentar_forum['id_forum'] = $this->input->post('id_forum');
            $komentar_forum['user_id'] = $this->session->userdata('userid');
            $komentar_forum['email'] = $this->session->userdata('email');
            $komentar_forum['name'] = $this->session->userdata('username');
            $komentar_forum['foto_user'] = $this->session->userdata('foto');
            $komentar_forum['isi'] = $this->input->post('isi_forum');
            $komentar_forum['waktu'] = date('Y-m-d h:i:s', time());

            if(isset($_FILES['foto_forum']['name'])){
                $komentar_forum['foto'] = $_FILES['foto_forum']['name'];
                $file_name = $_FILES['foto_forum']['name'];
                $file_ext = strtolower(end(explode('.', $komentar_forum['foto'])));
                $file_size = $_FILES['foto_forum']['size'];
                $file_tmp = $_FILES['foto_forum']['tmp_name'];
                $lokasi = 'images/komentar_forum/' . time() . '.' . $file_ext;
                if ($file_size < 5242880) {
                    $komentar_forum['foto'] = time() . "." . $file_ext;
                    move_uploaded_file($file_tmp, $lokasi);
                }
            }
            $resp = $this->model_komentar_forum->create($komentar_forum);
            if($resp){
                $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Komentar Forum Sudah Dibuat...');
                redirect('home/forum');
            }else{
                $this->session->set_flashdata('message_gagal', '<i class="fa fa-times"></i> Komentar Forum Gagal Dibuat...');
                redirect('home/forum');
            }
        }
        $this->load->view('home/vmodal_forum', $data);
    }

    public function ubah_komentar_forum($id_forum){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');   
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        $data['forum'] = $this->model_forum->get_by_params(array('id_forum'=>$id_forum));
        $data['forum_desc'] = $this->model_komentar_forum->get_by_params(array('id_forum'=>$id_forum));

        if(isset($_POST['judul_forum'])){
            $id_forum = $this->input->post('id_forum');
            $judul_forum = $this->input->post('judul_forum');
            $isi_forum = $this->input->post('isi_forum');

            $resp = mysql_query("UPDATE forum SET judul_forum='$judul_forum' WHERE id_forum=$id_forum");
            $req = mysql_query("UPDATE forum SET isi_forum='$isi_forum' WHERE id_forum=$id_forum");

            if($resp & $req){
                $this->session->set_flashdata('berhasil', 'Kiriman Anda Sudah Dirubah...');
                redirect('home/teman');
            }else{
                $this->session->set_flashdata('gagal', '<i class="fa fa-times"></i> Kiriman Anda Gagal Dirubah...');
                redirect('home/teman');
            }
        }
        $this->load->view('home/vmodal_ubah_forum', $data);
    }

    public function hapus_komentar_forum($id_forum){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');   
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        $data['forum'] = $this->model_forum->get_by_params(array('id_forum'=>$id_forum));
        $data['forum_desc'] = $this->model_komentar_forum->get_by_params(array('id_forum'=>$id_forum));

        if(isset($_POST['id_forum'])){
            $id_forum = $this->input->post('id_forum');

            $resp = $this->model_forum->delete($id_forum);
            if($resp){
                $this->session->set_flashdata('berhasil', 'Kiriman Sudah Dihapus...');
                redirect('admin/forum');
            }else{
                $this->session->set_flashdata('gagal', '<i class="fa fa-times"></i> Kiriman Gagal Dihapus...');
                redirect('admin/forum');
            }
        }
        $this->load->view('home/vmodal_hapus_forum', $data);
    }

    public function chat_publik(){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $data['id'] = $id;
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        $data['chat'] = $this->model_chat->get_all_chat_desc($id);

        $this->load->view('blubuk/vchat_publik', $data);
    }


    public function balas_chat($id_chat){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');   
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        $data['chat'] = $this->model_chat->get_by_params(array('id'=>$id_chat));
        $data['chat_desc'] = $this->model_balas_chat->get_by_params(array('id_chat'=>$id_chat));

        if(isset($_POST['message'])){
            $balas_chat['id_chat'] = $this->input->post('id_chat');
            $balas_chat['user_id'] = $this->session->userdata('userid');
            $balas_chat['email'] = $this->session->userdata('email');
            $balas_chat['nama'] = $this->session->userdata('username');
            $balas_chat['foto_profil'] = $this->session->userdata('foto');
            $balas_chat['message'] = $this->input->post('message');
            $balas_chat['waktu'] = date('Y-m-d h:i:s', time());

            if(isset($_FILES['foto']['name'])){
                $balas_chat['foto'] = $_FILES['foto']['name'];
                $file_name = $_FILES['foto']['name'];
                $file_ext = strtolower(end(explode('.', $balas_chat['foto'])));
                $file_size = $_FILES['foto']['size'];
                $file_tmp = $_FILES['foto']['tmp_name'];
                $lokasi = 'images/balas_chat/' . time() . '.' . $file_ext;
                if ($file_size < 5242880) {
                    $balas_chat['foto'] = time() . "." . $file_ext;
                    move_uploaded_file($file_tmp, $lokasi);
                }
            }
            
            $chat_waktu = date('Y-m-d h:i:s', time());
            $this->model_chat->update($this->input->post('id_chat'), array('waktu'=>$chat_waktu));

            $resp = $this->model_balas_chat->create($balas_chat);
            if($resp){
                $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Chat Sudah Dikirim...');
                redirect('home/chat_publik');
            }else{
                $this->session->set_flashdata('message_gagal', '<i class="fa fa-times"></i> Chat Gagal Dikirim...');
                redirect('home/chat_publik');
            }
        }
        $this->load->view('home/vmodal_chat', $data);
    }


    public function pop_up_chat($id_chat){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $data['id'] = $id;
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);
        $data['sendiri'] = $this->model_user->get_by_params(array('id'=>$id));
        $data['teman'] = $this->model_user->get_by_params(array('id'=>$id_chat));
        $data['biografi'] = $this->model_biografi->get_by_params(array('id'=>$id_chat));

        $this->load->view('blubuk/vtampil_chat', $data);
    }

    public function chat($id_chat){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');

        if (isset($_POST['userid1'])){
            $data['userid1'] = $this->input->post('userid1');
            $data['userid2'] = $this->input->post('userid2');
            $data1['userid1'] = $this->input->post('userid2');
            $data1['userid2'] = $this->input->post('userid1');

            $cek_database = $this->model_chat->get_database($data);
            $cek_database1 = $this->model_chat->get_database1($data1);

            if($cek_database || $cek_database1){
                $userid1 = $this->input->post('userid1');
                $userid2 = $this->input->post('userid2');
                $cek_id_chat1 = $this->model_chat->get_database($data);
                $cek_id_chat2 = $this->model_chat->get_database1($data1);
                $cek_id_chat = $cek_id_chat1 || $cek_id_chat2;

                $balas_chat['id_chat'] = $cek_id_chat;
                $balas_chat['user_id'] = $this->input->post('userid1');
                $balas_chat['email'] = $this->input->post('email1');
                $balas_chat['nama'] = $this->input->post('nama1');
                $balas_chat['foto_profil'] = $this->input->post('foto_profil1');
                $balas_chat['message'] = $this->input->post('message');
                $balas_chat['waktu'] = date('Y-m-d h:i:s', time());

                if(isset($_FILES['foto']['name'])){
                    $balas_chat['foto'] = $_FILES['foto']['name'];
                    $file_name = $_FILES['foto']['name'];
                    $file_ext = strtolower(end(explode('.', $balas_chat['foto'])));
                    $file_size = $_FILES['foto']['size'];
                    $file_tmp = $_FILES['foto']['tmp_name'];
                    $lokasi = 'images/balas_chat/' . time() . '.' . $file_ext;
                    if ($file_size < 5242880) {
                        $balas_chat['foto'] = time() . "." . $file_ext;
                        move_uploaded_file($file_tmp, $lokasi);
                    }
                }

                $chat_waktu = date('Y-m-d h:i:s', time());
                $this->model_chat->update($cek_id_chat, array('waktu'=>$chat_waktu));

                $resp = $this->model_balas_chat->create($balas_chat);
                if($resp){
                    $this->session->set_flashdata('berhasil', ' Chat Sudah Dikirim...');
                    redirect('home/teman');
                }else{
                    $this->session->set_flashdata('gagal', '<i class="fa fa-times"></i> Chat Gagal Dikirim...');
                    redirect('home/teman');
                }
            }else{
                $chat['userid1'] = $this->input->post('userid1');
                $chat['email1'] = $this->input->post('email1');
                $chat['nama1'] = $this->input->post('nama1');
                $chat['foto_profil1'] = $this->input->post('foto_profil1');
                $chat['message'] = $this->input->post('message');

                $chat['userid2'] = $this->input->post('userid2');
                $chat['email2'] = $this->input->post('email2');
                $chat['nama2'] = $this->input->post('nama2');
                $chat['foto_profil2'] = $this->input->post('foto_profil2');
                $chat['waktu'] = date('Y-m-d h:i:s', time());

                if(isset($_FILES['foto']['name'])){
                    $chat['foto'] = $_FILES['foto']['name'];
                    $file_name = $_FILES['foto']['name'];
                    $file_ext = strtolower(end(explode('.', $chat['foto'])));
                    $file_size = $_FILES['foto']['size'];
                    $file_tmp = $_FILES['foto']['tmp_name'];
                    $lokasi = 'images/chat/' . time() . '.' . $file_ext;
                    if ($file_size < 5242880) {
                        $chat['foto'] = time() . "." . $file_ext;
                        move_uploaded_file($file_tmp, $lokasi);
                    }
                }

                $resp = $this->model_chat->create($chat);

                $userid1 = $this->input->post('userid1');
                $userid2 = $this->input->post('userid2');
                $cek_id_chat1 = $this->model_chat->get_database($data);
                $cek_id_chat2 = $this->model_chat->get_database1($data1);
                $cek_id_chat = $cek_id_chat1 || $cek_id_chat2;

                $balas_chat['id_chat'] = $cek_id_chat;
                $balas_chat['user_id'] = $this->input->post('userid1');
                $balas_chat['email'] = $this->input->post('email1');
                $balas_chat['nama'] = $this->input->post('nama1');
                $balas_chat['foto_profil'] = $this->input->post('foto_profil1');
                $balas_chat['message'] = $this->input->post('message');
                $balas_chat['waktu'] = date('Y-m-d h:i:s', time());

                if(isset($_FILES['foto']['name'])){
                    $balas_chat['foto'] = $_FILES['foto']['name'];
                    $file_name = $_FILES['foto']['name'];
                    $file_ext = strtolower(end(explode('.', $balas_chat['foto'])));
                    $file_size = $_FILES['foto']['size'];
                    $file_tmp = $_FILES['foto']['tmp_name'];
                    $lokasi = 'images/balas_chat/' . time() . '.' . $file_ext;
                    if ($file_size < 5242880) {
                        $balas_chat['foto'] = time() . "." . $file_ext;
                        move_uploaded_file($file_tmp, $lokasi);
                    }
                }
                $req = $this->model_balas_chat->create($balas_chat);
                if($resp && $req){
                    $this->session->set_flashdata('berhasil', ' Chat Sudah Dikirim...');
                    redirect('home/teman');
                }else{
                    $this->session->set_flashdata('gagal', '<i class="fa fa-times"></i> Chat Gagal Dikirim...');
                    redirect('home/teman');
                }
            }

        }
    }

    public function confirm_email()
    {
        $this->load->view('home/confirm_email');
    }

    public function tampil_update_news() {
        $name = $this->session->userdata('username');
        $news['name'] = $name;
        $id = $this->uri->segment(3);
        $news['id'] = $id;
        $news['data'] = $this->model_news->get($id);
        $this->load->view('admin/vtampil_berita', $news);
    }

    public function kontak_kami(){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');   
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);

        $this->load->view('home/vkontak_kami', $data);
    }

    public function biografi_mobile(){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');   
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);

        $this->load->view('home/vbiografi_mobile', $data);
    }

    public function home()
    {
        $this->session->sess_destroy();
        $this->load->view('home/home');
    }

}
