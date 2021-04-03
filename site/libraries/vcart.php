<?php
class CI_vcart{
    function __construct(){
      	$this->CI = get_instance();
     	$this->session_id = $this->CI->session->userdata('session_id');
      
    }
    
    /// Add Product To Table Cart_detail
    // Return 1: Them vao gio hang thanh cong
    // Return -2; San pham khong ton tai
    // Return -1: San pham khong co gia
    //
    function addcart($productid, $qty =1){
        $row = $this->get_product($productid);    
       	
        if(sizeof($row)>0){           
                $check_cart = $this->CI->vdb->find_by_id('shop_cart_detail',array('productid'=>$productid,'session_id'=>$this->session_id));               
                if($check_cart){                	
                    $vdata['s_qty'] = $check_cart->s_qty + $qty;
                    $this->CI->vdb->update('shop_cart_detail',$vdata,array('productid'=>$productid,'session_id'=>$this->session_id));
                    return $check_cart->id;
                }else{                  
                    $vdata['productid'] 	= $productid;
                    $vdata['productname'] 	= $row->productname;
                    $vdata['cartid'] 		= '';
                    $vdata['s_price'] 		= $row->price;
                    $vdata['s_qty'] 		= $qty;
                    $vdata['session_id'] 	= $this->session_id;
                   
                    $id = $this->CI->vdb->update('shop_cart_detail',$vdata);                                        
                    return $id;
                    
                    
                }
        
        }else{
            return '-2';
        }
    }
    
    function get_product($productid){           
        $this->CI->db->where('productid',$productid);
        return $this->CI->db->get('shop_product')->row();
    }
    
    
      // Tang pham
      function get_gifts($productid){
          $this->CI->db->where('productid',$productid);
          $this->CI->db->where('city_id',$this->city_id);
          return $this->CI->db->get('shop_gifts')->result();
      }
    
    
    function total_price(){
        $this->db = $this->CI->load->database('default', TRUE);
        $this->db->where('session_id',$this->session_id);
        $list = $this->db->get('shop_cart_detail')->result();
        $total = 0;
        foreach($list as $rs):
            $total = $total + ($rs->s_price * $rs->s_qty);
        endforeach;
        return number_format($total,0,'.','.');
    }
    
    function total_product(){
        $this->db = $this->CI->load->database('default', TRUE); 
        $this->db->select_sum('s_qty');
        $this->db->where('session_id',$this->session_id);
        $row = $this->db->get('shop_cart_detail')->row();
        return $row->s_qty;
    
    }
    
    function list_product(){
        $this->db = $this->CI->load->database('default', TRUE);    
        $this->db->where('session_id',$this->session_id);
        return $this->db->get('shop_cart_detail')->result();
    }     
    
}
