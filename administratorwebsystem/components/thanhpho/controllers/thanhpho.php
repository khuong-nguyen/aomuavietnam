<?php
  class thanhpho extends CI_Controller{
      protected $_templates;
      function __construct(){
          parent::__construct();
          $this->mainmenu = 'morong';
      }
      function listthanhpho(){
        $this->create_config();
        $data['title'] = 'Danh sách thành phố';
        $data['delete'] = true;
        $data['add'] = 'thanhpho/add';
        $field = $this->uri->segment(4);
        $order = $this->uri->segment(5);   
        if($field =='' && $order == ''){
          $order = 'asc';
        }       
        $config['suffix'] = '/'.$field.'/'.$order;            
        $config['base_url'] = base_url().'thanhpho/listthanhpho/';  
        $config['total_rows']   =  $this->vdb->find_by_num('city',array('parentid'=>0));
        $data['num'] = $config['total_rows'];
        $config['per_page']  =   20;
        $config['uri_segment'] = 3; 
        $this->pagination->initialize($config);   
        $data['list'] =   $this->vdb->find_by_all('city',$config['per_page'],$this->uri->segment(3),array('parentid'=>0),$field,$order);
        $data['pagination']    = $this->pagination->create_links(); 
        $this->_templates['page'] = 'listthanhpho';
        $this->templates->load($this->_templates['page'],$data);
      }
      function add(){
        $data['title'] = 'Thêm mới thành phố';
        $data['save'] = true;
        $data['apply'] = true;
        $data['cancel'] = 'thanhpho/listthanhpho';        
        $data['list'] = $this->vdb->find_by_list('city',array('parentid'=>0));
        $this->form_validation->set_rules('tp[city_name]','Tên thành phố','required');
        if($this->form_validation->run() === false){
            $this->pre_message  = validation_errors();
        }
        else{
            $site = (int)$this->input->post('site');
            $tp = $this->input->post('tp');
            $tp_en = $this->input->post('tp_en');
            $tp['city_url'] = vnit_change_title($tp['city_name']);
            // English
            $tp_en['parentid'] = $tp['parentid'];
            $tp_en['city_url'] = vnit_change_title($tp_en['city_name']);
            //$tp_en['ordering'] = $tp['ordering'];
            $tp_en['site'] = $site;
            if($tp['parentid'] == 0){
               $tp_en['rate'] = $tp['rate']; 
            }
            $tp_en['published'] = $tp['published'];
            if($city_id = $this->vdb->update('city',$tp)){
                $tp_en['city_id'] = $city_id;
                $this->vdb->update('city_en',$tp_en);
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'thanhpho/listthanhpho';
                }else{
                    $url = 'thanhpho/edit/'.$city_id;
                }
                redirect($url);
            }
            
        }
        $data['message'] = $this->pre_message;
        $this->_templates['page'] = 'add';
        $this->templates->load($this->_templates['page'],$data);
        
      }
      function edit(){
        $data['title'] = 'Cập nhật thành phố';
        $data['save'] = true;
        $data['apply'] = true;
        $data['cancel'] = 'thanhpho/listthanhpho';
        $data['list'] = $this->vdb->find_by_list('city',array('parentid'=>0));
        $data['rs'] = $this->vdb->find_by_id('city',array('city_id'=>$this->uri->segment(3)));
        $data['rs_en'] = $this->vdb->find_by_id('city_en',array('city_id'=>$this->uri->segment(3)));
        // Form validation
        $this->form_validation->set_rules('tp[city_name]','Tên thành phố','required');
        $this->form_validation->set_rules('con[published]','','');
        if($this->form_validation->run() === FALSE){
            $this->pre_message = validation_errors();
        }else{
            $city_id = (int)$this->input->post('city_id');
            $site = (int)$this->input->post('site');
            $tp = $this->input->post('tp');  
            $tp_en = $this->input->post('tp_en');  
            $tp['city_url'] = vnit_change_title($tp['city_name']);
            $tp['site'] = $site;
            // English
            $tp_en['parentid'] = $tp['parentid'];
            $tp_en['city_url'] = vnit_change_title($tp_en['city_name']);  
            if($tp['parentid'] == 0){
               $tp_en['rate'] = $tp['rate']; 
            }
            $tp_en['site'] = $site;  
            $tp_en['published'] = $tp['published'];
            if($this->vdb->update('city',$tp,array('city_id'=>$city_id))){
                $this->vdb->update('city_en',$tp_en,array('city_id'=>$city_id));
                $this->session->set_flashdata('message','Lưu thành công');
                $option =  $this->input->post('option');
                if($option == 'save'){
                   $url = 'thanhpho/listthanhpho';
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
      
      function del(){
          $city_id = $this->uri->segment(3);
          $page = $this->uri->segment(4);
          if($this->vdb->delete('city', array('city_id'=>$id)))
                $this->session->set_flashdata('message','Đã xóa thành công');
          else $this->session->set_flashdata('message','Xóa không thành công');
          redirect('thanhpho/listthanhpho/'.$page);
      }
      // Xoa nhieu ban ghi
      function dels(){
            if(!empty($_POST['ar_id']))
            {
                $page = (int)$this->input->post('page');
                $ar_id = $this->input->post('ar_id');
                for($i = 0; $i < sizeof($ar_id); $i ++) {
                    if ($ar_id[$i]){
                        if($this->vdb->delete('city', array('city_id'=>$ar_id[$i])))
                        $this->session->set_flashdata('message','Đã xóa thành công');
                        else $this->session->set_flashdata('error','Xóa không thành công');
                    }
                }
            }
            redirect('thanhpho/listthanhpho/'.$page);
      }
      
      function create_config(){
          $this->load->helper('file');
          $list = $this->vdb->find_by_list('city',array('site'=>1,'parentid'=>0),array('city_id'=>'asc'));
          $total = count($list);
          $str = "<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');\n/**\n* File Config_site language ".vnit_lang().".\n* Date: ".date('d/m/y H:i:s').".\n**/";
          $str .= "\n\$config['total_city'] = $total;\n\n"; 
          $str .= "\n\$config['city_id_vi_0'] = 0;";
          $str .= "\n\$config['city_name_vi_0'] = 'Toàn Quốc';";
          $str .= "\n\$config['city_id_en_0'] = 0;";
          $str .= "\n\$config['city_name_en_0'] = 'National';\n";  
          $i = 1;
          foreach($list as $rs):
            $val = $this->vdb->find_by_id('city_en',array('city_id'=>$rs->city_id));
            $id = $rs->city_id;
            $city_vi_name = $rs->city_name;
            $city_en_name = $val->city_name;
            $str .= "\n\$config['city_id_vi_$i'] = $id;";
            $str .= "\n\$config['city_name_vi_$i'] = '$city_vi_name';";
            $str .= "\n\$config['city_id_en_$i'] = $id;";
            $str .= "\n\$config['city_name_en_$i'] = '$city_en_name';\n";
            $i ++;  
          endforeach;
          $str .= "\n\n/* End of file config_site*/";        
          write_file(ROOT_ADMIN.'config/config_city.php', $str);
      }
  }
?>