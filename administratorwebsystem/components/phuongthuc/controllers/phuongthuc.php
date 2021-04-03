<?php
class phuongthuc extends CI_Controller{
    protected $_templates;
    function __construct(){
        parent::__construct();
        $this->load->model('thanhtoan_model','thanhtoan');
        $this->pre_message = "";
    }
    
    /**
     * action default
     */
    function index(){
    	redirect('phuongthuc/ds');
    }
    /**
     * list action
     */
    function ds(){
        $data['title'] 		= 'Thanh toán';
        //default button
        $data['delete'] 	= true;       
        $data['add'] 		= 'phuongthuc/add|'.icon_add('phuongthuc/add');
       //set list payment to view
       $data['list'] 		= $this->vdb->find_by_list('shop_payment',0, array('ordering'=>'asc'));
        $data['num'] 		= count($data['list']);
       
        //load templates ****************************
        $this->_templates['page'] = 'thanhtoan/index';
        $this->templates->load($this->_templates['page'],$data);
    }
    /**
     * action add
     */
    function add(){
        $data['title'] = 'Thêm phương thức thanh toán';
        $data['save'] = true;
        $data['apply'] = true;
        $data['list'] = $this->vdb->find_by_list('shop_payment',0,array('ordering'=>'asc'));
        $data['cancel'] = 'phuongthuc/thanhtoan/ds';
        $this->form_validation->set_rules('pay_vi[payment_name]','Phuong thức','required');
        $this->form_validation->set_rules('pay_vi[payment_intro]','Giới thiệu','required');
        if($this->form_validation->run() === FALSE){
            $this->pre_message = validation_errors();
        }else{
            $pay_vi = $this->input->post('pay_vi');
            $pay_en = $this->input->post('pay_en');
            $ordering = $this->input->post('ordering');
            $published = $this->input->post('published');
            $payment_id = $this->input->post('payment_id');
            $pay_vi['ordering'] = $ordering;
            
        	$pay_vi["payment_img"]	 = $this->input->post("img");
	       
	        //resize 
	        if(!empty($pay_vi["payment_img"])){	    
	        		
	        		vnit_resize_image(ROOT.'data/payment/full_images/'.$pay_vi["payment_img"],ROOT.'data/payment/thumb/'.$pay_vi["payment_img"],90,90,false);
	        }
	        	
            if($payment_id = $this->vdb->update('shop_payment',$pay_vi)){
               // write_log(70,223,'Thêm phương thức thanh toán: '.$pay_vi['payment_name']); 
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'phuongthuc/thanhtoan/ds/';
                }else{
                    $url = 'phuongthuc/thanhtoan/edit/'.$payment_id;
                }
                redirect($url);
            }
           
        }
        $data['message'] = $this->pre_message;
        $this->_templates['page'] = 'thanhtoan/add';
        $this->templates->load($this->_templates['page'],$data);
    }
    
    function edit(){
        $data['title'] = 'Cập nhật thức thanh toán';
        $data['save'] = true;
        $data['apply'] = true;
        $data['cancel'] = 'phuongthuc/thanhtoan/ds';
        //get item
        $data['rs_vi'] = $this->vdb->find_by_id('shop_payment',array('payment_id'=>$this->uri->segment(3)));
        
        //validate form
        $this->form_validation->set_rules('pay_vi[payment_name]','Phuong thức','required');       
        if($this->form_validation->run() === FALSE){
            $this->pre_message = validation_errors();
        }else{
        	//get data
            $pay_vi 			= $this->input->post('pay_vi');            
            $published 			= $this->input->post('published');
            $payment_id 		= $this->input->post('payment_id');
            $pay_vi['ordering'] = $ordering;
            
        
	        $pay_vi["payment_img"]	 = $this->input->post("img");
	       
	        	//resize 
	        	if(!empty($pay_vi["payment_img"])){	    
	        		
	        		vnit_resize_image(ROOT.'data/payment/full_images/'.$pay_vi["payment_img"],ROOT.'data/payment/thumb/'.$pay_vi["payment_img"],90,90,false);
	        	}
            
            if($this->vdb->update('shop_payment',$pay_vi,array('payment_id'=>$payment_id))){
                //write_log(70,224,'Cập nhật phương thức thanh toán:'.$pay_vi['payment_name']);
                 
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'phuongthuc/ds/';
                }else{
                    $url = uri_string();
                }
                redirect($url);
            }
        }
            
        $data['message'] = $this->pre_message;
        //load template *************************
        $this->_templates['page'] = 'thanhtoan/edit';
        $this->templates->load($this->_templates['page'],$data);
    }
    
    // Xoa nhieu ban ghi
    function dels(){
        if(!empty($_POST['ar_id']))
        {
            $page = (int)$this->input->post('page');

            $ar_id = $this->input->post('ar_id');
            for($i = 0; $i < sizeof($ar_id); $i ++) {
                if ($ar_id[$i]){
                    $tt = $this->vdb->find_by_id('shop_payment',array('payment_id'=>$ar_id[$i]))->payment_name;
                    if($this->vdb->delete('shop_payment',array('payment_id'=>$ar_id[$i]))){                       
                        $this->session->set_flashdata('message','Đã xóa thành công');
                    }else{
                        $this->session->set_flashdata('error','Xóa không thành công');
                    }
                }
            }
        }
        redirect('phuongthuc/ds/'.$page);
    }
    
	/*----------------------------------+
	 * Uploader
	 +----------------------------------*/
     function uploader(){
       // $ProductID = $this->uri->segment(3);
       /// $session_info = $this->session->userdata('session_id');
        $dir 		= ROOT.'data/payment/full_images/';
        $dir_admin  = 'data/pic/225x101/';
        //chmod($uploaddir,0777);
        $size=$_FILES['uploadfile']['size'];
        if($size>204857600)
        {
                echo "file_biger";
                unlink($_FILES['uploadfile']['tmp_name']);
                //exit;
        }            
        $filename = stripslashes($_FILES['uploadfile']['name']);
        $i = strrpos($filename,".");
        if (!$i) { return ""; }
        $l = strlen($filename) - $i;
        $extension = substr($filename,$i+1,$l);                 
        $extension = strtolower($extension); 
        $file_name = str_replace($extension,'',$filename);
        $name = time();
        $filename = $dir.$name.'.'.$extension;
        $file_ext = $name.'.'.$extension;
        if (move_uploaded_file($_FILES['uploadfile']['tmp_name'], $filename)) {                            
        	echo $file_ext;
            
        } else {
            echo 'error';
        }
  	}
  	
}
