<?php
class closesite extends CI_Controller{
    protected $_templates;
    function __construct(){
        parent::__construct();
        $css_array = array(
            array(base_url().'site/components/closesite/views/esset/style.css')
        );
        $this->esset->css($css_array);
    }
    
    function index(){
        $data['title'] = 'Close site';
        $this->_templates['page'] = 'index';
        $this->load->view($this->_templates['page'],$data);
    }
}
