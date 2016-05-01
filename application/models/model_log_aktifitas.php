<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class model_log_aktifitas extends CI_Model {
	private $table_name;
	
	// Model Constructor
    public function __construct() {
        parent::__construct();
		$this->table_name = "log_aktifitas";
    }

	function record( $method, $controller,$lokal='Asia/Jakarta' )
	{
		date_default_timezone_set($lokal);
		$data = array(
			'id_user' => $this->session->userdata('userid')
			,'controller' => $controller
			,'method' => $method
			// ,'full_url' => $full_url
			// ,'post_content' => $post_content
			,'waktu' => date('Y-m-j H:i:s')
			
			// , 'ip_address' => $this->input->ip_address()
			// , 'user_agent' => $this->input->user_agent()
		);
		return $this->db->insert('log_aktifitas', $data);
	}


	/*  START of Basic CRUD Functions 
		-----------------------------
		Description: Insert new record
		Input: Array of dara
		Output: Inserted ID
	*/
	public function create($data) {
		$this->db->insert($this->table_name, $data);
		return $this->db->insert_id();
	}
	
    public function get_all(){
		$query = $this->db->get($this->table_name);
//                echo $this->db->last_query();
//                exit();
		return $query->result();	
	}
        
	/*	Description: Get data primary key
		Input: Primary key
		Output: Array of result 
	*/
	public function get($id){
		$query  = $this->db->get_where($this->table_name,array('id'=>$id),1,0);
		$result = $query->result();
		return $result ? $result[0] : NULL;	
	}
	
	/*	Description: Get data by some parameters
		Input: Array of parameters
		Output: Array of result
	*/
	public function get_by_param($params){
		$query  = $this->db->get_where($this->table_name,$params);
		return $query->result();
	}
	
	/*	Description: Update data
		Input: 1) Primary key 2) Array of data
		Output: Num of affected rows
	*/
	public function update($id,$data) {
		$this->db->where('id', $id);
		$this->db->update($this->table_name, $data); 
		return $this->db->affected_rows();
	}

	/*	Description: Delete record
		Input: Primary key
		Output: Num of affected rows
	*/	
	public function delete($id) {
		$this->db->delete($this->table_name, array('id' => $id));
		return $this->db->affected_rows();		
	}
	
	/*  END of Basic CRUD Functions */

	
	/* START of Advanced Model Functions */
	

	
	
	
	/* END of Advanced Model Functions */
}
