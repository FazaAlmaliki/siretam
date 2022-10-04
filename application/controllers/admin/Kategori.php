<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Kategori extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_kategori');
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
        $this->session->unset_userdata('sess_search_kategori');

        // PAGINATION
        $baseUrl    = base_url() . "admin/kategori/index/";
        $totalRows  = count((array) $this->m_kategori->read('', '', ''));
        $perPage    = $this->session->userdata('sess_rowpage');
        $uriSegment = 4;
        $paging     = generatePagination($baseUrl, $totalRows, $perPage, $uriSegment);
        $page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;

        $data['numbers']    = $paging['numbers'];
        $data['links']      = $paging['links'];
        $data['total_data'] = $totalRows;

        //DATA
        $data['setting'] = getSetting();
        $data['title']   = 'kategori';
        $data['kategori']  = $this->m_kategori->read($perPage, $page, '');

        // TEMPLATE
        $view         = "_backend/kategori";
        $viewCategory = "all";
        renderTemplate($data, $view, $viewCategory);
    }


    public function search()
    {
        if ($this->input->post('key')) {
            $data['search'] = $this->input->post('key');
            $this->session->set_userdata('sess_search_kategori', $data['search']);
        } else {
            $data['search'] = $this->session->userdata('sess_search_kategori');
        }

        // PAGINATION
        $baseUrl    = base_url() . "admin/kategori/search/" . $data['search'] . "/";
        $totalRows  = count((array)$this->m_kategori->read('', '', $data['search']));
        $perPage    = $this->session->userdata('sess_rowpage');
        $uriSegment = 5;
        $paging     = generatePagination($baseUrl, $totalRows, $perPage, $uriSegment);
        $page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;

        $data['numbers']    = $paging['numbers'];
        $data['links']      = $paging['links'];
        $data['total_data'] = $totalRows;

        //DATA
        $data['setting'] = getSetting();
        $data['title']   = 'kategori';
        $data['kategori']  = $this->m_kategori->read($perPage, $page, $data['search']);

        // TEMPLATE
        $view         = "_backend/kategori";
        $viewCategory = "all";
        renderTemplate($data, $view, $viewCategory);
    }


    public function create()
    {
        csrfValidate();

        $data['kategori_id']   = $this->input->post('kategori_id');
        $data['kategori_nama'] = $this->input->post('kategori_nama');
        $data['kategori_deskripsi'] = $this->input->post('kategori_deskripsi');
        $this->m_kategori->create($data);

        // ALERT
        $alertStatus  = "success";
        $alertMessage = "Berhasil menambah data kategori dengan name = " . $data['kategori_nama'];
        getAlert($alertStatus, $alertMessage);


        redirect('admin/kategori');
    }


    public function update()
    {
        csrfValidate();

        // POST
        $data['kategori_id'] = $this->input->post('kategori_id');
        $data['kategori_nama'] = $this->input->post('kategori_nama');
        $data['kategori_deskripsi'] = $this->input->post('kategori_deskripsi');
        $this->m_kategori->update($data);

        // ALERT
        $alertStatus  = "success";
        $alertMessage = "Berhasil mengubah data kategori dengan ID = " . $data['kategori_id'];
        getAlert($alertStatus, $alertMessage);




        redirect('admin/kategori');
    }

    public function delete()
    {
        csrfValidate();
        // POST
        $this->m_kategori->delete($this->input->post('kategori_id'));

        // ALERT
        $alertStatus  = "failed";
        $alertMessage = "Menghapus data kategori : " . $this->input->post('kategori_id');
        getAlert($alertStatus, $alertMessage);

        redirect('admin/kategori');
    }
}
