<?php
class projects_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
    /// Model Danh muc tin tuc
    function get_all_danhmuc($parentid = 0){
        $this->db->where('parentid',$parentid);
        $this->db->order_by('ordering','asc');
        return $this->db->get('news_cat')->result();
    }
    
    function check_danhmuc($catid){
        $this->db->where('parentid',$catid);
        $total =  $this->db->get('news_cat')->num_rows();
        if($total > 0){
            return false;
        }else{
            return true;
        }
    }
    
    function check_baiviet($catid){
        $this->db->where('catid',$catid);
        $total = $this->db->get('news_detail')->num_rows();
        if($total > 0){
            return false;
        }else{
            return true;
        }
    }
    
    
    /*********************************
    * Module Bai viet
    */
    function get_num_baiviet($cat_id = 0, $key=null){
        
        if($key != ''){
            $this->db->like('title',$key);
        }        
        
        return $this->db->get('projects')->num_rows();        
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
        return $this->db->get('projects',$num,$offset)->result();
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
      function get_num_comment(){
          return $this->db->get('news_comment')->num_rows();
      }    
      function get_all_comment($field,$order,$num,$offset){
          if($field != '' || $order != ''){
              $this->db->order_by($field,$order);
          }else{
              $this->db->order_by('commentid','desc');
          }
          return $this->db->get('news_comment',$num,$offset)->result();
      }
      function get_comment_by_id($commentid){
          $this->db->select('news_detail.title,news_comment.*');
          $this->db->join('news_detail','news_detail.newsid = news_comment.newsid');
          $this->db->where('news_comment.commentid',$commentid);
          return $this->db->get('news_comment')->row();
      }    
}
