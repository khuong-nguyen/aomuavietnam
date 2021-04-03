<div class="box-cart-header" id="cart-box">
	<div class="arrow-up"></div>
	<?php 
	$filePath  = ROOT.'site/cache/cart/cart'.$this->session->userdata('session_id').'.db';
	if(file_exists($filePath)){
	?>
	<ul class="item">
		<?php include_once ($filePath);?>		
		<li class="button"><a href="<?php echo site_url('thong-tin-gio-hang');?>" class="button-payment">Thanh toán</a></li>
	</ul>
	<?php }else{?>
	<ul class="item">
		<li>Chưa có sản phẩm nào trong giỏ hàng!!!!</li>
	</ul>
	<?php }?>
</div>