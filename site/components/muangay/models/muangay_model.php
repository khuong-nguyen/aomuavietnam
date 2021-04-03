<?php
class muangay_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
 	function get_payment_sub($payment_id){
          $this->db->where('parentid',$payment_id);
          $this->db->order_by('ordering','asc');
          return $this->db->get('shop_payment')->result();
   }
      
    function find_barcode_by_product($product_id){
        $this->db->where('product_id',$product_id);
        $this->db->order_by('barcode','desc');
        return $this->db->get('cheap_cart')->row();
    }
    
    function kiemtramagiamgia($date,$makhuyenmai){
        $this->db->where('discount_key',$makhuyenmai);
        $this->db->where();
    }
    
    function check_del_magiamgia($cart_id,$session_id,$dis_id){
        $this->db->where('cart_id',$cart_id);
        $this->db->where('dis_id',$dis_id);
        $this->db->where('session_id',$session_id);
        return $this->db->get('cheap_discount')->row();
    }
    
    function get_total_discount($cart_id,$session_id = ''){
        $this->db->select_sum('price');
        $this->db->where('cart_id',$cart_id);
        if($session_id != ''){
        $this->db->where('session_id',$session_id);
        }
        return $this->db->get('cheap_discount')->row()->price;
    }
    
    function show_payment_by_ship($shipping_id){
        $langdb  = $this->langdb;
        $sql = "
            SElECT 
                shop_payment$langdb.*, shop_payment_shipping.*
            FROM 
                shop_payment$langdb, shop_payment_shipping
            WHERE
                shop_payment$langdb.payment_id = shop_payment_shipping.payment_id
            AND 
                shop_payment_shipping.shipping_id = $shipping_id
            ORDER BY shop_payment$langdb.ordering ASC
        ";
        return  $this->db->query($sql)->result();
    }
    
    function get_rate($city_id,$payment_id){
        $pay = $this->get_payment($payment_id);
        if($pay->free_ship == 1){
            return 0;
        }else{
            $city = $this->vdb->find_by_id('city',array('city_id'=>$city_id));
            return $city->rate; 
        }

    }
    
    function free_shipping($city_id){
        $row = $this->vdb->find_by_id('city',array('city_id'=>$city_id));
        return $row->rate;
    }
    
    function get_payment($payment_id){
        $this->db->select('payment_id, free_ship');
        $this->db->where('payment_id',$payment_id);
        return $this->db->get('shop_payment')->row();
    }
    
    // Kiem tra thanh toan công Onepay
    
    function getResponseDescription($responseCode) {
        
        switch ($responseCode) {
            case "0" :
                $result = lang('giaodichthanhcong');
                break;
            case "1" :
                $result = lang('nganhangtuchoigiaodich');
                break;
            case "3" :
                $result = lang('madonvikhongtontai');
                break;
            case "4" :
                $result = lang('khongdungaccesscode');
                break;
            case "5" :
                $result = lang('sotienkhonghople');
                break;
            case "6" :
                $result = lang('matienkhongtontai');
                break;
            case "7" :
                $result = lang('loikhongxacdinh');
                break;
            case "8" :
                $result = lang('sothekhongdung');
                break;
            case "9" :
                $result = lang('tenchuthekhongdung');
                break;
            case "10" :
                $result = lang('thehethan');
                break;
            case "11" :
                $result = lang('thechuadangky');
                break;
            case "12" :
                $result = lang('ngayphathangkhongdung');
                break;
            case "13" :
                $result = lang('vuotquamucthanhtoan');
                break;
            case "21" :
                $result = lang('sotienkhongdunthanhtoan');
                break;
            case "99" :
                $result = lang('nguoisudunghuygiaodich');
                break;
            default :
                $result = lang('giaodichthatbai');
        }
        return $result;
    }

    //  -----------------------------------------------------------------------------
    // If input is null, returns string "No Value Returned", else returns input
    function null2unknown($data) {
        if ($data == "") {
            return "No Value Returned";
        } else {
            return $data;
        }
    }
    

}
