<?php
  class ads_right extends CI_Controller{
      protected $_templates;
      function __construct(){
          parent::__construct();
         
          $this->pre_message = "";
      }
      
      function index(){
          redirect('ads_right/listads');
      }
      
      function listads(){
          $data['title'] = 'Danh sách banner';
          $data['add'] 		= 'ads_right/add';
          $data['delete'] 	= true;
          
          //xoa cahe
       	  $this->vdb->delcache(ROOT.'site/cache/banner/');
       	
       	  //call
       	  $this->writeAds();
       	  
          $field = $this->uri->segment(4);
          $order = $this->uri->segment(5);   
          if($field =='' && $order == ''){
              $field = 'ordering';
              $order = 'asc';
          }       
          $config['suffix'] 		= '/'.$field.'/'.$order;            
          $config['base_url'] 		= base_url().'ads_right/listads/';  
          $config['total_rows']  	=  $this->vdb->find_by_num('ads_right');
          $data['num'] 				= $config['total_rows'];
          $config['per_page']  		= 20;
          $config['uri_segment'] 	= 3; 
          $this->pagination->initialize($config);   
          $data['list'] 			=   $this->vdb->find_by_all('ads_right',$config['per_page'],$this->uri->segment(3),array('lang'=>vnit_lang()),$field,$order);
          $data['pagination']    	= $this->pagination->create_links(); 
          
          //load templates
          $this->_templates['page'] = 'list';
          $this->templates->load($this->_templates['page'],$data);
      }
      
      function add(){
      	 $data['title'] = 'Thêm mới quảng cáo';
      	 $data['save'] 		= true;
         $data['apply'] 	= true;
         $data['cancel'] 	= 'ads_right/listads';
          	
         // Form validation
          $this->form_validation->set_rules('ads[name]','Tiêu đề','required');          
          if($this->form_validation->run() === FALSE){
              $this->pre_message = validation_errors();
          }else{
          		$adsArr 				= $this->input->post('ads');
          		$adsArr["image"]		= $this->input->post("img");
          		$adsArr["price_old"]	= str_replace('.', '', $this->input->post("price_old")) ;
          		$adsArr["price"]		= str_replace('.', '', $this->input->post("price")) ;
          		
          		$adsArr["lang"]		= vnit_lang();
          		//resize 
	        	if(!empty($adsArr["image"])){	    	        		
	        		vnit_resize_image(ROOT.'data/ads_right/full_images/'.$adsArr["image"],ROOT.'data/ads_right/thumb/'.$adsArr["image"],90,90,false);
	        		vnit_resize_image(ROOT.'data/ads_right/full_images/'.$adsArr["image"],ROOT.'data/ads_right/250/'.$adsArr["image"],250,200,false);
	        	}
	        	
	          	//update
		        if($this->vdb->insert('ads_right', $adsArr)){		        
		           	$this->session->set_flashdata('message','Lưu thành công');
		           	redirect('ads_right/listads');
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
          $data['cancel'] 	= 'ads_right/listads';
        
          //get id 
          $id	   			= $this->uri->segment(3);
          $data['rs'] = $this->vdb->find_by_id('ads_right',array('id'=>$this->uri->segment(3)));
          // Form validation
          $this->form_validation->set_rules('ads[name]','Tiêu đề','required');
        
          if($this->form_validation->run() === FALSE){
              $this->pre_message = validation_errors();
          }else{
          		$adsArr 				= $this->input->post('ads');
          		$adsArr["image"]		= $this->input->post("img");
          		$adsArr["price_old"]	= str_replace('.', '', $this->input->post("price_old")) ;
          		$adsArr["price"]		= str_replace('.', '', $this->input->post("price")) ;
          		$adsArr["lang"]			= vnit_lang();
	        	//resize 
	        	if(!empty($adsArr["image"])){	    	        		
	        		vnit_resize_image(ROOT.'data/ads_right/full_images/'.$adsArr["image"],ROOT.'data/ads_right/thumb/'.$adsArr["image"],90,90,false);
	        		vnit_resize_image(ROOT.'data/ads_right/full_images/'.$adsArr["image"],ROOT.'data/ads_right/250/'.$adsArr["image"],250,200,false);
	        	}
	        	
	        	//update
	        	if($this->vdb->update('ads_right', $adsArr, array('id'=>$id))){
	                $this->session->set_flashdata('message','Lưu thành công');
	                $option 	=  $this->input->post('option');
	                if($option == 'save'){
	                   $url = 'ads_right/listads';
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
             if($this->vdb->delete('ads_right', array('id'=>$id)))
                $this->session->set_flashdata('message','Đã xóa thành công');
            else $this->session->set_flashdata('message','Xóa không thành công');
          redirect('ads_right/listads/'.$page);
      }
      // Xoa nhieu ban ghi
      function dels(){
            if(!empty($_POST['ar_id']))
            {
                $page = (int)$this->input->post('page');
                $ar_id = $this->input->post('ar_id');
                for($i = 0; $i < sizeof($ar_id); $i ++) {
                    if ($ar_id[$i]){
                        if($this->vdb->delete('ads_right', array('id'=>$ar_id[$i])))
                        $this->session->set_flashdata('message','Đã xóa thành công');
                        else $this->session->set_flashdata('error','Xóa không thành công');
                    }
                }
            }
            redirect('ads_right/listads/'.$page);
      }  
	
      
      /**
       * write file
       *
       */
      function writeAds(){
      	//load file
      	$this->load->helper('file');
      	//get data
      	$listAds = $this->vdb->find_by_list('ads_right', array('published'=>1),array('ordering'=>'asc'));
      	//check data
      	if(count($listAds) > 0){
      		$str = '<ul class="items">';
      		//loop data
      		foreach ($listAds as $val):     
      			$img  		= base_url_site().'data/ads_right/full_images/'.$val->image;
      			$priceOld   = number_format($val->price_old,'.','.','.');
      			$price  	= number_format($val->price,'.','.','.');
      			$link		= $val->url;
      		//init str
      		$str .= '<li>';
      		$str .= '<p class="name"><a href="'.$link.'">'.$val->name.'</a></p>';
      		$str .= '<p class="img"><a href="'.$link.'"><img src="'.$img.'" width="90" alt="'.$val->name.'"></a></p>';
      		$str .= '<div class="info">';
      		$str .= '<p class="note">'.$val->note.'</p>';
      		$str .= '<p class="price_old">'.$priceOld.' ₫</p>';
      		$str .= '<p class="price">'.$price.' ₫</p>';  
      		$str .= '</div>';
      		$str .= '</li>';  		
      
      		//write file
      		write_file(ROOT.'site/cache/banner/banner_right.db', $str);
      		endforeach;
      		$str = '</ul>';
      	}
      	 
      	 
      	 
      }
      
  	/*----------------------------------+
	 * Uploader
	 +----------------------------------*/
     function uploader(){
       // $ProductID = $this->uri->segment(3);
       /// $session_info = $this->session->userdata('session_id');
        $dir 		= ROOT.'data/ads_right/full_images/';
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
