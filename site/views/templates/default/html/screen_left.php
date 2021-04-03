<?php 
//load config
$this->load->config('config_left_screen');
$imgScreenLeft  	= base_url().'data/ads/banner_news/'.$this->config->item('view-left-screen');
$linkScreenLeft  	= $this->config->item('link-left-screen');
$statusScreenLeft  	= $this->config->item('status-left-screen');
//check status
if($statusScreenLeft == 1){
?>
<div id="ads-left-screen">
	<a href="<?php echo $linkScreenLeft;?>" target="_blank"><img src="<?php echo $imgScreenLeft;?>" alt="Trang Mua Sắm Online Sản Phẩm Chính Hãng Giá Tốt Nhất Việt Name - aomuavietnam.com"></a>
</div>

<?php }?>