<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class model_agama extends CI_Model {
	private $table_name;
	
	// Model Constructor
    public function __construct() {
        parent::__construct();
		$this->table_name = "agama";
    }
    
    public function create($data) {
	    $this->db->insert($this->table_name, $data);
	    return $this->db->insert_id();
    }
    
    public function get($id){
		$query  = $this->db->get_where($this->table_name,array('id'=>$id),1,0);
		$result = $query->result();
		return $result ? $result[0] : NULL;	
	}
        
    public function getByIdUser($idUser){
		$this->db->select('*');
        $this->db->from($this->table_name);
        $this->db->where('id', $idUser);
		$query = $this->db->get();
		return $query->result();
	}
        
    public function get_all(){
		$query = $this->db->get($this->table_name);
		return $query->result();	
	}
        
    public function update($id,$data) {
		$this->db->where('id', $id);
		$this->db->update($this->table_name, $data); 
		return $this->db->affected_rows();
	}
        
    public function delete($id) {
		$this->db->delete($this->table_name, array('id' => $id));
		return $this->db->affected_rows();		
	}
        
}