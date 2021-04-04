<?php 
	$imgPath	= base_url().'site/templates/default/images/';
	$linkProduct  	= site_url('chuyen-muc');
	$linkNews  	= site_url('cam-nang-mua-sam');
	$linkService  	= site_url('dich-vu');
	$linkContact  	= site_url('lien-he'); 
	//load config
	$this->load->config('config_header');
	$banner_header 	=  base_url().'data/ads/full_images/'.$this->config->item('view-header');
?>
<div id="header">
	<div class="sub-header">
		<p class="logo">
			<a href="<?php echo base_url();?>"><img src="<?php echo $imgPath;?>logo_minhnguyen.png" height="120" width="220" alt="Áo mưa Minh Nguyên"></a>
		</p>
		<div class="box-right-header">
			<div class="box-search">
				<a href=""><img src="<?php echo $banner_header;?>" width="770" height="120" alt="Áo mưa Minh Nguyen"></a>
			</div>
			<div class="hotline">
				<div class="work-time">
					<span class="label">Hotline</span>
					<span class="timer">0908838987</span>					
				</div>
				<div class="work-time">
					<span class="label">Email</span>
					<span class="timer">info@aomuavietnam.com</span>					
				</div>
			</div>
			
		</div>
		<!-- show search result -->
		<div id="ressult-search-header">
			
		</div>
	</div>
	<div id="nav-bar">
		<p class="lable" <?php echo ($this->uri->segment(1) != '')? 'id="label"': '';?>>Danh mục sản phẩm</p>
		<form action="<?php echo base_url();?>search/result" name="search" id="search" method="get">
			<input type="text" name="keyword" id="keyword" value="" placeholder="Nhập từ khóa của sản phẩm cần tìm!" />
			<input type="submit" name="submit" value="Tìm kiếm" />
		</form>
	</div>
	
</div>
<div class="mobile">
	<a href="javascript:;" class="menu-more"><img src="/site/templates/default/images/menu.png" alt="aomuavietnam.com"></a>
	<a href="/" class="logo-mobile"><img src="/site/templates/default/images/logo-mobile.png" alt="aomuavietnam.com" height="40"></a>
	<span class="icon-search-m"><i class="fa fa-search"></i></span>
</div>

