<?php
/*------------------------------------------------------+
* @author      :   phong.sttm
* @name        :   category_model
* @version     :   201004
* @copyright   :   linhkineso24h
* @todo        :   category object
+-----------------------------------------------------*/
class category_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
	//**************************************
     function getAllCategoryCatID($catID){
    	$this->db->where("parent_id", $catID);
    	//$this->db->where("is_home", 1);
    	$this->db->where("published", 1);
    	$this->db->order_by("ordering", 'DESC');
    	$result  = $this->db->get("category_prod");
    	if($result->num_rows()>0)
    		return $result->result_array();
    	else 
    		return array();
    }
    
    function getAllCategory(){
    	$this->db->select('category_prod.*');
    	
    	$this->db->where('category_prod.parent_id',0);
    	$this->db->where('category_prod.published',1);
    	$this->db->order_by('category_prod.ordering','ASC');
    	$query  = $this->db->get('category_prod');
    	if($query->num_rows()>0){
        	return $query->result_array();
        	
    	}else{
    		return array();
    	}
    }
    
   
    
    
 //**************************************
	function get_all_productCat($catid){
        //get catid array
		$ar_cat = $this->get_ar_cat($catid);       
		//query
		$this->db->select('productid, catid, productname,productimg,date_time,price,price_front,published,ordering');    	
    	$this->db->where_in('catid',$ar_cat);
    	$this->db->where('published',1);
    	$this->db->order_by('ordering','ASC');
    	$this->db->order_by('date_time','DESC');
    	$query  = $this->db->get('shop_product');
    	if($query->num_rows()>0){
        	return $query->result();
        	
    	}else{
    		return array();
    	}
    }
    
    //**************************************
	function get_all_product($num,$offset,$catid, $ordering =''){
        //get catid array
		$ar_cat = $this->get_ar_cat($catid);       
		//query
		$this->db->select('productid, catid, productname, producturl, productimg, date_time,percent,price, price_front, manufactureid, icon_hot, icon_deal, icon_new,published');    	
    	$this->db->where_in('catid',$ar_cat);
    	$this->db->where('published',1);
    	switch ($ordering){
    		case 'new':{
    			$this->db->order_by('date_time','DESC');
    			break;
    		}
    		case 'asc':{
    			$this->db->order_by('price','DESC');
    			break;
    		}
    		case 'desc':{
    			$this->db->order_by('price','ASC');
    			break;
    		}
    		default:{
    			$this->db->order_by('price','ASC');
    			break;
    		}
    	}
    	
    	//result
    	$query  = $this->db->get('shop_product',$num, $offset);
    	if($query->num_rows()>0){
        	return $query->result();
        	
    	}else{
    		return array();
    	}
    }
    
    function get_num_product($catid,$ordering =''){
    	//get catid Array
    	$ar_cat = $this->get_ar_cat($catid);  
    	$this->db->select('productid,catid,productname,productimg,date_time,price');    	
    	$this->db->where_in('catid',$ar_cat);
    	$this->db->where('published',1);
    	switch ($ordering){
    		case 'new':{
    			$this->db->order_by('date_time','DESC');
    			break;
    		}
    		case 'asc':{
    			$this->db->order_by('price','DESC');
    			break;
    		}
    		case 'desc':{
    			$this->db->order_by('price','ASC');
    			break;
    		}
    		default:{
    			$this->db->order_by('price','ASC');
    			break;
    		}
    	}
    	    	
    	$query  = $this->db->get('shop_product');
    	if($query->num_rows()>0){
        	return $query->num_rows();
        	
    	}else{
    		return 0;
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
