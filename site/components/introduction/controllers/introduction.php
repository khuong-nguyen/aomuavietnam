<?php

class introduction extends CI_Controller {

    protected $_templates;

    function __construct() {
        parent::__construct();
        $this->output->enable_profiler($this->config->item('config'));
        $this->load->model('introduction_model', 'handbook');
        //load css
        $cssArr = array(
            array(base_url() . 'site/templates/default/css/news.css'),
        );
        //set to view
        $this->esset->css($cssArr);
    }

    /**
     * action default
     */
    function index() {
        //get id 
        $id = (int) end(explode('-', $this->uri->segment('2')));
        if ($id > 0) {
            $data['linkCanonical'] = 'Hoàng quân Computer';
            $rs = $this->vdb->find_by_id('introduction', array('id' => $id));
            //set view title ***
            $data['title'] = $rs->name;
            //set view
            $data['rs'] = $rs;

            //load templates -------
            $this->_templates['page'] = 'news_detail';
            $this->templates->load($this->_templates['page'], $data, 'detail');
        } else {
            $data['linkCanonical'] = 'Hoàng quân Computer';
            $data["list"] = $this->vdb->find_by_list("introduction", null, 0, array('date_time' => 'DESC'));
            //load templates
            $this->_templates['page'] = 'index';
            $this->templates->load($this->_templates['page'], $data, 'detail');
        }
    }

}
