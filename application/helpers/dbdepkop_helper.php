<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('base64url_encode'))
{
	function base64url_encode($data) {
	  return rtrim(strtr(base64_encode($data), '+/', '-_'), '=');
	}
}

if ( ! function_exists('base64url_decode'))
{
	function base64url_decode($data) {
	  return base64_decode(str_pad(strtr($data, '-_', '+/'), strlen($data) % 4, '=', STR_PAD_RIGHT));
	} 
}

if ( ! function_exists('check_acl'))
{
    function check_acl()
    {
		$CI =& get_instance();
		$CI->load->model('acl_model');
		
		// Check login status
		if(!$CI->session->userdata('userid')) {
			// Cek apakah method memiliki privilege_public pada Access Control List
			// Jika method yang dikses tidak memiliki privilege public, maka tujuan diarahkan ke "users/login"
			if(!$CI->acl_model->get(array(
				'privilege_public' => 'Y',
				'controller' => $CI->router->fetch_class(),
				'method' => $CI->router->fetch_method()
			))) return(base_url("users/login"));
			
			// methode dapat diakses publik
			return NULL;
		}
		
		if($CI->session->userdata('active_status') == "PENDING") {
			if($CI->acl_model->get(array(
				'privilege_pending_user' => 'Y',
				'controller' => $CI->router->fetch_class(),
				'method' => $CI->router->fetch_method()
			))) 
				return NULL;
			else
				return(base_url("users/wait_confirmation"));
		}

		// Check Access Control List (ACL)
		if(!$CI->acl_model->get_acl()) {
			$message = "Anda tidak memiliki hak untuk mengakses halaman " . current_url();
			$CI->session->set_flashdata('message', $message);
			return(base_url("main/error"));
		}
		return NULL;
	}
}

if ( ! function_exists('log_activity'))
{
    function log_activity($remark=NULL)
    {
		$CI =& get_instance();
		$CI->load->library('user_agent');
		$CI->load->model('user_activities_model');
		if($CI->session->userdata('userid')){
			$CI->user_activities_model->insert(
				array('user_id'=>$CI->session->userdata('userid'),
					'ip_address'=>$CI->input->server('REMOTE_ADDR'),
					'controller'=>$CI->router->fetch_class(),
					'method'=>$CI->router->fetch_method(),
					'parameters'=>$CI->uri->uri_string(),
					'remark'=>$remark,
					'browser'=>$CI->agent->browser() . " " . $CI->agent->version(),
					'platform'=>$CI->agent->platform(),
				)
			);
		}
	}
}