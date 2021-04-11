<div class="title-main">
	<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="<?php echo base_url();?>" itemprop="url" class="homepage"><span itemprop="title">Trang chủ</span></a></div>
	<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="no-bg"><a href="<?php echo site_url('tin-tuc');?>" itemprop="url"><span itemprop="title">Tin tức</span></a></div>
</div>
<?php $this->load->view('/templates/default/html/banner_news');?>
<div id="left-news">
	<div class="content-news">				
		<?php 
			$name	 	 = $rs->name;		
			$content	 = $rs->content;		
		    $summary	 = $rs->summary;
		   
		?>	
		<div class="left-date">
			<p class="hits"><?php echo $rs->views;?> lần</p>
			<p class="day"><?php echo date('d', $rs->date_time);?></p>
			<p class="month"><?php echo date('m/Y', $rs->date_time);?></p>
		</div>
		<div class="info-de">
			<h1 class="name"><?php echo $name;?></h1>
			
			<div class="summary">
				<?php echo $summary;?>				
			</div>
		</div>		
		<div class="content">
			<?php echo $content;?>
		</div>
		
		
		<!-- Box Relative -->
		<div class="relative-news">
			<?php 
			if(count($listRelative)>0){
			?>
			<p class="title">
				<span>BÀI VIẾT KHÁC</span>
			</p>
			<ul>
				<?php 
				foreach ($listRelative as $valRe):
					$nameRe  = $valRe->name;					
					$linkRe	 = site_url('tin-tuc/'.vnit_change_title($nameRe).'-'.$valRe->id);
				?>
				<li><a href="<?php echo $linkRe;?>"><?php echo $nameRe;?></a></li>
				<?php 
				endforeach;
				?>
			</ul>
			<?php }?>
		</div>
	
		
	</div>
</div>


<?php $this->load->view('right_news');?>
