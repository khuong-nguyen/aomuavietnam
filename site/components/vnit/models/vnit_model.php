<?php
class vnit_model extends CI_Model{
    function __construct(){
        parent::__construct();
     
    }
    
    function getAllCategory(){
    	$this->db->where("parent_id", 0);
    	$this->db->where("is_home", 1);
    	$this->db->where("published", 1);
    	$this->db->order_by("ordering", 'ASC');
    	$result  = $this->db->get("category_prod");
    	if($result->num_rows()>0)
    		return $result->result_array();
    	else 
    		return array();
    }
   //**************************************
     function getAllCategoryCatID($catID){
    	$this->db->where("parent_id", $catID);
    	$this->db->where("is_home", 1);
    	$this->db->where("published", 1);
    	$this->db->order_by("ordering", 'DESC');
    	$result  = $this->db->get("category_prod");
    	if($result->num_rows()>0)
    		return $result->result_array();
    	else 
    		return array();
    }
   
    
    
	//**************************************
	function get_all_productCat($catid){
        //get catid array
		$ar_cat = $this->get_ar_cat($catid);       
		//query
		$this->db->select('productid, catid, productname, producturl, productimg, date_time, price, price_front, percent, published, manufactureid, icon_hot, icon_deal, icon_new');    	
    	$this->db->where_in('catid',$ar_cat);
    	$this->db->where('is_home',1);
    	$this->db->where('published',1);
    	$this->db->order_by('id','RANDOM');
    	$this->db->limit(12);
    	$query  = $this->db->get('shop_product');
    	if($query->num_rows()>0){
        	return $query->result();
        	
    	}else{
    		return array();
    	}
    }
    
    
	//get catid array
	function get_ar_cat($catid){
        $ar_id = array($catid);
       
        $list = $this->vdb->find_by_list('category_prod',null,array('parent_id'=>$catid));
    
        foreach($list as $rs):
            $list1 = $this->vdb->find_by_list('category_prod',null,array('parent_id'=>$rs->cat_id));
            array_push($ar_id,$rs->cat_id);
            foreach($list1 as $rs1):
                $list2 = $this->vdb->find_by_list('category_prod',null, array('parent_id'=>$rs1->cat_id)); 
                 array_push($ar_id,$rs1->cat_id);
                 foreach($list2 as $rs2): 
                      array_push($ar_id,$rs2->cat_id);
                 endforeach; 
            endforeach;
            
        endforeach;
        return $ar_id;
    }

}

