<?php
  class ads_category extends CI_Controller{
      protected $_templates;
      function __construct(){
          parent::__construct();
          $this->load->model('category_model','category');
          $this->pre_message = "";
      }
      
      function index(){
          redirect('ads_category/listads');
      }
      
      function listads(){
          $data['title'] = 'Danh sách banner';
          $data['add'] 		= 'ads_category/add';
          $data['delete'] 	= true;
          
          //get list category
          $data['listCat'] = $this->vdb->find_by_list('category_prod',array('parent_id'=>0), array('ordering'=>'asc'));
          //xoa cahe
       	  $this->vdb->delcache(ROOT.'site/cache/banner_cat/');
       	 //get cat ID
       	 $catID	= (int)$this->input->get("cat_id");
       	 //set view catID
       	 $data['catID'] = $catID;
       	  //call
       	  $this->writeAds();
       	  
          $field = $this->uri->segment(4);
          $order = $this->uri->segment(5);   
          if($field =='' && $order == ''){
              $field = 'ordering';
              $order = 'asc';
          }       
          $config['suffix'] 		= '/'.$field.'/'.$order;            
          $config['base_url'] 		= base_url().'ads_category/listads/';  
          //check catID
          if($catID >0){
         	$config['total_rows']  	=  $this->vdb->find_by_num('ads_category', array('cat_id'=>$catID));
          }else{
          	$config['total_rows']  	=  $this->vdb->find_by_num('ads_category');
          }
          $data['num'] 				= $config['total_rows'];
          $config['per_page']  		= 20;
          $config['uri_segment'] 	= 3; 
          $this->pagination->initialize($config);  
          //check catID
          if($catID >0){ 
         	 $data['list'] 			=   $this->vdb->find_by_all('ads_category',$config['per_page'],$this->uri->segment(3),array('cat_id'=>$catID,'lang'=>vnit_lang()),$field,$order);
          }else{
          	$data['list'] 			=   $this->vdb->find_by_all('ads_category',$config['per_page'],$this->uri->segment(3),array('lang'=>vnit_lang()),$field,$order);
          }
          $data['pagination']    	= $this->pagination->create_links(); 
          
          //load templates
          $this->_templates['page'] = 'list';
          $this->templates->load($this->_templates['page'],$data);
      }
      
      function add(){
      	 $data['title'] = 'Thêm mới quảng cáo';
      	 $data['save'] 		= true;
         $data['apply'] 	= true;
         $data['cancel'] 	= 'ads_category/listads';
         //get list category
         $data['list'] = $this->vdb->find_by_list('category_prod',array('parent_id'=>0), array('ordering'=>'asc'));
         // Form validation
          $this->form_validation->set_rules('ads[name]','Tiêu đề','required');          
          if($this->form_validation->run() === FALSE){
              $this->pre_message = validation_errors();
          }else{
          		$adsArr 				= $this->input->post('ads');
          		$adsArr["image"]		= $this->input->post("img");
          		          		
          		$adsArr["lang"]		= vnit_lang();
          		//resize 
	        	if(!empty($adsArr["image"])){	    	        		
	        		vnit_resize_image(ROOT.'data/ads_category/full_images/'.$adsArr["image"],ROOT.'data/ads_category/thumb/'.$adsArr["image"],90,90,false);
	        		vnit_resize_image(ROOT.'data/ads_category/full_images/'.$adsArr["image"],ROOT.'data/ads_category/1000/'.$adsArr["image"],1000,100,false);
	        	}
	        	
	          	//update
		        if($this->vdb->insert('ads_category', $adsArr)){		        
		           	$this->session->set_flashdata('message','Lưu thành công');
		           	redirect('ads_category/listads');
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
          $data['cancel'] 	= 'ads_category/listads';
        
          //get list category
          $data['list'] = $this->vdb->find_by_list('category_prod',array('parent_id'=>0), array('ordering'=>'asc'));
          //get id 
          $id	   			= $this->uri->segment(3);
          $data['rs'] = $this->vdb->find_by_id('ads_category',array('id'=>$this->uri->segment(3)));
          // Form validation
          $this->form_validation->set_rules('ads[name]','Tiêu đề','required');
        
          if($this->form_validation->run() === FALSE){
              $this->pre_message = validation_errors();
          }else{
          		$adsArr 				= $this->input->post('ads');
          		$adsArr["image"]		= $this->input->post("img");          		
          		$adsArr["lang"]			= vnit_lang();
	        	//resize 
	        	if(!empty($adsArr["image"])){	    	        		
	        		vnit_resize_image(ROOT.'data/ads_category/full_images/'.$adsArr["image"],ROOT.'data/ads_category/thumb/'.$adsArr["image"],90,90,false);
	        		vnit_resize_image(ROOT.'data/ads_category/full_images/'.$adsArr["image"],ROOT.'data/ads_category/1000/'.$adsArr["image"],1000,100,false);
	        	}
	        	
	        	//update
	        	if($this->vdb->update('ads_category', $adsArr, array('id'=>$id))){
	                $this->session->set_flashdata('message','Lưu thành công');
	                $option 	=  $this->input->post('option');
	                if($option == 'save'){
	                   $url = 'ads_category/listads';
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
             if($this->vdb->delete('ads_category', array('id'=>$id)))
                $this->session->set_flashdata('message','Đã xóa thành công');
            else $this->session->set_flashdata('message','Xóa không thành công');
          redirect('ads_category/listads/'.$page);
      }
      // Xoa nhieu ban ghi
      function dels(){
            if(!empty($_POST['ar_id']))
            {
                $page = (int)$this->input->post('page');
                $ar_id = $this->input->post('ar_id');
                for($i = 0; $i < sizeof($ar_id); $i ++) {
                    if ($ar_id[$i]){
                        if($this->vdb->delete('ads_category', array('id'=>$ar_id[$i])))
                        $this->session->set_flashdata('message','Đã xóa thành công');
                        else $this->session->set_flashdata('error','Xóa không thành công');
                    }
                }
            }
            redirect('ads_category/listads/'.$page);
      }  
	
      
      /**
       * write file
       *
       */
      function writeAds(){
      	//load file
      	$this->load->helper('file');
      	//get list 
      	$listCategory = $this->vdb->find_by_list('category_prod',array('published'=>1), array('ordering'=>'asc'));
      	//check data
      	if(sizeof($listCategory)>0){
      		foreach ($listCategory as $valCat):
	      	//get data
	      	$listAds = $this->vdb->find_by_list('ads_category', array('cat_id'=>$valCat->cat_id,'published'=>1),array('ordering'=>'asc'));
	      	//check data
	      	if(count($listAds) > 0){
	      		
	      		//loop data
	      		foreach ($listAds as $val):     
	      			$img  		= base_url_site().'data/ads_category/1000/'.$val->image;	      			
	      			$link		= $val->url;
	      		//init str	      		      		
	      		$str .= '<a href="'.$link.'"><img src="'.$img.'" width="1000" height="100" alt="'.$val->name.'"></a>';	      		
	      					      	      		
	      		endforeach;
	      		
	      		//write file
	      		write_file(ROOT.'site/cache/banner_cat/banner_category'.$valCat->cat_id.'.db', $str);
	      	}
	      
      	endforeach;
      	}
      	 
      	 
      	 
      }
      
  	/*----------------------------------+
	 * Uploader
	 +----------------------------------*/
     function uploader(){
       // $ProductID = $this->uri->segment(3);
       /// $session_info = $this->session->userdata('session_id');
        $dir 		= ROOT.'data/ads_category/full_images/';
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
