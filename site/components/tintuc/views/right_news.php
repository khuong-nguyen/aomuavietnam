<div id="right-news">
	<?php 
	$listReadHot = $this->vdb->find_by_list('projects','id,name,date_time,views,published',array('published'=>1,'views >='=>30), array('date_time'=>'DESC'),8);
	if(count($listReadHot)>0){
	?>
	<p class="title"><span>Tin đọc nhiều nhất</span></p>				
	<ul class="news-item">
	<?php 
	foreach ($listReadHot as $valRe):
		$nameRe  = $valRe->name;					
		$linkRe	 = site_url('tin-tuc/'.vnit_change_title($nameRe).'-'.$valRe->id);
	?>
	<li><a href="<?php echo $linkRe;?>"><?php echo $nameRe;?></a></li>
	<?php 
	endforeach;
	?>
	</ul>
	<?php }?>
	
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