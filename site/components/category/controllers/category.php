<?php

/* ------------------------------------------------------+
 * @author      :   phong.sttm
 * @name        :   categoryController
 * @version     :   201004
 * @copyright   :   linhkineso24h
 * @todo        :   category object
  +----------------------------------------------------- */

class category extends CI_Controller {

    protected $_templates;

    function __construct() {
        parent::__construct();
        //load model 
        $this->load->model("category_model", "category");

        //add js css slider
        $jsSlider = array(
            array(base_url() . 'site/templates/default/js/jquery.slider.pack.js'),
        );
        $cssSlider = array(
            array(base_url() . 'site/templates/default/css/slider_category.css'),
        );
        //set view
        $this->esset->js($jsSlider);
        $this->esset->css($cssSlider);
        $this->uri2 = $this->uri->segment(2);
    }

    /*
     * default action
     */

    function index() {
        $data['title'] = 'Chính hãng giá tốt - công ty TNHH SX TM Quảng Cáo Minh Nguyên';

        //get list cat
        $data['listCat'] = $this->category->getAllCategory();

        //load templates
        $this->_templates['page'] = 'index';
        $this->templates->load($this->_templates['page'], $data, 'detail');
    }

    /**
     * listCat action
     */
    function listCat() {
        //get catID
        $catID = end(explode('-', $this->uri->segment('2')));
        //set title
        $data['title'] = $this->vdb->find_by_id('category_prod', array('cat_id' => $catID))->cat_title;
        //get list cat
        $data['listCatSub'] = $this->category->getAllCategoryCatID($catID);

        //load templates
        $this->_templates['page'] = 'listcat';
        $this->templates->load($this->_templates['page'], $data, 'detail');
    }

    //*******************************************
    //category product
    function pages() {
        //get caid 
        $catID = end(explode('-', $this->uri->segment('2')));
        //set view catID
        $data['catID'] = $catID;
        //get item catID
        $itemCat = $this->vdb->find_by_id("category_prod", array('cat_id' => $catID));

        //set view title
        $data["title"] = $itemCat->cat_title;
        //set view link Canonical
        $data['linkCanonical'] = base_url() . 'chuyen-muc/' . $itemCat->cat_alias . '-' . $itemCat->cat_id . '.html';
        //set view link
        $data['linkOrdering'] = base_url() . 'chuyen-muc/' . $itemCat->cat_alias . '-' . $itemCat->cat_id . '.html';

        //get ordering
        $ordering = removeXss($this->input->get('o'));

        //check catid
        if ($catID > 0) {
            $config['base_url'] = base_url() . 'chuyen-muc/' . $itemCat->cat_alias . '-' . $catID . '/';
            $config['suffix'] = '.html';
            //check orering
            if ($ordering != '') {
                $config['total_rows'] = $this->category->get_num_product($catID, $ordering);
            } else {
                $config['total_rows'] = $this->category->get_num_product($catID);
            }
            $data['num'] = $config['total_rows'];
            $config['per_page'] = 28;
            $config['uri_segment'] = 3;
            $this->load->library('pagination');
            $this->pagination->initialize($config);
            //check ordering
            if ($ordering != '') {
                //get list project and set view
                $data["listProducts"] = $this->category->get_all_product($config['per_page'], $this->uri->segment(3), $catID, $ordering);
            } else {
                //get list project and set view  
                $data["listProducts"] = $this->category->get_all_product($config['per_page'], $this->uri->segment(3), $catID);
            }
            $data['pagination'] = $this->pagination->create_links();
            $data['total_page'] = round($config['total_rows'] / $config['per_page'], 0);
            $data['current'] = ($this->uri2 == 0) ? 1 : ($this->uri2 / $config['per_page']) + 1;

            //load templates
            $this->_templates['page'] = 'cat';
            $this->templates->load($this->_templates['page'], $data, 'detail');
        }
    }

}
