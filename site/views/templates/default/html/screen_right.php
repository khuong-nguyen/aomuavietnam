<?php 
//load config
$this->load->config('config_right_screen');
$imgScreenRight  = base_url().'data/ads/banner_news/'.$this->config->item('view-right-screen');
$linkScreenRight  = $this->config->item('link-right-screen');
$statusScreenRight  = $this->config->item('status-right-screen');
//check status
if($statusScreenRight == 1){
?>
<div id="ads-right-screen">
	<a href="<?php echo $linkScreenRight;?>" target="_blank"><img src="<?php echo $imgScreenRight;?>" alt="Trang Mua Sắm Online Sản Phẩm Chính Hãng Giá Tốt Nhất Việt Name - aomuavietnam.com"></a>
</div>

<?php }?>