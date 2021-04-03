<?php
class introduction extends CI_Controller{
    protected $_templates;
    function __construct(){
        parent::__construct();
        $this->load->model('introduction_model','tintuc');
        $this->pre_message = "";
      
    }
    function index(){
    	
    }
    
    //************************
    // Controller Bai viet
    //**************************
    function baiviet(){
        $data['title'] = 'Danh sách bài viết';
        
        $data['add'] = 'introduction/add|'.icon_add('introduction/add');
        $data['delete'] = true;        
		
        $this->vdb->delcache(ROOT.'site/cache/menu/');
        
        $data['key'] = $this->input->get('key');
        $data['listcat'] = $this->tintuc->get_all_danhmuc();
        
        $field = $this->uri->segment(4);
        $order = $this->uri->segment(5);          
        
     
        $key = ($data['key'] != '') ? '&key='.$data['key'] : '';
        
        $config['suffix'] 		= '/'.$field.'/'.$order.'?option=true'.$key;          
        $config['base_url'] 	= base_url().'introduction/baiviet/';  
        $config['total_rows']   =  $this->tintuc->get_num_baiviet($data['key']);
        $data['num'] 			= $config['total_rows'];
        $config['per_page']  	=   20;
        $config['uri_segment'] 	= 3; 
        $this->pagination->initialize($config);   
        $data['list'] =   $this->tintuc->get_all_baiviet($config['per_page'], $this->uri->segment(3), $data['key'], $field, $order);
        $data['pagination']    = $this->pagination->create_links();
                 
        //load templates ****************************************
        $this->_templates['page'] = 'index';
        $this->templates->load($this->_templates['page'],$data);
    }
    
    function add(){
        $data['title'] = 'Thêm mới ';
        $data['save'] 	= true;
        $data['apply'] 	= true;
        $data['cancel'] = 'introduction/baiviet';        
        
        // Form validation
        $this->form_validation->set_rules('con[name]','Tiêu đề','required');
       
        if($this->form_validation->run() === FALSE){
            $this->pre_message = validation_errors();
        }else{
            $con 			  = $this->input->post('con');                 
            $con['content']   = $this->input->post('content');           
            $con['date_time'] = time();
          
            
        	if($this->input->post('img')!=''){
                  $this->load->helper('img_helper');
                  $img 		 = $this->input->post('img');                  
                  $imgThumb   = 'data/introduction/thumb/'.$img;
                  vnit_resize_image(ROOT.'data/introduction/full_images/'.$img,ROOT.$imgThumb,200,200,false);
                  $con['img'] = $img;
                 
            }
            
            if($id = $this->vdb->update('introduction',$con)){               
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'introduction/baiviet';
                }else{
                    $url = 'introduction/edit/'.$id;
                }
                redirect($url);
            }
        }
        $data['message'] = $this->pre_message;
        $this->_templates['page'] = 'add';
        $this->templates->load($this->_templates['page'],$data);
    }   
    
    function edit(){
        $data['title'] = 'Cập nhật';
        $data['save'] = true;
        $data['apply'] = true;
        $data['cancel'] = 'introduction/baiviet';        
        
        // Form validation
        $data['rs'] = $this->vdb->find_by_id('introduction',array('id'=>$this->uri->segment(3)));
        $this->form_validation->set_rules('con[name]','Tiêu đề','required');       
       
        if($this->form_validation->run() === FALSE){
            $this->pre_message = validation_errors();
        }else{
            $id 				= $this->input->post('id');           
            $con 				= $this->input->post('con');                      
            $con['content'] 	= $this->input->post('content');            
            $con['date_time'] 	= time();
           
            
            if($this->input->post('img')!=''){
                  $this->load->helper('img_helper');
                  $img 				= $this->input->post('img');                  
                  $imgThumb   = 'data/introduction/thumb/'.$img;
                  vnit_resize_image(ROOT.'data/introduction/full_images/'.$img,ROOT.$imgThumb,200,200,false);
                  $con['img'] = $img;
                 
            }
            if($this->vdb->update('introduction',$con,array('id'=>$id))){
                 
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'introduction/baiviet';
                }else{
                    $url = 'introduction/edit/'.$id;
                }
                redirect($url);
            }
        }
        $data['message'] = $this->pre_message;
        $this->_templates['page'] = 'edit';
        $this->templates->load($this->_templates['page'],$data);
    } 
    
    // Xoa nhieu bai viet
    function dels(){
        $ar_id = $this->input->post('ar_id');
        $page = $this->input->post('page');
        for($i = 0; $i < sizeof($ar_id); $i++){
            if($ar_id[$i]){
                 $title = $this->vdb->find_by_id('introduction',array('id'=>$ar_id[$i]))->name;
                 $this->vdb->delete('introduction',array('id'=>$ar_id[$i]));
                 
                 
            }
        }
        
        $this->session->set_flashdata('message','Xóa bài viết thành công');
        redirect('introduction/baiviet/'.$page); 
    }
    
    // Xóa 01 bai viet
    function del(){
        $page = $this->uri->segment(4);
        $newsid = $this->uri->segment(3);
        $title = $this->vdb->find_by_id('introduction',array('id'=>$newsid))->name;
        if($this->vdb->delete('introduction',array('id'=>$newsid))){
          
            $this->session->set_flashdata('message','Xóa bài viết thành công');
        }else{
            $this->session->set_flashdata('message','Xóa bài viết không thành công');
        }
        redirect('introduction/baiviet/'.$page);
    }
    
    
    
 
	/*----------------------------------+
	 * Uploader
	 +----------------------------------*/
     function uploader(){
       // $ProductID = $this->uri->segment(3);
       /// $session_info = $this->session->userdata('session_id');
        $dir 		= ROOT.'data/introduction/full_images/';
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

