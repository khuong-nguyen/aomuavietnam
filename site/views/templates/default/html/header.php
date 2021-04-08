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
		<div class="row align-items-center">
					<div class="col-10">
						<nav id="site-navigation" class="main-navigation">
							<ul id="menu-main_vietpx" class="main-menu menu"><li id="menu-item-1795" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-1795"><a href="http://aomuavietnam.com/">Trang chủ</a></li>
								<li id="menu-item-1674" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1674"><a href="http://aomuavietnam.com/gioi-thieu">Giới thiệu</a></li>
								<li id="menu-item-1910" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-has-children menu-item-1910"><a href="http://aomuavietnam.com/danh-muc/ao-mua-canh-doi/">Sản phẩm</a>
									<ul class="sub-menu">
										<li id="menu-item-2715" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-2715"><a href="http://aomuavietnam.com/danh-muc/ao-mua-tang-pham/">Áo mưa tặng phẩm</a></li>
										<li id="menu-item-2364" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-2364"><a href="http://aomuavietnam.com/danh-muc/ao-mua-kieu00/">Áo mưa kiểu</a></li>
										<li id="menu-item-1907" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1907"><a href="http://aomuavietnam.com/danh-muc/ao-mua-bo-vai-du/">Áo mưa bộ vải dù</a></li>
										<li id="menu-item-1904" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1904"><a href="http://aomuavietnam.com/danh-muc/ao-mua-canh-doi/">Áo mưa cánh dơi</a></li>
										<li id="menu-item-1914" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1914"><a href="http://aomuavietnam.com/danh-muc/ao-mua-bit/">Áo mưa bít không xẻ tà</a></li>
										<li id="menu-item-3988" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3988"><a href="http://aomuavietnam.com/danh-muc/ao-mua-eco-than-thien-moi-truong/">Áo mưa Eco</a></li>
										<li id="menu-item-1905" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1905"><a href="http://aomuavietnam.com/danh-muc/ao-mua-vai-du-cao-cap/">Áo mưa vải dù cao cấp</a></li>
										<li id="menu-item-1906" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1906"><a href="http://aomuavietnam.com/danh-muc/ao-mua-nhua-cao-cap/">Áo mưa nhựa cao cấp</a></li>
										<li id="menu-item-3987" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3987"><a href="http://aomuavietnam.com/danh-muc/ao-mua-chu-a/">Áo mưa chữ A</a></li>
										<li id="menu-item-3989" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3989"><a href="http://aomuavietnam.com/danh-muc/ao-mua-mang-to/">Áo mưa Măng Tô</a></li>
										<li id="menu-item-1909" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1909"><a href="http://aomuavietnam.com/danh-muc/ao-mua-tre-em/">Áo mưa trẻ em</a></li>
										<li id="menu-item-1913" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1913"><a href="http://aomuavietnam.com/danh-muc/ao-mua-hai-dau/">Áo mưa hai đầu</a></li>
									</ul>
								</li>
								<li id="menu-item-1682" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1682"><a href="http://aomuavietnam.com/tin-tuc/">Tin tức</a></li>
								<li id="menu-item-3369" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3369"><a href="http://aomuavietnam.com/catalogue/">Catalogue</a></li>
								<li id="menu-item-2084" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2084"><a href="http://aomuavietnam.com/tuyen-dung/">Tuyển dụng</a></li>
								<li id="menu-item-1675" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1675"><a href="http://aomuavietnam.com/lien-he/">Liên hệ báo giá</a></li>
							</ul>						
						</nav><!-- #site-navigation -->	
					</div>
				</div>
			</div>
	
</div>
<div class="mobile">
	<a href="javascript:;" class="menu-more"><img src="/site/templates/default/images/menu.png" alt="aomuavietnam.com"></a>
	<a href="/" class="logo-mobile"><img src="/site/templates/default/images/logo-mobile.png" alt="aomuavietnam.com" height="40"></a>
	<span class="icon-search-m"><i class="fa fa-search"></i></span>
</div>

