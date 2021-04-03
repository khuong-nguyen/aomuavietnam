<?php
class shop extends CI_Controller{
  protected $_templates;
  /**
   * Contructor
   */
  function __construct(){
      parent::__construct();
      $this->pre_message = "";
      $this->load->helper('img_helper');
      //load model
      $this->load->model('shop_model','shop');
      $this->load->model('category_model','category');
      //add css to view
     $js_array = array(
            array(base_url().'components/shop/views/esset/sangiare.js')
      );
      $this->esset->js($js_array);
      $this->group_id = $this->session->userdata('group_id');
      $this->user_id = $this->session->userdata('user_id');
      
  }

  // Danh sach san pham
  function listproduct(){
      $data['title'] = 'Danh sách sản phẩm';
      $data['add'] = 'shop/add';
      $data['delete'] = true;
       
      //******************************
      $data['listCategory'] 	= $this->vdb->find_by_list('category_prod',array('parent_id'=>0));
      
      //write_log(62,185,'Xem danh sách sản phẩm'); echo "asdasd"; exit;
      $catid = (int)$this->uri->segment(3);
      $field = $this->uri->segment(6);
      $order = $this->uri->segment(7);          
      $config['suffix'] = '/'.$field.'/'.$order;
     
      //get key   
      $productkey 	= $this->input->get('key');
      //home
      $ishome  = $this->input->get('home');
      //$page    = $this->uri->segment('4');
      $config['base_url'] 		= base_url().'shop/listproduct/'.$catid.'/'; 
      $config['total_rows']   	=  $this->shop->get_num_product($catid,$productkey, $ishome);
      $data['num'] 				= $config['total_rows'];
      $config['per_page']  		= 20;
      $config['uri_segment'] 	= 4; 
      $this->pagination->initialize($config);   

      
      $data['list'] 			=   $this->shop->get_all_product($catid,$field,$order,$config['per_page'],(int)$this->uri->segment(4), $productkey, $ishome);
      
      //set view paginator
      $data['pagination']    = $this->pagination->create_links();           
      $data['message'] = $this->pre_message;    
      //** load templets **************************       
      $this->_templates['page'] = 'list';
      $this->templates->load($this->_templates['page'],$data);
  }
  
