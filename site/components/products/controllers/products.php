<?php
/*------------------------------------------------------+
* @author      :   phong.sttm
* @name        :   productsController
* @version     :   201004
* @copyright   :   linhkineso24h
* @todo        :   Index object
+-----------------------------------------------------*/
class products extends CI_Controller{
    protected $_templates;
    /**
     * contructor
     */
    function __construct(){
        parent::__construct();
       //load model 
       $this->load->model("products_model","products");
       //add js css slider
       $jsSlider = array(
       		array(base_url().'site/templates/default/js/multizoom.js'),
       		
       		array(base_url().'site/templates/default/js/jquery.easing.js'),
       		array(base_url().'site/templates/default/js/caroufredsel.js'),
       		
       		array(base_url().'site/templates/default/js/fancybox/jquery.mousewheel-3.0.4.pack.js'),
       		array(base_url().'site/templates/default/js/fancybox/jquery.fancybox-1.3.4.pack.js'),
       		
       );
       $cssSlider = array(
       		array(base_url().'site/templates/default/css/detail-product.css'),
       		
       		array(base_url().'site/templates/default/css/multizoom.css'),
       		
       		array(base_url().'site/templates/default/css/hethong_detail.css'),
       		
       		array(base_url().'site/templates/default/js/fancybox/jquery.fancybox-1.3.4.css'),
       );
       
       //set view      
       $this->esset->css($cssSlider);
       $this->esset->js($jsSlider);
    }
    
    /**
     * detail action
     */
    function detail(){     	
		//get caid 
		$id						= end(explode('-',$this->uri->segment('2')));
		//get item catID
		$itemProd				= $this->vdb->find_by_id("shop_product", array('productid'=>$id));
		$itemCat				= $this->vdb->find_by_id("category_prod", array('cat_id'=>$itemProd->catid));
		$data["nameCat"]		= $itemCat->cat_title;
		$data["linkCat"]		= base_url().'chuyen-muc/'.$itemCat->cat_alias.'-'.$itemCat->cat_id.'.html';
			
		//set view title		
		$data['title'] 			= $itemProd->productname;
	    $data['rs'] 			= $itemProd;
	    //set view link Canonical
	    $data['linkCanonical']  = base_url().'san-pham/'.$itemProd->producturl.'-'.$itemProd->productid.'.html';
	    // UPdate View
	    $this->db->query("UPDATE shop_product SET hits = hits + 1 WHERE productid = ".$id);
	    	    
	    //get list images 
	    $data['listimg'] 		= $this->products->get_list_img_by_product($data['rs']->productid);
	    
	    //get list product relative
	    $data['listRelative']	= $this->products->getListOrther($itemProd->catid,$id);
	 
	  	//load templates -------
	    $this->_templates['page'] = 'detail';
	    $this->templates->load($this->_templates['page'],$data,'detail');
        
		
    }
    
    //**************
    function loadImgProduct(){
    	$imgPathProd  	= $this->input->post("imgpath");
    	//$data         = '<img id="image1" border="0" src="'.$imgPathProd.'" style="width:340px;height:270px;border: solid 1px #eee;">';
    	echo json_encode($imgPathProd);
    }
    
    
    // Auto Complete
    function autosearch(){    	
    	//get keyword
    	$productkey = removeXss(trim($this->input->post('keyword')));
    	//set view data
    	$data['list'] =   $this->products->get_all_product_by_key($productkey);
    	
    	//load template **************************
    	$this->_templates['page'] = 'autocomplet';
    	$this->load->view($this->_templates['page'],$data);
    }
    
    // Search Result
  
  
}
