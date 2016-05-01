<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class model_forum extends CI_Model {
	private $table_name;
	
	// Model Constructor
    public function __construct() {
        parent::__construct();
		$this->table_name = "forum";
    }
    
    public function create($data) {
	    $this->db->insert($this->table_name, $data);
	    return $this->db->insert_id();
    }
    
    public function get($id){
		$query  = $this->db->get_where($this->table_name,array('id_forum'=>$id),1,0);
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
        
	function get_by_params($data) {
        $query = $this->db->get_where('forum', $data, 1, 0);
        return $query->result() ? $query->result()[0] : NULL;
    }
	
    public function get_all(){
		$query = $this->db->get($this->table_name);
		return $query->result();	
	}
        
    public function get_all_desc(){
		$this->db->order_by("id_forum", "desc"); 
		$query = $this->db->get($this->table_name);
		return $query ? $query->result() : NULL;	
	}

    public function update($id,$data) {
		$this->db->where('id', $id);
		$this->db->update($this->table_name, $data); 
		return $this->db->affected_rows();
	}
        
    public function delete($id_forum) {
		$this->db->delete($this->table_name, array('id_forum' => $id_forum));
		return $this->db->affected_rows();		
	}
        
}