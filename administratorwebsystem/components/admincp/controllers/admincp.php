<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
class admincp extends CI_Controller{
    protected $_templates;
    function __construct() {
        parent::__construct();
        $this->mainmenu = '';
        $this->itemmenu = '';
    }
    
    function index(){
        $data['title'] = 'Bảng điều khiển';
        $this->_templates['page'] = 'index';
        $this->templates->load($this->_templates['page'],$data);
    }
}
?>
