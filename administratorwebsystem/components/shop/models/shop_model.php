<?php
  class shop_model extends CI_Model{
      function __construct(){
          parent::__construct();
      }

      /*********************************|
      |                                 |
      |  Model xu ly danh muc san pham  |
      |                                 |
      |*********************************/

      
      function get_all_manufacture(){
          $this->db->order_by('manufactureid','DESC');
          return $this->db->get('shop_manufacture')->result();
      }  
      
      function get_all_product($catid, $field, $order, $num, $offset,$productkey = null,  $ishome = null){ 
      	    
          if($catid != 0){
          	$ar_cat = $this->get_arr_catId($catid);   
          	//$ar_cat = implode(',', $ar_cat);   
          
            $this->db->where_in('catid',$ar_cat);
          }
          if($productkey !=null){
          	$this->db->like('shop_product.productname',$productkey);
          }
          
          //check $ishome
          if($ishome != null){
          	$this->db->like('shop_product.is_home', $ishome);
          }
          //check
         if($field != 0){
          	$this->db->order_by($field,$order);
          }else{
           	$this->db->order_by('productid','DESC');
          } 
          return $this->db->get('shop_product', $num, $offset)->result();
      } 
      
      function get_num_product($catid, $productkey = null, $ishome = null){
         
         if($catid != 0){
         	$ar_cat = $this->get_arr_catId($catid);         	
            $this->db->where_in('catid',$ar_cat);          	
          }          
          if($productkey !=null){
          	$this->db->like('shop_product.productname', $productkey);
          }
          //check $ishome
          if($ishome != null){
          	$this->db->like('shop_product.is_home', $ishome);
          }
          //return result 
          return $this->db->get('shop_product')->num_rows();
      }
      
   

      // Lưu san pham

      function save_product(){
          $productid = (int)$this->input->post('productid');          
          $sp = $this->input->post('sp');        
          
          // Vietnamese
          $sp['producturl'] 		= vnit_change_title($sp['productname']);          
          $sp['date_time'] 			= time();          
          $sp['price'] 				= str_replace('.','',$sp['price']);
          $sp['price_front'] 		= str_replace('.','',$sp['price_front']);
          $sp['icon_hot'] 			= (!empty($sp['icon_hot']))?$sp['icon_hot']:0;
          $sp['icon_deal'] 			= (!empty($sp['icon_deal']))?$sp['icon_deal']:0;
          $sp['icon_new'] 			= (!empty($sp['icon_new']))?$sp['icon_new']:0;
       		
          if($productid != 0){          	
                if($this->vdb->update('shop_product',$sp,array('productid'=>$productid))){                 	                                     
                    return true;
                }else{
                    return false;
                }
          }else{
              
              if($productid = $this->vdb->update('shop_product', $sp)){                
                // Them danh sach hinh anh vao san sham
                $ar_img = $this->input->post('ar_img');
                if(sizeof($ar_img) > 0){                
                    //$this->vdb->delete('shop_img',array('productid'=>$productid));
                    $k = 1;
                    for($i=0; $i < sizeof($ar_img); $i++){
                        if($ar_img[$i]){
                          $ext = strtolower(end(explode('.',$ar_img[$i])));
                          $file_name = $sp['producturl'].'-'.$k.'.'.$ext;
                          // Hinh anh san pham san gia re
                          //vnit_resize_image(ROOT.'temp/'.$ar_img[$i],ROOT.'data/products/500/'.$file_name,400,300,true,'#000000');
                          vnitResizeImage(ROOT.'temp/'.$ar_img[$i], ROOT.'data/products/500/'.$file_name,600,450);                         
                          vnitResizeImage(ROOT.'temp/'.$ar_img[$i], ROOT.'data/products/200/'.$file_name,240,230);  
                          vnitResizeImage(ROOT.'temp/'.$ar_img[$i], ROOT.'data/products/40/'.$file_name,40,40);  
                          
                          $vimg['imagepath'] 	= $file_name;
                          $vimg['productid'] 	= $productid;
                          $vimg['ordering'] 	= $k;
                          $this->vdb->update('shop_img',$vimg);
                          if($sp['productimg'] == $ar_img[$i]){
                              $img_vi['productimg'] = $file_name;
                              $this->vdb->update('shop_product',$img_vi,array('productid'=>$productid));
                                                            
                          }
                          $k++;
                      }
                    }
                }             
                   
                 return $productid; 
              }else{
                  return false;
              }
          }
      }
      
      function get_max_order_img($productid){
          $this->db->select_max('ordering');
          $this->db->where('productid',$productid);
          $row = $this->db->get('shop_img')->row();
          return $row->ordering;
      }
      
      function delete_product($productid){
          // Xoa hinh anh
          $list = $this->get_img_by_product_id($productid);
          foreach($list as $rs):
            unlink(ROOT_IMG.'sangiare/200/'.$rs->imagepath);
            unlink(ROOT_IMG.'sangiare/500/'.$rs->imagepath);         
          endforeach;
          $this->db->where('productid',$productid);
          $this->db->delete('shop_img');
          
          $this->db->where('productid',$productid);
          if($this->db->delete('shop_product')){
              return true;
          }else{
              return false;
          }
          
      }
      
      // Xoa tam san pham chơ xử lý
      function delete_product_status($productid){
          $vdata['del'] = 1;
          if($this->vdb->update('shop_product',$vdata,array('productid'=>$productid))){
             
              return true;
          }else{
              return false;
          }
      }

      
      
      // Kiem tra session anh cua san pham
      function get_img_by_session($session){
          $this->db->where('session_id',$session);
          $query = $this->db->get('shop_img');
          return $query->result();
      }
      
      // Danh sach hinh anh cua san pham
      function get_img_by_product_id($ProductID){
          $this->db->where('productid',$ProductID);
          return $this->db->get('shop_img')->result();
      }      
      
      /*******
      * Du lieu cap nhat
      */
      
      // Lay du lieu tu 1 record
      function get_product_by_id($productid,$lang = ''){
          $this->db->where('productid',$productid);
          return $this->db->get('shop_product'.$lang)->row();
      }

      
      function get_list_img_edit($productid){
          $this->db->where('productid',$productid);
          return $this->db->get('shop_img')->result();
      }


      /**********
      * Proces Ajax Shopping
      */
      function add_img($filename,$ProductID,$session){
          if($ProductID!=0){
              if($filename!=''){
                  vnitResizeImage(ROOT.'data/shop/product/500/'.$filename,ROOT.'data/shop/product/200/'.$filename,204,200,true,'#000000');
                  vnitResizeImage(ROOT.'data/shop/product/500/'.$filename,ROOT.'data/shop/product/155/'.$filename,155,145,true,'#000000');
                  vnitResizeImage(ROOT.'data/shop/product/500/'.$filename,ROOT.'data/shop/product/176/'.$filename,176,145,true,'#000000');
              }  
          }  
          $data = array(
            'imagepath' => $filename,
            'productid' => (int)$ProductID,
            'session_id' => ($ProductID!=0)?'':$session
          );
          $this->db->insert('shop_img',$data);
          
          return $this->db->insert_id();;
      }
 //********************************
  	 function get_arr_catId($catid){
          $ar_cat = array($catid);
          $this->db->where('parent_id',$catid);
          $list = $this->db->get('category_prod')->result();
          foreach($list as $rs):
            array_push($ar_cat, $rs->cat_id);
          endforeach;
          return $ar_cat;
      }
  
  }

