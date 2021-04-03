<?php
/*------------------------------------------------------+
* @author      :   phong.sttm
* @name        :   muangay
* @version     :   201004
* @copyright   :   linhkineso24h
* @todo        :   category object
+-----------------------------------------------------*/
class muangay extends CI_Controller{
    protected $_templates;
    /**
     * Contructor
     */
    function __construct(){
        parent::__construct();  
         
        $this->load->model('cart_model','vnitcart');
        $js_array = array(
            array(base_url().'site/components/muangay/views/esset/muangay.js'),           
        );
      	
        $this->esset->js($js_array);    
        $this->session_id 	= $this->session->userdata('session_id');
        
    }
    /**
     * action default
     */
    function index(){
         $data['title'] 	= 'Thanh toán'; 
         $id 				= removeXss($this->input->post('product_id'));          
         $qty 				= removeXss($this->input->post('qty'));
        //add cart
        $productids 	= $this->vcart->addcart($id, $qty);      	
    	echo json_encode($productids);
    }
  	
    /**
     * upate action
     */
    function update_cart(){
    	//get infomation
    	$id 		= removeXss($this->input->post('product_id'));
    	$quantity	= removeXss($this->input->post('qty'));
    	//set error
    	$data['error']  = 0;
    	 
    	//query ***********************************************
    	 $this->db->where('session_id',$this->session_id);
    	$this->db->where('id',$id);
    	$row 	= $this->db->get('shop_cart_detail')->row();
    	 
    	//check data
    	if($row){
	    	//init arrData
	    	$arrData = array('s_qty'=>$quantity);
	    	$this->db->where('id',$id);
	    	$this->db->update('shop_cart_detail', $arrData);
	    	//info
	    	$data['msg'] = 'Cập nhật số lượng thành công!!';
    	}else{
	    	$data['error'] = 1;
	    	$data['msg'] = 'Cập nhật không thành công!!';
    	} 
    
    	echo json_encode($data);
    }
    
