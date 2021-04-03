<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html>
<head>
    <title>Đăng nhập hệ thống</title> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="description" content="Hệ thống quản trị website"/>
    <meta name="keywords" content="Hệ thống quản trị website"/>
    <?php
    $css_array = array(
        array('dangnhap.css'),
        array('360vnit.alert.css'),
        
    );
    $js_array = array(
        array('core/jquery.js'),
        array('core/360vnit.alert.js'),
        array('core/login.js')
    ); 
    $this->esset->css($css_array);
    $this->esset->js($js_array);
    $this->esset->display();
    ?> 
    <script type="text/javascript">
    	var base_url = '<?php echo base_url();?>';
    </script>
    
    
</head>
<body>
	<?php 
	if($this->session->userdata('group_id')){
		redirect(site_url('admincp'));
	}
	?>
    <div id="wapper_login">
        <!--<div class="name_product"></div>-->
        <div class="content" id="content">
            <?php $this->load->view($page);?>
        </div>
        <div class="version">Version: 2.0</div>
        <div class="copy">Copyright 2012 - All rights reserved.</div>
    </div>
    <div id="wapper_error">
    <?php if($msg !=''){ echo '<div id="msg" class="show_notice">'.$msg.'</div>';}?>    
    </div>
</body>
</html>