<?php
class manufacture extends CI_Controller{
  protected $_templates;
  function __construct(){
      parent::__construct();
      $this->pre_message = "";
      $this->uri3 = $this->uri->segment(3);
      $this->uri4 = $this->uri->segment(4);        
      $this->load->model('manufacture_model','manufacture');
      $this->load->helper('img');
      $this->mainmenu = 'sangiare';
  }
  
  function index(){
      $this->listmanufacture();
  }
  
  function listmanufacture(){
      $data['title'] = 'Danh sách xuất xứ';
     // write_log(65,200,'Xem danh sách nhà sản xuất');
      $data['delete'] = true;
      $data['add'] = 'product/manufacture/add';
      $field = $this->uri->segment(5);
      $order = $this->uri->segment(6);          
      $config['suffix'] = '/'.$field.'/'.$order;          
      $config['base_url'] = base_url().'product/manufacture/listmanufacture/';  
      $config['total_rows']   =  $this->manufacture->get_num_manufacture();
      $data['num'] = $config['total_rows'];
      $config['per_page']  =   20;
      $config['uri_segment'] = 4; 
      $this->pagination->initialize($config);   
      $data['list'] =   $this->manufacture->get_all_manufacture($field,$order,$config['per_page'],$this->uri->segment(4));
      $data['pagination']    = $this->pagination->create_links();           
      $data['message'] = $this->pre_message;          
      $this->_templates['page'] = 'manufacture/list';
      $this->templates->load($this->_templates['page'],$data);
  }
  
  function add(){
      $data['title'] = 'Thêm mới';
     
      $data['save'] = true;
      $data['apply'] = true;
      $data['cancel'] = 'product/manufacture/listmanufacture';      
      $this->form_validation->set_rules('nsx[name]','Tên nhà sản xuất','trim|required');
      $this->form_validation->set_rules('nsx[images_root]','',''); 
      if($this->form_validation->run() == false){
          $this->pre_message = validation_errors();
      }else{
          $nsx = $this->input->post('nsx');
          $nsx['name_url'] = vnit_change_title($nsx['name']);
         
          if($id = $this->vdb->update('shop_manufacture',$nsx)){
          	 //	write_log(65,201,'Thêm manufacture: '.$nsx['name']);
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'product/manufacture/listmanufacture/';
                }else{
                    $url = 'product/manufacture/edit/'.$id;
                }
                redirect($url);
          }else{
              $this->pre_message  = 'Lưu không thành công';
          }
      }
      $data['message'] = $this->pre_message;
      $this->_templates['page'] = 'manufacture/add';
      $this->templates->load($this->_templates['page'],$data);
  }
  function edit(){
      $data['title'] = 'Cập nhật';
      $data['save'] = true;
      $data['apply'] = true;
      $data['cancel'] = 'product/manufacture/listmanufacture';          
      $data['rs'] = $this->manufacture->get_manufacture_by_id($this->uri4);
      $this->form_validation->set_rules('nsx[name]','Tên nhà sản xuất','trim|required');
      $this->form_validation->set_rules('nsx[images_root]','','');
      if($this->form_validation->run() == false){
          $this->pre_message = validation_errors();
      }else{
            $id = $this->input->post('id');
            $nsx = $this->input->post('nsx');
            $img_old = $this->input->post('img_old');
            $nsx['name_url'] = vnit_change_title($nsx['name']);
            
          
          
          if($this->vdb->update('shop_manufacture',$nsx,array('manufactureid'=>$id))){
          		//write_log(65,202,'Xem danh sách nhà sản xuất');
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'product/manufacture/listmanufacture/';
                }else{
                    $url = uri_string();
                }
                redirect($url);              
          }else{
              $this->pre_message  = 'Lưu không thành công';
          }
      }
      $data['message'] = $this->pre_message;
      $this->_templates['page'] = 'manufacture/edit';
      $this->templates->load($this->_templates['page'],$data);
  }
  
  // Xoa 1 ban ghi
  function del(){
      $id = $this->uri->segment(4);
      $page = $this->uri->segment(5);
        if($this->manufacture->delete($id))
            $this->session->set_flashdata('message','Đã xóa thành công');
        else $this->session->set_flashdata('message','Xóa không thành công');
      redirect('product/manufacture/listmanufacture/'.$page);
  }
  // Xoa nhieu ban ghi
  function dels(){
        if(!empty($_POST['ar_id']))
        {
            $page = (int)$this->input->post('page');
            $ar_id = $this->input->post('ar_id');
            for($i = 0; $i < sizeof($ar_id); $i ++) {
                if ($ar_id[$i]){
                    if($this->manufacture->delete($ar_id[$i]))
                    $this->session->set_flashdata('message','Đã xóa thành công');
                    else $this->session->set_flashdata('error','Xóa không thành công');
                }
            }
        }
        redirect('product/manufacture/listmanufacture/'.$page);
  }            
}
