<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Montir_m extends CI_Model{ 
  public function __construct(){
  $this->load->database();
}

function tampil_montir(){ 
    $hasil = $this->db->get('montir');
    return $hasil->result();
    }
}
?>