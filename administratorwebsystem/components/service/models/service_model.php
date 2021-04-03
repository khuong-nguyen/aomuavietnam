<?php
class service_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
   
    
    function check_baiviet($catid){
        $this->db->where('catid',$catid);
        $total = $this->db->get('service')->num_rows();
        if($total > 0){
            return false;
        }else{
            return true;
        }
    }
    
    
    /*********************************
    * Module Bai viet
    */
    function get_num_baiviet($cat_id = 0, $key= null){
        
        if($key != ''){
            $this->db->like('title',$key);
        }        
        
        return $this->db->get('service')->num_rows();        
    }
    
    function get_all_baiviet($num=0, $offset=0, $cat_id = 0, $key=null, $field=null, $order=null){
        
        if($key != ''){
            $this->db->like('title',$key);
        }        
        
        if($field != '' && $order != ''){
            $this->db->order_by($field,$order);
        }else{
            $this->db->order_by('date_time','desc');
        }
        return $this->db->get('service',$num,$offset)->result();
    }
    
    function get_ar_cat($catid){
        $ar_id = array($catid);
        $this->db->where('parentid',$catid);
        $list = $this->db->get('news_cat')->result();
        foreach($list as $rs):
            array_push($ar_id, $rs->catid);
        endforeach;
        return $ar_id;
    }
     
}
