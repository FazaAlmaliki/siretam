<?php
defined('BASEPATH') or exit('No direct script access allowed');
class M_user extends CI_Model
{

    function __construct()
    {
        parent::__construct();
    }

    public function read($limit, $start, $key, $group)
    {
        $this->db->select('a.*, b.group_name');
        $this->db->from('tbl_user a');
        $this->db->join('tbl_group b', 'a.group_id = b.group_id', 'LEFT');

        if ($group != "") {
            $this->db->where('a.group_id', $group);
        }

        if ($key != '') {
            $this->db->like("a.user_name", $key);
            $this->db->or_like("a.user_fullname", $key);
            $this->db->or_like("a.user_email", $key);
            $this->db->or_like("b.group_name", $key);
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

    public function penyewa($user_id)
    {
        $this->db->select('a.*, b.group_name');
        $this->db->from('tbl_user a');
        $this->db->join('tbl_group b', 'a.group_id = b.group_id', 'LEFT');
        $this->db->where('a.user_id', $user_id);

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
        $this->db->insert('tbl_user', $data);
        $id = $this->db->insert_id();
        return (isset($id)) ? $id : FALSE;
    }

    public function update($data)
    {
        $this->db->update('tbl_user', $data, array('user_id' => $data['user_id']));
    }

    public function delete($id)
    {
        $this->db->delete('tbl_user', array('user_id' => $id));
    }

    public function get($id)
    {
        $this->db->select('a.*, b.group_name');
        $this->db->from('tbl_user a');
        $this->db->join('tbl_group b', 'a.group_id = b.group_id', 'LEFT');
        $this->db->where('a.user_id', $id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return null;
    }

    function __destruct()
    {
        $this->db->close();
    }
}
