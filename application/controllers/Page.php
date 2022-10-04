<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Page extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('m_content');
		$this->load->model('m_transaksi');
		$this->load->model('m_kategori');
		$this->load->model('m_supplier');
		$this->load->model('m_produk');
		$this->load->model('m_user');
	}

	public function sewa()
	{
		csrfValidate();
		$data['transaksi_id']     = "transaksi-" . date('YmdHis');
		$data['transaksi_status'] = 'Pengecekkan Alat';
		$data['transaksi_status_ket'] = 'Pengecekkan Kondisi Alat dan Ketersediaan';
		$data['transaksi_rating'] = '';
		$data['transaksi_jam']    = $this->input->post('transaksi_jam');
		$data['transaksi_total_harga'] = $this->input->post('transaksi_total_harga');
		$data['produk_id']        = $this->input->post('produk_id');
		$data['createtime']       = date('Y-m-d H:i:s');
		$data['updatetime']       = date('Y-m-d H:i:s');
		$data['user_id']		  = $this->session->userdata('user_id');
		$this->m_transaksi->create($data);

		$datab['produk_id']    = $this->input->post('produk_id');;
		$datab['produk_stok'] = $this->input->post('produk_stok') - 1;
		$this->m_produk->update($datab);

		// ALERT
		$alertStatus  = "success";
		$alertMessage = "Berhasil menambah data transaksi dengan id transaksi = " . $data['transaksi_id'];
		getAlert($alertStatus, $alertMessage);

		redirect('page/produk');
	}

	public function rating()
	{
		csrfValidate();
		$data['transaksi_id']     = $this->input->post('transaksi_id');
		$data['transaksi_status'] = 'Pengembalian Alat';
		$data['transaksi_status_ket'] = 'Alat Menuju Tempat Penyewaan';
		$data['transaksi_rating'] = $this->input->post('transaksi_rating');

		$this->m_transaksi->update($data);

		// ALERT
		$alertStatus  = "success";
		$alertMessage = "Berhasil memberika rating dengan id transaksi " . $data['transaksi_id'];
		getAlert($alertStatus, $alertMessage);

		redirect('page/riwayat');
	}

	public function tentang()
	{
		// DATA
		$data['setting']             = getSetting();
		$data['content']             = $this->m_content->get('tentang');

		// TEMPLATE
		$view         = "_frontend/profil/tentang";
		$viewCategory = "all";
		renderTemplateFront($data, $view, $viewCategory);
	}

	// RIWAYAT
	public function riwayat()
	{

		$this->session->unset_userdata('sess_search_riwayat');

		// PAGINATION
		$baseUrl    = base_url() . "page/riwayat/" . $this->uri->segment(3);
		$totalRows  = count((array) $this->m_transaksi->read('', '', '', '', $this->session->userdata('user_id')));
		$perPage    = 10;
		$uriSegment = 4;
		$paging     = generatePaginationBlog($baseUrl, $totalRows, $perPage, $uriSegment);
		$page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;

		$data['numbers']    = $paging['numbers'];
		$data['links']      = $paging['links'];
		$data['total_data'] = $totalRows;

		// DATA
		$data['setting']                  = getSetting();
		$data['transaksi']               = $this->m_transaksi->read($perPage, $page, '', '', $this->session->userdata('user_id'));

		// TEMPLATE
		$view         = "_frontend/page/riwayat";
		$viewCategory = "all";
		renderTemplateFront($data, $view, $viewCategory);
	}


	public function riwayat_search()
	{

		if ($this->input->post('key')) {
			$data['search'] = $this->input->post('key');
			$this->session->set_userdata('sess_search_regulation', $data['search']);
		} else {
			$data['search'] = $this->session->userdata('sess_search_regulation');
		}

		// PAGINATION
		$baseUrl    = base_url() . "page/regulation_search/" . $this->uri->segment(3) . "/" . $data['search'] . "/";
		$totalRows  = count((array)$this->m_regulation->read('', '', $data['search'], $this->uri->segment(3)));
		$perPage    = 10;
		$uriSegment = 5;
		$paging     = generatePagination($baseUrl, $totalRows, $perPage, $uriSegment);
		$page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;

		$data['numbers']    = $paging['numbers'];
		$data['links']      = $paging['links'];
		$data['total_data'] = $totalRows;

		//DATA
		$data['setting']                  = getSetting();

		// TEMPLATE
		$view         = "_frontend/page/regulation";
		$viewCategory = "all";
		renderTemplateFront($data, $view, $viewCategory);
	}



	// produk
	public function produk()
	{
		$this->session->unset_userdata('sess_search_produk_front');

		// PAGINATION
		$uri3 = $this->uri->segment(3) == '0' ? '' : $this->uri->segment(3);
		$baseUrl    = base_url() . "page/produk/" . $this->uri->segment(3) . '/';
		$totalRows  = count((array) $this->m_produk->read('', '', '', $uri3, ''));
		$perPage    = 6;
		$uriSegment = 4;
		$paging     = generatePaginationBlog($baseUrl, $totalRows, $perPage, $uriSegment);
		$page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;

		$data['numbers']    = $paging['numbers'];
		$data['links']      = $paging['links'];
		$data['total_data'] = $totalRows;

		// DATA
		$data['setting']             = getSetting();
		$data['transaksi']           = $this->m_transaksi->read('', '', '', '', '');
		$data['cek_transaksi']           = $this->m_transaksi->read('', '', '', '', $this->session->userdata('user_id'));
		$data['produk']              = $this->m_produk->read($perPage, $page, '', $uri3, '');
		$data['supplier']            = $this->m_supplier->read('', '', '');
		$data['recent']              = $this->m_produk->read(4, 0, '', '', '');
		$data['kategori']       = $this->m_kategori->read('', '', '');
		$data['kategori_nama']  = $this->m_kategori->get($uri3);

		// TEMPLATE
		$view         = "_frontend/page/produk";
		$viewCategory = "all";
		renderTemplateFront($data, $view, $viewCategory);
	}

	// produk
	public function rekomendasi()
	{
		$this->session->unset_userdata('sess_search_produk_front');

		// PAGINATION
		$uri3 = $this->uri->segment(3) == '0' ? '' : $this->uri->segment(3);
		$baseUrl    = base_url() . "page/produk/" . $this->uri->segment(3) . '/';
		$totalRows  = count((array) $this->m_produk->read('', '', '', $uri3, ''));
		$perPage    = 6;
		$uriSegment = 4;
		$paging     = generatePaginationBlog($baseUrl, $totalRows, $perPage, $uriSegment);
		$page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;

		$data['numbers']    = $paging['numbers'];
		$data['links']      = $paging['links'];
		$data['total_data'] = $totalRows;

		// DATA
		$data['setting']             = getSetting();
		$data['transaksi']           = $this->m_transaksi->read('', '', '', '', '');
		$data['produk']              = $this->m_produk->read($perPage, $page, '', $uri3, '');
		$data['supplier']            = $this->m_supplier->read('', '', '');
		$data['recent']              = $this->m_produk->read(4, 0, '', '', '');
		$data['kategori']       = $this->m_kategori->read('', '', '');
		$data['kategori_nama']  = $this->m_kategori->get($uri3);


		// Penerapan Algoritma
		$matrix = array();
		$transaksi              = $this->m_transaksi->read('', '', '', '', '');
		$produk              = $this->m_produk->read('', '', '', $uri3, '');
		$tampung_produk = [];
		foreach ($produk as $key) {
			$ambil_rating = 0;
			$jlm_transaksi = 0;
			foreach ($transaksi as $value) {
				if ($key->produk_id == $value->produk_id) {
					$ambil_rating += $value->transaksi_rating;
					$jlm_transaksi++;
				}
			}
			$tampung_produk[] = array(
				'produk_id' => $key->produk_id,
				'kategori_id' => $key->kategori_id,
				'supplier_id' => $key->supplier_id,
				'produk_nama' => $key->produk_nama,
				'produk_harga' => $key->produk_harga,
				'produk_stok' => $key->produk_stok,
				'produk_gambar' => $key->produk_gambar,
				'kategori_nama' => $key->kategori_nama,
				'kategori_deskripsi' => $key->kategori_deskripsi,
				'supplier_nama' => $key->supplier_nama,
				'rating' => $ambil_rating == 0 ? 0 : $ambil_rating / $jlm_transaksi,
			);
		}


		foreach ($transaksi as $key) {
			$user       = $this->m_user->penyewa($key->user_id);
			$matrix[$user[0]->user_name][$key->produk_nama] = $key->transaksi_rating;
		}
		$data['rekomendasi'] = $this->getRecommendation($matrix, $this->session->userdata('user_name'));
		// echo '<pre>';
		// print_r($recommendation);
		// echo '</pre>';
		// die;

		// TEMPLATE
		$view         = "_frontend/page/rekomendasi";
		$viewCategory = "all";
		renderTemplateFront($data, $view, $viewCategory);
	}

	public function produk_search()
	{

		if ($this->input->post('key')) {
			$data['search'] = $this->input->post('key');
			$this->session->set_userdata('sess_search_produk_front', $data['search']);
		} else {
			$data['search'] = $this->session->userdata('sess_search_produk_front');
		}

		// PAGINATION
		$uri3 = $this->uri->segment(3) == '0' ? '' : $this->uri->segment(3);
		$baseUrl    = base_url() . "page/produk/" . $this->uri->segment(3) . "/" . $data['search'] . "/";
		$totalRows  = count((array)$this->m_produk->read('', '', $data['search'], $uri3, ''));
		$perPage    = 6;
		$uriSegment = 5;
		$paging     = generatePaginationBlog($baseUrl, $totalRows, $perPage, $uriSegment);
		$page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;

		$data['numbers']    = $paging['numbers'];
		$data['links']      = $paging['links'];
		$data['total_data'] = $totalRows;

		//DATA
		$data['setting']             = getSetting();
		$data['produk']                = $this->m_produk->read($perPage, $page, $data['search'], $uri3, '');
		$data['supplier']               = $this->m_supplier->read('', '', '');
		$data['recent']              = $this->m_produk->read(4, 0, '', '', '');
		$data['kategori']       = $this->m_kategori->read('', '', '');
		$data['kategori_nama']  = $this->m_kategori->get($uri3);
		$data['transaksi']           = $this->m_transaksi->read('', '', '', '', '');
		$data['cek_transaksi']           = $this->m_transaksi->read('', '', '', '', $this->session->userdata('user_id'));

		// TEMPLATE
		$view         = "_frontend/page/produk";
		$viewCategory = "all";
		renderTemplateFront($data, $view, $viewCategory);
	}

	public function produk_detail()
	{
		// DATA
		$uri3 = $this->uri->segment(3) == '0' ? '' : $this->uri->segment(3);
		$data['setting']             = getSetting();
		$data['produk']                = $this->m_produk->get($this->uri->segment(3));
		$data['supplier']               = $this->m_supplier->read('', '', '');
		$data['recent']              = $this->m_produk->read(4, 0, '', '', '');
		$data['kategori']       = $this->m_kategori->read('', '', '');
		$data['kategori_nama']  = $this->m_kategori->get($uri3);
		$data['transaksi']           = $this->m_transaksi->read('', '', '', '', '');
		$data['cek_transaksi']           = $this->m_transaksi->read('', '', '', '', $this->session->userdata('user_id'));

		// TEMPLATE
		$view         = "_frontend/page/produk_detail";
		$viewCategory = "all";
		renderTemplateFront($data, $view, $viewCategory);
	}

	public function tracking()
	{
		// DATA
		$data['setting']             = getSetting();
		$data['tracking']            = "";

		// TEMPLATE
		$view         = "_frontend/page/contact_tracking";
		$viewCategory = "all";
		renderTemplateFront($data, $view, $viewCategory);
	}

	public function tracking_search()
	{
		// DATA
		$data['setting']             = getSetting();
		$data['tracking']            = $this->m_message->getByCode($this->input->post('key'));

		// TEMPLATE
		$view         = "_frontend/page/contact_tracking";
		$viewCategory = "all";
		renderTemplateFront($data, $view, $viewCategory);
	}

	// -------------------------------- Algoritma --------------------------------- //

	function similarity_distance($matrix, $person1, $person2)
	{
		$similar = array();
		$sum = 0;

		foreach ($matrix[$person1] as $key => $value) {
			if (array_key_exists($key, $matrix[$person2])) {
				$similar[$key] = 1;
			}
		}
		if ($similar == 0) {
			return 0;
		}
		foreach ($matrix[$person1] as $key => $value) {
			if (array_key_exists($key, $matrix[$person2])) {
				$sum = $sum + pow($value - $matrix[$person2][$key], 2);
			}
		}
		return 1 / (1 + sqrt($sum));
	}

	function getRecommendation($matrix, $person)
	{
		$total = array();
		$simsum = array();
		$ranks = array();

		foreach ($matrix as $otherperson => $value) {
			if ($otherperson != $person) {
				$sim = $this->similarity_distance($matrix, $person, $otherperson);

				foreach ($matrix[$otherperson] as $key => $value) {
					if (!array_key_exists($key, $matrix[$person])) {
						if (!array_key_exists($key, $total)) {
							$total[$key] = 0;
						}
						$total[$key] += $matrix[$otherperson][$key] * $sim;

						if (!array_key_exists($key, $simsum)) {
							$simsum[$key] = 0;
						}
						$simsum[$key] += $sim;
					}
				}
			}
		}

		foreach ($total as $key => $value) {
			$ranks[$key] = $value / $simsum[$key];
		}
		array_multisort($ranks, SORT_DESC);
		return $ranks;
	}
}
