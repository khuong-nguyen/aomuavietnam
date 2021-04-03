<?php
  class nicks extends CI_Controller{
      protected $_templates;
      function __construct(){
          parent::__construct();
          $this->load->config('config_contact');
         
          $this->pre_message = "";
      }
      
      function index(){
          redirect('nicks/listNicks');
      }
      
      function listNicks(){
          $data['title'] = 'Danh sách nicks hỗ trợ';
          $data['add'] 		= 'nicks/add';
          $data['delete'] 	= true;
                  
       	
          $field = $this->uri->segment(4);
          $order = $this->uri->segment(5);   
          if($field =='' && $order == ''){
              $field = 'ordering';
              $order = 'asc';
          }       
          $config['suffix'] 		= '/'.$field.'/'.$order;            
          $config['base_url'] 		= base_url().'nicks/listNicks/';  
          $config['total_rows']  	=  $this->vdb->find_by_num('nicks');
          $data['num'] 				= $config['total_rows'];
          $config['per_page']  		=   20;
          $config['uri_segment'] 	= 3; 
          $this->pagination->initialize($config);   
          $data['list'] 			=   $this->vdb->find_by_all('nicks',$config['per_page'],$this->uri->segment(3),0,$field,$order);
          $data['pagination']    	= $this->pagination->create_links(); 
          
          //load templates
          $this->_templates['page'] = 'list';
          $this->templates->load($this->_templates['page'],$data);
      }
      
      function add(){
      	 $data['title'] = 'Thêm mới nicks hỗ trợ';
      	 $data['save'] 		= true;
         $data['apply'] 	= true;
         $data['cancel'] 	= 'nicks/listNicks';
          	
         // Form validation
          $this->form_validation->set_rules('ads[name_nick]','Tiêu đề','required');          
          if($this->form_validation->run() === FALSE){
              $this->pre_message = validation_errors();
          }else{
          		$adsArr 			= $this->input->post(ads);
          		
	          	//update
		        if($this->vdb->insert('nicks', $adsArr)){		        
		           	$this->session->set_flashdata('message','Lưu thành công');
		           	redirect('nicks/listNicks');
		        }
          }
      	  $data['message'] = $this->pre_message;
      	  //load templates ===========================
          $this->_templates['page'] = 'add';
          $this->templates->load($this->_templates['page'],$data);      	 
      }
      
      function edit(){
          $data['title'] 	= 'Hiệu chỉnh nicks hỗ trợ';
          $data['save'] 	= true;
          $data['apply'] 	= true;
          $data['cancel'] 	= 'nicks/listNicks';
        
          //get id 
          $id	   			= $this->uri->segment(3);
          $data['rs'] = $this->vdb->find_by_id('nicks',array('id'=>$this->uri->segment(3)));
          // Form validation
          $this->form_validation->set_rules('ads[name_nick]','Tiêu đề','required');
        
          if($this->form_validation->run() === FALSE){
              $this->pre_message = validation_errors();
          }else{
          		$adsArr 			= $this->input->post(ads);
          		
	        	//update
	        	if($this->vdb->update('nicks', $adsArr, array('id'=>$id))){
	                $this->session->set_flashdata('message','Lưu thành công');
	                $option 	=  $this->input->post('option');
	                if($option == 'save'){
	                   $url = 'nicks/listNicks';
	                }else{
	                    $url = uri_string();
	                }
	                redirect($url);  
	        	}                
             
          }
          $data['message'] = $this->pre_message;
          $this->_templates['page'] = 'edit';
          $this->templates->load($this->_templates['page'],$data);
      }
      
      // Xoa 1 ban ghi
      function del(){
          $id = $this->uri->segment(3);
          $page = $this->uri->segment(4);
             if($this->vdb->delete('nicks', array('id'=>$id)))
                $this->session->set_flashdata('message','Đã xóa thành công');
            else $this->session->set_flashdata('message','Xóa không thành công');
          redirect('nicks/listNicks/'.$page);
      }
      // Xoa nhieu ban ghi
      function dels(){
            if(!empty($_POST['ar_id']))
            {
                $page = (int)$this->input->post('page');
                $ar_id = $this->input->post('ar_id');
                for($i = 0; $i < sizeof($ar_id); $i ++) {
                    if ($ar_id[$i]){
                        if($this->vdb->delete('nicks', array('id'=>$ar_id[$i])))
                        $this->session->set_flashdata('message','Đã xóa thành công');
                        else $this->session->set_flashdata('error','Xóa không thành công');
                    }
                }
            }
            redirect('nicks/listNicks/'.$page);
      }  

      
  	/*----------------------------------+
	 * Uploader
	 +----------------------------------*/
     function uploader(){
       // $ProductID = $this->uri->segment(3);
       /// $session_info = $this->session->userdata('session_id');
        $dir 		= ROOT.'data/ads/full_images/';
        $dir_admin  = 'data/ads/225x101/';
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
      
    /*----------------------------------+
	 * END Uploader
	 +----------------------------------*/
      
  }
