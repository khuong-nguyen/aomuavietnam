<?php
class products_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
   
    // Get tin tuc lien quan
    function getListOrther($catID, $id){
        $this->db->where('catid',$catID);       
        $this->db->where('productid !=',$id);       
        $this->db->limit(10);
        $this->db->order_by('date_time','DESC');
        return $this->db->get('shop_product')->result();
    }
    
 	//Lay danh sach hinh anh cua san pham
    function get_list_img_by_product($productid){
        $this->db->where('productid',$productid);
        return $this->db->get('shop_img')->result();
    }
    
    // Search key
    function get_all_product_by_key($productkey){
    	//query
    	$this->db->select('shop_product.productid, shop_product.productimg, shop_product.productname, shop_product.producturl,price,published');    	
    	$this->db->where('published',1);    
    	$this->db->like('productname',$productkey);
    	$this->db->order_by('productname');
    	$this->db->limit(8);
    	//return
    	return $this->db->get('shop_product')->result();
    }
}
