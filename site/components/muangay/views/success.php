<div class="info-success-cart">
	Quý khách đã thực hiện mua hàng thành công. Thông tin đặt hàng đã gởi vào email của bạn. Xin cảm ơn! <br />
	
	<div class="note-check">
		<p class="">Hướng dẫn thanh toán: Vui lòng click vào link sau <a href="<?php echo base_url();?>tro-giup/huong-dan-mua-hang-3.html"> để xem hình thức thanh toán </a></p>
		<p class="">Bạn muốn mua hàng tiếp tục <a href="<?php echo base_url();?>"> Mua hàng tiếp</a></p>
		
		<hr>
		<?php 		
		$rowContact = $this->vdb->find_by_id("contact",  array('id'=>1));		
		?>
		<ul class="contact">
			<li class="name"><?php echo $rowContact->name;?> </li>
			<li><?php echo $rowContact->address;?> </li>
			<li><strong>Điện thoại: </strong><?php echo $rowContact->phone;?> </li>
			<li><strong>Email: </strong><?php echo $rowContact->email;?> </li>
		</ul>
	</div>
</div>