<?php 
//load config
$this->load->config('config_news_left');
$this->load->config('config_right_news');
$fileLeft 	=  base_url().'data/ads/banner_news/'.$this->config->item('view-banner');
$fileRight 	=  base_url().'data/ads/banner_news/'.$this->config->item('view-news');
?>
<div class="banner-news">
	<div class="banner"><img src="<?php echo $fileLeft;?>" width="900" alt="Trang Mua Sắm Online Sản Phẩm Chính Hãng Giá Tốt Nhất Việt Name - aomuavietnam.com"></div>
	<div class="adv">
		<a href=""><img src="<?php echo $fileRight;?>" width="280" height="252" alt="Trang Mua Sắm Online Sản Phẩm Chính Hãng Giá Tốt Nhất Việt Name - aomuavietnam.com"></a>
	</div>
</div>