<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Supplier extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_supplier');
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
        $this->session->unset_userdata('sess_search_supplier');

        // PAGINATION
        $baseUrl    = base_url() . "admin/supplier/index/";
        $totalRows  = count((array) $this->m_supplier->read('', '', ''));
        $perPage    = $this->session->userdata('sess_rowpage');
        $uriSegment = 4;
        $paging     = generatePagination($baseUrl, $totalRows, $perPage, $uriSegment);
        $page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;

        $data['numbers']    = $paging['numbers'];
        $data['links']      = $paging['links'];
        $data['total_data'] = $totalRows;

        //DATA
        $data['setting'] = getSetting();
        $data['title']   = 'supplier';
        $data['supplier']  = $this->m_supplier->read($perPage, $page, '');

        // TEMPLATE
        $view         = "_backend/supplier";
        $viewCategory = "all";
        renderTemplate($data, $view, $viewCategory);
    }


    public function search()
    {
        if ($this->input->post('key')) {
            $data['search'] = $this->input->post('key');
            $this->session->set_userdata('sess_search_supplier', $data['search']);
        } else {
            $data['search'] = $this->session->userdata('sess_search_supplier');
        }

        // PAGINATION
        $baseUrl    = base_url() . "admin/supplier/search/" . $data['search'] . "/";
        $totalRows  = count((array)$this->m_supplier->read('', '', $data['search']));
        $perPage    = $this->session->userdata('sess_rowpage');
        $uriSegment = 5;
        $paging     = generatePagination($baseUrl, $totalRows, $perPage, $uriSegment);
        $page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;

        $data['numbers']    = $paging['numbers'];
        $data['links']      = $paging['links'];
        $data['total_data'] = $totalRows;

        //DATA
        $data['setting'] = getSetting();
        $data['title']   = 'supplier';
        $data['supplier']  = $this->m_supplier->read($perPage, $page, $data['search']);

        // TEMPLATE
        $view         = "_backend/supplier";
        $viewCategory = "all";
        renderTemplate($data, $view, $viewCategory);
    }


    public function create()
    {
        csrfValidate();

        $data['supplier_id']   = $this->input->post('supplier_id');
        $data['supplier_nama'] = $this->input->post('supplier_nama');
        $this->m_supplier->create($data);

        // ALERT
        $alertStatus  = "success";
        $alertMessage = "Berhasil menambah data supplier dengan name = " . $data['supplier_nama'];
        getAlert($alertStatus, $alertMessage);


        redirect('admin/supplier');
    }


    public function update()
    {
        csrfValidate();

        // POST
        $data['supplier_id'] = $this->input->post('supplier_id');
        $data['supplier_nama'] = $this->input->post('supplier_nama');
        $this->m_supplier->update($data);

        // ALERT
        $alertStatus  = "success";
        $alertMessage = "Berhasil mengubah data supplier dengan ID = " . $data['supplier_id'];
        getAlert($alertStatus, $alertMessage);




        redirect('admin/supplier');
    }

    public function delete()
    {
        csrfValidate();
        // POST
        $this->m_supplier->delete($this->input->post('supplier_id'));

        // ALERT
        $alertStatus  = "failed";
        $alertMessage = "Menghapus data supplier : " . $this->input->post('supplier_id');
        getAlert($alertStatus, $alertMessage);

        redirect('admin/supplier');
    }
}
