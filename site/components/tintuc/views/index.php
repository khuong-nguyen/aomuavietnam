<div class="title-main">
	<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="<?php echo base_url();?>" itemprop="url" class="homepage"><span itemprop="title">Trang chủ</span></a></div>
	<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="no-bg"><span itemprop="title">Cẩm nang mua sắm</span></div>
</div>		
<?php $this->load->view('/templates/default/html/banner_news');?>
<div id="left-news">			
	    <ul class="items">
	    	<?php 
	    	if (count($listProject)>0){
	    		foreach ($listProject as $val):
	    			$name	 = $val->name;
	    			$img	 = (!empty($val->img))?base_url().'data/projects/thumb/'.$val->img:base_url().'site/templates/default/images/no_image.gif';
	    			$link	 = site_url('tin-tuc/'.vnit_change_title($name).'-'.$val->id);
	    	?>
	    	<li>
	    		<div class="left-date">
	    			<p class="day"><?php echo date('d', $val->date_time);?></p>
	    			<p class="month-year"><?php echo date('m/Y', $val->date_time);?></p>	    			
	    		</div>
	    		<p class="img">
	    			<a href="<?php echo $link;?>"><img src="<?php echo $img;?>" width="150" alt="<?php echo $name;?>"></a>
	    		</p>
	    		<div class="info-news">
	    			<p class="name"><a href="<?php echo $link;?>"><?php echo $name;?></a></p>
	    		
	    			<div class="summary">
	    				<?php echo $val->summary;?>
	    			</div>
	    		</div>
	    	</li>
	    	<?php 
	    	endforeach;
	    	}
	    	?>
	    	
	    </ul>
	

	<?php if($pagination){?>
	<div class="pages"><?php echo $pagination?></div>
	<div class="current-page">Trang <?php echo $current?> trong tổng số <?php echo $total_page?> </div>
	<?php }?>

</div>

<?php $this->load->view('right_news');?>