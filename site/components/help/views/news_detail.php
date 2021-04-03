<div class="title-main">
	<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="<?php echo base_url();?>" itemprop="url" class="homepage"><span itemprop="title">Trang chủ</span></a></div>		
	<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="no-bg"><?php echo $title;?></div>
</div>
<div id="left-news">
	<div class="content-news"><?php echo $rs->content;?></div>
</div>

<?php $this->load->view('templates/default/html/right_infomation');?>
