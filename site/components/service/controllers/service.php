<?php

class service extends CI_Controller {

    protected $_templates;

    function __construct() {
        parent::__construct();
        $this->output->enable_profiler($this->config->item('config'));
        $this->load->model('service_model', 'service');
        //load css
        $cssArr = array(
            array(base_url() . 'site/templates/default/css/news.css'),
        );
        //set to view
        $this->esset->css($cssArr);
    }

    function index() {
        $data['linkCanonical'] = 'Hoàng quân computer';        
        //get id 
        $id = (int) end(explode('-', $this->uri->segment('2')));
        if ($id > 0) {
            $rs = $this->vdb->find_by_id('service', array('id' => $id));
            //set view title ***
            $data['title'] = $rs->name;
            //set view
            $data['rs'] = $rs;

            //get relative artilce
            //load templates -------
            $this->_templates['page'] = 'detail';
            $this->templates->load($this->_templates['page'], $data, 'detail');
        } else {
            $data["list"] = $this->vdb->find_by_list("service", null, 0, array('date_time' => 'DESC'));

            //load templates
            $this->_templates['page'] = 'index';
            $this->templates->load($this->_templates['page'], $data, 'detail');
        }
    }

}
