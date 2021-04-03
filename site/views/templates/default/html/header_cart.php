<div id="header">
	<div class="sub-head">
		<p class="logo"><a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>site/templates/default/images/logo.png" height="120" alt=""></a></p>
		<ul class="step">
			<li class="step_done"> <span>Chọn hàng</span></li>
			<li class="step_done"> <span>Nhập thông tin thanh toán</span></li>
			<li <?php echo ($this->uri->segment('1') ==  'hoan-tat-don-hang')? 'class="step_done"': 'class="step_finished"';?> > <span>Xác nhận đơn hàng</span></li>
		</ul>
	</div>
</div>