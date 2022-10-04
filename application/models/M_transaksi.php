<?php
defined('BASEPATH') or exit('No direct script access allowed');
class M_transaksi extends CI_Model
{

    function __construct()
    {
        parent::__construct();
    }

    public function read($limit, $start, $key, $produk, $user)
    {
        $this->db->select('*');
        $this->db->from('tbl_web_transaksi a');
        $this->db->join('tbl_web_produk b', 'a.produk_id = b.produk_id', 'LEFT');
        $this->db->join('tbl_user c', 'a.user_id = c.user_id', 'LEFT');

        if ($produk != '') {
            $this->db->where("a.produk_id", $produk);
        }

        if ($user != '') {
            $this->db->where("a.user_id", $user);
        }

        if ($key != '') {
            $this->db->like("b.produk_nama", $key);
            $this->db->or_like("a.transaksi_id", $key);
        }

        if ($limit != "" or $start != "") {
            $this->db->limit($limit, $start);
        }
        $this->db->order_by('updatetime', 'desc');

        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
    }

    public function create($data)
    {
        $this->db->insert('tbl_web_transaksi', $data);
    }

    public function update($data)
    {
        $this->db->update('tbl_web_transaksi', $data, array('transaksi_id' => $data['transaksi_id']));
    }

    public function delete($id)
    {
        $this->db->delete('tbl_web_transaksi', array('transaksi_id' => $id));
    }

    public function get($id)
    {
        $this->db->where('transaksi_id', $id);
        $query = $this->db->get('tbl_web_transaksi', 1);
        return $query->result();
    }

    function __destruct()
    {
        $this->db->close();
    }
}
