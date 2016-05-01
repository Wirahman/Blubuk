<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class dashboard extends CI_Controller {

	  public function __construct() {
        session_regenerate_id();
        parent::__construct();
//        if (!$this->session->userdata('username')) {
//            redirect('login');
//            return;
//        }
//        $this->load->model('mvendor');
       }


    public function index() {
//        if (!$this->session->userdata('username')):
//            redirect('login');
//            return;
//        endif;
        $current_year = date('Y');
        
        $this->load->view('dashboard/vdashboard');
    }
     
}