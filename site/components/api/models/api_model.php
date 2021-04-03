<?php
class api_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
    function loadRating($id){
      $this->db->where('productid',$id);
      $query = $this->db->get('shop_rating');
      $item = $query->row();
      $rating = (@round($item->value / $item->counter,1)) * 20;
      return $rating;
    } 
}
