<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Supir_model extends CI_Model {

    public $table = 'tb_supir';
    public $id = 'ID_SUPIR';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    function json() {
        $this->datatables->select('ID_SUPIR,NAMA,TELP,ALAMAT,STATUS');
        $this->datatables->from('tb_supir');
        //add this line for join
        //$this->datatables->join('table2', 'tb_users.field = table2.field');
        $this->datatables->add_column('action', anchor(site_url('supir/read/$1'),'Read')." | ".anchor(site_url('supir/update/$1'),'Update')." | ".anchor(site_url('supir/delete/$1'),'Delete','onclick="javasciprt: return confirm(\'Are You Sure ?\')"'), 'ID_SUPIR');
        return $this->datatables->generate();
    }

    function get_all() {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    function get_by_id($id) {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }

    function update($id, $data) {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    function delete($id) {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

    function insert($data) {
        $insert = $this->db->insert($this->table, $data);
    }
}
?>