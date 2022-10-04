<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Transaksi extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_transaksi');
        $this->load->model('m_produk');
        $this->load->library('upload');
        if (!$this->session->userdata('user_id') or $this->session->userdata('user_group') != 1) {
            // ALERT
            $alertStatus  = 'failed';
            $alertMessage = 'Anda tidak memiliki Hak Akses atau Session anda sudah habis';
            getAlert($alertStatus, $alertMessage);
            redirect('admin/dashboard');
        }
    }


    public function index()
    {
        $this->session->unset_userdata('sess_search_transaksi');

        // PAGINATION
        $baseUrl    = base_url() . "admin/transaksi/index/";
        $totalRows  = count((array) $this->m_transaksi->read('', '', '', '', ''));
        $perPage    = $this->session->userdata('sess_rowpage');
        $uriSegment = 4;
        $paging     = generatePagination($baseUrl, $totalRows, $perPage, $uriSegment);
        $page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;

        $data['numbers']    = $paging['numbers'];
        $data['links']      = $paging['links'];
        $data['total_data'] = $totalRows;

        //DATA
        $data['setting'] = getSetting();
        $data['title']   = 'transaksi';
        $data['transaksi']  = $this->m_transaksi->read($perPage, $page, '', '', '');

        // TEMPLATE
        $view         = "_backend/transaksi";
        $viewCategory = "all";
        renderTemplate($data, $view, $viewCategory);
    }


    public function search()
    {
        if ($this->input->post('key')) {
            $data['search'] = $this->input->post('key');
            $this->session->set_userdata('sess_search_transaksi', $data['search']);
        } else {
            $data['search'] = $this->session->userdata('sess_search_transaksi');
        }

        // PAGINATION
        $baseUrl    = base_url() . "admin/transaksi/search/" . $data['search'] . "/";
        $totalRows  = count((array)$this->m_transaksi->read('', '', $data['search'], '', ''));
        $perPage    = $this->session->userdata('sess_rowpage');
        $uriSegment = 5;
        $paging     = generatePagination($baseUrl, $totalRows, $perPage, $uriSegment);
        $page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;

        $data['numbers']    = $paging['numbers'];
        $data['links']      = $paging['links'];
        $data['total_data'] = $totalRows;

        //DATA
        $data['setting'] = getSetting();
        $data['title']   = 'transaksi';
        $data['transaksi']  = $this->m_transaksi->read($perPage, $page, $data['search'], '', '');

        // TEMPLATE
        $view         = "_backend/transaksi";
        $viewCategory = "all";
        renderTemplate($data, $view, $viewCategory);
    }

    public function create()
    {
        csrfValidate();
        $data['transaksi_id']    = "";
        $data['transaksi_status'] = $this->input->post('transaksi_status');
        $data['transaksi_rating'] = $this->input->post('transaksi_rating');
        $data['transaksi_jam'] = $this->input->post('transaksi_jam');
        $data['transaksi_total_harga'] = $this->input->post('transaksi_total_harga');
        $data['produk_id'] = $this->input->post('produk_id');
        $data['createtime'] = date('Y-m-d H:i:s');
        $this->m_transaksi->create($data);

        // ALERT
        $alertStatus  = "success";
        $alertMessage = "Berhasil menambah data transaksi dengan name = " . $data['transaksi_status'];
        getAlert($alertStatus, $alertMessage);


        redirect('admin/transaksi');
    }

    public function update()
    {
        csrfValidate();
        $data['transaksi_id']     = $this->input->post('transaksi_id');
        $data['transaksi_status'] = $this->input->post('transaksi_status');
        $data['transaksi_status_ket'] = $this->input->post('transaksi_status_ket');
        $data['updatetime']       = date('Y-m-d H:i:s');
        $this->m_transaksi->update($data);
        if ($this->input->post('transaksi_status') == 'Selesai') {
            $datab['produk_id']    = $this->input->post('produk_id');
            $datab['produk_stok'] = $this->input->post('produk_stok') + 1;
            $this->m_produk->update($datab);
        }
        // ALERT
        $alertStatus  = "success";
        $alertMessage = "Berhasil mengupdate data transaksi id = " . $data['transaksi_id'];
        getAlert($alertStatus, $alertMessage);

        redirect('admin/transaksi');
    }

    public function delete()
    {
        csrfValidate();
        // POST
        $this->m_transaksi->delete($this->input->post('transaksi_id'));

        // ALERT
        $alertStatus  = "failed";
        $alertMessage = "Menghapus data transaksi : " . $this->input->post('transaksi_id');
        getAlert($alertStatus, $alertMessage);

        redirect('admin/transaksi');
    }
}
