<?php
/**************************
* Controller API - Ajax
* Author: Tran Ngoc Duoc
* Email: tranngocduoc@gmail.com
* Date: 17/06/2011
***************************/
  class api extends CI_Controller{
      function __construct(){
          parent::__construct();
      }
      
      // Tuy chinh hien thi trang thai cua ban ghi 
      function publish(){
          $status = $this->input->post('published');
          $id 	  = $this->input->post('id');
          $field = $this->input->post('field');
          $table = $this->input->post('table');
          if($status==0){
              $pub = 1;
          }else{
              $pub = 0;
          }
          $this->db->set('published',$pub);
          $this->db->where($field,$id);
          $this->db->update($table);                             
          echo icon_active("'$table'","'$field'",$id,$pub);
      }
      
      // SET ngon ngu
      
      function setlang(){
          $lang = $this->input->post('lang');
          $this->session->set_userdata(array('lang_admin'=>$lang));
      }
      
      
      
    /*----------------------------------+
	 * Uploader
	 +----------------------------------*/
     function uploader($dirPath){
       // $ProductID = $this->uri->segment(3);
       /// $session_info = $this->session->userdata('session_id');
        $dir 		= ROOT.$dirPath;
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