  /**
   * action add
   */
  function add(){
      $data['title'] = 'Thêm mới sản phẩm';
      $data['save'] = true;
      $data['apply'] = true;
      $data['cancel'] = 'shop/listproduct';      

      $data['listCategory'] 	= $this->vdb->find_by_list('category_prod',array('parent_id'=>0));
      $data['listmanufacture'] 	= $this->shop->get_all_manufacture();

     
      $this->form_validation->set_rules('sp[productname]','Tên sản phẩm','required');
      $this->form_validation->set_rules('sp[manufactureid]','Nhà sản xuất','required');
      if($this->form_validation->run() == false){
          $this->pre_message = validation_errors(); 
      }else{
          if($id = $this->shop->save_product()){
          	// write_log(62,186,'Thêm mới sản phẩm');
              $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'shop/listproduct/';
                }else{
                    $url = 'shop/edit/'.$id;
                }
               //redirect
                redirect($url);
          }else{
              $this->pre_message = 'Lưu không thành công';
          }
      }
      $data['message'] = $this->pre_message;
      $this->_templates['page'] = 'add';
      $this->templates->load($this->_templates['page'],$data);
  }
  
  function edit(){
      $data['title'] = 'Cập nhật sản phẩm';
      $data['title'] = 'Cập nhật';
      $data['save'] = true;
      $data['apply'] = true;
      $data['cancel'] = 'shop/listproduct';      
      $productid = (int)$this->uri->segment(3);
      $data['rs'] = $this->shop->get_product_by_id($productid);
   
      $data['listmanufacture'] = $data['listmanufacture'] = $this->shop->get_all_manufacture();
      //get danh muc
      $data['listCategory'] 	= $this->vdb->find_by_list('category_prod',array('parent_id'=>0));
      
      $data['list_img'] = $this->shop->get_list_img_edit($productid);

     
      $this->form_validation->set_rules('sp[productname]','Tên sản phẩm - vi','required');
      $this->form_validation->set_rules('sp[manufactureid]','Nhà sản xuất','required');
      if($this->form_validation->run() == false){
          $this->pre_message = validation_errors(); 
      }else{
          if($this->shop->save_product()){
          	//write_log(62,187,'Cập nhật sản phẩm');
              $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'shop/listproduct/';
                }else{
                    $url = uri_string();
                }
                 //xoa cache redirec               
                redirect($url);
          }else{
              $this->pre_message = 'Lưu không thành công';
          }
      }
      $data['message'] = $this->pre_message;
      $this->_templates['page'] = 'edit';
      $this->templates->load($this->_templates['page'],$data);
  }

  function del_img(){
      $this->load->helper('file');
      $idimg = $this->input->post('idimg');
      $rs = $this->vdb->find_by_id('shop_img',array('imageid'=>$idimg));
      if($this->vdb->delete('shop_img',array('imageid'=>$idimg))){
          if(file_exists(ROOT.'data/products/200/'.$rs->imagepath)){
              unlink(ROOT.'data/products/200/'.$rs->imagepath);
              $data['msg1'] = 'Xóa file 1 thnah cong';
          }else{
              $data['error1'] = 'File 1 không ton tai';
          }
          if(file_exists(ROOT.'data/products/500/'.$rs->imagepath)){
              unlink(ROOT.'data/products/500/'.$rs->imagepath);
              $data['msg2'] = 'Xóa file 2 thnah cong';
          }else{
              $data['error2'] = 'File 2 không ton tai';
          }
          $data['error'] = 0;
      }else{
          $data['error'] = 1;
      }
      echo json_encode($data);
  }
  
  function uploader_edit(){
        $productid 		= $this->uri->segment(3);
        $rs 			= $this->vdb->find_by_id('shop_product',array('productid'=>$productid));
        $product_url 	= $rs->producturl;
        $order 			= $this->shop->get_max_order_img($productid);
        $ordering 		= $order + 1;
        $product_img_name = $product_url.'-'.$ordering;    
        $dir 			= ROOT.'temp/';
        $size=$_FILES['uploadfile']['size'];
        if($size>204857600)
        {
                echo "file_biger";
                unlink($_FILES['uploadfile']['tmp_name']);
                //exit;
        }            
        $filename = stripslashes($_FILES['uploadfile']['name']);
        $extension = strtolower(end(explode('.',$filename)));

  
        $file_name_new = $dir.$product_img_name.'.'.$extension;
        $file_ext = $product_img_name.'.'.$extension;
        if (move_uploaded_file($_FILES['uploadfile']['tmp_name'], $file_name_new)) {        	          
            vnitResizeImage($file_name_new, ROOT.'data/products/500/'.$file_ext,600,450);                           
            vnitResizeImage($file_name_new, ROOT.'data/products/200/'.$file_ext,240,230); 
            vnitResizeImage($file_name_new, ROOT.'data/products/40/'.$file_ext,40,40);
            
         	$vdata['productid'] = $productid;
            $vdata['imagepath'] = $file_ext;
            $vdata['ordering'] = $ordering;
            $imageid = $this->vdb->update('shop_img',$vdata);
            echo $file_ext.'|'.$imageid;
           
        } else {
            echo 'error';
        }
  }
  

  // Xoa 1 ban ghi
  function del(){
      $id = $this->uri->segment(3);
      $uri4 = $this->uri->segment(4);
      $uri5 = $this->uri->segment(5);
  if($this->group_id == 18){
              if($this->shop->delete_product($id)){
              	 
                  $this->session->set_flashdata('message','Đã xóa thành công');
              }else{
                  $this->session->set_flashdata('message','Xóa không thành công');
              } 
          }else{
              if($this->shop->delete_product_status($id)){
              	
                  $this->session->set_flashdata('message','Đã xóa thành công');
              }else{
                  $this->session->set_flashdata('message','Xóa không thành công');
              }
          }
      redirect('shop/listproduct/'.$uri4.'/'.$uri5);
  }
  // Xoa nhieu ban ghi
  function dels(){
        if(!empty($_POST['ar_id']))
        {
            $page = (int)$this->input->post('page');
            $catid = (int)$this->input->post('catid');
            $ar_id = $this->input->post('ar_id');
            for($i = 0; $i < sizeof($ar_id); $i ++) {
                if ($ar_id[$i]){
                 if($this->group_id == 18){ 
                            if($this->shop->delete_product($ar_id[$i])){
                            	//write_log(62,188,'Cập nhật sản phẩm');
                                $this->session->set_flashdata('message','Đã xóa thành công');
                            }else{
                                $this->session->set_flashdata('error','Xóa không thành công');
                            }
                        }else{
                            if($this->shop->delete_product_status($ar_id[$i])){
                                $this->session->set_flashdata('message','Đã xóa thành công');
                            }else{
                                $this->session->set_flashdata('error','Xóa không thành công');
                            } 
                        }
                }

            }
        }
        redirect('shop/listproduct/'.$catid.'/'.$page);
  }
  

  
  // Upload hinh san pham
  
  function uploader(){
  	 		
        $ProductID = $this->uri->segment(3);
        $session_info = $this->session->userdata('session_id');
        $dir 	= ROOT.'temp/';
        $size	= $_FILES['uploadfile']['size'];
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
        $extension 	= substr($filename,$i+1,$l);                 
        $extension 	= strtolower($extension); 
        $file_name 	= str_replace($extension,'',$filename);
        $name 		= time();
        $filename 	= $dir.$name.'.'.$extension;
        $file_ext 	= $name.'.'.$extension;
        if (move_uploaded_file($_FILES['uploadfile']['tmp_name'], $filename)) {              
            echo $file_ext;           
        } else {        	
            echo 'error';
        }
  } 
}
