<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class main extends CI_Controller {

	public function __construct() {
        parent::__construct();

    }

    //Halaman Utama Setelah Melakukan Registrasi
    
	public function welcome_expert() {
		$this->load->view('home/welcome_expert');
	}

	public function welcome_kumkm() {
		$this->load->view('home/welcome_kumkm');
	}
	
	// Halaman utama setelah login
	public function index() {
		$this->load->view('home/home');	
	}
	
	// Halaman yang ditampilkan saat ada error
	
	public function error() {
		$this->load->view('home/error');
	}

	// Halaman untuk Melengkapi Data

	public function lengkapi_data() {
		$this->load->view('expert/vlengkapi_data');
	}

	//Halaman Untuk Melakukan Register

	public function register_expert() {
		$this->load->view('user/register_expert');
	}

}
