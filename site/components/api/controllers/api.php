<?php
class api extends CI_Controller{
    protected $_templates;
    function __construct(){
        parent::__construct();
        $this->load->model('api_model','api');
        $this->load->language(array('system'));
        if($this->session->userdata('lang') == 'vi'){
         $this->langdb = "";
        }else{
         $this->langdb = "_en";
        }
    }
    
    /**
     * submenu method
     */
    function submenu(){
    	$catID  = $this->input->post('id');
    	$data['catID']  = $catID;
    	
    	//load template**
    	$this->_templates['page'] = 'submenu';
        $this->load->view($this->_templates['page'],$data);
    }
    
    function sendmail_content(){
        $this->load->helper('mail_helper');
        
          $email_from = $this->input->post('email_from');
          $email_to = $this->input->post('email_to');
          $fullname_from = $this->input->post('fullname_from');
          $subject = $this->input->post('subject');
          $message = "Đây là email  được gửi bởi ".$fullname_from." (".$email_from."). Có thể đây sẽ là 1 liên kết thú vị cho bạn:";
          $message .='<a href="'.$this->input->post('url_send').'">'.$this->input->post('url_send').'</a>';
          if(send_mail_to_friend($fullname_from,$email_from,$email_to,$subject,$message)){
              $data['msg'] = 'Gửi E-mail thành công';
          }else{
              $data['msg'] = 'Gửi Email không thành công';
          }

          echo json_encode($data);
    }
    
    function setlang(){
        $lang = $this->input->post('lang');
        $langs = explode('|',$lang);
        $this->session->set_userdata(array('lang'=>$langs[0]));
        $this->session->set_userdata(array('lang_site'=>$langs[1]));
    }
    
   
    
   
}
