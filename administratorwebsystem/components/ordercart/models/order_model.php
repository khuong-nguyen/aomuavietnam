<?php
class order_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
    function get_all_order($num, $offset, $field,$order){
        if($field !='' && $order !=''){
            $this->db->order_by($field,$order);
        }else{
            $this->db->order_by('order_id','desc');
        }
        return $this->db->get('shop_cart',$num,$offset)->result();
    }
    
    function get_num_order(){
        return $this->db->get('shop_cart')->num_rows();
    }    
    
    function get_order_detail($order_id){
        $this->db->select('shop_product.*, shop_cart_detail.*');
        $this->db->join('shop_product','shop_product.productid = shop_cart_detail.productid');
        $this->db->where('shop_cart_detail.cartid',$order_id);
        return $this->db->get('shop_cart_detail')->result();
    }
}
