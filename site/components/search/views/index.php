<div class="title-main">
	<div itemscope ><a href="<?php echo base_url();?>" itemprop="url" class="homepage"><span itemprop="title">Trang chủ</span></a></div>
	<div itemscope  class="no-bg"><?php echo $title;?></div>		
</div>
<div class="group-items">
	<div class="title-search">
		<p class="number-search">Tìm thấy <?php echo count($list);?> sản phẩm</p>
	</div>
	<ul class="item-list">
     <?php 
     foreach($list as $rs):
	    $namCatSub   = $rs->productname;					
		$linkCatSub  = site_url('san-pham/'.$rs->producturl.'-'.$rs->productid);					
		$imgCatSub	= (!empty($rs->productimg))? base_url().'data/products/200/'.$rs->productimg: base_url().'site/templates/default/images/no_image.gif';
							
		//Tac gia
		$percent 	= $rs->percent;						
		$priceOld 	= (!empty($rs->price_front))?number_format($rs->price_front,0,'.','.').' ₫':'Liên hệ';
		$price 		= (!empty($rs->price))?number_format($rs->price,0,'.','.').' ₫':'Liên hệ';
     ?>
    	<li <?php echo ($k == 3 || $k == 7 || $k == 11 || $k == 15 || $k == 19 || $k == 23 ||  $k == 27)?'class="item-r"':'';?>>
		 	<div class="img">
		 		<a href="<?php echo $linkCatSub;?>"><img src="<?php echo $imgCatSub;?>" width="238" height="220" alt="<?php echo $namCatSub;?>"></a>
		 		
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
             		<div class="price-box">
             			<p class="percent"><?php echo $percent;?>%</p>
             			<div class="price-old">
             				<p class="old"><?php echo $priceOld;?></p>
             				<p class="price"><?php echo $price;?></p>
             			</div>		
					</div>
             		<div class="sum_buyer">
						          						
             		</div>
				</div>							
			</div>
		</li>	
        <?php 
		$k++;
		endforeach;
		?>		 
		
     </ul>

	<div class="pages"><?php echo $pagination;?></div>
			
			
</div>


