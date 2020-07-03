<?php  

/**
* 
*/
class M_user extends CI_Model
{
	function login($username,$password){
		$this->db->select('USERNAME,PASSWORD,GROUP_USER');
		$this->db->from("tb_users");
		$this->db->where("USERNAME",$username);
		$this->db->where("PASSWORD",$password);
		$this->db->limit(1);

		$query = $this->db->get();

		if($query->num_rows()==1){
			return $query->result();
		}else{
			return false;
		}
		// return $this->db->get("tb_users")->row();
	}

}
