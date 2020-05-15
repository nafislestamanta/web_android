<?php defined('BASEPATH') OR exit('No direct script access allowed');

class myprofile extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    
    
    //$this->cekLogin();

    // Load model users
    $this->load->model('model_users');
  }

  public function index()
  {
    // $query = $this->model_users->update($userId, $data);
        $this->load->view('template/header');
        $this->load->view('profil/profil');
        $this->load->view('template/footer');

    // Jika form profile di submit jalankan blok kode ini
    if ($this->input->post('submit-information')) {
      
      // Jika avatar diganti jalankan blok kode ini
      if (!empty($_FILES['avatar']['name'])) {
        // Konfigurasi library upload codeigniter
        $config['upload_path'] = './assets/images/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = 2000;
        $config['file_name'] = $this->session->userdata('username').'_'.date('YmdHis');

        // Load library upload
        $this->load->library('upload', $config);
        
        // Jika terdapat error pada proses upload maka exit
        if (!$this->upload->do_upload('avatar')) {
            exit($this->upload->display_errors());
        }

        $data['avatar'] = $this->upload->data()['file_name'];
      }

      
      $this->form_validation->set_rules('nama', 'Nama', 'required');

      $this->form_validation->set_rules('alamat', 'Alamat', 'required');

      $this->form_validation->set_rules('telp', 'Telepon', 'required');

      $this->form_validation->set_rules('email', 'Email', 'required');

      $this->form_validation->set_message('required', '%s tidak boleh kosong!');

     
			if ($this->form_validation->run() === TRUE) {

        $data['nama'] = $this->input->post('nama');
        $data['alamat'] = $this->input->post('alamat');
        $data['telp'] = $this->input->post('telp');
        //$data['email'] = $this->input->post('email');

        
        $userId = $this->session->userdata('id');

        // Jalankan function update pada model_users
        $query = $this->model_users->update($userId, $data);

        // cek jika query berhasil
        if ($query) {

          // Set success message
          $message = array('status' => true, 'message' => 'Berhasil memperbarui profile');
          
          // Update session baru
          $this->session->set_userdata($data);

        } else {

          // Set error message
          $message = array('status' => false, 'message' => 'Gagal memperbarui profile');

        }

        // simpan message sebagai session
        $this->session->set_flashdata('message_profile', $message);

        // refresh page
        redirect('profile', 'refresh');
			} 
    }

    // Jika form password di submit jalankan blok kode ini
    if ($this->input->post('submit-password')) {

      // Mengatur validasi data password_lama,
      // # required = tidak boleh kosong
      // # callback_cekPasswordLama = menjalankan function cekAkun()
      $this->form_validation->set_rules('password_lama', 'Password Lama', 'required|callback_cekPasswordLama');

      // Mengatur validasi data password_baru,
      // # required = tidak boleh kosong
      // # min_length[5] = password_baru harus terdiri dari minimal 5 karakter
      $this->form_validation->set_rules('password_baru', 'Password Baru', 'required|min_length[5]');

      // Mengatur validasi data konfirmasi_password,
      // # required = tidak boleh kosong
      // # matches = nilai konfirmasi_password harus sama dengan password_baru
      $this->form_validation->set_rules('konfirmasi_password', 'Konfirmasi Password', 'required|matches[password_baru]');

      // Mengatur pesan error validasi data
      $this->form_validation->set_message('required', '%s tidak boleh kosong!');
      $this->form_validation->set_message('min_length', '{field} minimal {param} karakter.');
      $this->form_validation->set_message('matches', '{field} tidak sama dengan {param}.');

      // Jalankan validasi jika semuanya benar maka lanjutkan
			if ($this->form_validation->run() === TRUE) {

        $data = array(
          'password' => password_hash($this->input->post('konfirmasi_password'), PASSWORD_DEFAULT)
        );

        // Ambil user ID
        $userId = $this->session->userdata('id');

        // Jalankan function update pada model_users
        // $query = $this->model_users->update($userId, $data);

        // $this->load->view('profile/profile');

        // cek jika query berhasil
        if ($query) {

          // Logout user
          redirect('auth/logout');

        } else {

          // Set error message
          $message = array('status' => false, 'message' => 'Gagal memperbarui profile');

        }

        // simpan message sebagai session
        $this->session->set_flashdata('message_profile', $message);

        // refresh page
        redirect('profile', 'refresh');
			}

    }

  }

  public function update() 
    {
    //     $row = $this->Model_users->get_by_id($id);

    //     if ($row) {
    //         $data = array(
    //             'button' => 'Update',
    //             'action' => site_url('myprofile/update_action'),
		// 'ID_USER' => set_value('ID_USER', $row->ID_USER),
		// 'USERNAME' => set_value('USERNAME', $row->USERNAME),
		// 'NAME' => set_value('NAME', $row->NAME),
		// 'EMAIL' => set_value('EMAIL', $row->EMAIL),
		// 'NO_TELP' => set_value('NO_TELP', $row->NO_TELP),
		// 'JENIS_KELAMIN' => set_value('JENIS_KELAMIN', $row->JENIS_KELAMIN),
		// 'ALAMAT' => set_value('ALAMAT', $row->ALAMAT),
		// 'PASSWORD' => set_value('PASSWORD', $row->PASSWORD),
		// 'PHOTO' => set_value('PHOTO', $row->PHOTO),
		// // 'ACTIVATED' => set_value('ACTIVATED', $row->ACTIVATED),
		// // 'CREATED' => set_value('CREATED', $row->CREATED),
		// 'GROUP_USER' => set_value('GROUP_USER', $row->GROUP_USER),
		// // 'LAST_LOGIN' => set_value('LAST_LOGIN', $row->LAST_LOGIN),
		// // 'LAST_UPDATE' => set_value('LAST_UPDATE', $row->LAST_UPDATE),
	  //   );
            $this->load->view('template/header');
            $this->load->view('profil/edit_profil');
            $this->load->view('template/footer');
    //     } else {
    //         $this->session->set_flashdata('message', 'Record Not Found');
    //         redirect(site_url('profil'));
    //     }
    // }
    }

  public function cekPasswordLama()
  {
    // Ambil userId dari session
    $userId = $this->session->userdata('id');
    
    // Ambil data password_lama dari POST
    $password = $this->input->post('password_lama');

    // Jalankan function cekPasswordLama pada model_users
    $query = $this->model_users->cekPasswordLama($userId, $password);

    // Jika query gagal maka return false
    if (!$query) {
      
      // Mengatur pesan error validasi data
      $this->form_validation->set_message('cekPasswordLama', 'Password lama tidak sesuai!');
      return false;
    }

    return true;
  }

}