<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class user extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('model_agama');
        $this->load->model('model_biografi');
        $this->load->model('model_forum');
        $this->load->model('model_kabupaten');
        $this->load->model('model_komentar_forum');
        $this->load->model('model_log_aktifitas');
        $this->load->model('model_provinsi');
        $this->load->model('model_user');
        $this->load->library('form_validation');
        date_default_timezone_set('Asia/Jakarta');
    }

    function jin_date_sql($date) {
        $exp = explode('/', $date);
        if (count($exp) == 3) {
            $date = $exp[2] . '-' . $exp[1] . '-' . $exp[0];
        }
        return $date;
    }

    function jin_date_str($date) {
        $exp = explode('-', $date);
        if (count($exp) == 3) {
            $date = $exp[2] . '/' . $exp[1] . '/' . $exp[0];
        }
        return $date;
    }

    public function index()
    {
        if($this->session->userdata('email') && $this->session->userdata('status') == 'REGISTERED' && $this->session->userdata('id_role') == '2'){
            // Pas sudah masuk nanti buat halaman blubuk
            redirect('admin');
        }elseif($this->session->userdata('email') && $this->session->userdata('status') == 'REGISTERED' && $this->session->userdata('id_role') == '3'){
            // Pas sudah masuk nanti buat halaman blubuk
            redirect('home');
        }else{
           $data = array();
           if($this->input->post('email')) {
                $password = md5($this->input->post('password_login',true));
                $data['email'] = $_POST['email'];
                $data['password'] = $password;

                $cek_user = $this->model_user->get($data);
                if ($cek_user) {
                    if($cek_user[0]->id_role == 1) {
                        if($cek_user[0]->status == 'BANNED'){
                            $this->session->set_flashdata('gagal', 'Maaf... Email Anda Sudah Kami Banned...');
                            redirect('user/pendaftaran_user');
                        }elseif ($cek_user[0]->status == 'PENDING') {
                            $this->session->set_flashdata('messagedanger', 'Maaf... Anda Belum Konfirmasi Email Pendaftaran');
                            redirect('user/resend_email');
                        }else{
                            $session_data['userid'] = $cek_user[0]->id;
                            $session_data['email'] = $cek_user[0]->email;
                            $session_data['username'] = $cek_user[0]->name;
                            $session_data['foto'] = $cek_user[0]->foto_profil;
                            $session_data['status'] = $cek_user[0]->status;
                            $session_data['id_role'] = $cek_user[0]->id_role;
                            $session_data['logged_in'] = TRUE;

                            $this->session->set_userdata($session_data);

                            $users['last_login_datetime'] = date("Y-m-d H:i:s");
                            $users['last_login_ip'] = $this->input->ip_address();
                            $users['login_status'] = "ON";
                            $this->model_user->update($cek_user[0]->id, $users);

                            // Jika Berhasil Login, masuk kehalaman blubuk
                            redirect('rkslankers');
                        }
                    }elseif($cek_user[0]->id_role == 2){
                        if($cek_user[0]->status == 'BANNED'){
                            $this->session->set_flashdata('gagal', 'Maaf... Email Anda Sudah Kami Banned...');
                            redirect('user/pendaftaran_user');
                        }elseif ($cek_user[0]->status == 'PENDING') {
                            $this->session->set_flashdata('messagedanger', 'Maaf... Anda Belum Konfirmasi Email Pendaftaran');
                            redirect('user/resend_email');
                        }else{
                            $session_data['userid'] = $cek_user[0]->id;
                            $session_data['email'] = $cek_user[0]->email;
                            $session_data['username'] = $cek_user[0]->name;
                            $session_data['foto'] = $cek_user[0]->foto_profil;
                            $session_data['status'] = $cek_user[0]->status;
                            $session_data['id_role'] = $cek_user[0]->id_role;
                            $session_data['logged_in'] = TRUE;

                            $this->session->set_userdata($session_data);

                            $users['last_login_datetime'] = date("Y-m-d H:i:s");
                            $users['last_login_ip'] = $this->input->ip_address();
                            $users['login_status'] = "ON";
                            $this->model_user->update($cek_user[0]->id, $users);

                            // Jika Berhasil Login, masuk kehalaman blubuk
                            redirect('admin');
                        }
                    }elseif($cek_user[0]->id_role == 3){
                        if($cek_user[0]->status == 'BANNED'){
                            $this->session->set_flashdata('gagal', 'Maaf... Email Anda Sudah Kami Banned...');
                            redirect('user/pendaftaran_user');
                        }elseif ($cek_user[0]->status == 'PENDING') {
                            $this->session->set_flashdata('messagedanger', 'Maaf... Anda Belum Konfirmasi Email Pendaftaran');
                            redirect('user/resend_email');
                        }else{
                            $session_data['userid'] = $cek_user[0]->id;
                            $session_data['email'] = $cek_user[0]->email;
                            $session_data['username'] = $cek_user[0]->name;
                            $session_data['foto'] = $cek_user[0]->foto_profil;
                            $session_data['status'] = $cek_user[0]->status;
                            $session_data['id_role'] = $cek_user[0]->id_role;
                            $session_data['logged_in'] = TRUE;

                            $this->session->set_userdata($session_data);

                            $users['last_login_datetime'] = date("Y-m-d H:i:s");
                            $users['last_login_ip'] = $this->input->ip_address();
                            $users['login_status'] = "ON";
                            $this->model_user->update($cek_user[0]->id, $users);

                            // Jika Berhasil Login, masuk kehalaman blubuk
                            redirect('home');
                        }
                    }else{
                        $this->session->set_flashdata('gagal', "<i class='fa fa-times'></i> Email atau Password Tidak Valid...");
                        // Jika gagal login, pesan terkirim ke view pendaftaran di folder login
                        redirect('user/pendaftaran_user');
                    }
                }elseif($cek_user->password != $password){
                    $this->session->set_flashdata('gagal', "<i class='fa fa-times'></i> Password Yang Anda Masukkan Salah...");
                    // Jika gagal login, pesan terkirim ke view pendaftaran di folder login
                    redirect('user/pendaftaran_user');
                }elseif($cek_user == NULL){
                    $this->session->set_flashdata('gagal', "<i class='fa fa-times'></i> Email Belum Terdaftar, Silahkan Daftarkan Email Anda Disini...");
                    // Jika gagal login, pesan terkirim ke view pendaftaran di folder login
                    redirect('user/pendaftaran_user');
                }else{
                    $this->session->set_flashdata('gagal', "<i class='fa fa-times'></i> Email atau Password Tidak Cocok...");
                    // Jika gagal login, pesan terkirim ke view pendaftaran di folder login
                    redirect('user/pendaftaran_user');
                } 
            }
            $this->load->view('user/vlogin_utama', $data);
        }
    }

    public function pendaftaran_user(){
        if($this->input->post('email')){
            $check_email = $this->model_user->check_email($this->input->post('email'));
                if($check_email == NULL){
                // Check Data yang dimasukkan
                $users['name'] = $this->input->post('name', true);
                $users['email'] = $this->input->post('email', true);
                $users['password'] = md5($this->input->post('password', true));
                $users['id_role'] = "3";
                $users['teman'] = "6";
                $users['foto_profil'] = "no_profil.jpg";
                $users['status'] = "PENDING";

                // Buat Data Untuk waktu dan ip address saat melakukan pendaftaran
                $users['registration_datetime'] = date("Y-m-d H:i:s");
                $users['registration_ip'] = $this->input->ip_address();

                // Menyimpan Data yang sudah dimasukkan kedalam database

                $id = $this->model_user->create($users);
                if($id)
                {
                    // Membuat Session Saat Pendaftaran
                    $session_data['userid'] = $id;
                    $session_data['username'] = $users['name'];
                    $session_data['email']  = $users['email'];
                    $session_data['privileges'] = "user";
                    $session_data['id_role'] = "3";
                    $session_data['status'] = "PENDING";
                    $session_data['logged_in'] = TRUE;

                    //Membuat Log Aktifitas Pendaftaran
                    // $this->model_log_aktifitas->record( 'register', 'register_bajaj');
                    $this->model_log_aktifitas->record( 'pendaftaran_user', 'pendaftaran_user');

                    //Memulai session data
                    $this->session->set_userdata($session_data);

                    //Ambil Data dari model setting
                    $this->load->model('model_setting');
                    $data = $this->model_setting->get(array('grup'=>'confirm_registration'));

                    $this->load->helper('rkspandawa');
                    $code = base64url_encode(md5($users['registration_datetime'] . $users['email']) . $users['email']);
                    $confirmation_url = site_url("user/confirm_user/" .$code);
                    $message = str_replace("#url", $confirmation_url, $data['message']);
                    $message = str_replace("#name", $users['name'], $message);

                    // Mengirim Email Konfirmasi yang ada di table setting dalam database
                    if (defined('ENVIRONMENT') and (ENVIRONMENT == 'development')) {
                    	// Jika mode environment adalah development, bypass pengiriman email.
                    	$this->session->set_flashdata('link_konfirmasi', $confirmation_url);
                    } else {
		                $this->load->library('email');
		                $this->email->from($data['sender_email'],$data['sender_name']);
		                $this->email->to($users['email']);
		                $this->email->message($message);
		                $this->email->subject($data['subject']);
		                $this->email->send();
                    }
                    
                    $this->session->set_flashdata('berhasil', 'Pendaftaran Telah Dilakukan...');
                    redirect('user/wait_confirmation'); 
                }else{
                    $this->session->set_flashdata('gagal', "<i class='fa fa-times'></i>  Pendaftaran gagal. Sistem sedang mengalami gangguan. Silahkan coba beberapa saat lagi...");
                    // Jika gagal login, pesan terkirim ke view pendaftaran di folder login
                    redirect('user/pendaftaran_user');
                }
            }else{
                $this->session->set_flashdata('gagal', "<i class='fa fa-times'></i> Email Sudah Terdaftar, Silahkan Buat Menggunakan Email Yang Lain...");
                // Jika gagal login, pesan terkirim ke view pendaftaran di folder login
                redirect('user/pendaftaran_user');
            }
        }
        $this->load->view('user/vpendaftaran');
    }

    public function pendaftaran_user_utama(){
        if($this->input->post('email')){
            $check_email = $this->model_user->check_email($this->input->post('email'));
            if($check_email == NULL){

            // Check Data yang dimasukkan

            $users['email'] = $this->input->post('email', true);
            $users['name'] = $this->input->post('name', true);
            $users['password'] = md5($this->input->post('password', true));
            $users['id_role'] = "3";
            $users['teman'] = "6";
            $users['foto_profil'] = "no_profil.jpg";
            $users['status'] = "PENDING";
            
            // Buat Data Untuk waktu dan ip address saat melakukan pendaftaran
            $users['registration_datetime'] = date("Y-m-d H:i:s");
            $users['registration_ip'] = $this->input->ip_address();
            $users['last_login_datetime'] = '';
            $users['last_login_ip'] = '';

            // Menyimpan Data yang sudah dimasukkan kedalam database
            $id = $this->model_user->create($users);
            if($id > 0)
            {
                // Membuat Session Saat Pendaftaran
                $session_data['userid'] = $id;
                $session_data['username'] = $users['name'];
                $session_data['email']  = $users['email'];
                $session_data['privileges'] = "user";
                $session_data['id_role'] = "3";
                $session_data['status'] = "PENDING";
                $session_data['logged_in'] = TRUE;

                //Membuat Log Aktifitas Pendaftaran
                // $this->model_log_aktifitas->record( 'register', 'register_bajaj');
                $this->model_log_aktifitas->record( 'pendaftaran_user', 'pendaftaran_user');

                //Memulai session data
                $this->session->set_userdata($session_data);

                //Ambil Data dari model setting
                $this->load->model('model_setting');
                $data = $this->model_setting->get(array('grup'=>'confirm_registration'));

                $this->load->helper('rkspandawa');
                $code = base64url_encode(md5($users['registration_datetime'] . $users['email']) . $users['email']);
                $confirmation_url = site_url("user/confirm_user/" .$code);
                $message = str_replace("#url", $confirmation_url, $data['message']);
                $message = str_replace("#name", $users['name'], $message);

                // Mengirim Email Konfirmasi yang ada di table setting dalam database
                if (defined('ENVIRONMENT') and (ENVIRONMENT == 'development')) {
                	// Jika mode environment adalah development, bypass pengiriman email.
                	$this->session->set_flashdata('link_konfirmasi', $confirmation_url);
                }else {
		            $this->load->library('email');
		            $this->email->from($data['sender_email'],$data['sender_name']);
		            $this->email->to($users['email']);
		            $this->email->message($message);
		            $this->email->subject($data['subject']);
		            $this->email->send();
                }
                
                $msg = "<i class='fa fa-check'></i> Pendaftaran Telah Dilakukan... Silahkan Konfirmasi Akun di Email Anda...";
                $resp = array('status'=>'success','message'=>$msg);
                echo json_encode($resp);
                redirect('user/wait_confirmation');
            }else{
                $msg = "<i class='fa fa-times'></i> Pendaftaran gagal. Sistem sedang mengalami gangguan. Silahkan coba beberapa saat lagi atau hubungi customer service kami.";
                $resp = array('status'=>'fail','message'=>$msg);
                echo json_encode($resp);
                redirect('user');
            }
            }
            $this->session->set_flashdata('gagal', "<i class='fa fa-times'></i> Email Sudah Terdaftar, Silahkan Buat Menggunakan Email Yang Lain...");
            // Jika gagal login, pesan terkirim ke view pendaftaran di folder login
            redirect('user/pendaftaran_user');
        }
        $this->load->view('user/vpendaftaran');
    }

    public function resend_email() {
        $user = $this->model_user->get(array('id'=>$this->session->userdata('userid')));
        if($user){
            if($user[0]->id_role == 1)
            {
                /* Get data from setting */
                $this->load->model('model_setting');
                $data = $this->model_setting->get(array('grup'=>'confirm_registration'));
                                
                $this->load->helper('rkspandawa');
                $code = base64url_encode(md5($user[0]->registration_datetime . $user[0]->email) . $user[0]->email);

                $confirmation_url = base_url() . "user/confirm_rkslankers/" . $code;
                $message = str_replace("#url", $confirmation_url, $data['message']);
                $message = str_replace("#name", $user[0]->name, $message);

                /* Send Confirmation Email */
                $this->load->library('email');
                $this->email->from($data['sender_email'],$data['sender_name']);
                $this->email->to($user[0]->email);

                //Yang Atas Digunakan Untuk Memberikan Nama User didalam email
                $this->email->message($message);
                $this->email->subject($data['subject']);
                $this->model_log_aktifitas->record( 'resend_email', 'resend_email');
                $res = $this->email->send();
                if($res){
                    $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Silahkan Check Email Anda Untuk Konfirmasi...');
                    redirect('user/wait_confirmation');
                }else{
                    $this->session->set_flashdata('message_gagal', '<i class="fa fa-times"></i> Email Tidak Terkirim...');
                    redirect('user/wait_confirmation');
                }
            }
            else if($user[0]->id_role == 2)
            {   
                 /* Get data from setting */
                $this->load->model('model_setting');
                $data = $this->model_setting->get(array('grup'=>'confirm_registration'));
                                
                $this->load->helper('rkspandawa');
                $code = base64url_encode(md5($user[0]->registration_datetime . $user[0]->email) . $user[0]->email);

                $confirmation_url = base_url() . "user/confirm_admin/" . $code;
                $message = str_replace("#url", $confirmation_url, $data['message']);
                $message = str_replace("#name", $user[0]->name, $message);

                /* Send Confirmation Email */
                $this->load->library('email');
                $this->email->from($data['sender_email'],$data['sender_name']);
                $this->email->to($user[0]->email);

                //Yang Atas Digunakan Untuk Memberikan Nama User didalam email
                $this->email->message($message);
                $this->email->subject($data['subject']);
                $this->model_log_aktifitas->record( 'resend_email', 'resend_email');
                $res = $this->email->send();
                if($res){
                    $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Silahkan Check Email Mimin Untuk Konfirmasi...');
                    redirect('user/wait_confirmation');
                }else{
                    $this->session->set_flashdata('message_gagal', '<i class="fa fa-times"></i> Email Tidak Terkirim...');
                    redirect('user/wait_confirmation');
                }
            }
            else if($user[0]->id_role == 3)
            {   
                 /* Get data from setting */
                $this->load->model('model_setting');
                $data = $this->model_setting->get(array('grup'=>'confirm_registration'));
                                
                $this->load->helper('rkspandawa');
                $code = base64url_encode(md5($user[0]->registration_datetime . $user[0]->email) . $user[0]->email);

                $confirmation_url = base_url() . "user/confirm_user/" . $code;
                $message = str_replace("#url", $confirmation_url, $data['message']);
                $message = str_replace("#name", $user[0]->name, $message);

                /* Send Confirmation Email */
                $this->load->library('email');
                $this->email->from($data['sender_email'],$data['sender_name']);
                $this->email->to($user[0]->email);

                //Yang Atas Digunakan Untuk Memberikan Nama User didalam email
                $this->email->message($message);
                $this->email->subject($data['subject']);
                $this->model_log_aktifitas->record( 'resend_email', 'resend_email');
                $res = $this->email->send();
                if($res){
                    $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Silahkan Check Email Anda Untuk Konfirmasi...');
                    redirect('user/wait_confirmation');
                }else{
                    $this->session->set_flashdata('message_gagal', '<i class="fa fa-times"></i> Email Tidak Terkirim...');
                    redirect('user/wait_confirmation');
                }
            }
        }
    }

    public function confirm_user($link)
    {
        $this->load->helper('rkspandawa');
        $link = base64_decode($link);
        $email = substr($link, 32);
        $code = substr($link, 0, 32);
        $data = array('email' => $email);
        $res = $this->model_user->get_by_param($data);
        if ($res) {
            $code2 = md5($res[0]->registration_datetime . $email);
            if ($code == $code2 && $res[0]->status == "PENDING") {
                $id = $res[0]->id;
                $data = array('status' => 'REGISTERED'
                    ,'login_status' => "ON");
                $this->model_user->update($id, $data);
                if (!$this->session->userdata('userid')) {
                    $session_data = array(
                        'userid'        => $id,
                        'username'      => $res[0]->name,
                        'email'         => $res[0]->email,
                        'privileges'    => "user",
                        'status'        => "REGISTERED",
                        'logged_in'     => TRUE
                    );
                    $this->session->set_userdata($session_data);
                }
                $this->model_log_aktifitas->record( 'confirm', 'confirm_user');
                $this->session->set_flashdata('message', "<i class='fa fa-check'></i> Selamat Datang " . $res[0]->name . " di Blubuk. Selamat Menikmati Fasilitas Blubuk...");
                redirect('user/welcome');
            } else {
                $this->session->set_flashdata('messagedanger', "<i class='fa fa-times'></i> Maaf, Akun " . $res[0]->name . " Sudah Bisa Digunakan, Tolong Check Lagi ya ^^");
                redirect('main/error');
            }
        }else {
            $this->session->set_flashdata('messagedanger', "<i class='fa fa-times'></i> Maaf... Url " . current_url(). " Yang Anda Klik Sudah Tidak Bisa Digunakan Lagi...");
            redirect('main/error');
        }
        redirect($url);
    }

    public function welcome()
    {
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $data['id'] = $id;
        $data['name'] = $name;
        $data['data'] = $this->model_biografi->getsemua($id);

        $this->model_log_aktifitas->record( 'welcome', 'welcome');
        $this->load->view('home/welcome', $data);
    }

    public function wait_confirmation()
    {
        $this->model_log_aktifitas->record( 'wait_confirmation', 'wait_confirmation');
        $this->load->view('user/wait_confirmation');
    }


    public function forgot_password()
    {
        if(isset($_POST['email'])){
            $this->load->model('model_setting');
            $data = $this->model_setting->get(array('grup'=>'forgot_password'));

            $email = $this->input->post("email");
            $user = $this->model_user->get(array('email'=> $email));

            if($user) {
                // $this->load->helper('dbdepkop');
                $this->load->helper('rkspandawa');
                // $last_login_datetime = date("Y-m-d H:i:s");
                $userid = $user[0]->id;
                $code = base64url_encode(md5($email) .$email);
                // $code = base64url_encode($email . $email . $email);
                $link = base_url() . "user/recovery_password/" . $code;
                $message = str_replace("#url", $link, $data['message']);
                
                /* Send Confirmation Email */
                $this->load->library('email');
                $this->email->from($data['sender_email'],$data['sender_name']);
                $this->email->to($email);
                $this->email->message($message);
                $this->email->subject($data['subject']);
                $this->email->send();
                $this->model_log_aktifitas->record( 'forgot_password', 'forgot_password');
                $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Silahkan Buka Email Anda Untuk Merubah Password...');
                redirect('user/forgot_password');
            }
            $this->session->set_flashdata('messagedanger', '<i class="fa fa-times"></i> Tidak Ada Pengguna Dengan Email Yang Anda Masukkan...');
            redirect('user/forgot_password');
        }
        $this->load->view('user/forgot_password');
    }

    public function recovery_password()
    {
        // $this->load->helper('dbdepkop');
        $this->load->helper('rkspandawa');

        $recovery_link = $this->uri->segment(3);
        $link = base64url_decode($recovery_link);

        $code = substr($link,0,32);
        $email = substr($link, 32);

        $data = array('email' =>$email);
        $res = $this->model_user->get_by_param($data);
        $userid = $res[0]->id;
        print_r($userid);
        if($res){
                if (isset($_POST['new_password'])){
                    $new_password = md5($this->input->post('new_password'));
                    $this->model_user->update($userid,array('password'=>$new_password));
                    $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Password Baru Sudah Dirubah...');
                    $this->model_log_aktifitas->record( 'recovery_password', 'recovery_password');
                    redirect('user/recovery_password');
                }
        }
        $this->load->view('user/recovery_password', $data);
    }


          
    public function logout()
    {
        $data = $this->session->userdata('userid');
        $users['login_status'] = "OFF";
        $this->model_user->update($data, $users);

        $this->model_log_aktifitas->record( 'logout', 'logout');
        $this->session->sess_destroy();
        redirect('');
        // redirect(site_url('user'));
        // redirect(base_url("/"));
    }
 
    function get_kabupaten($id) {
        $tmp = '';
        $data = $this->model_biografi->get_kabupaten_by_provinsi($id);
        if (!empty($data)):
            $tmp .= "<option value=''>Pilih Kabupaten</option>";
            foreach ($data as $row):
                $tmp .= "<option value='" . $row->id . "'>" . $row->nama_kabupaten . "</option>";
            endforeach;
        else:
            $tmp .= "<option value=''>Pilih Kabupaten</option>";
        endif;
        die($tmp);
    }
    
    public function biografi()
    {
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $biografi['name'] = $name;
        $biografi['data'] = $this->model_biografi->getsemua($id);
        $biografi['agama'] = $this->model_biografi->getagama($id);
        $biografi['kabupaten'] = $this->model_biografi->getkabupaten();
        $biografi['provinsi'] = $this->model_biografi->getprovinsi();
        if(empty($biografi['data'])){
            redirect('user/buat_biografi');
        }
        $this->load->view('user/vtampil_biografi', $biografi);
    }

    //Ubah $personal menjadi $biografi

    public function buat_biografi() {
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $email = $this->session->userdata('email');
        $biografi['agama'] = $this->model_agama->get_all();
        $biografi['data'] = $this->model_biografi->get($id);
        $biografi['name'] = $name;
        $biografi['provinsi'] = $this->model_provinsi->get_all('provinsi');
        $biografi['kabupaten'] = $this->model_kabupaten->get_all('kabupaten');

        if ($biografi['data'] == null) {
            if (isset($_POST['nama_lengkap'])){

                $id_kabupaten = $this->input->post('kabupaten');
                $id_provinsi = $this->input->post('provinsi');
                $row_kabupaten = $this->model_user->get_kabupaten($id_kabupaten);
                $row_provinsi = $this->model_user->get_provinsi($id_provinsi);

                $data['id'] = $id;
                $data['email'] = $email;
                $data['nama_lengkap'] = $this->input->post('nama_lengkap');
                $data['jenis_kelamin'] = $this->input->post('jenis_kelamin');
                $data['tanggal_lahir'] = date("Y-m-d", strtotime($this->input->post('tanggal_lahir')));
                $data['agama'] = $this->input->post('agama');
                $data['telpon'] = $this->input->post('telpon');
                $data['ponsel'] = $this->input->post('ponsel');
                $data['alamat'] = $this->input->post('alamat');
                $data['kode_pos'] = $this->input->post('kode_pos');
                $data['provinsi'] = $this->input->post('provinsi');
                $data['kabupaten'] = $this->input->post('kabupaten');

                if(empty($_FILES['foto']['name'])){
                    $data['foto'] = 'no_profil.jpg';
                }elseif (isset($_FILES['foto']['name'])) {
                    $data['foto'] = $_FILES['foto']['name'];
                    $file_name = $_FILES['foto']['name'];
                    $file_ext = strtolower(end(explode('.', $data['foto'])));
                    $file_size = $_FILES['foto']['size'];
                    $file_tmp = $_FILES['foto']['tmp_name'];
                    $lokasi = 'images/foto_profil/' . time() . '_' . $file_name;
                    if ($file_size < 2097152) {
                        $data['foto'] = time() . "_" . $file_name;
                        move_uploaded_file($file_tmp, $lokasi);
                    }else{
                        echo '<script>bootbox.alert("File melebihi kapasitas yang ditentukan");</script>';
                    }
                }

                $userid = $this->session->userdata('userid');
                $this->session->userdata['userid'];
                if(empty($_FILES['foto']['name'])){
                    $this->model_user->update($userid, array('name'=>$this->input->post('nama_lengkap'),
                    'foto_profil'=>'no_profil.jpg'));
                }else{
                    $this->model_user->update($userid, array('name'=>$this->input->post('nama_lengkap'),
                    'foto_profil'=>time() . "_" . $file_name));
                }

                $resp = $this->model_biografi->create($data);
                if ($resp >0){
                    $this->session->set_flashdata('berhasil', 'Biografi  '.  $this->session->userdata('username')  . '  Berhasil Dibuat.');
                    redirect('user/biografi');                    
                }else{
                    $this->session->set_flashdata('gagal', '<i class="fa fa-times"></i> Biografi  '.  $this->session->userdata('username')  . '  Gagal Disimpan.');
                    // $this->session->set_flashdata('gagal', 'Biografi Gagal Disimpan.');
                    redirect('user/buat_biografi');
                }

            }
        }else{
            $id_update_biografi = $this->uri->segment(3);
            $biografi['data_update_biografi'] = $this->model_biografi->get($id_update_biografi);
            if(isset($_POST['nama_lengkap'])){
                $id_kabupaten = $this->input->post('kabupaten');
                $id_provinsi = $this->input->post('provinsi');
                $row_kabupaten = $this->model_user->get_kabupaten($id_kabupaten);
                $row_provinsi = $this->model_user->get_provinsi($id_provinsi);

                $data['id'] = $id;
                $data['nama_lengkap'] = $this->input->post('nama_lengkap');
                $data['jenis_kelamin'] = $this->input->post('jenis_kelamin');
                $data['tanggal_lahir'] = date("Y-m-d", strtotime($this->input->post('tanggal_lahir')));
                $data['agama'] = $this->input->post('agama');
                $data['telpon'] = $this->input->post('telpon');
                $data['ponsel'] = $this->input->post('ponsel');
                $data['alamat'] = $this->input->post('alamat');
                $data['kode_pos'] = $this->input->post('kode_pos');
                $data['provinsi'] = $this->input->post('provinsi');
                $data['kabupaten'] = $this->input->post('kabupaten');


                if (!empty($_FILES['foto']['name'])) {
                    $data['foto'] = $_FILES['foto']['name'];
                    $file_name = $_FILES['foto']['name'];
                    $file_ext = strtolower(end(explode('.', $data['foto'])));
                    $file_size = $_FILES['foto']['size'];
                    $file_tmp = $_FILES['foto']['tmp_name'];
                    $lokasi = 'images/foto_profil/' . time() . '_' . $file_name;
                    if ($file_size < 2097152) {
                        $data['foto'] = time() . "_" . $file_name;
                        move_uploaded_file($file_tmp, $lokasi);
                    }else{
                        echo '<script>bootbox.alert("File melebihi kapasitas yang ditentukan");</script>';
                    }
                } else {
                    $data['foto'] = $_POST['foto1'];
                }

                $userid = $this->session->userdata('userid');
                $this->session->userdata['userid'];
                if(empty($_FILES['foto']['name'])){
                    $this->model_user->update($userid, array('name'=>$this->input->post('nama_lengkap'),
                    'foto_profil'=> $_POST['foto1']));
                }else{
                    $this->model_user->update($userid, array('name'=>$this->input->post('nama_lengkap'),
                    'foto_profil'=>time() . "_" . $file_name));
                }

                $namachat['nama1'] = $this->input->post('nama_lengkap');
                $namachat['nama2'] = $this->input->post('nama_lengkap');
                $this->model_biografi->update_chat1($id, $namachat);
                $this->model_biografi->update_chat2($id, $namachat);

                $resp = $this->model_biografi->update($id_update_biografi, $data);
                if($resp >= 0){
                    $this->session->set_flashdata('berhasil', 'Biografi '.  $this->session->userdata('username')  . '  Berhasil Diubah.');
                    redirect('user/biografi');                      
                }else{
                    // $this->session->set_flashdata('gagal', '<i class="fa fa-times"></i> Biografi Gagal Disimpan.');
                    $this->session->set_flashdata('gagal', 'Biografi '.  $this->session->userdata('username')  . '  Gagal Disimpan.');
                    redirect('user/biografi');
                }
            }

        }
        $this->load->view('user/vbuat_biografi', $biografi);
    }

    public function ganti_password()
    {
        $id_ganti_password = $this->session->userdata('userid');
        $this->session->userdata['userid'];
        $ganti_password['data'] = $this->model_biografi->getsemua($id_ganti_password);
        if(isset($_POST['new_password'])){
            $userid = $this->session->userdata('userid');
            $this->session->userdata['userid'];
            $old_password = md5($this->input->post('old_password'));
            $new_password = md5($this->input->post('new_password'));
            $conf_password = md5($this->input->post('conf_password'));

            if($this->model_user->get(array(
                'id'=>$userid,
                'password'=>$old_password)
                )){
                if($new_password==$conf_password){
                    $this->model_user->update($userid,array('password'=>$new_password));
                    $this->session->set_flashdata('berhasil', 'Password  '.  $this->session->userdata('username')  . '  Sudah Dirubah...');
                    $this->model_log_aktifitas->record( 'ganti_password', 'ganti_password');
                    redirect('user/ganti_password');
                }
            }else{
                $this->session->set_flashdata('gagal', '<i class="fa fa-times"></i>  '.  $this->session->userdata('username')  . '  Harap Ulangi Isi Password...');
                redirect('user/ganti_password');
            }
        }
        $this->load->view('user/vganti_password', $ganti_password);
    }

    public function ganti_email() {

        $userid = $this->session->userdata("userid");
        $name = $this->session->userdata('username');
        $ganti_email['data'] = $this->model_biografi->getsemua($userid);

        if($this->input->post("email")){
            $this->load->model('model_setting');
            $data = $this->model_setting->get(array('grup'=>'confirm_change_email'));

            // $this->load->helper('dbdepkop');
            $this->load->helper('rkspandawa');

            $email = $this->input->post("email");
            $userid = $this->session->userdata("userid");
            $code = base64url_encode(md5($email) . $email);
            $link = base_url() . "user/confirm_email/" . $code . "/" . $userid;
            
            $message = str_replace("#url",$link,$data['message']);
            $message = str_replace("#name", $name, $message);
            $this->load->library('email');
            $this->email->from($data['sender_email'],$data['sender_name']);
            $this->email->to($email);
            $this->email->subject($data['subject']);
            $this->email->message($message);
            $this->email->send();

            $this->model_log_aktifitas->record( 'ganti_email', 'ganti_email');

            $this->session->set_flashdata('berhasil', 'Silahkan Buka Email  '.  $this->session->userdata('username')  . ' Untuk Melakukan Konfirmasi...');
            redirect('user/ganti_email');
        }
        $this->load->view('user/vganti_email', $ganti_email);
        // $this->load->view('user/change_email_expert');
    }


    public function confirm_email()
    {
        // $this->load->helper('dbdepkop');
        $this->load->helper('rkspandawa');

        $confirm = $this->uri->segment(3);
        $link = base64url_decode($confirm);
        $userid = $this->uri->segment(4);
        $foto['data'] = $this->model_biografi->getsemua($userid);

        $code = substr($link,0,32);
        $email = substr($link,32);

        $data = array('id' =>$userid);
        $res = $this->model_user->get_by_param($data);

        if($res) {
            $code2 = md5($email);
            if($code = $code2)
            {
                $id = $res[0]->id;
                $data = array('email'=>$email);
                $this->model_user->update($id,$data);
                $this->model_log_aktifitas->record( 'confirm_email', 'confirm_email');

                $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Email '.  $this->session->userdata('username')  . ' Sudah Dirubah...');
                redirect('home/confirm_email');
            }
            $this->session->set_flashdata('message', '<i class="fa fa-times"></i> Email '.  $this->session->userdata('username')  . '  Tidak Bisa Dirubah...');
            redirect('home/confirm_email');
        }
        $this->load->view('home/confirm_email', $foto);
    }

    public function change_email_configuration()
    {
        $userid = $this->session->userdata("userid");
        // var_dump($userid);

        if($this->input->post("email")){
            $user = $this->model_user->get(array('id'=>$this->session->userdata('userid')));
            if($user[0]->id_role == 1)
            {
                $this->load->model('model_setting');
                $data = $this->model_setting->get(array('grup'=>'confirm_registration'));

                // $this->load->helper('dbdepkop');
                $this->load->helper('rkspandawa');

                $email = $this->input->post("email");
                $userid = $this->session->userdata("userid");
                // var_dump($userid);
                $code = base64url_encode(md5($email) . $email);
                $link = base_url() . "user/confirm_expert/" . $code . "/" . $userid;
                $message = str_replace("#url",$link,$data['message']);

                $this->load->library('email');
                $this->email->from($data['sender_email'],$data['sender_name']);
                $this->email->to($email);
                $this->email->subject($data['subject']);
                $this->email->message($message);
                $this->email->send();
                $this->model_log_aktifitas->record( 'change_email', 'change_email_configuration');

                $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Silahkan Buka Email Anda Untuk Konfirmasi...');
                redirect('user/change_email_configuration');
            }else if($user[0]->id_role == 2){

                $this->load->model('model_setting');
                $data = $this->model_setting->get(array('grup'=>'confirm_registration'));

                // $this->load->helper('dbdepkop');
                $this->load->helper('rkspandawa');

                $email = $this->input->post("email");
                $userid = $this->session->userdata("userid");
                // var_dump($userid);
                $code = base64url_encode(md5($email) . $email);
                $link = base_url() . "user/confirm_kumkm/" . $code . "/" . $userid;
                $message = str_replace("#url",$link,$data['message']);

                $this->load->library('email');
                $this->email->from($data['sender_email'],$data['sender_name']);
                $this->email->to($email);
                $this->email->subject($data['subject']);
                $this->email->message($message);
                $this->email->send();
                $this->model_log_aktifitas->record( 'change_email', 'change_email_configuration');

                $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Silahkan Buka Email Anda Untuk Konfirmasi...');
                redirect('user/change_email_configuration');
            }else if($user[0]->id_role == 3){

                $this->load->model('model_setting');
                $data = $this->model_setting->get(array('grup'=>'confirm_registration'));

                // $this->load->helper('dbdepkop');
                $this->load->helper('rkspandawa');

                $email = $this->input->post("email");
                $userid = $this->session->userdata("userid");
                // var_dump($userid);
                $code = base64url_encode(md5($email) . $email);
                $link = base_url() . "user/confirm_user/" . $code . "/" . $userid;
                $message = str_replace("#url",$link,$data['message']);

                $this->load->library('email');
                $this->email->from($data['sender_email'],$data['sender_name']);
                $this->email->to($email);
                $this->email->subject($data['subject']);
                $this->email->message($message);
                $this->email->send();
                $this->model_log_aktifitas->record( 'change_email', 'change_email_configuration');

                $this->session->set_flashdata('message', '<i class="fa fa-check"></i> Silahkan Buka Email Anda Untuk Konfirmasi...');
                redirect('user/change_email_configuration');
            }
        }
        $this->load->view('user/change_email_configuration');
    }

    public function forum_publik(){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $forum['name'] = $name;
        $forum['data'] = $this->model_biografi->getsemua($id);
        $forum['data_desc'] = $this->model_forum->get_all_desc();

        $this->load->view('blubuk/vforum_publik', $forum);
    }

    public function forum_publik_mobile(){
        $id = $this->session->userdata('userid');
        $name = $this->session->userdata('username');
        $forum['name'] = $name;
        $forum['data'] = $this->model_biografi->getsemua($id);
        $forum['data_desc'] = $this->model_forum->get_all_desc();

        $this->load->view('blubuk/vforum_publik_mobile', $forum);
    }

    public function lihat_komentar_forum($id_forum){
        $data['forum'] = $this->model_forum->get_by_params(array('id_forum'=>$id_forum));
        $data['forum_desc'] = $this->model_komentar_forum->get_by_params(array('id_forum'=>$id_forum));

        $this->load->view('home/vlihat_forum', $data);
    }

    public function kontak_kami(){
        $this->load->view('user/vkontak_kami');
    }




}
