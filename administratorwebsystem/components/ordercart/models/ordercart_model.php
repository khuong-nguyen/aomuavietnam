<?php
class ordercart_model extends CI_Model{
    function __construct(){
        parent::__construct();
       // $this->db = $this->load->database('default', TRUE); 
    }
    
    /*--------------------------------------+
     * @ return array cart
    +--------------------------------------*/
    
	function get_all_donhang($num, $offset, $catID, $field,$order){
       // $tinhtrang = $this->get_id_tinhtrang($tinhtrang);
       if($catID != 0){       	
       		//get catArray
       		$ar_cat = $this->get_ar_cat($catID);	             		
       		$this->db->select('shop_cart.order_id, shop_cart.barcode, shop_cart.date_buy, shop_cart.phone, shop_cart.address, shop_cart.fullname,  shop_cart_detail.*');
       		$this->db->join('shop_cart_detail','shop_cart.order_id = shop_cart_detail.cartid');
       		$this->db->where_in('shop_cart_detail.catid', $ar_cat);
	        
       }else{
       		$this->db->select('shop_cart.order_id, shop_cart.barcode, shop_cart.date_buy, shop_cart.phone, shop_cart.address, shop_cart.fullname, shop_cart.status, shop_cart_detail.*');
       		$this->db->join('shop_cart_detail','shop_cart.order_id = shop_cart_detail.cartid');       		       		
       }
      
        
       if($field!='' && $order !=''){
       		$this->db->order_by($field,$order);
       }else{
       		$this->db->order_by("shop_cart.order_id","DESC");
       }
       $query = $this->db->get("shop_cart", $num, $offset);
       return $query->result();
    }	
    
    /*--------------------------------------+
     * @ return total cart
    +--------------------------------------*/
    
    function get_num_donhangCat($catID =0, $tinhtrang = 0){    	
    	
	     if($catID != 0){       	
	       		//get catArray
	       		$ar_cat = $this->get_ar_cat($catID);	             		
	       		$this->db->select('shop_cart.order_id, shop_cart.barcode, shop_cart.date_buy,   shop_cart.phone, shop_cart.address, shop_cart.fullname,    shop_cart_detail.*');
	       		$this->db->join('shop_cart_detail','shop_cart.order_id = shop_cart_detail.cartid');
	       		$this->db->where_in('shop_cart_detail.catid', $ar_cat);
		        
	       }else{ 
	       		$this->db->select('shop_cart.order_id, shop_cart.barcode, shop_cart.date_buy, shop_cart.phone, shop_cart.address, shop_cart.fullname,   shop_cart_detail.*');
	       		$this->db->join('shop_cart_detail','shop_cart.order_id = shop_cart_detail.cartid');       		       		
	       }
	      
    	return $this->db->get('shop_cart')->num_rows();
    }
    
    
  	/*--------------------------------------+
  	 * @ return total cart
  	 +--------------------------------------*/
    
 	function get_num_donhang($catID, $tinhtrang){
 		 $tinhtrang = $this->get_id_tinhtrang($tinhtrang);
 		
	 	 if($catID != 0){       	
	       		//get catArray
	       		$ar_cat = $this->get_ar_cat($catID);	             		
	       		$this->db->select('shop_cart.order_id, shop_cart.barcode, shop_cart.date_buy, shop_cart.city_id, shop_cart.districts_id, shop_cart.phone, shop_cart.address, shop_cart.fullname, shop_cart.status, shop_cart.user_id, shop_cart.user_id, shop_cart_detail.*');
	       		$this->db->join('shop_cart_detail','shop_cart.order_id = shop_cart_detail.cartid');
	       		$this->db->where_in('shop_cart_detail.catid', $ar_cat);
		        
	       }else{
	       		$this->db->select('shop_cart.order_id, shop_cart.barcode, shop_cart.date_buy, shop_cart.city_id, shop_cart.districts_id, shop_cart.phone, shop_cart.address, shop_cart.fullname, shop_cart.status, shop_cart.user_id, shop_cart.user_id, shop_cart_detail.*');
	       		$this->db->join('shop_cart_detail','shop_cart.order_id = shop_cart_detail.cartid');       		       		
	       }
	      
       
       if($tinhtrang == 0){
       		$this->db->where("order_news",1);       		
       }else{
       		$this->db->where("status", $tinhtrang);       		
       }
       
       return $this->db->get('shop_cart')->num_rows();
    }
    
    
    
    
    
    function get_all_search($num, $offset,$barcode, $fullname, $date_begin, $date_end, $city_id, $status){
        if($barcode != ''){
            $this->db->where('barcode',$barcode);
        }
         if($date_begin != '' && $date_end != ''){
            $this->db->where('date_buy >=',strtotime($date_begin));
            $this->db->where('date_buy <=',strtotime($date_end));
        }
        if($city_id != 0){
            $this->db->where('city_id',$city_id);
        }
        if($status != 0){
            $this->db->where('status',$status);
        }
        if($fullname != ''){
            $this->db->like('fullname',$fullname);
        }
        $this->db->order_by('date_buy','desc');
        return $this->db->get('shop_cart',$num, $offset)->result();
    }
    
