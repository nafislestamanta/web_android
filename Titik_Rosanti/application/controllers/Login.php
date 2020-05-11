<?php  

/**
* 
*/
class login extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model("m_user");
		$this->load->library('session');
	}

	function index(){
		// if (!empty($this->session->userdata("USERNAME")))
		// 	redirect(base_url("mobil"));

		$this->load->view('v_login');
	}

	function login_proses(){
		$username=$this->input->post("username");
		$password=md5($this->input->post("password"));
		$user=$this->m_user->login($username,$password);
		
		if ($user) {
			foreach($user as $row);
			$this->session->set_userdata('USERNAME', $row->USERNAME);
			$this->session->set_userdata('GROUP_USER', $row->GROUP_USER);
			
			if($this->session->userdata('GROUP_USER')=="1"){
				redirect(site_url("mobil"));
			}
			elseif($this->session->userdata('GROUP_USER')=="2"){
				$data['pesan']="Username atau Password tidak sesuai.";
				$this->load->view('v_login',$data);
			}
			
		}else{
		$data['pesan']="Username atau Password tidak sesuai.";
		$this->load->view('v_login',$data);
	}
	}
	function logout(){
		$array_items = array('ID_USER','USERNAME','NAME','EMAIL','NO_TELP','JENIS_KELAMIN','ALAMAT','ACTIVATED','CREATED', 'GROUP_USER','LAST_LOGIN','LAST_UPDATE','PASSWORD','PHOTO');
		$this->session->unset_userdata($array_items);
		redirect($this->index());
	}
}

?>