<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class model_keahlian extends CI_Model {
	private $table_name;
	
	// Model Constructor
    public function __construct() {
        parent::__construct();
		$this->table_name = "keahlian";
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
	
        public function get_all(){
		$query = $this->db->get($this->table_name);
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
	public function get_all_by_id($id){
            $this->db->select('a.*, b.name as nama_petugas');
            $this->db->from('keahlian a');
            $this->db->join('users b','a.petugas_verifikasi = b.id');
            $this->db->where('a.id', $id);
            
            $query = $this->db->get();
            $result = $query->result();
            return $result ? $result[0] : NULL;	
        }

//	function insert_kategori_expert($idUser, $ke) {
//            $data = array(
//                'id_kategori' => (int) $ke,
//                'id_user' => $idUser
//            );
//            $resp = $this->db->insert('kategori_expert', $data);
//            if($resp){
//                return 'succes';
//            }else{
//                return 'failed';
//            }
//            
//        }
        
        public function get_petugas($id){
		$this->db->select('*');
                $this->db->from($this->table_name);
                $this->db->where('id', $id);
		$query = $this->db->get();
		return $query ? $query->result() : NULL;
	}
        
        public function getByIdUser($idUser){
		$this->db->select('*');
                $this->db->from($this->table_name);
                $this->db->where('id_user', $idUser);
                $this->db->order_by('deskripsi', 'ASC');
		$query = $this->db->get();
		return $query ? $query->result() : NULL;
	}
        
        public function getByIdUser_active($idUser){
		$this->db->select('*');
                $this->db->from($this->table_name);
                $this->db->where('id_user', $idUser);
                $this->db->where('verifikasi =', 'VALID');
                $this->db->order_by('id', 'DESC');
		$query = $this->db->get();
		return $query ? $query->result() : NULL;
	}
        
        public function get_kategori_expert($idUser){
                $this->db->select('a.keterangan as kategori, b.verifikasi as status, b.id, b.id_user');
                $this->db->from('ref_kategori a');
                $this->db->join('kategori_expert b', 'a.id = b.id_kategori');
                $this->db->where('b.id_user', $idUser);
                $this->db->order_by('a.keterangan', 'ASC');
		$query = $this->db->get();
		return $query ? $query->result() : NULL;
        }
        
        public function get_kategori_expert_active($idUser){
                $this->db->select('a.keterangan as kategori, b.verifikasi as status, b.id, b.id_user');
                $this->db->from('ref_kategori a');
                $this->db->join('kategori_expert b', 'a.id = b.id_kategori');
                $this->db->where('b.id_user', $idUser);
                $this->db->where('b.verifikasi =', 'APPROVED');
                $this->db->order_by('b.id', 'DESC');
		$query = $this->db->get();
		return $query ? $query->result() : NULL;
        }
        
        public function get_kategori_expert_1($idUser){
                $sql = "select GROUP_CONCAT(DISTINCT a.keterangan order by a.keterangan ASC separator ', ')as kategori, b.id_user as id 
                        from ref_kategori a 
                        left join kategori_expert b on a.id = b.id_kategori 
                        where b.id_user = $idUser";
                
                $query = $this->db->query($sql);
                return $query ? $query->result() : NULL;	
                
        }
        
        public function insert_kategori($data){
            $this->db->insert('kategori_expert', $data);
            return $this->db->insert_id();
        }
        
        public function delete_kategori($id){
            $this->db->delete('kategori_expert', array('id' => $id));
            return $this->db->affected_rows();
        }
        
        public function update_kategori_expert($data, $id){
            $this->db->where('id', $id);
            $this->db->update('kategori_expert', $data); 
            return $this->db->affected_rows();
        }
        
        
	
	
	/* END of Advanced Model Functions */
}
