<div class="wrapper_slider"> 
    <div id="slider" class="nivoSlider">
        <?php
        echo $this->vdb->findBannerCache_list("ads", null, array('ordering' => 'ASC'));
        ?>						
    </div>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>		
</div>
<div class="box-deal">
	<div>
		<a href="<?php echo base_url();?>san-pham/acer-aspire-v3-371-59ps-61.html">
			<img src="<?php echo base_url();?>site/templates/default/images/home-deal.jpg" alt="hoàng quân vi tính"/>
		</a>
	</div>
    <div class="note-right">
        <div class="sub-note">
            <div class="content">
                <ul class="items">
                    <li>Hàng hóa đúng mô tả</li>
                    <li>Thái độ phục vụ tân tình</li>
                    <li>Cam kết giao hàng đúng hẹn</li>
                </ul>
            </div>
        </div>
        <div class="kep"></div>
	</div>
</div>