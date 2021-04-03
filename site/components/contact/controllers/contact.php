<?php

class contact extends CI_Controller {

    protected $_templates;

    function __construct() {
        parent::__construct();
        $this->lang->load('contact', $this->session->userdata('lang_site'));
        $this->load->language(array('system'));

        $css_array = array(
            array(base_url() . 'site/components/contact/views/esset/contact.css'),
                //array(base_url().'site/templates/system/css/jquery.fancybox-1.3.4.css')
        );
        $this->esset->css($css_array);
        /* $js_array = array(
          array(base_url().'site/templates/system/js/jquery.fancybox-1.3.4.js'),
          array(base_url().'site/templates/system/js/jquery.easing-1.3.pack.js')
          );
          $this->esset->js($js_array); */
        $this->load->library('gmap');
        $this->pre_message = "";
        if ($this->session->userdata('lang') == 'vi') {
            $this->langdb = "";
        } else {
            $this->langdb = "_en";
        }
    }

    function index() {
        $data['title'] = lang('contact.name');
        $data['linkCanonical'] = 'Hoàng quân Computer';
        $this->link[0] = 'Liên hệ';
        $rs = $this->vdb->find_by_id('contact' . $this->langdb, array('id' => 1));
        $data['rs'] = $rs;
        // map
        $this->gmap->GoogleMapAPI();
        $this->gmap->setMapType('map');
        $this->gmap->addMarkerByAddress($rs->address, $rs->name, '<b>' . $rs->name . '</b>' . '<br />Địa chỉ: ' . $rs->address . '<br />Điện thoại:' . $rs->phone . ' - Fax' . $rs->fax . '<br />Email: ' . $rs->email);
        $data['headerjs'] = $this->gmap->getHeaderJS();
        $data['headermap'] = $this->gmap->getMapJS();
        $data['onload'] = $this->gmap->printOnLoad();
        $data['map'] = $this->gmap->printMap();
        $data['sidebar'] = $this->gmap->printSidebar();

        // From validation
        $this->form_validation->set_rules('contact[fullname]', lang('contact.fullname'), 'required');
        $this->form_validation->set_rules('contact[phone]', lang('contact.phone'), 'required');
        $this->form_validation->set_rules('contact[email]', 'E-mail', 'required');
        $this->form_validation->set_rules('contact[content]', lang('contact.content'), 'required');
        if ($this->form_validation->run() === FALSE) {
            $this->pre_message = validation_errors();
        } else {
            $contact = $this->input->post('contact');
            $contact['datesend'] = time();
            if ($this->vdb->update('contact_row', $contact)) {
                $this->load->helper('mail_helper');
                $contact_name = 'Hệ thống';
                $contact_email = 'noreply@fyi.vn';
                $to = $rs->email;
                $subject = 'Mail được gửi tự động từ liên hệ';
                $message = "Họ tên: " . $contact['fullname'];
                $message .="<br />Điện thoại: " . $contact['phone'];
                $message .="<br />E-mail: " . $contact['email'];
                $message .="<br />Nội dung: " . $contact['content'];
                send($to, $subject, $message, $contact_name, $contact_email);
                $this->session->set_flashdata('message', lang('contact.sendok'));
                redirect('contact');
            }
        }
        $data['message'] = $this->pre_message;
        $this->_templates['page'] = 'index';
        $this->templates->load($this->_templates['page'], $data, 'detail');
    }

    function show_map() {
        $rs = $this->vdb->find_by_id('contact' . $this->langdb, array('id' => 1));
        $data['rs'] = $rs;
        $this->gmap->GoogleMapAPI();
        $this->gmap->setMapType('map');
        $this->gmap->addMarkerByAddress($rs->address, $rs->name, '<b>' . $rs->name . '</b>' . '<br />Địa chỉ: ' . $rs->address . '<br />Điện thoại:' . $rs->phone . ' - Fax' . $rs->fax . '<br />Email: ' . $rs->email);
        $data['headerjs'] = $this->gmap->getHeaderJS();
        $data['headermap'] = $this->gmap->getMapJS();
        $data['onload'] = $this->gmap->printOnLoad();
        $data['map'] = $this->gmap->printMap();
        $data['sidebar'] = $this->gmap->printSidebar();
        $this->_templates['page'] = 'map';
        $this->load->view($this->_templates['page'], $data);
    }

}
