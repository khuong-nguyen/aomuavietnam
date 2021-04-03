<?php
class account_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
    function get_num_user($city_id = 0){
        if($city_id != 0){
            $this->db->where('city_id',$city_id);
        }
        return $this->db->get('user')->num_rows();
    }
    
    function get_all_user($num, $offset, $city_id = 0, $field, $order){
        if($city_id != 0){
            $this->db->where('city_id',$city_id);
        }
        $this->db->order_by($field,$order);
        return $this->db->get('user',$num,$offset)->result();
    }
    
    function get_account_by_date($tungay,$denngay,$city_id){
        $begin = strtotime($tungay);
        $end = strtotime($denngay);
        if($begin > 0 && $end > 0){
        $this->db->where('create_time >=',$begin);
        $this->db->where('create_time <=',$end);
        }
        if($city_id !=0){
            $this->db->where('city_id',$city_id);
        }
        $this->db->order_by('create_time','asc');
        return $this->db->get('user')->result();
    }
}
