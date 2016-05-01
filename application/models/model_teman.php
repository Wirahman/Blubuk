<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class model_teman extends CI_Model {
	private $table_name;
	
	// Model Constructor
    public function __construct() {
        parent::__construct();
		$this->table_name = "teman";
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
        
	function get_by_params($data) {
        $query = $this->db->get_where('teman', $data, 1, 0);
        return $query->result() ? $query->result()[0] : NULL;
    }
	
    public function get_all(){
		$query = $this->db->get($this->table_name);
		return $query->result();	
	}
        
    public function get_all_desc($id){
        $this->db->where('userid1', $id);
		$this->db->order_by("id", "desc"); 
		$query = $this->db->get($this->table_name);
		return $query ? $query->result() : NULL;	
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

    function delete_by_params($userid1,$userid2) {
        $this->db->delete($this->table_name, array('userid1' => $userid1,'userid2' => $userid2));
        return $this->db->affected_rows();      
    }
    
    public function get_all_userid1($id){
        $this->db->select('*');
        $this->db->from($this->table_name);
        $this->db->where('userid1', $id);
        $this->db->order_by('id', 'Desc');
        $query = $this->db->get();
        return $query ? $query->result() : NULL;
    }
       
    public function get_all_userid2($id){
        $this->db->select('*');
        $this->db->from($this->table_name);
        $this->db->where('userid2', $id);
        $this->db->order_by('id', 'Desc');
        $query = $this->db->get();
        return $query ? $query->result() : NULL;
    }
       
        
}