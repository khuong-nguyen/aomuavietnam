<?php

class order_process extends CI_Controller {

    protected $_templates;

    function __construct() {
        parent::__construct();
        $this->lang->load('about', $this->session->userdata('lang_site'));
        $this->load->language(array('system'));
        $this->pre_message = "";
        if ($this->session->userdata('lang') == 'vi') {
            $this->langdb = "";
        } else {
            $this->langdb = "_en";
        }
    }

    function index() {
        $data['title'] = lang('about.name');
        $data['linkCanonical'] = 'Áo mưa Minh Nguyên';
        $this->link[0] = 'Quy trình đặt hàng';
        $this->_templates['page'] = 'index';
        $this->templates->load($this->_templates['page'], $data, 'detail');
    }

}
