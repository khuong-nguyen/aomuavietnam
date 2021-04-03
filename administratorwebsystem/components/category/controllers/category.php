<?php
class category extends CI_Controller{
    protected $_templates;
    function __construct(){
        parent::__construct();
        $this->load->model('category_model','category');
        $this->mainmenu = 'tintuc';
    }
    
    function index(){
        redirect('category/listcategory');
    }
    
    function listcategory(){
        $data['title'] 	= 'Quản lý Chủ đề';
        $data['add'] 	= 'category/add';
        $data['delete'] = true;        
       
        //xoa cache
        $this->vdb->delcache(ROOT.'site/cache/menu/');
       
        //call 
        $this->writeSubmenu();
        
        $field = $this->uri->segment(5);
        $order = $this->uri->segment(6);   
        if($field == '' && $order ==''){
            $field = 'ordering';
            $order = 'asc';
        }   
        $sections_url 			= (isset($data['sections_id']) != 0) ? '?option=true&sections_id='.$data['sections_id'] : '';
        $config['suffix'] 		= '/'.$field.'/'.$order.$sections_url;          
        $config['base_url'] 	= base_url().'category/listcategory/';  
        $config['total_rows']   =  $this->category->find_by_num(); 
        $data['num'] 			= $config['total_rows'];
        $config['per_page']  	= 30;
        $config['uri_segment'] 	= 4; 
        $this->pagination->initialize($config);   
        $data['list'] 			=   $this->category->find_by_all($config['per_page'],$this->uri->segment(4),$field,$order);
      
        $data['pagination']   		 = $this->pagination->create_links();         
        $this->_templates['page'] 	= 'index';
        $this->templates->load($this->_templates['page'],$data);
    }
    
