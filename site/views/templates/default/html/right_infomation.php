<div id="right-news">
	<div class="info">
		<p class="title">Thông tin công ty</p>
		<ul class="news-item">
			<?php 
			echo $this->vdb->findMenuCacheSimple("help","","TG", 0, array('ordering'=>'ASC'),null);
			?>								
		</ul>
	</div>
	<div class="info">
		<p class="title">Trợ giúp khách hàng</p>
		<ul class="news-item">
			 <?php echo $this->vdb->findMenuCacheSimple("introduction","","TT", 0, array('ordering'=>'ASC'),null);?>								
		</ul>
	</div>
	
	<?php 
	//check
	if(file_exists(ROOT.'site/cache/banner/banner_right.db')){
	?>
	<div class="ads-news">
		<?php 
		include_once (ROOT.'site/cache/banner/banner_right.db');
		?>
	</div>
	<?php }?>
</div>