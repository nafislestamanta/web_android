<?php

class Data extends CI_Controller {

    public function index() {
        $this->load->view('navigasi/header');
		$this->load->view('navigasi/sidebar');
        $this->load->view("data");
        $this->load->view("navigasi/footer");

    }
}
?>