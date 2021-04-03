<?php
class search_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
    function get_all_result($num, $offset,$key, $catid){
        if($catid !=0){
            $ar_cat = $this->get_arr_cat($catid);
            $this->db->where_in('catid',$ar_cat);
        }
        if($key != 'Nhập từ khóa tìm kiếm'){
        $this->db->like('productname',$key);    
        }
        return $this->db->get('shop_product',$num,$offset)->result();
    }
    
    
    function get_num_result($key, $catid){
        if($catid !=0){
            $ar_cat = $this->get_arr_cat($catid);
            $this->db->where_in('catid',$ar_cat);
        }
        if($key != 'Nhập từ khóa tìm kiếm'){
        $this->db->like('productname',$key);    
        }
        return $this->db->get('shop_product')->num_rows();
    }

    // Dua ra danh sach cac chuyen muc con theo mang
    function get_arr_cat($catid){
      $ar_id = array($catid);
      $this->db->where('parentid',$catid);
      $this->db->where('published',1);
      $list = $this->db->get('shop_cat')->result();
      if(count($list) > 0){
          foreach($list as $rs):
            array_push($ar_id,$rs->catid);
          endforeach;
      }
      return $ar_id;
    } 
    
    function get_list_attr_by_product($productid){
      $this->db->select('shop_attr.*, shop_type.*');
      $this->db->join('shop_type','shop_type.type_id = shop_attr.type_id');
      $this->db->where('shop_attr.productid',$productid);
      $this->db->order_by('shop_attr.type_id','ASC');
      return $this->db->get('shop_attr')->result();
    }
}