<?php
/*------------------------------------------------------+
* @author      :   phong.sttm
* @name        :   producthome
* @version     :   201004
* @copyright   :   linhkineso24h
* @todo        :   category object
+-----------------------------------------------------*/
class producthome extends CI_Controller{
	protected $_templates;
	//contructor
	function __construct(){
		parent::__construct();
		$this->pre_message = "";
		//load model
		$this->load->model('product_model','product');
		//load file
		$this->load->helper('file');
		//load config
		$this->load->config('config_hot');
	}
	
	/*
	 * action default
	 */
	function index(){
		$data['title']   = 'Danh sách sản phẩm hot';
		//config button 
		$data['apply'] 	= true;
		$data['cancel'] = 'shop/listproduct';
		
		//call writehot	
		$this->writeHot();
		//set data view
		$data['lisID']  = explode(',', $this->config->item('list_id'));
		// Form validation
		$this->form_validation->set_rules('ar_id[]','ID','required');
		if($this->form_validation->run() === FALSE){
			$this->pre_message = validation_errors();
		}else{
			$arrID  = implode(',', $this->input->post('ar_id'));
			$str = "<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');\n/**\n* File config_dealindex language ".vnit_lang().".\n* Date: ".date('d/m/y H:i:s').".\n**/";
			$str .= "\n\$config['list_id'] = '$arrID';";
			$str .= "\n\n/* End of file config_hot*/";
			//write file
			write_file(ROOT_ADMIN.'config/config_hot.php', $str);
			//reload
			redirect('product/producthome/index');
		}
		
		//** load templets **************************
		$this->_templates['page'] = 'hot/index';
		$this->templates->load($this->_templates['page'],$data);
	}
	
	//function writehot
	function writeHot(){
		$lisID =  explode(',', trim($this->config->item('list_id')));
		//get list
		$list = $this->product->getAllProduct($lisID);
		$total = count($list);
		$str = "<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');\n/**\n* File config_product_hot language ".vnit_lang().".\n* Date: ".date('d/m/y H:i:s').".\n**/";
		$str .= "\n\$config['hot_product_total'] = $total;\n";
		$i = 1;
		foreach($list as $rs):
		$name 		= $rs->productname;
		$img 		= base_url_site().'data/products/200/'.$rs->productimg;
		$price 		= $rs->price;
		$priceOld 	= $rs->price_front;
		$percent	= $rs->percent;
		$link 		= base_url_site().'san-pham/' .$rs->producturl.'-'.$rs->productid.'.html';
		
		$str .= "\n\$config['hot_name_$i'] 		= '$name';";
		$str .= "\n\$config['hot_img_$i'] 		= '$img';";
		$str .= "\n\$config['hot_price_$i'] 	= '$price';";
		$str .= "\n\$config['hot_priceOld_$i']  = '$priceOld';";
		$str .= "\n\$config['hot_percent_$i'] 	= '$percent';";		
		$str .= "\n\$config['hot_link_$i'] 		= '$link';";		
		$i ++;
		endforeach;
		$str .= "\n\n/* End of file config_product_hot*/";
		write_file(ROOT.'site/config/config_product_hot.php', $str);
	}
	
	
}