<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html>
<head>
     <title><?php if(isset($title)){echo $title ;}else{'Bán sản phẩm tin học online - aomuavietnam.com';}?></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="description" content="<?php if(isset($des)){echo $des;}else{echo  $this->config->item('site_des_'.$this->session->userdata('lang'));}?>"/>
    <meta name="keywords" content="<?php if(isset($keyword)){echo $des;}else{echo  $this->config->item('site_keyword_'.$this->session->userdata('lang'));}?>"/>
    <?php $this->load->view('templates/default/meta/meta');?>     
</head>
<body>
<div id="main-container">	
	<?php $this->load->view('templates/default/html/header');?>  	
	<div id="content-wapper">
		<!-- box-cart-header -->
		<?php $this->load->view('templates/default/html/cart_box');?>
	
		 <!-- menu scroll top -->
		<?php if($this->uri->segment(1) != ''){?>
		<div class="scroll-top-menu">
			<ul id="menu-left">	
				<?php echo $this->vdb->findMenuCache_list('category_prod','cat_id,cat_alias,cat_title,note_title,ordering,published','', array('parent_id'=>0,'published'=>1),array('ordering'=>'ASC'))?>
			</ul>		
		</div>
		<?php }?>
		<!-- Menu sub -->
		<div id="box-menu">
							
		</div>	
	
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
	
	<?php $this->load->view('templates/default/html/footer');?>
</div>	
<div id="toTop">&nbsp;</div>
</body>
</html>