    function get_num_search($barcode, $fullname, $date_begin, $date_end, $city_id, $status){
        if($barcode != ''){
            $this->db->where('barcode',$barcode);
        }
        if($date_begin != '' && $date_end != ''){
            $this->db->where('date_buy >=',strtotime($date_begin));
            $this->db->where('date_buy <=',strtotime($date_end));
        }
        if($city_id != 0){
            $this->db->where('city_id',$city_id);
        }
        if($status != 0){
            $this->db->where('status',$status);
        }
        if($fullname != ''){
            $this->db->like('fullname',$fullname);
        }
        return $this->db->get('shop_cart')->num_rows();
    }
    
    function get_id_tinhtrang($str){
        if($str == 'chuaxacnhan'){
            $tinhtrang = 1;
        }else if($str == 'daxacnhan'){
            $tinhtrang = 2;
        }else if($str == 'dangxuly'){
            $tinhtrang = 3;
        }else if($str == 'hoanthanh'){
            $tinhtrang = 4;
        }else if($str == 'dahuy'){
            $tinhtrang = 5;
        }else if($str == 'moinhat'){
            $tinhtrang = 0;
        }
        return $tinhtrang;
    }
    
    function get_status_text($str){
        if($str == 1){
            $tinhtrang = 'chuaxacnhan';
        }else if($str == 2){
            $tinhtrang = 'daxacnhan';
        }else if($str == 3){
            $tinhtrang = 'dangxuly';
        }else if($str == 4){
            $tinhtrang = 'hoanthanh';
        }else if($str == 5){
            $tinhtrang = 'dahuy';
        }
        return $tinhtrang;
    }
    
    // Tong don hang
    function get_total_donhang($catID){
	     if($catID != 0){       	
	       		//get catArray
	       		$ar_cat = $this->get_ar_cat($catID);	             		
	       		$this->db->select('shop_cart.order_id, shop_cart.barcode, shop_cart.date_buy, shop_cart.city_id, shop_cart.districts_id, shop_cart.phone, shop_cart.address, shop_cart.fullname, shop_cart.status, shop_cart.user_id, shop_cart.user_id, shop_cart_detail.*');
	       		$this->db->join('shop_cart_detail','shop_cart.order_id = shop_cart_detail.cartid');
	       		$this->db->where_in('shop_cart_detail.catid', $ar_cat);
		        
	       }else{
	       		$this->db->select('shop_cart.order_id, shop_cart.barcode, shop_cart.date_buy, shop_cart.city_id, shop_cart.districts_id, shop_cart.phone, shop_cart.address, shop_cart.fullname, shop_cart.status, shop_cart.user_id, shop_cart.user_id, shop_cart_detail.*');
	       		$this->db->join('shop_cart_detail','shop_cart.order_id = shop_cart_detail.cartid');       		       		
	       }
      
       
        return $this->db->get('shop_cart')->num_rows();
    }
    
    /*****************
    * Chi tiet don hang
    */
    // Thong tin dat hang
    function get_info_order($order_id){
        $this->db->where('order_id',$order_id);
        return $this->db->get('shop_cart')->row();
    }
    
    // Danh sach san pham trong don hang
    function get_list_order($order_id){
     	//$this->db->select('shop_product.*, shop_cart_detail.*');
     	//$this->db->join('shop_product','shop_product.productid = shop_cart_detail.productid');
      $this->db->where('shop_cart_detail.cartid',$order_id);
      return $this->db->get('shop_cart_detail')->result();
    }
    
    // Danh sach ma phieu giam gia
    function get_list_discount($order_id){
        $this->db->where('cartid',$order_id);
        return $this->db->get('shop_cart_discount')->result();
    }
    
    function get_gifts($cart_detail_id){
        $this->db->where('cart_detail_id',$cart_detail_id);
        return $this->db->get('shop_cart_gifts')->result();
    }
    
    function find_user($user_id){       
        $this->member->where('user_id',$user_id);
        return $this->member->get('user')->row();
    }
    
    /*---------------------------------+
    @return array CatID
    +--------------------------------*/
    
    public function get_ar_cat($catid){
    	$ar_id = array($catid);
    	$list = $this->vdb->find_by_list('shop_cat',array('parentid'=>$catid));
    	foreach($list as $rs):
    	$list1 = $this->vdb->find_by_list('shop_cat',array('parentid'=>$rs->catid));
    	array_push($ar_id,$rs->catid);
    	foreach($list1 as $rs1):
    	$list2 = $this->vdb->find_by_list('shop_cat',array('parentid'=>$rs1->catid));
    	array_push($ar_id,$rs1->catid);
    	foreach($list2 as $rs2):
    	array_push($ar_id,$rs2->catid);
    	endforeach;
    	endforeach;
    
    	endforeach;
    	return $ar_id;
    }
    
    
}
