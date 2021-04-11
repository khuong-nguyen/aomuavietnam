<div class="title-main">
	<div itemscope ><a href="<?php echo base_url();?>" itemprop="url" class="homepage"><span itemprop="title">Trang chủ</span></a></div>
	<div itemscope  class="no-bg"><?php echo $title;?></div>		
</div>
<div class="group-items">
	<div class="title-search">
		<p class="number-search">Tìm thấy <?php echo count($listProducts);?> sản phẩm</p>
		<p class="ordering">
			<span>Sắp xếp:</span>
			<select name="ordering" onchange="window.location.href = this.value;">
				<option value="<?php echo $linkOrdering;?>">|- Mặc định</option>
				<option value="<?php echo $linkOrdering;?>?o=new">|- Mới nhất</option>
				<option value="<?php echo $linkOrdering;?>?o=asc">|- Giá từ cao đến thấp</option>
				<option value="<?php echo $linkOrdering;?>?o=desc">|- Giá từ thấp đến cao</option>
			</select>
		</p>
	</div>
		<?php 
		if(sizeof($listProducts)>0){
		?>
		<ul class="item-list">
		<?php 
		$k = 0;
		foreach ($listProducts as $valSub):
			$namCatSub   = $valSub->productname;					
			$linkCatSub  = site_url('san-pham/'.$valSub->producturl.'-'.$valSub->productid);
						
			$imgCatSub	= (!empty($valSub->productimg))? base_url().'data/products/200/'.$valSub->productimg: base_url().'site/templates/default/images/no_image.gif';
							
			//Tac gia
			$percent 	= $valSub->percent;						
			$priceOld 	= (!empty($valSub->price_front))?number_format($valSub->price_front,0,'.','.').' ₫':'';
			$price 		= (!empty($valSub->price))?number_format($valSub->price,0,'.','.').' ₫':'';
		?>				
		<li <?php echo ($k%6==0)?'class="item-r"':'';?>>
		 	<div class="img">
		 		<a href="<?php echo $linkCatSub;?>"><img src="<?php echo $imgCatSub;?>" width="187" height="150" alt="<?php echo $namCatSub;?>"></a>
		 		
             	<?php if($valSub->icon_deal == 1){
             		echo '<div class="deal-off"></div>';																									
             	}
             	?>
             	<?php if($valSub->icon_hot == 1){
             		echo '<div class="deal-hot">&nbsp;</div>';													
             	}
             	?>
             	<?php if($valSub->icon_new == 1){
             		echo '<div class="deal-circle"> </div>';																									
             	}
             	?>
             	<!-- Button next -->
             	<div class="buttom-buy"><a href="<?php echo $linkCatSub;?>"></a></div>
		 	</div>			
			<p class="name"><a href="<?php echo $linkCatSub;?>"><?php echo $namCatSub;?></a></p>						
			<div class="info-deal-bootom">
				<div class="group-price-sales">
					<?php
					if($percent >0){
					?>
             		<div class="price-box">						
             			<p class="percent"><?php echo $percent;?>%</p>
             			<div class="price-old">
             				<p class="old"><?php echo $priceOld;?></p>
             				<p class="price"><?php echo $price;?></p>
             			</div>														
					</div>
					<?php }else{?>
					<div class="no-percent">
             				<p class="old"><?php echo $priceOld;?></p>
             				<p class="price"><?php echo $price;?></p>
             		</div>	
             		<?php } ?>
				</div>							
			</div>
		</li>					
									       
		<?php 
		$k++;
		endforeach;
		?>		   		
									    
	 </ul>
		<?php }else{?>
		<div class="box-infomation">Dữ liệu đang cập nhật. Vui lòng quay trở lại sau, Cảm ơn!</div>
		<?php }?>
		<div class="pages">
			<?php echo $pagination;?>
		</div>

		
	
</div>