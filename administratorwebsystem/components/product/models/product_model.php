<?php
  class product_model extends CI_Model{
      function __construct(){
          parent::__construct();
      }
      //get all product
      function getAllProduct($arrID){
      	//query
      	$this->db->select('productid, productname, producturl, productimg, price, price_front, percent, published, icon_hot, icon_deal, icon_new');
         $this->db->where_in('productid',$arrID);
         $this->db->where('published',1);
         $query  = $this->db->get('shop_product');
         //check 
         if($query->num_rows()>0){
         	return $query->result();
         	 
         }else{
         	return array();
         }
                  
      }
      
     
  }

