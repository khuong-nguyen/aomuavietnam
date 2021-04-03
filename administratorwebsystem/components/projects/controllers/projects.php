<?php
class projects extends CI_Controller{
    protected $_templates;
    function __construct(){
        parent::__construct();
        $this->load->model('projects_model','tintuc');
        $this->pre_message = "";
      
    }
    function index(){
    	
    }
    
    //************************
    // Controller Bai viet
    //**************************
    function baiviet(){
        $data['title'] = 'Danh sách bài viết';
        
        $data['add'] = 'projects/add|'.icon_add('projects/add');
        $data['delete'] = true;        

        $data['key'] = $this->input->get('key');
        $data['listcat'] = $this->tintuc->get_all_danhmuc();
        
        $field = $this->uri->segment(4);
        $order = $this->uri->segment(5);          
        
     
        $key = ($data['key'] != '') ? '&key='.$data['key'] : '';
        
        $config['suffix'] 		= '/'.$field.'/'.$order.'?option=true'.$key;          
        $config['base_url'] 	= base_url().'projects/baiviet/';  
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
        $data['title'] = 'Thêm mới dự án';
        $data['save'] 	= true;
        $data['apply'] 	= true;
        $data['cancel'] = 'projects/baiviet';        
        
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
                  $imgThumb   = 'data/projects/thumb/'.$img;
                  vnit_resize_image(ROOT.'data/projects/full_images/'.$img,ROOT.$imgThumb,200,200,false);
                  $con['img'] = $img;
                 
            }
            
            if($id = $this->vdb->update('projects',$con)){               
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'projects/baiviet';
                }else{
                    $url = 'projects/edit/'.$id;
                }
                redirect($url);
            }
        }
        $data['message'] = $this->pre_message;
        $this->_templates['page'] = 'add';
        $this->templates->load($this->_templates['page'],$data);
    }   
    
    function edit(){
        $data['title'] = 'Cập nhật dự án';
        $data['save'] = true;
        $data['apply'] = true;
        $data['cancel'] = 'projects/baiviet';        
        
        // Form validation
        $data['rs'] = $this->vdb->find_by_id('projects',array('id'=>$this->uri->segment(3)));
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
                  $imgThumb   = 'data/projects/thumb/'.$img;
                  vnit_resize_image(ROOT.'data/projects/full_images/'.$img,ROOT.$imgThumb,200,200,false);
                  $con['img'] = $img;
                 
            }
            if($this->vdb->update('projects',$con,array('id'=>$id))){
                 
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'projects/baiviet';
                }else{
                    $url = 'projects/edit/'.$id;
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
                 $title = $this->vdb->find_by_id('projects',array('id'=>$ar_id[$i]))->name;
                 $this->vdb->delete('projects',array('id'=>$ar_id[$i]));
                 
                 
            }
        }
        
        $this->session->set_flashdata('message','Xóa bài viết thành công');
        redirect('projects/baiviet/'.$page); 
    }
    
    // Xóa 01 bai viet
    function del(){
        $page = $this->uri->segment(4);
        $newsid = $this->uri->segment(3);
        $title = $this->vdb->find_by_id('projects',array('id'=>$newsid))->name;
        if($this->vdb->delete('projects',array('id'=>$newsid))){
          
            $this->session->set_flashdata('message','Xóa bài viết thành công');
        }else{
            $this->session->set_flashdata('message','Xóa bài viết không thành công');
        }
        redirect('projects/baiviet/'.$page);
    }
    
    
    
    //***********************
    //commen
    //********************
    function listcomment(){
      $data['title'] = 'Danh sách bình luận';
     
      $data['delete'] = icon_dels('tintuc/delscomment');
      $field = $this->uri->segment(5);
      $order = $this->uri->segment(6);          
      $config['suffix'] = '/'.$field.'/'.$order; 
      $config['base_url'] = base_url().'tintuc/listcomment/';
      $config['total_rows']   =  $this->tintuc->get_num_comment();
      $data['num'] = $config['total_rows'];
      $config['per_page']  =   20;
      $config['uri_segment'] = 4; 
      $this->pagination->initialize($config);   
      $data['list'] =   $this->tintuc->get_all_comment($field,$order,$config['per_page'],$this->uri->segment(4));
      $data['pagination']    = $this->pagination->create_links();           
      $data['message'] = $this->pre_message;    
      
      $this->_templates['page'] ='comment/list';
      $this->templates->load($this->_templates['page'],$data);
  }
  
  function editcomment(){
      $data['title'] = 'Cập nhật bình luận';
      $data['save'] = true;
      $data['apply'] = true;
      $data['cancel'] = 'tintuc/listcomment';       
      $data['rs'] = $this->tintuc->get_comment_by_id($this->uri->segment(3));
      //Form validation
      $this->form_validation->set_rules('comment[fullname]','Người gửi bình luận','required');
      $this->form_validation->set_rules('comment[content]','Nội dung','required');
      if($this->form_validation->run() == false){
          $this->pre_message = validation_errors();
      }else{
          $id = $this->input->post('commentid');
          $page = $this->input->post('page');
          $com = $this->input->post('comment');
          if($this->vdb->update('news_comment',$com,array('commentid'=>$id))){
             
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'tintuc/listcomment/'.$page;
                }else{
                    $url = uri_string();
                }
                redirect($url);              
          }
      }
      $data['message'] = $this->pre_message;
      $this->_templates['page'] = 'comment/edit';
      $this->templates->load($this->_templates['page'],$data);
  }
  // Xoa 1 ban ghi
  function delcomment(){
      $id = $this->uri->segment(4);
      $page = $this->uri->segment(5);
        if($this->shop->delete_comment($id)) {
            
            $this->session->set_flashdata('message','Đã xóa thành công');  
        }
            
        else $this->session->set_flashdata('message','Xóa không thành công');
      redirect('tintuc/listcomment/'.$page);
  }
  // Xoa nhieu ban ghi
  function delscomment(){
        if(!empty($_POST['ar_id']))
        {
            $page = (int)$this->input->post('page');
            $ar_id = $this->input->post('ar_id');
            for($i = 0; $i < sizeof($ar_id); $i ++) {
                if ($ar_id[$i]){
                    if($this->shop->delete_comment($ar_id[$i])) {
                       
                        $this->session->set_flashdata('message','Đã xóa thành công');
                    }
                    
                    else $this->session->set_flashdata('error','Xóa không thành công');
                }
            }
        }
        redirect('tintuc/listcomment/'.$page);
  } 
  
	/*----------------------------------+
	 * Uploader
	 +----------------------------------*/
     function uploader(){
       // $ProductID = $this->uri->segment(3);
       /// $session_info = $this->session->userdata('session_id');
        $dir 		= ROOT.'data/projects/full_images/';
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