    function add(){
        $data['title'] = 'Thêm mới Chủ đề';
        $data['save'] = true;
        $data['apply'] = true;
        $data['cancel'] = 'category/listcategory';
        $data['list'] = $this->vdb->find_by_list('category_prod',array('parent_id'=>0));
        // Form validation
        $this->form_validation->set_rules('cat[cat_title]','Tiêu đề','required');      
        $this->form_validation->set_rules('cat[published]','Hiển thị','required');       
        $this->form_validation->set_rules('cat[parent_id]','','');
        if($this->form_validation->run() === FALSE){
            $this->pre_message = validation_errors();
        }else{
            $cat_id 			= (int)$this->input->post('cat_id');
            $cat 				= $this->input->post('cat');          
            $cat['cat_alias'] 	= vnit_change_title($cat['cat_title']);
            $cat['lang'] 		= vnit_lang();       
          	
        	if($this->input->post('img')!=''){
                  $this->load->helper('img_helper');
                  $img 		 = $this->input->post('img');                  
                  $imgThumb   = 'data/category/thumb/'.$img;
                  vnit_resize_image(ROOT.'data/category/full_images/'.$img,ROOT.$imgThumb,200,200,false);
                  $cat['image'] = $img;
                 
            }
            
            if($cat_id = $this->vdb->update('category_prod',$cat)){                
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'category/listcategory';
                }else{
                    $url = 'category/edit/'.$cat_id;
                }
                
                redirect($url);
            }
        }
        $data['message'] 			= $this->pre_message;
        //load templates
        $this->_templates['page'] 	= 'add';
        $this->templates->load($this->_templates['page'],$data);
    }    
    function edit(){
        $data['title'] 		= 'Cập nhật Chủ đề';
        $data['save'] 		= true;
        $data['apply'] 		= true;
        $data['cancel'] 	= 'category/listcategory';        
        //get items category_prod
        $data['rs'] 		= $this->vdb->find_by_id('category_prod',array('cat_id'=>$this->uri->segment(3)));
  
        $data['list'] = $this->vdb->find_by_list('category_prod', array('parent_id'=>0));
      
        // Form validation
        $this->form_validation->set_rules('cat[cat_title]','Tiêu đề - vi','required');    
        $this->form_validation->set_rules('cat[published]','Hiển thị','required');
       
        if($this->form_validation->run() === FALSE){
            $this->pre_message = validation_errors();
        }else{
        	
            $cat_id 			= (int)$this->uri->segment('3'); 
             
            $cat 				= $this->input->post('cat');           
            $cat['lang']		= vnit_lang();
            $cat['cat_alias'] 	= vnit_change_title($cat['cat_title']);
            
        	if($this->input->post('img')!=''){
                  $this->load->helper('img_helper');
                  $img 		 = $this->input->post('img');                  
                  $imgThumb   = 'data/category/thumb/'.$img;
                  vnit_resize_image(ROOT.'data/category/full_images/'.$img,ROOT.$imgThumb,200,200,false);
                  $cat['image'] = $img;
                 
            }
            
            if($this->vdb->update('category_prod',$cat, array('cat_id'=>$cat_id))){                            
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'category/listcategory';
                }else{
                    $url = uri_string();
                }                
                redirect($url);
            }
        }
        $data['message'] 			= $this->pre_message;
        
        //load templates ***
        $this->_templates['page'] 	= 'edit';
        $this->templates->load($this->_templates['page'],$data);
    }  
    function save_order(){
        $id = $this->input->post('id');
        for($i = 0 ; $i< sizeof($id);$i++){
            $menu['ordering'] = $this->input->post('order_'.$id[$i]);
            $this->vdb->update('category',$menu,array('cat_id'=>$id[$i]));
            //$this->vdb->update('category_en',$menu,array('cat_id'=>$id[$i]));
        }
    }    
    
    function del(){
    	$id	 = (int)$this->uri->segment('3');
    	if($id){
    		if($this->vdb->delete("category_prod", array('cat_id'=>$id))){
    			 $this->session->set_flashdata('message','Đã xóa thành công');
    			  //xoa cache
                	$this->vdb->delcache(ROOT.'site/cache/menu/');
    			 //redirect ve list categoy
    			redirect('category/listcategory');
    		}
    		
    	}
    	
    	
    }
    // Xoa nhieu ban ghi
    function dels(){
        if(!empty($_POST['ar_id']))
        {
            $page = (int)$this->input->post('page');
            $ar_id = $this->input->post('ar_id');
            for($i = 0; $i < sizeof($ar_id); $i ++) {
                if ($ar_id[$i]){
                  if($this->vdb->find_by_max('content','',array('catid'=>$ar_id[$i])) > 0){
                      $this->session->set_flashdata('error','Chủ đề: <b>'.$this->vdb->find_by_id('category_prod',array('cat_id'=>$ar_id[$i]))->cat_title.'</b> vẫn còn bài viết. Vui lòng xóa bài viết');
                  }else{                        
                        if($this->vdb->delete('category_prod', array('cat_id'=>$ar_id[$i]))){  
                        	 //xoa cache
               				 $this->vdb->delcache(ROOT.'site/cache/menu/');                         
                            $this->session->set_flashdata('message','Đã xóa thành công');
                        }else{
                            $this->session->set_flashdata('error','Xóa không thành công');
                        }
                  }
                }
            }
        }
        redirect('category/listcategory/'.$page);
    } 
	/**
	 * write file
	 * 
	 */
    function writeSubmenu(){
    	//load file
    	$this->load->helper('file');
    	//get data
    	$listCat = $this->vdb->find_by_list('category_prod', array('parent_id'=>0,'published'=>1),array('ordering'=>'asc'));
    	//check data
    	if(count($listCat) > 0){
    		//loop data
    		foreach ($listCat as $val):
    			//get data with cat_id
    			$listCatsub = $this->vdb->find_by_list('category_prod', array('parent_id'=>$val->cat_id,'published'=>1),array('ordering'=>'asc'));
    			//init str
    			$str = '';
    			//check data
    			if(sizeof($listCatsub)>0){
	    			//loop data
	    			foreach ($listCatsub as $valSub):
	    				$name   = $valSub->cat_title;
	    				$link	= base_url_site().'chuyen-muc/'.$valSub->cat_alias.'-'.$valSub->cat_id.'.html';
	    				$str .= '<div class="col">';
	    				$str .= '<p class="title"><a href="'.$link.'" title="'.$name.'">'.$name.'</a></p>';
	    				//menu sub
	    				//get data with cat_id
	    				$listCatsub2 = $this->vdb->find_by_list('category_prod', array('parent_id'=>$valSub->cat_id,'published'=>1),array('ordering'=>'asc'));
	    				//check data
	    				if(count($listCatsub2)>0){	    					  			
		    				$str .= '<ul class="items">';
		    				//loop data
		    				foreach ($listCatsub2 as $valSub2):
			    				$name2   = $valSub2->cat_title;
			    				$link2	= base_url_site().'chuyen-muc/'.$valSub2->cat_alias.'-'.$valSub2->cat_id.'.html';
			    				$str .= '<li><a href="'.$link2.'">'.$name2.'</a></li>';
		    				endforeach;	    				
		    				$str .= '</ul>';
	    				
	    				}
	    				
	    				$str .= '</div>';
	    			
	    			endforeach;
    			
    			}
    		
    			//write file
    			write_file(ROOT.'site/cache/menu/submenu'.$val->cat_id.'.db', $str);
    		endforeach;
    	}
    	
    	
    	
    }
    
	/*----------------------------------+
	 * Uploader
	 +----------------------------------*/
     function uploader(){
       // $ProductID = $this->uri->segment(3);
       /// $session_info = $this->session->userdata('session_id');
        $dir 		= ROOT.'data/category/full_images/';
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
    
}