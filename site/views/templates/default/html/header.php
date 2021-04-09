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
		<p class="logo" style="margin: 0px 0px 0px 0px">
			<a href="<?php echo base_url();?>"><img src="<?php echo $imgPath;?>logo_minhnguyen.png" height="120" width="220" alt="Áo mưa Minh Nguyên"></a>
		</p>
		<div class="box-right-header">
			<div class="box-search" style="margin-bottom: 0px">
				<a href=""><img src="<?php echo $banner_header;?>" width="770" height="120" alt="Áo mưa Minh Nguyen"></a>
			</div>
			<div class="hotline">
				<div class="work-time">
					<span class="label">Hotline</span>
					<span class="timer">0919-045-049</span>					
				</div>
				<div class="work-time">
					<span class="label">Email</span>
					<span class="timer">info@aomuavietnam.com</span>					
				</div>
			</div>
			
		</div>
	</div>
	<div id="nav-bar">
		<p class="lable" <?php echo ($this->uri->segment(1) != '')? 'id="label"': '';?>>Danh mục sản phẩm</p>
		<div class="row align-items-center">
			<div class="col-10">
				<nav id="site-navigation" class="main-navigation">
					<ul id="menu-main_vietpx" class="main-menu menu"><li id="menu-item-1795" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-1795"><a href="http://aomuavietnam.com/">Trang chủ</a></li>
						<li id="menu-item-1674" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1674"><a href="http://aomuavietnam.com/gioi-thieu">Giới thiệu</a></li>
						<li id="menu-item-1682" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1682"><a href="http://aomuavietnam.com/tin-tuc/">Tin tức</a></li>
					</ul>						
				</nav><!-- #site-navigation -->	
			</div>
		</div>
	</div>
</div>