    /**-------------------------
     * Info cart
     */
    function step_one(){
    	$data["title"]			 = "Thông tin giỏ hàng";
    	$this->form_validation->set_rules('fullName',"required");    
        if($this->form_validation->run()){
        	//get data
        	$arrData['fullName']    = removeXss($this->input->post('fullName'));
        	$arrData['address']		= removeXss($this->input->post('address'));
        	$arrData['phone']		= removeXss($this->input->post('phone'));
        	$arrData['email']		= removeXss($this->input->post('email'));
        	$arrData['note']		= removeXss($this->input->post('note'));
        	$arrData['payment_id']   = $this->input->post('payment_id');
        	$arrData['date_buy'] 	= time();
        	///save to shop_cart
        	if($orderID = $this->vdb->update('shop_cart',$arrData)){   
        		//update cartid to shop_cart_detail
        		$detailCartArr['cartid'] = $orderID;
        		$this->vdb->update('shop_cart_detail',$detailCartArr, array('session_id'=>cookie_mycart()));
        		
        		// Tao ma don hang
        		$madonhang          = $this->vnitcart->find_barcode();
        		//code old
        		$barcode_old 		= ($madonhang)?$madonhang->barcode:'DH00000000';
        		$barcode 			= vnit_barcode('DH',substr($barcode_old,2) + 1,8);
        		$random             = createRandomCode();
        		$vupdate['barcode'] = $barcode;        		
        		//update barcode ****************
        		$this->vdb->update('shop_cart',$vupdate, array('order_id'=>$orderID));        		
        		
        		//get item cart *******        	
        		$cartItem             = $this->vdb->find_by_id('shop_cart',array('order_id'=>$orderID));
        		//** get list products
        		$list             = $this->vnitcart->get_listproduct_order($orderID);
        		//** Total money
        		$sub_total        = $this->vnitcart->get_subtotal($orderID);
        		
        		//load file mail
        		$this->load->helper('mail_helper');        		 
        		 
        		//** get email templates *****
        		$templates      = $this->vdb->find_by_id('email_templates',array('slug'=>'shop_donhang'));
        	
        		// Subject
        		$madonhang      = $barcode;
        		$subject_php    = addslashes($templates->subject);
        		eval("\$subject=\"$subject_php\";");
        		
        		//** infomation customer 
        		$fullName     	= $cartItem->fullname;
        		$address        = $cartItem->address;
        		$phone       	= $cartItem->phone;
        		$email          = $cartItem->email;        		
        		$thoigian       = date('H:i d/m/Y',time());
        		 
        		$tinhtrang		= "Chưa kích hoạt tài khoản.";
        		$phuongthucthanhtoan = $this->vdb->find_by_id('shop_payment',array('payment_id'=>$cartItem->payment_id))->payment_name;
        		//Thong tin san pham mua hang
        		$thongtinsanpham = '<table border="1" width="800" cellpadding="2" bordercolor="#C0C0C0" style="border-collapse: collapse">';
        		$thongtinsanpham .='
                        <tr>
                            <td align="center" width="106" bgcolor="#0066FF" height="34"><b><font face="Arial" size="2" color="#FFFFFF">Hình ảnh</font></b></td>                            
                            <td align="center" width="406" bgcolor="#0066FF" height="34"><b><font face="Arial" size="2" color="#FFFFFF">Tên sản phẩm</font></b></td>                               		
                            <td align="center" width="65" bgcolor="#0066FF" height="34"><b><font face="Arial" size="2" color="#FFFFFF">Số lượng</font></b></td>                            
                            <td align="center" width="94" bgcolor="#0066FF" height="34"><b> <font face="Arial" size="2" color="#FFFFFF">Đơn giá(vnd)</font></b></td>                           
                            <td align="center" width="104" bgcolor="#0066FF" height="34"><b><font face="Arial" size="2" color="#FFFFFF">Thành tiền(vnd)</font></b></td>
                            
                        </tr>
       			';
        		$subtotal = 0;
        		//Loop data
        		foreach($list as $val):
	        		//get img
	        		$imgProduct		= $this->vdb->find_by_id("shop_product",array('productid'=>$val->idProduct))->productimg;
	        		$giaban         = number_format($val->s_price,0,'.','.');
	        		$thanhtien      = number_format(($val->s_qty * $val->s_price),0,'.','.');
	        		$subtotal       = $subtotal + ($val->s_qty * $val->s_price);        		
	        		$pathImgProd	= '<img src="'.base_url().'data/products/200/'.$imgProduct.'" width="80">';
        		
	        		$thongtinsanpham .= '
	                    <tr>
	                        <td width="106">'.$pathImgProd.'</td>
	                        <td>
	                            <font face="Arial" size="2">'.$val->product_title.'</font>
	                        </td>
	                        <td>
	                            <font face="Arial" size="2">'.$val->s_qty.'</font>
	                        </td>
	        		
	                        <td align="right">
	                            <font face="Arial" size="2">'.$giaban.'</font>
	                        </td>
	                        <td align="right">
	                            <font face="Arial" size="2">'.$thanhtien.'</font>
	                        </td>
	                    </tr>';
        		endforeach;
        		
        		$thongtinsanpham .= '</table>';
        		//info cofirm of customer
        		$url            = site_url('khach-hang-xac-nhan/'.$cartItem->order_id.'/'.$random);
        		$link           = '<a href="'.$url.'">link</a>';
        		$to             = $cartItem->email;
        		$template_text  = addslashes($templates->content);
        		eval("\$body=\"$template_text\";");
        		//send email to customer
        		send_mail_templates($to, $subject, $body);
        		
        		// Remove session shop_cart
        		$s_cart['session_id'] = '';
        		$this->vdb->update('shop_cart',$s_cart, array('order_id'=>$cartItem->order_id));
        		// Remove session shop_cart_detail
        		$s_cart_detail['session_id'] = '';
        		$this->vdb->update('shop_cart_detail',$s_cart_detail, array('cartid'=>$cartItem->order_id));
        		
        		//redirect success
        		redirect('hoan-tat-don-hang');
        	
        	}
	                  
        }else{
        	//set view cart
        	$data['list'] = $this->vnitcart->get_list_cart();
        	//set view payment
        	$data['listPayment']  = $this->vnitcart->get_list_payment();
        	//delete cache sesscion
        	$this->vdb->delcache(ROOT.'site/cache/cart/');
        	//write file cart
        	$this->writeCart();
        	
          	//load templates ******************************************** +
		    $this->_templates['page'] ='index';
		    $this->templates->load($this->_templates['page'],$data,'cart'); 
        }
                        
    }
    
    /**
     * get_quanhuyen
     */
    function get_quanhuyen(){
        $thanhpho_id = $this->input->post('thanhpho_id');
        $list = $this->vdb->find_by_list('city',array('parentid'=>$thanhpho_id,'parentid !='=>0),array('ordering'=>'asc'));
        $data['list'] = '<option value="">'.lang('mn.quanhuyen').'</option>';
        foreach($list as $rs):
            $data['list'] .='<option value="'.$rs->city_id.'">'.$rs->city_name.'</option>';
        endforeach;
        echo json_encode($data);
    }
    
