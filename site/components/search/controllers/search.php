<?php
/*------------------------------------------------------+
 * @author      :   phong.sttm
* @name        :   productsController
* @version     :   201004
* @copyright   :   linhkineso24h
* @todo        :   Index object
+-----------------------------------------------------*/
class search extends CI_Controller{
    protected $_templates;
    function __construct(){
        parent::__construct();
        //load model
        $this->load->model('search_model','search');
                 
    }
    /**
     * action result
     */
    function result(){
        $data['linkCanonical'] = 'Hoàng quân Computer';
        $data['title'] 		= 'Kết quả tìm kiếm';
        //get keyword     
        $key 		= $this->input->get('keyword');
        $key_new 	= str_replace('+',' ',$key);
      
        $catid = $this->input->get('cat');
        $config['base_url'] 	= base_url().'/search/result/?keyword='.$key."&cat=".$catid;  
        $config['total_rows']   = $this->search->get_num_result($key_new,$catid);
        $data['num'] 		 	= $config['total_rows'];
        $config['per_page']  	= 20;
        $config['uri_segment'] 	= 5; 
        $this->load->library('pagination');
        $this->pagination->initialize($config);   
        $data['list'] =   $this->search->get_all_result($config['per_page'],$this->uri->segment(5),$key_new,$catid);
        $data['pagination']    = $this->pagination->create_links(); 
            
      	//**load templates**
        $this->_templates['page'] = 'index';
        $this->templates->load($this->_templates['page'], $data);
    }
}
