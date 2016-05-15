<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class model_biografi extends CI_Model {

    private $table_name;

    // Model Constructor
    public function __construct() {
        parent::__construct();
        $this->table_name = "biografi";
    }

    /*  START of Basic CRUD Functions 
      -----------------------------
      Description: Insert new record
      Input: Array of dara
      Output: Inserted ID
     */

    public function create($data) {
        $this->db->insert($this->table_name, $data);
//        echo $this->db->last_query();
//        exit();
        return $this->db->insert_id();
    }

    /* 	Description: Get data primary key
      Input: Primary key
      Output: Array of result
     */

    public function get($id) {
        $query = $this->db->get_where($this->table_name, array('id' => $id), 1, 0);
        $result = $query->result();
        return $result ? $result[0] : NULL;
    }

    public function get_pencarian($id){
        $this->db->select('*');
        $this->db->from($this->table_name);
        $this->db->where('email', $id);
        $this->db->or_where('nama_lengkap', $id);
        $this->db->order_by('email', 'ASC');
        $query = $this->db->get();
        return $query ? $query->result() : NULL;
    }
       
    public function getsemua($id){
        $sql = "SELECT a.*, b.nama_agama, c.nama_provinsi, d.nama_kabupaten
                FROM biografi a 
                LEFT JOIN agama b on a.agama = b.id
                LEFT JOIN provinsi c on a.provinsi = c.id
                LEFT JOIN kabupaten d on a.kabupaten = d.id
                WHERE a.id = $id";
        $query = $this->db->query($sql);
//            echo $this->db->last_query();
//                    exit();
         return $query ? $query->row() : NULL;
    }
    

    /* 	Description: Get data by some parameters
      Input: Array of parameters
      Output: Array of result
     */

    function get_by_params($data) {
        $query = $this->db->get_where('biografi', $data, 1, 0);
        return $query->result() ? $query->result()[0] : NULL;
    }
    
    public function get_all() {
        $query = $this->db->get($this->table_name);
        return $query->result();
    }

    /* 	Description: Update data
      Input: 1) Primary key 2) Array of data
      Output: Num of affected rows
     */

    public function update($id, $data) {
        $this->db->where('id', $id);
        $this->db->update($this->table_name, $data);
        return $this->db->affected_rows();
    }

    /* 	Description: Delete record
      Input: Primary key
      Output: Num of affected rows
     */

    public function delete($id) {
        $this->db->delete($this->table_name, array('id' => $id));
        return $this->db->affected_rows();
    }

    /*  END of Basic CRUD Functions */


    /* START of Advanced Model Functions */

    function getagama($id_agama) {
        $query = $this->db->get_where('agama', array('id' => $id_agama), 1, 0);
        $result = $query->result();
        return $result ? $result[0] : NULL;
    }

    function getprovinsi() {

        $this->db->select('*');
        $this->db->from('provinsi');
        
        $query = $this->db->get();
        return $query ? $query->result() : NULL;
    }

    function getkabupaten() {
        $this->db->select('*');
        $this->db->from("kabupaten");
        
        $query = $this->db->get();
        return $query ? $query->result() : NULL;
    }
    
    function get_kabupaten_by_provinsi($id) {

        $sql = "SELECT * FROM kabupaten where id_provinsi='$id' ";
        $query = $this->db->query($sql);

        if ($query->num_rows() > 0)
            return $query->result();
    }
    
    public function get_kabupaten_provinsi($id){
        $this->db->select('a.id, a.nama_lengkap, a.id_kabupaten, a.id_provinsi, b.nama_kabupaten as kabupaten, c.nama_provinsi as provinsi');
        $this->db->from('biografi a');
        $this->db->join('kabupaten b on a.id_kabupaten = b.id');
        $this->db->join('provinsi c on a.id_provinsi = c.id');
        $this->db->where('a.id = ',$id);

        $query = $this->db->get();
        return $query ? $query->result() : NULL;
    }

    public function update_chat1($id, $data) {
        $this->db->where('userid1', $id);
        $this->db->update('chat', $data);
        return $this->db->affected_rows();
    }

    public function update_chat2($id, $data) {
        $this->db->where('userid2', $id);
        $this->db->update('chat', $data);
        return $this->db->affected_rows();
    }


    /* END of Advanced Model Functions */
}