 	/**
 	 * confirm order
 	 */
    function xacnhandonhang(){
        $data['title'] = 'Xác nhận đơn hàng';
        $cart_id 	= $this->uri->segment(2);
        $activecode = $this->uri->segment(3);
        $rs = $this->vdb->find_by_id('shop_cart',array('order_id'=>$cart_id));
        if($rs){
             if($rs->activecode != $activecode){
                 $data['msg'] = 'Đơn hàng không tồn tại hoặc không thuộc của bạn';
             }else if($rs->activecode == '' || $rs->status >=2){
                 $data['msg'] = 'Đơn hàng đã được xác nhận';
             }else {
                 $data['msg'] = 'Cảm ơn. Đơn hàng số: '.$rs->barcode.' của bạn đã được xác nhận thành công';  
                 $vdata['activecode']  = '';
                 $vdata['status'] = 2;
                 $this->vdb->update('shop_cart',$vdata,array('order_id'=>$cart_id));
             }
        }else{
            $this->session->set_flashdata('message','Đơn hàng không tồn tại');
            redirect();
        }
        $this->_templates['page'] = 'xacnhandonhang';
        $this->templates->load($this->_templates['page'],$data,'home');
    }
    /**
     * action order success
     */
    function order_successful(){
        $data['title'] = 'Successfull';
        
        //delete cache sesscion
        $this->vdb->delcache(ROOT.'site/cache/cart/cart'.$this->session_id.'db');
        
        //load templates*********************
        $this->_templates['page'] = 'success';
        $this->templates->load($this->_templates['page'],$data,'cart');
    }
    /**
     * status_pay action
     */
    function status_pay(){
        $data['title'] = lang('trangthaigiaodich');
        $this->_templates['page'] = 'status_pay';
        $this->templates->load($this->_templates['page'],$data);
    }
    
    /**
     * remove action
     */
    function remove(){
        $id = $this->uri->segment(3);
        $this->db->where('session_id',$this->session_id);
        $this->db->where('id',$id);
        $row = $this->db->get('shop_cart_detail')->row();
       
        if($row){
            $this->db->where('id',$id);
            $this->db->delete('shop_cart_detail');
           // $this->session->set_flashdata('message','Xóa sản phẩm khỏi giỏ hàng thành công');
        }else{
            $this->session->set_flashdata('message','Sản phẩm không tồn tại trong đơn hàng của bạn');
            
        }
        
        //redirect
        redirect('thong-tin-gio-hang');
    }
    
    
    
  
    /**
     * write cart
     */
    function writeCart(){
    	//get list
    	$checkCart = $this->vdb->find_by_list('shop_cart_detail', null,array('session_id'=>$this->session_id));    	 
    	//check data
    	if(sizeof($checkCart)>0){
    		$str = '';
    		$totalMoney = 0;
    		$strCount = 0;
    		foreach ($checkCart as $valCart):    			
	    		$name  		= $valCart->productname;
	    		$quantity   = $valCart->s_qty;
	    		$money		= number_format($quantity * $valCart->s_price, 0,'.','.') .' ₫';
	    		$totalMoney = $totalMoney +  ($quantity * $valCart->s_price);	    		
	    		$link  		= base_url().'san-pham/'.vnit_change_title($name).'-'.$valCart->productid.'.html';
	    		$linkDelete  = base_url().'muangay/remove/'.$valCart->id;
	    		$iconDelete  = base_url().'site/templates/default/images/dels_status1.png';
    		 
	    		$str .= '<li>';
	    		$str .= '<p class="name"><a href="'.$link.'">'.$name.'</a></p>';
	    		$str .= '<p class="quantity"> x '.$quantity.'</p>';
	    		$str .= '<p class="price"> = '.$money.'</p>';
	    		$str .= '<p class="function"><a href="'.$linkDelete.'"><img src="'.$iconDelete.'" alt="'.$name.'"></a></p>';
	    		$str .= '</li>';
    		 
    		endforeach;
    			$totalMoney = number_format($totalMoney,0,'.','.').' ₫';
	    		$str .= '<li class="money">
								<span>Thành tiền:</span><strong>'.$totalMoney.'</strong>
							</li>';
	    	//strCount
	    	$strCount  = count($checkCart);
    		//write file
    		write_file(ROOT.'site/cache/cart/cart'.$this->session_id.'.db', $str);
    		write_file(ROOT.'site/cache/cart/cart_count'.$this->session_id.'.db', $strCount);
    		
    		
    	}
    }
 	
    
    
}
