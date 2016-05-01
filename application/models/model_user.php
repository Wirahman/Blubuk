<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class model_user extends CI_Model {
	private $table_name;
	
	// Model Constructor
    public function __construct() {
        parent::__construct();
		$this->table_name = "users";
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
    
	/*	Description: Get data primary key
		Input: Primary key
		Output: Array of result
	*/
	function get($data) {
		$query = $this->db->get_where('users',$data,1,0);
		return $query->result();	
	}
	
	public function get1($id){
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
	
    function get_by_params($data) {
        $query = $this->db->get_where('users', $data, 1, 0);
        return $query->result() ? $query->result()[0] : NULL;
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
    function get_kabupaten($id_kabupaten) {
        $sql = "SELECT * FROM kabupaten where id = $id_kabupaten";
        $query = $this->db->query($sql);
        return $query ? $query->row() : NULL;
//            return $query->row();
    }
    
    function get_provinsi($id_provinsi) {
        $sql = "SELECT * FROM provinsi where id = $id_provinsi";
        $query = $this->db->query($sql);
        return $query ? $query->row() : NULL;
//            return $query->row();
    }

	public function check_email($email){
		$query  = $this->db->get_where($this->table_name,array('email'=>$email),1,0);
		$result = $query->result();
		return $result ? $result[0] : NULL;	
	}
		      
    public function get_all_banned_desc(){
		$this->db->where('status', 'BANNED');
		$this->db->order_by("email", "desc"); 
		$query = $this->db->get($this->table_name);
		return $query ? $query->result() : NULL;	
	}
  
        /* END of Advanced Model Functions */
}
