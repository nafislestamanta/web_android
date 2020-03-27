<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function dashboard()
	{
		 $this->load->view('navigasi/header');
		 $this->load->view('navigasi/sidebar');
		 $this->load->view('dashboard');
		 $this->load->view('navigasi/footer');
	}

	function montir()
    {
        $this->load->view('navigasi/header');
		$this->load->view('navigasi/sidebar');
		$this->load->view('menu/montir');
	    $this->load->view('navigasi/footer');
    }
}

    