<?php
class tintuc extends CI_Controller{
    protected $_templates;
    function __construct(){
        parent::__construct();
        $this->load->model('tintuc_model','tintuc');
        $this->pre_message = "";
    }
    
    function danhmuc(){
        $data['title'] = 'Danh mục bài viết';
       	//xoa cahe
       	$this->vdb->delcache(ROOT.'site/cache/');
        $data['delete'] = true;
        $data['add'] = 'tintuc/addcat|'.icon_add('tintuc/addcat');
        $list = $this->tintuc->get_all_danhmuc();
        $data['num'] = count($list);
        $data['list'] = $list;
        $this->_templates['page'] = 'danhmuc/index';
        $this->templates->load($this->_templates['page'],$data);
    }
    
    function addcat(){
        $data['title'] = 'Thêm mới danh mục';
        $data['save'] = true;
        $data['apply'] = true;
        $data['cancel'] = 'tintuc/danhmuc';
        $data['listcat'] = $this->vdb->find_by_list('news_cat',array('parentid'=>0));
        $this->form_validation->set_rules('cat[catname]','Tiêu đề','required');
        $this->form_validation->set_rules('cat[ordering]','Sắp xếp','required');
        $this->form_validation->set_rules('cat[parentid]','','');
        $this->form_validation->set_rules('cat[desc]','','');
        $this->form_validation->set_rules('cat[keyword]','','');
        if($this->form_validation->run() === FALSE){
            $this->pre_message = validation_errors();
        }else{
            $cat = $this->input->post('cat');
            $cat['caturl'] = vnit_change_title($cat['catname']);
            
            $img			= $this->input->post("img");
            if(!empty($img)){
             	$this->load->helper('img_helper');                	             
                  $cat_img_thumb = 'data/category/thumb/'.$img;
                  vnit_resize_image(ROOT.'data/category/full_images/'.$img, ROOT.$cat_img_thumb,100,100,false);
                  $cat['image'] = $img;                  
            }    
            
            if($catid = $this->vdb->update('news_cat',$cat)){
               
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                	//xoa cache
                	$this->vdb->delcache(ROOT."site/cache/");
                    $url = 'tintuc/danhmuc';
                }else{
                    $url = 'tintuc/editcat/'.$catid;
                }
                redirect($url);
            }
        }
        $data['message'] = $this->pre_message;
        $this->_templates['page'] = 'danhmuc/add';
        $this->templates->load($this->_templates['page'],$data);
    }
    
    function editcat(){
        $data['title'] = 'Thêm mới danh mục';
        $data['save'] = true;
        $data['apply'] = true;
        $data['cancel'] = 'tintuc/danhmuc';
        $data['rs'] = $this->vdb->find_by_id('news_cat',array('catid'=>$this->uri->segment(3)));
        $data['listcat'] = $this->vdb->find_by_list('news_cat',array('parentid'=>0));
        $this->form_validation->set_rules('cat[catname]','Tiêu đề','required');
        $this->form_validation->set_rules('cat[ordering]','Sắp xếp','required');
        $this->form_validation->set_rules('cat[parentid]','','');
        $this->form_validation->set_rules('cat[desc]','','');
        $this->form_validation->set_rules('cat[keyword]','','');
        if($this->form_validation->run() === FALSE){
            $this->pre_message = validation_errors();
        }else{
            $catid 			= $this->input->post('catid');
            $cat 			= $this->input->post('cat');
            $cat['caturl'] 	= vnit_change_title($cat['catname']);
            $img			= $this->input->post("img");
            if(!empty($img)){
             	$this->load->helper('img_helper');   
             	             
                  $cat_img_thumb = 'data/category/thumb/'.$img;
                  vnit_resize_image(ROOT.'data/category/full_images/'.$img,ROOT.$cat_img_thumb,100,100,false);
                  $cat['image'] = $img;                  
            }    
            if($this->vdb->update('news_cat',$cat,array('catid'=>$catid))){
              
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                	//xoa cache
                	$this->vdb->delcache(ROOT."site/cache/");
                    $url = 'tintuc/danhmuc';
                }else{
                    $url = 'tintuc/editcat/'.$catid;
                }
                redirect($url);
            }
        }
        $data['message'] = $this->pre_message;
        $this->_templates['page'] = 'danhmuc/edit';
        $this->templates->load($this->_templates['page'],$data);
    }
    
    function delscat(){
        $ar_id = $this->input->post('ar_id');
        $msg = '';
        for($i = 0; $i < sizeof($ar_id); $i++){
            if($ar_id[$i]){
                 $rs = $this->vdb->find_by_id('news_cat',array('catid'=>$ar_id[$i]));
                 $checkcat = $this->tintuc->check_danhmuc($ar_id[$i]);
                 if($checkcat){
                      $checkbaiviet = $this->tintuc->check_baiviet($ar_id[$i]);
                      if($checkbaiviet){    
                          $this->vdb->delete('news_cat',array('catid'=>$ar_id[$i]));
                        
                          $msg .='<div>Danh mục: <b>'.$rs->catname.'</b> đã được xóa thành công</div>';
                      }else{
                          $msg .='<div>Danh mục: <b>'.$rs->catname.'</b> vẫn tồn tại bài viết. Không thể xóa</div>';
                      }
                 }else{
                     $msg .='<div>Danh mục: <b>'.$rs->catname.'</b> vẫn tồn tại danh mục con. Không thể xóa</div>';
                 }
            }
        }
        
        $this->session->set_flashdata('message',$msg);
        redirect('tintuc/danhmuc');
    }
    
    
    //************************
    // Controller Bai viet
    //**************************
    function baiviet(){
        $data['title'] = 'Quản lý bài viết';
        
        $data['add'] = 'tintuc/add|'.icon_add('tintuc/add');
        $data['delete'] = true;
        

        $data['cat_id'] = (int)$this->input->get('cat_id');
        $data['key'] = $this->input->get('key');
        $data['listcat'] = $this->tintuc->get_all_danhmuc();
        
        $field = $this->uri->segment(4);
        $order = $this->uri->segment(5);          
        
        $cat_id = ($data['cat_id'] != 0) ? '&cat_id='.$data['cat_id'] : '';
        $key = ($data['key'] != '') ? '&key='.$data['key'] : '';
        
        $config['suffix'] = '/'.$field.'/'.$order.'?option=true'.$cat_id.$key;          
        $config['base_url'] = base_url().'content/listcontent/';  
        $config['total_rows']   =  $this->tintuc->get_num_baiviet($data['cat_id'], $data['key']);
        $data['num'] = $config['total_rows'];
        $config['per_page']  =   20;
        $config['uri_segment'] = 3; 
        $this->pagination->initialize($config);   
        $data['list'] =   $this->tintuc->get_all_baiviet($config['per_page'], $this->uri->segment(3), $data['cat_id'], $data['key'], $field, $order);
        $data['pagination']    = $this->pagination->create_links();         
        $this->_templates['page'] = 'baiviet/index';
        $this->templates->load($this->_templates['page'],$data);
    }
    
    function add(){
        $data['title'] = 'Thêm mới bài viết';
        $data['save'] = true;
        $data['apply'] = true;
        $data['cancel'] = 'tintuc/baiviet';        
        $data['listcat'] = $this->tintuc->get_all_danhmuc(); 
        
        // Form validation
        $this->form_validation->set_rules('con[title]','Tiêu đề','required');
        $this->form_validation->set_rules('content','Nội dung','required');
        
        if($this->form_validation->run() === FALSE){
            $this->pre_message = validation_errors();
        }else{

            $catid = $this->input->post('catid');
            $con = $this->input->post('con');
            $attr = $this->input->post('attr');
            $con['title_alias'] = vnit_change_title($con['title']);
            $con['catid'] 		= $catid;
            $con['caturl'] 		= $this->vdb->find_by_id('news_cat',array('catid'=>$catid))->caturl;
            $con['fulltext'] 	= $this->input->post('content');
            $con['hot']		 	= (int)$this->input->post('hot');
            $con['created_by'] 	= $this->session->userdata('user_id');
            $con['created'] 	= time();
            
            if($this->input->post('img')!=''){
                  $this->load->helper('img_helper');
                  $images 	= $this->input->post('img');
                 
                  $news_img_thumb = 'data/news/thumb/'.$images;
                  vnit_resize_image(ROOT.'data/news/full_images/'.$images,ROOT.$news_img_thumb,200,200,false);
                  $con['images'] = $images;                  
            }
            if($id = $this->vdb->update('news_detail',$con)){
               
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'tintuc/baiviet';
                }else{
                    $url = 'tintuc/edit/'.$id;
                }
                redirect($url);
            }
        }
        $data['message'] = $this->pre_message;
        $this->_templates['page'] = 'baiviet/add';
        $this->templates->load($this->_templates['page'],$data);
    }   
    
    function edit(){
        $data['title'] = 'Cập nhật bài viết';
        $data['save'] = true;
        $data['apply'] = true;
        $data['cancel'] = 'tintuc/baiviet';        
        $data['listcat'] = $this->tintuc->get_all_danhmuc(); 
        
        // Form validation
        $data['rs'] = $this->vdb->find_by_id('news_detail',array('newsid'=>$this->uri->segment(3)));
        $this->form_validation->set_rules('con[title]','Tiêu đề','required');
        $this->form_validation->set_rules('content','Nội dung','required');
        $this->form_validation->set_rules('con[published]','','');
        if($this->form_validation->run() === FALSE){
            $this->pre_message = validation_errors();
        }else{
            $newsid = $this->input->post('newsid');
            $catid = $this->input->post('catid');
            $con = $this->input->post('con');
            $attr = $this->input->post('attr');
            $con['title_alias'] = vnit_change_title($con['title']);
            $con['catid'] = $catid;
            $con['caturl'] = $this->vdb->find_by_id('news_cat',array('catid'=>$catid))->caturl;
            $con['fulltext'] = $this->input->post('content');
            $con['hot'] = (int)$this->input->post('hot');
            $con['created_by'] = $this->session->userdata('user_id');
            $con['modified'] = time();            
            if($this->input->post('img')!=''){
                  $this->load->helper('img_helper');
                  $images = $this->input->post('img');
                  
                  $news_img_thumb = 'data/news/thumb/'.$images;
                  vnit_resize_image(ROOT.'data/news/full_images/'.$images,ROOT.$news_img_thumb,200,200,false);
                  $con['images'] = $images;                 
            }
            if($this->vdb->update('news_detail',$con,array('newsid'=>$newsid))){
                 
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'tintuc/baiviet';
                }else{
                    $url = 'tintuc/edit/'.$newsid;
                }
                redirect($url);
            }
        }
        $data['message'] = $this->pre_message;
        $this->_templates['page'] = 'baiviet/edit';
        $this->templates->load($this->_templates['page'],$data);
    } 
    
    // Xoa nhieu bai viet
    function dels(){
        $ar_id = $this->input->post('ar_id');
        $page = $this->input->post('page');
        for($i = 0; $i < sizeof($ar_id); $i++){
            if($ar_id[$i]){
                 $title = $this->vdb->find_by_id('news_detail',array('newsid'=>$ar_id[$i]))->title;
                 $this->vdb->delete('news_detail',array('newsid'=>$ar_id[$i]));
                 $this->vdb->delete('news_comment',array('newsid'=>$ar_id[$i]));
                 
            }
        }
        
        $this->session->set_flashdata('message','Xóa bài viết thành công');
        redirect('tintuc/baiviet/'.$page); 
    }
    
    // Xóa 01 bai viet
    function del(){
        $page = $this->uri->segment(4);
        $newsid = $this->uri->segment(3);
        $title = $this->vdb->find_by_id('news_detail',array('newsid'=>$newsid))->title;
        if($this->vdb->delete('news_detail',array('newsid'=>$newsid))){
          
            $this->session->set_flashdata('message','Xóa bài viết thành công');
        }else{
            $this->session->set_flashdata('message','Xóa bài viết không thành công');
        }
        redirect('tintuc/baiviet/'.$page);
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
        $dir 		= ROOT.'data/news/full_images/';
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
	 * Uploader
	 +----------------------------------*/
     function uploader1(){
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

