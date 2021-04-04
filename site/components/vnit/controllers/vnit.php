<?php
/*------------------------------------------------------+
* @author      :   phong.sttm
* @name        :   vnitController
* @version     :   201004
* @copyright   :   linhkineso24h
* @todo        :   Index object
+-----------------------------------------------------*/
class vnit extends CI_Controller{
      protected $_templates;
      /**
       * Contructtor
       */
      function __construct(){
         parent::__construct();
         //load model
         $this->load->model('vnit_model','vnit');

         //load config
         $this->load->config('config_product_hot');
              
         //add js css slider
         $jsSlider = array(
        				array(base_url().'site/templates/default/js/jquery.slider.pack.js'), 		
        				array(base_url().'site/templates/default/js/jquery.easing.js'), 		
        				array(base_url().'site/templates/default/js/caroufredsel.js'), 		
         				);
         $cssSlider = array(
         				array(base_url().'site/templates/default/css/slider.css'),
         				array(base_url().'site/templates/default/css/hethong.css'),
         					);
		 //set view
         $this->esset->js($jsSlider);
         $this->esset->css($cssSlider);
        
      }	
      
      /**
       * default action
       */
      function index(){   
      		$data['title']   =	'Sản Xuất Áo Mưa Hàng Đầu Việt Nam - aomuavietnam.com';  
      		//set view link Canonical
      		$data['linkCanonical']  = base_url();    
          //get list cat
          $data['listCat']		 = $this->vnit->getAllCategory();         	
          //load templates
          $this->_templates['page'] = 'index';
          $this->templates->load($this->_templates['page'],$data);
      }
      
      
      
}
