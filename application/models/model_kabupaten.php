<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Model_kabupaten extends CI_Model {
	private $table_name;
	
	// Model Constructor
    public function __construct() {
        parent::__construct();
		$this->table_name = "kabupaten";
    }

	/*  START of Basic CRUD Functions 
		-----------------------------
		Description: Insert new record
		Input: Array of dara
		Output: Inserted ID
	*/
		
	public function create($data) {
		$this->db->insert($this->table_name, $data);
//                echo $this->db->last_query();
//                        exit();
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
//                echo $this->db->last_query();
//                exit();
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
	
        public function get_all_kabupaten(){
            $sql = "SELECT a.id as id_kabupaten, a.nama_kabupaten, a.id_provinsi, b.*
                    FROM ref_kabupaten a
                    LEFT JOIN ref_provinsi b on a.id_provinsi = b.id 
                    order by a.id_provinsi ASC";
            
            $query = $this->db->query($sql);
//            echo $this->db->last_query();
//            exit();
            return $query ? $query->result() : NULL;
            
        }
        
        public function get_kabupaten_provinsi($id){
            $sql = "SELECT a.id as id_kabupaten, a.nama_kabupaten, a.id_provinsi, b.* 
                    FROM ref_kabupaten a 
                    LEFT JOIN ref_provinsi b on a.id_provinsi = b.id
                    where a.id = $id";
            
            $query = $this->db->query($sql);
//            echo $this->db->last_query();
//            exit();
            return $query ? $query->row() : NULL;
        }
	
	
	
	/* END of Advanced Model Functions */
}
