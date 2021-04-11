<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html>
<head>
   <title><?php if(isset($title)){echo $title.' Minh Nguyên giá tốt - aomuavietnam.com';}else{'Bán sản phẩm Áo mưa - aomuavietnam.com';}?></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="<?php if(isset($des)){echo $des;}else{echo  $this->config->item('site_des_'.$this->session->userdata('lang'));}?>">
    <meta name="keywords" content="<?php if(isset($keyword)){echo $des;}else{echo  $this->config->item('site_keyword_'.$this->session->userdata('lang'));}?>">
    <?php $this->load->view('templates/default/meta/meta_cart');?>    
</head>
<body>
<div id="main-container">
	<div id="ajax-load">
	    <div class="loading"><?php echo lang('dangtaidulieu');?></div>
	</div>	  
	<?php $this->load->view('templates/default/html/header_cart')?>
	
	<div id="content-wapper">
	<?php if(isset($message) && $message !=''){ echo '<div class="show_notice" id="msg">'.$message.'</div>';}?>
		        <?php if($this->session->flashdata('message')){
		            echo '<div class="show_success" id="msg">'.$this->session->flashdata('message').'</div>';
		        }if($this->session->flashdata('error')){
		            echo '<div class="show_error" id="msg">'.$this->session->flashdata('error').'</div>';
		        }if($this->session->flashdata('notes')){
		            echo '<div class="show_notice" id="msg">'.$this->session->flashdata('notes').'</div>';
		        }
	?> 
		        		        		
	<?php $this->load->view($page);?>	   
	</div>
	
	<?php $this->load->view('templates/default/html/footer')?>
</div>	
</body>
</html>
