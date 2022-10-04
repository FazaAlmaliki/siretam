<?php
defined('BASEPATH') or exit('No direct script access allowed');
class M_supplier extends CI_Model
{

    function __construct()
    {
        parent::__construct();
    }

    public function read($limit, $start, $key)
    {
        $this->db->select('*');
        $this->db->from('tbl_web_supplier a');

        if ($key != '') {
            $this->db->like("a.supplier_nama", $key);
        }

        if ($limit != "" or $start != "") {
            $this->db->limit($limit, $start);
        }

        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return null;
    }

    public function create($data)
    {
        $this->db->insert('tbl_web_supplier', $data);
    }

    public function update($data)
    {
        $this->db->update('tbl_web_supplier', $data, array('supplier_id' => $data['supplier_id']));
    }

    public function delete($id)
    {
        $this->db->delete('tbl_web_supplier', array('supplier_id' => $id));
    }

    public function get($id)
    {
        $this->db->where('supplier_id', $id);
        $query = $this->db->get('tbl_web_supplier', 1);
        return $query->result();
    }

    function __destruct()
    {
        $this->db->close();
    }
}
