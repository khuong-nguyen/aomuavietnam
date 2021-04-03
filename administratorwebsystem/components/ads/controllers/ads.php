<?php
  class ads extends CI_Controller{
      protected $_templates;
      function __construct(){
          parent::__construct();                
          $this->pre_message = "";
      }
      
      function index(){
          redirect('ads/listads');
      }
      
      function listads(){
          $data['title'] = 'Danh sách banner';
          $data['add'] 		= 'ads/add';
          $data['delete'] 	= true;
          
          //xoa cahe
       	  $this->vdb->delcache(ROOT.'site/cache/');
       	
          $field = $this->uri->segment(4);
          $order = $this->uri->segment(5);   
          if($field =='' && $order == ''){
              $field = 'ordering';
              $order = 'asc';
          }       
          $config['suffix'] 		= '/'.$field.'/'.$order;            
          $config['base_url'] 		= base_url().'ads/listads/';  
          $config['total_rows']  	=  $this->vdb->find_by_num('ads');
          $data['num'] 				= $config['total_rows'];
          $config['per_page']  		=   20;
          $config['uri_segment'] 	= 3; 
          $this->pagination->initialize($config);   
          $data['list'] 			=   $this->vdb->find_by_all('ads',$config['per_page'],$this->uri->segment(3),0,$field,$order);
          $data['pagination']    	= $this->pagination->create_links(); 
          
          //load templates
          $this->_templates['page'] = 'list';
          $this->templates->load($this->_templates['page'],$data);
      }
      
      function add(){
      	 $data['title'] = 'Thêm mới quảng cáo';
      	 $data['save'] 		= true;
         $data['apply'] 	= true;
         $data['cancel'] 	= 'ads/listads';
          	
         // Form validation
          $this->form_validation->set_rules('ads[name]','Tiêu đề','required');          
          if($this->form_validation->run() === FALSE){
              $this->pre_message = validation_errors();
          }else{
          		$adsArr 			= $this->input->post(ads);
          		$adsArr["image"]	= $this->input->post("img");
	        	//resize 
	        	if(!empty($adsArr["image"])){	    	        		
	        		vnit_resize_image(ROOT.'data/ads/full_images/'.$adsArr["image"],ROOT.'data/ads/thumb/'.$adsArr["image"],90,90,false);
	        		vnit_resize_image(ROOT.'data/ads/full_images/'.$adsArr["image"],ROOT.'data/ads/471/'.$adsArr["image"],770,335,false);
	        	}
	          	//update
		        if($this->vdb->insert('ads', $adsArr)){		        
		           	$this->session->set_flashdata('message','Lưu thành công');
		           	redirect('ads/listads');
		        }
          }
      	  $data['message'] = $this->pre_message;
      	  //load templates ===========================
          $this->_templates['page'] = 'add';
          $this->templates->load($this->_templates['page'],$data);      	 
      }
      
      function edit(){
          $data['title'] 	= 'Hiệu chỉnh quảng cáo';
          $data['save'] 	= true;
          $data['apply'] 	= true;
          $data['cancel'] 	= 'ads/listads';
        
          //get id 
          $id	   			= $this->uri->segment(3);
          $data['rs'] = $this->vdb->find_by_id('ads',array('id'=>$this->uri->segment(3)));
          // Form validation
          $this->form_validation->set_rules('ads[name]','Tiêu đề','required');
        
          if($this->form_validation->run() === FALSE){
              $this->pre_message = validation_errors();
          }else{
          		$adsArr 			= $this->input->post(ads);
          		$adsArr["image"]	= $this->input->post("img");
	        	//resize 
	        	if(!empty($adsArr["image"])){	    	        		
	        		vnit_resize_image(ROOT.'data/ads/full_images/'.$adsArr["image"],ROOT.'data/ads/thumb/'.$adsArr["image"],90,90,false);
	        		vnit_resize_image(ROOT.'data/ads/full_images/'.$adsArr["image"],ROOT.'data/ads/471/'.$adsArr["image"],770,335,false);
	        	}
	        	//update
	        	if($this->vdb->update('ads', $adsArr, array('id'=>$id))){
	                $this->session->set_flashdata('message','Lưu thành công');
	                $option 	=  $this->input->post('option');
	                if($option == 'save'){
	                   $url = 'ads/listads';
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
      /***
       * editBannerLeft
       */
      function editBannerLeft(){
      	$data['title'] 	= 'Hiệu chỉnh banner';       
        $data['apply'] 	= true;
       
        //load config
        $this->load->config('config_news_left');
        
        //set view
     	$data['fileBanner'] = $this->config->item('view-banner');
     	$data['linkBanner'] = $this->config->item('link-banner');
    	
    	$this->form_validation->set_rules('view-banner','Chọn hình thức hiển thị','required');
    	 if($this->form_validation->run() == FALSE){
            $this->pre_message = validation_errors();
        }else{
        	//load file
        	$this->load->helper('file');
        	$site_close = $this->input->post('view-banner'); 
        	$linkBanner = $this->input->post('link-banner'); 
        	$str = "<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');\n/**\n* File Config_site language .\n* Date: ".date('d/m/y H:i:s').".\n**/";
        	
        	$str .= "\n\$config['view-banner'] = '$site_close';";  
        	$str .= "\n\$config['link-banner'] = '$linkBanner';";  
        	 
        	$str .= "\n\n/* End of file config_news_left*/";        
            write_file(ROOT_ADMIN.'config/config_news_left.php', $str);    
            write_file(ROOT.'site/config/config_news_left.php', $str);    
            redirect('ads/editBannerLeft') ; 
        }
    	
        
        
      	$data['message'] = $this->pre_message;
        $this->_templates['page'] = 'banner_news_left';
        $this->templates->load($this->_templates['page'],$data);
      }
      
      
   function editBannerRight(){
      	$data['title'] 	= 'Hiệu chỉnh banner right';       
        $data['apply'] 	= true;
       
        //load config
        $this->load->config('config_right_news');
        
        //set view
    	$data['fileBanner'] = $this->config->item('view-news');
    	$data['linkNews'] = $this->config->item('link-news');
    	
    	$this->form_validation->set_rules('view-news','Chọn hình thức hiển thị','required');
    	 if($this->form_validation->run() == FALSE){
            $this->pre_message = validation_errors();
        }else{
        	//load file
        	$this->load->helper('file');
        	$site_close = $this->input->post('view-news'); 
        	$linkNews	= $this->input->post('link-news'); 
        	$str = "<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');\n/**\n* File Config_site language .\n* Date: ".date('d/m/y H:i:s').".\n**/";
        	
        	$str .= "\n\$config['view-news'] = '$site_close';";  
        	$str .= "\n\$config['link-news'] = '$linkNews';";  
        	 
        	$str .= "\n\n/* End of file config_right_news*/";        
            write_file(ROOT_ADMIN.'config/config_right_news.php', $str);    
            write_file(ROOT.'site/config/config_right_news.php', $str);    
            redirect('ads/editBannerRight') ; 
        }
    	
        
        
      	$data['message'] = $this->pre_message;
        $this->_templates['page'] = 'banner_news_right';
        $this->templates->load($this->_templates['page'],$data);
      }
      
      /**
       * editBannerRightScreen method
       */
      function editBannerRightScreen(){
      	$data['title'] 	= 'Hiệu chỉnh banner right screen';
      	$data['apply'] 	= true;
      	 
      	//load config
      	$this->load->config('config_right_screen');
      
      	//set view
      	$data['fileBanner'] 	= $this->config->item('view-right-screen');
      	$data['linkNews'] 		= $this->config->item('link-right-screen');
      	$data['statusRight'] 	= $this->config->item('status-right-screen');
      	 
      	$this->form_validation->set_rules('view-right-screen','required');
      	if($this->form_validation->run() == FALSE){
      		$this->pre_message = validation_errors();
      	}else{
      		//load file
      		$this->load->helper('file');
      		$site_close 	= $this->input->post('view-right-screen');
      		$linkNews		= $this->input->post('link-right-screen');
      		$statusRight	= $this->input->post('status-right-screen'); 
      		
      		$str = "<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');\n/**\n* File Config_site language .\n* Date: ".date('d/m/y H:i:s').".\n**/";
      		 
      		$str .= "\n\$config['view-right-screen'] = '$site_close';";
      		$str .= "\n\$config['link-right-screen'] = '$linkNews';";
      		$str .= "\n\$config['status-right-screen'] = '$statusRight';";
      
      		$str .= "\n\n/* End of file config_right_screen*/";
            write_file(ROOT_ADMIN.'config/config_right_screen.php', $str);
            write_file(ROOT.'site/config/config_right_screen.php', $str);
            redirect('ads/editBannerRightScreen') ;
      	}
      	 
      
      
      	$data['message'] = $this->pre_message;
      	$this->_templates['page'] = 'banner_screen_right';
      	$this->templates->load($this->_templates['page'],$data);
      }
      
      /**
       * editBannerLeftScreen method
       */
      function editBannerLeftScreen(){
      	$data['title'] 	= 'Hiệu chỉnh banner left screen';
      	$data['apply'] 	= true;
      
      	//load config
      	$this->load->config('config_left_screen');
      
      	//set view
      	$data['fileBanner'] = $this->config->item('view-left-screen');
      	$data['linkNews'] = $this->config->item('link-left-screen');
      	$data['statusLeft'] = $this->config->item('status-left-screen');
      
      	$this->form_validation->set_rules('view-right-screen','required');
      	if($this->form_validation->run() == FALSE){
      		$this->pre_message = validation_errors();
      	}else{
      		//load file
      		$this->load->helper('file');
      		$site_close = $this->input->post('view-left-screen');
      		$linkNews	= $this->input->post('link-left-screen');
      		$statusLeft	= $this->input->post('status-left-screen');
      		
      		$str = "<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');\n/**\n* File Config_site language .\n* Date: ".date('d/m/y H:i:s').".\n**/";
      		 
      		$str .= "\n\$config['view-left-screen'] = '$site_close';";
      		$str .= "\n\$config['link-left-screen'] = '$linkNews';";
      		$str .= "\n\$config['status-left-screen'] = '$statusLeft';";
      
      		$str .= "\n\n/* End of file config_right_screen*/";
      		write_file(ROOT_ADMIN.'config/config_left_screen.php', $str);
      		write_file(ROOT.'site/config/config_left_screen.php', $str);
      		redirect('ads/editBannerLeftScreen') ;
      	}
      
      
      
      	$data['message'] = $this->pre_message;
      	$this->_templates['page'] = 'banner_screen_left';
      	$this->templates->load($this->_templates['page'],$data);
      }
      
    //*** ham hotline
    function edithotline(){
      	$data['title'] 	= 'Hiệu chỉnh hotline';       
        $data['apply'] 	= true;
      
        //load config
        $this->load->config('config_hotline');
        
        //set view
    	$data['fileFlash'] = $this->config->item('view-hotline');
    	
    	$this->form_validation->set_rules('view-hotline','Chọn hình thức hiển thị','required');
    	 if($this->form_validation->run() == FALSE){
            $this->pre_message = validation_errors();
        }else{
        	//load file
        	$this->load->helper('file');
        	$site_close = $this->input->post('view-hotline'); 
        	$str = "<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');\n/**\n* File Config_site language .\n* Date: ".date('d/m/y H:i:s').".\n**/";
        	
        	$str .= "\n\$config['view-hotline'] = '$site_close';";   
        	 
        	$str .= "\n\n/* End of file config_site*/";        
            write_file(ROOT_ADMIN.'config/config_hotline.php', $str);    
            write_file(ROOT.'site/config/config_hotline.php', $str);    
            redirect('ads/edithotline') ; 
        }
    	
        
        //** load templates **********************
      	$data['message'] = $this->pre_message;
        $this->_templates['page'] = 'edithotline';
        $this->templates->load($this->_templates['page'],$data);
      }
	  
	   //*** ham hotline
    function edit_header(){
      	$data['title'] 	= 'Hiệu chỉnh Banner Header';       
        $data['apply'] 	= true;
      
        //load config
        $this->load->config('config_header');
        
        //set view
    	$data['fileFlash'] = $this->config->item('view-header');
    	
    	$this->form_validation->set_rules('view-header','Chọn hình thức hiển thị','required');
    	 if($this->form_validation->run() == FALSE){
            $this->pre_message = validation_errors();
        }else{
        	//load file
        	$this->load->helper('file');
        	$site_close = $this->input->post('view-header'); 
        	$str = "<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');\n/**\n* File Config_site language .\n* Date: ".date('d/m/y H:i:s').".\n**/";
        	
        	$str .= "\n\$config['view-header'] = '$site_close';";   
        	 
        	$str .= "\n\n/* End of file config_site*/";        
            write_file(ROOT_ADMIN.'config/config_header.php', $str);    
            write_file(ROOT.'site/config/config_header.php', $str);    
            redirect('ads/edit_header') ; 
        }
    	
        
        //** load templates **********************
      	$data['message'] = $this->pre_message;
        $this->_templates['page'] = 'editheader';
        $this->templates->load($this->_templates['page'],$data);
      }
      
      // Xoa 1 ban ghi
      function del(){
          $id = $this->uri->segment(3);
          $page = $this->uri->segment(4);
             if($this->vdb->delete('ads', array('id'=>$id)))
                $this->session->set_flashdata('message','Đã xóa thành công');
            else $this->session->set_flashdata('message','Xóa không thành công');
          redirect('ads/listads/'.$page);
      }
      // Xoa nhieu ban ghi
      function dels(){
            if(!empty($_POST['ar_id']))
            {
                $page = (int)$this->input->post('page');
                $ar_id = $this->input->post('ar_id');
                for($i = 0; $i < sizeof($ar_id); $i ++) {
                    if ($ar_id[$i]){
                        if($this->vdb->delete('ads', array('id'=>$ar_id[$i])))
                        $this->session->set_flashdata('message','Đã xóa thành công');
                        else $this->session->set_flashdata('error','Xóa không thành công');
                    }
                }
            }
            redirect('ads/listads/'.$page);
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
	 * Uploader banner news
	 +----------------------------------*/
     function uploaderNews(){
       // $ProductID = $this->uri->segment(3);
       /// $session_info = $this->session->userdata('session_id');
        $dir 		= ROOT.'data/ads/banner_news/';
        
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
