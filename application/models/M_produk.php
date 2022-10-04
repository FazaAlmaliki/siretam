<?php
defined('BASEPATH') or exit('No direct script access allowed');
class M_produk extends CI_Model
{

    function __construct()
    {
        parent::__construct();
    }

    public function read($limit, $start, $key, $kategori, $supplier)
    {
        $this->db->select('*');
        $this->db->from('tbl_web_produk a');
        $this->db->join('tbl_web_kategori b', 'a.kategori_id = b.kategori_id', 'LEFT');
        $this->db->join('tbl_web_supplier c', 'a.supplier_id = c.supplier_id', 'LEFT');

        if ($kategori != '') {
            $this->db->where("a.kategori_id", $kategori);
        }

        if ($supplier != '') {
            $this->db->where("a.supplier_id", $supplier);
        }

        if ($key != '') {
            $this->db->like("a.produk_nama", $key);
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

    public function read_front($limit, $start, $key, $kategori, $supplier)
    {
        $this->db->select('a.*,b.*,c.*');
        $this->db->from('tbl_web_produk a');
        $this->db->join('tbl_web_kategori b', 'a.kategori_id = b.kategori_id', 'LEFT');
        $this->db->join('tbl_web_supplier c', 'a.supplier_id = c.supplier_id', 'LEFT');

        if ($kategori != '') {
            $this->db->where("a.kategori_id", $kategori);
        }

        if ($supplier != '') {
            $this->db->where("a.supplier_id", $supplier);
        }

        if ($key != '') {
            $this->db->like("a.produk_nama", $key);
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
        $this->db->insert('tbl_web_produk', $data);
    }

    public function update($data)
    {
        $this->db->update('tbl_web_produk', $data, array('produk_id' => $data['produk_id']));
    }

    public function delete($id)
    {
        $this->db->delete('tbl_web_produk', array('produk_id' => $id));
    }

    public function get($id)
    {
        $this->db->select('a.*,b.*,c.*');
        $this->db->from('tbl_web_produk a');
        $this->db->join('tbl_web_kategori b', 'a.kategori_id = b.kategori_id', 'LEFT');
        $this->db->join('tbl_web_supplier c', 'a.supplier_id = c.supplier_id', 'LEFT');
        $this->db->where('a.produk_id', $id);
        $query = $this->db->get();
        return $query->result();
    }

    function __destruct()
    {
        $this->db->close();
    }
}
