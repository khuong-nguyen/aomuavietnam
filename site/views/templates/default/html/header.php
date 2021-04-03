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
			<a href="<?php echo base_url();?>"><img src="<?php echo $imgPath;?>logo3.png" height="120"></a>
		</p>
		<div class="box-right-header">
			<ul class="menu-head">
				<li><a href="<?php echo $linkNews;?>">Cẩm nang mua sắm</a> &nbsp;| </li>
				<li><a href="javascript:;">Dịch vụ </a> &nbsp;&nbsp; | 
					<ul>
					<?php 
						echo $this->vdb->findMenuCacheSimple("service","","DV", 0, array('ordering'=>'ASC'),null);
					?>
					</ul>
				</li>	
				<li class="no-bg"><a href="<?php echo $linkContact;?>">Liên hệ</a></li>
			</ul>
			<div class="box-search">
				<a href=""><img src="<?php echo $banner_header;?>" width="770" height="120" alt="Hoàng quân vi tính"></a>
			</div>
			<div class="hotline">
				<?php 
				$typeHotline    = end(explode('.', $this->config->item("view-hotline")));
				$fileHotline	 = base_url().'data/ads/full_images/'.$this->config->item("view-hotline");
				if($typeHotline == 'swf'){
				?>
				<embed src="<?=$fileHotline;?>" width="210" height="50" />
				<?php }else{?>
				<a href="<?=base_url();?>"><img src="<?=$fileHotline;?>" width="200" alt="hoàng quân computer" /></a>
				<?php }?>
				<div class="work-time">
					<span class="label">Thời gian làm việc:</span>
					<span class="timer">Từ 8:00h - 20:00h từ T 2 - CN</span>					
				</div>
				<p class="support-Online">
					<span>
					<a class="yahoo" title="Nhân viên kinh doanh" href="ymsgr:sendim?luuminhtriet2007"><img src="http://opi.yahoo.com/online?u=luuminhtriet2007&amp;m=g&amp;t=1&amp;3=us"></a>
						
					</span>
					<span>
						<a class="skype" href="skype:luuminhtriet2007?chat"><img border="0" src="<?php echo $imgPath;?>skype.png" width="60"></a>
						
					</span>
				</p>
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
		
		<div class="box-cart">
			<a href="javascript:;">
				<?php 
				$filePath  = ROOT.'site/cache/cart/cart_count'.$this->session->userdata('session_id').'.db';
				if (file_exists($filePath)){
				?>
				<span class="total"><?php include_once ($filePath);?></span>
				<?php }else {?>
				<span class="total">0</span>
				<?php }?>
				<span class="label">Giỏ hàng</span>
			</a>
		</div>
	</div>
	
</div>
<div class="mobile">
	<a href="javascript:;" class="menu-more"><img src="/site/templates/default/images/menu.png" alt="aomuavietnam.com"></a>
	<a href="/" class="logo-mobile"><img src="/site/templates/default/images/logo-mobile.png" alt="aomuavietnam.com" height="40"></a>
	<span class="icon-search-m"><i class="fa fa-search"></i></span>
</div>

