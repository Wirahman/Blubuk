<?php
class Model_setting extends CI_Model {	
	public function __construct()
	{

	}
	
	/* get data */
	function get($data) {
		$arr = array();
		$query = $this->db->get_where('setting',$data);
		foreach($query->result() as $res) {
			$arr = $arr + array($res->item=>$res->value);
		}
		return $arr;	
	}
	
}
?>