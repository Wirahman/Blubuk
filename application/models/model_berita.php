<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class model_berita extends CI_Model {
	private $table_name;
	
	// Model Constructor
    public function __construct() {
        parent::__construct();
		$this->table_name = "berita";
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

	

    public function get_all_desc1(){
		$this->db->select('*');
        $this->db->from($this->table_name);
        $this->db->where('id_petugas', $idUser);
        $this->db->order_by('id', 'DESC');
		$query = $this->db->get();
		return $query ? $query->result() : NULL;
	}
     
    public function get_all_desc(){
		$this->db->order_by("id", "desc"); 
		$query = $this->db->get($this->table_name);
		return $query ? $query->result() : NULL;	
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
	  
    public function getByIdUser($idUser){
		$this->db->select('*');
        $this->db->from($this->table_name);
        $this->db->where('id_petugas', $idUser);
        $this->db->order_by('id', 'DESC');
		$query = $this->db->get();
		return $query ? $query->result() : NULL;
	}
     
    public function get_petugas($id){
		$this->db->select('*');
        $this->db->from($this->table_name);
        $this->db->where('id', $id);
		$query = $this->db->get();
		return $query ? $query->result() : NULL;
	}

	// where id =$id;

	public function get_berita($id)
	{
		$this->db->select('*');
		$this->db->from($this->table_name);
		$this->db->where('id', $id);
		$query = $this->db->get();
		return $query ? $query->result() : NULL;
	}
        

	
	
	
	/* END of Advanced Model Functions */
}
