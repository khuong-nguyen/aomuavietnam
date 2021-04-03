<?php
class help_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
    
    // Hien thi danh tin theo chu de
    function get_all_news($num,$offset,$catid){
        $ar_cat = $this->ar_news_cat($catid);       
        $this->db->where_in('catid',$ar_cat);
        $this->db->where('published',1);
        $this->db->order_by('created','desc');
        return $this->db->get('news_detail'.$this->langdb,$num,$offset)->result();
    }
    
	// Hien thi danh tin theo chu de
    function getallnewsCatID($catid){          
        $this->db->where_in('catid',$catid);
        $this->db->where('published',1);
        $this->db->order_by('created','desc');
        return $this->db->get('news_detail'.$this->langdb,6)->result();
    }
    
    
    function get_num_news($catid){
        $ar_cat = $this->ar_news_cat($catid); 
        $this->db->where_in('catid',$ar_cat);
        $this->db->where('published',1);
        $this->db->order_by('created','desc');
        return $this->db->get('news_detail'.$this->langdb)->num_rows();
        
    }
    
    // Get tin tuc lien quan
    function get_other_new($catid,$id){
        $this->db->where('id !=',$id);
        $this->db->where('catid',$catid);
        $this->db->limit(5);
        $this->db->order_by('created','desc');
        return $this->db->get('content'.$this->langdb)->result();
    }
    
    function ar_news_cat($cat_id){
        $ar_cat = array($cat_id);
        $list = $this->vdb->find_by_list('news_cat'.$this->langdb,null,array('parentid'=>$cat_id));
        foreach($list as $rs):
            array_push($ar_cat,$rs->catid);
            $this->ar_news_cat($rs->catid);
        endforeach;
        return $ar_cat;
    }
    
    function find_menu($menuid){
        $this->db->where('id',$menuid);
        return $this->db->get('menu')->row();
    }
}
