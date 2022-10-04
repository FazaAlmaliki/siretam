<?php
defined('BASEPATH') or exit('No direct script access allowed');
class produk extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_kategori');
        $this->load->model('m_supplier');
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
        $this->session->unset_userdata('sess_search_produk');

        // PAGINATION
        $baseUrl    = base_url() . "admin/produk/index/";
        $totalRows  = count((array) $this->m_produk->read('', '', '', '', ''));
        $perPage    = $this->session->userdata('sess_rowpage');
        $uriSegment = 4;
        $paging     = generatePagination($baseUrl, $totalRows, $perPage, $uriSegment);
        $page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;

        $data['numbers']    = $paging['numbers'];
        $data['links']      = $paging['links'];
        $data['total_data'] = $totalRows;

        //DATA
        $data['setting'] = getSetting();
        $data['title']   = 'produk';
        $data['kategori']  = $this->m_kategori->read('', '', '');
        $data['supplier']  = $this->m_supplier->read('', '', '');
        $data['produk']  = $this->m_produk->read($perPage, $page, '', '', '');

        // TEMPLATE
        $view         = "_backend/produk";
        $viewCategory = "all";
        renderTemplate($data, $view, $viewCategory);
    }


    public function search()
    {
        if ($this->input->post('key')) {
            $data['search'] = $this->input->post('key');
            $this->session->set_userdata('sess_search_produk', $data['search']);
        } else {
            $data['search'] = $this->session->userdata('sess_search_produk');
        }

        // PAGINATION
        $baseUrl    = base_url() . "admin/produk/search/" . $data['search'] . "/";
        $totalRows  = count((array)$this->m_produk->read('', '', $data['search'], '', ''));
        $perPage    = $this->session->userdata('sess_rowpage');
        $uriSegment = 5;
        $paging     = generatePagination($baseUrl, $totalRows, $perPage, $uriSegment);
        $page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;

        $data['numbers']    = $paging['numbers'];
        $data['links']      = $paging['links'];
        $data['total_data'] = $totalRows;

        //DATA
        $data['setting'] = getSetting();
        $data['title']   = 'produk';
        $data['kategori']  = $this->m_kategori->read('', '', '');
        $data['supplier']  = $this->m_supplier->read('', '', '');
        $data['produk']  = $this->m_produk->read($perPage, $page, $data['search'], '', '');

        // TEMPLATE
        $view         = "_backend/produk";
        $viewCategory = "all";
        renderTemplate($data, $view, $viewCategory);
    }


    public function create()
    {
        csrfValidate();
        if ($_FILES['produk_gambar']['name'] != "") {
            $filename_1              = "produk-" . date('YmdHis');
            $config['upload_path']   = "./upload/produk/";
            $config['allowed_types'] = "jpg|jpeg|png|jfif|JPG|JPEG|PNG|JFIF";
            $config['overwrite']     = "true";
            $config['max_size']      = "0";
            $config['max_width']     = "10000";
            $config['max_height']    = "10000";
            $config['file_name']     = '' . $filename_1;
            $this->upload->initialize($config);
            if (!$this->upload->do_upload('produk_gambar')) {

                // ALERT
                $alertStatus  = "failed";
                $alertMessage = $this->upload->display_errors();
                getAlert($alertStatus, $alertMessage);
            } else {
                $dat  = $this->upload->data();
                $data['produk_gambar']      = $dat['file_name'];
            }
        } else {
            $data['produk_gambar']      = '';
        }
        $data['produk_id']    = "";
        $data['produk_nama'] = $this->input->post('produk_nama');
        $data['produk_harga'] = $this->input->post('produk_harga');
        $data['produk_stok'] = $this->input->post('produk_stok');
        $data['supplier_id'] = $this->input->post('supplier_id');
        $data['produk_ket'] = $this->input->post('produk_ket');
        $data['kategori_id'] = $this->input->post('kategori_id');
        $this->m_produk->create($data);

        // ALERT
        $alertStatus  = "success";
        $alertMessage = "Berhasil menambah data produk dengan name = " . $data['produk_nama'];
        getAlert($alertStatus, $alertMessage);


        redirect('admin/produk');
    }


    public function update()
    {
        csrfValidate();

        // POST
        if ($_FILES['produk_gambar']['name'] != "") {
            $filename_1              = "produk-" . date('YmdHis');
            $config['upload_path']   = "./upload/produk/";
            $config['allowed_types'] = "jpg|jpeg|png|jfif|JPG|JPEG|PNG|JFIF";
            $config['overwrite']     = "true";
            $config['max_size']      = "0";
            $config['max_width']     = "10000";
            $config['max_height']    = "10000";
            $config['file_name']     = '' . $filename_1;
            $this->upload->initialize($config);
            if (!$this->upload->do_upload('produk_gambar')) {

                // ALERT
                $alertStatus  = "failed";
                $alertMessage = $this->upload->display_errors();
                getAlert($alertStatus, $alertMessage);
            } else {
                $dat  = $this->upload->data();
                $data['produk_gambar']      = $dat['file_name'];
            }
        }
        $data['produk_id']    = $this->input->post('produk_id');
        $data['produk_nama'] = $this->input->post('produk_nama');
        $data['produk_ket'] = $this->input->post('produk_ket');
        $data['produk_harga'] = $this->input->post('produk_harga');
        $data['produk_stok'] = $this->input->post('produk_stok');
        $data['supplier_id'] = $this->input->post('supplier_id');
        $data['kategori_id'] = $this->input->post('kategori_id');
        $this->m_produk->update($data);

        // ALERT
        $alertStatus  = "success";
        $alertMessage = "Berhasil mengubah data produk dengan ID = " . $data['produk_id'];
        getAlert($alertStatus, $alertMessage);

        redirect('admin/produk');
    }

    public function delete()
    {
        csrfValidate();
        // POST
        $this->m_produk->delete($this->input->post('produk_id'));

        // ALERT
        $alertStatus  = "failed";
        $alertMessage = "Menghapus data produk : " . $this->input->post('produk_id');
        getAlert($alertStatus, $alertMessage);

        redirect('admin/produk');
    }
}
