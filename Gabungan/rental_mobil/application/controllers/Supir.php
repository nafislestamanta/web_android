<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Supir extends CI_Controller{

    function __construct() {
        parent::__construct();
        $this->load->model('Supir_model');
        $this->load->library('form_validation');
    }
    
    public function index() {
        $supir = $this->Supir_model->get_all();
        $data = array(
            'supir_data' => $supir,
        );

        $this->load->view('template/header');
        $this->load->view('supir/tb_supir_list', $data);
        $this->load->view('template/footer');
    }

    public function json() {
        header('Content-Type: application/json');
        echo $this->Supir_model->json();
    }

    public function create() {
        $data = array(
            'button' => 'Create',
            'action' => site_url('supir/create_action'),
            'ID_supir' => set_value('ID_supir'),
            'Nama' => set_value('Nama'),
            'Telp' => set_value('Telp'),
            'Alamat' => set_value('Alamat'),
            'Status' => set_value('Status'),
        );
        $this->load->view('template/header');
        $this->load->view('supir/tb_supir_form', $data);
        $this->load->view('template/footer');
    }

    public function create_action() {
        $this->rules();
        
        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
                'Nama' => $this->input->post('Nama', TRUE),
                'Telp' => $this->input->post('Telp', TRUE),
                'Alamat' => $this->input->post('Alamat', TRUE),
                'Status' => $this->input->post('Status', TRUE),
            );

            $this->Supir_model->insert($data);
            redirect(site_url('supir'));
        }
    }

    public function read($id) {
        $row = $this->Supir_model->get_by_id($id);
        $data = array(
            'ID_supir' => $row->ID_SUPIR,
            'Nama' => $row->NAMA,
            'Telp' => $row->TELP,
            'Alamat' => $row->ALAMAT,
            'Status' => $row->STATUS,
        );

        $this->load->view('template/header');
        $this->load->view('supir/tb_supir_read', $data);
        $this->load->view('template/footer');
    }

    public function update($id) {
        $row = $this->Supir_model->get_by_id($id);
        $data = array(
            'button' => 'Update',
            'action' => site_url('supir/update_action'),
            'ID_supir' => set_value('ID_supir', $row->ID_SUPIR),
            'Nama' => set_value('Nama', $row->NAMA),
            'Telp' => set_value('Telp', $row->TELP),
            'Alamat' => set_value('Alamat', $row->ALAMAT),
            'Status' => set_value('Status', $row->STATUS),
        );
            $this->load->view('template/header');
            $this->load->view('supir/tb_supir_form', $data);
            $this->load->view('template/footer');
    }

    public function update_action() {
        $this->rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('ID_supir', TRUE));
        } else {
        $data = array(
            'Nama' => $this->input->post('Nama', TRUE),
            'Telp' => $this->input->post('Telp', TRUE),
            'Alamat' => $this->input->post('Alamat', TRUE),
            'Status' => $this->input->post('Status', TRUE),
        );
            $this->Supir_model->update($this->input->post('ID_supir', TRUE), $data);
            redirect(site_url('supir'));
    }
}

    public function delete($id) {
        $row = $this->Supir_model->get_by_id($id);
        $this->Supir_model->delete($id);
        redirect(site_url('supir'));
    }

    public function rules() {
        $this->form_validation->set_rules('Nama', 'Nama', 'trim|required');
        $this->form_validation->set_rules('Telp', 'Telp', 'trim|required');
        $this->form_validation->set_rules('Alamat', 'Alamat', 'trim|required');
        $this->form_validation->set_rules('Status', 'Status', 'trim|required');
        
        $this->form_validation->set_rules('ID_supir', 'ID_supir', 'trim');
        $this->form_validation->set_error_delimiters('<span class="text-danger">', '</span');
    }
}
?>