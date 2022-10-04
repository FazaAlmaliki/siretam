<?php defined('BASEPATH') or exit('No direct script access allowed');
class Auth extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('m_auth');
		$this->load->model('m_user');
	}


	public function index()
	{
		// check session data
		if ($this->session->userdata('user_id')) {
			// ALERT
			$alertStatus  = 'success';
			$alertMessage = 'Selamat Datang, ' . $this->session->userdata('user_fullname');
			getAlert($alertStatus, $alertMessage);
			redirect('admin/dashboard');
		} else {
			// DATA
			$data['setting'] = getSetting();

			// TEMPLATE
			$view         = "_backend/auth/login";
			$viewCategory = "single";
			renderTemplate($data, $view, $viewCategory);
		}
	}

	public function daftar()
	{
		// DATA
		$data['setting'] = getSetting();

		// TEMPLATE
		$view         = "_backend/auth/daftar";
		$viewCategory = "single";
		renderTemplate($data, $view, $viewCategory);
	}

	public function tambah_akun()
	{
		csrfValidate();
		// POST
		if ($this->input->post('password') == $this->input->post('konfirmasi_password')) {
			$result           = $this->m_auth->validate(str_replace(' ', '', $this->db->escape_str($this->input->post('username'))));
			// print_r($result);
			// die;
			if (!$result) {
				$data['user_id']        = '';
				$data['user_name']      = $this->input->post('username');
				$data['user_password']  = password_hash($this->input->post('password'), PASSWORD_BCRYPT);
				$data['user_fullname']  = $this->input->post('user_fullname');
				$data['user_email']     = '';
				$data['user_lastlogin'] = '';
				$data['user_photo']     = '';
				$data['group_id']       = 2;
				$data['createtime']     = date('Y-m-d H:i:s');
				$this->m_user->create($data);

				// ALERT
				$alertStatus  = "success";
				$alertMessage = "Berhasil menambah data user " . $data['user_fullname'];
				getAlert($alertStatus, $alertMessage);
			} else {
				// ALERT
				$alertStatus  = "failed";
				$alertMessage = "Gagal membuat akun, username telah digunakan ";
				getAlert($alertStatus, $alertMessage);
			}
		} else {
			// ALERT
			$alertStatus  = "failed";
			$alertMessage = "Gagal membuat akun, Password dan konfirmasi password tidak sama ";
			getAlert($alertStatus, $alertMessage);
		}

		redirect('auth');
	}


	public function validate()
	{
		csrfValidate();
		if ($_POST) {
			$result           = $this->m_auth->validate(str_replace(' ', '', $this->db->escape_str($this->input->post('username'))));
			if (!!($result)) {
				if (password_verify($this->input->post('password'), $result[0]->user_password)) {
					// SESSION DATA
					$data = array(
						'user_id'         => $result[0]->user_id,
						'user_name'       => $result[0]->user_name,
						'user_fullname'   => $result[0]->user_fullname,
						'user_photo'      => $result[0]->user_photo,
						'user_email'      => $result[0]->user_email,
						'user_group'      => $result[0]->group_id,
						'user_createtime' => $result[0]->createtime,
						'sess_rowpage'    => 10,
						'IsAuthorized'    => true
					);
					$this->session->set_userdata($data);

					// LOG
					$logMessage = $data['user_fullname'] . " melakukan login ke sistem";
					createLog($logMessage);
					if ($result[0]->group_id == 1) {
						redirect('admin/dashboard');
					} else {
						redirect('home');
					}
				} else {
					// ALERT
					$alertStatus  = 'failed';
					$alertMessage = 'Username atau Password salah';
					getAlert($alertStatus, $alertMessage);
					redirect('auth');
				}
			} else {
				// ALERT
				$alertStatus  = 'failed';
				$alertMessage = 'Akun tidak valid';
				getAlert($alertStatus, $alertMessage);
				redirect('auth');
			}
		}
	}

	public function cek_login()
	{
		$alertStatus  = 'failed';
		$alertMessage = 'Silahkan login terlebih dahulu untuk melakukan transaksi.';
		getAlert($alertStatus, $alertMessage);
		redirect('auth');
	}


	public function logout()
	{
		$this->session->sess_destroy();
		redirect('home');
	}
}
