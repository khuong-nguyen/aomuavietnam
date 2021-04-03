<?php 
if(sizeof($list) >0){
?>
<ul class="item">
	<?php 
	foreach ($list as $val):
		$name  = $val->productname;
		$link  = site_url('san-pham/'.$val->producturl.'-'.$val->productid);
		$img   = (!empty($val->productimg ))? base_url().'data/products/40/'.$val->productimg:base_url().'site/templates/default/images/no_image.gif';
	?>
	<li>
		<p class="img"><a href="<?php echo $link;?>"><img src="<?php echo $img;?>" width="40" alt="<?php echo $name;?>"></a></p>
		<div class="info">
			<p class="name"><a href="<?php echo $link;?>"><?php echo $name;?></a></p>
			<p class="price"><?php echo number_format($val->price,'.','.','.').' đ';?></p>
		</div>
	</li>
	<?php 
	endforeach;
	?>
</ul>

<?php }?>