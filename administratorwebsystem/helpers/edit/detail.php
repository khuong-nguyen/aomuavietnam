<div id="mid-product">
	<div class="title-main">
		<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="<?=base_url()?>" itemprop="url" class="homepage"><span itemprop="title">Trang chủ</span></a></div>
		<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="<?=$linkCat;?>" itemprop="url" class="homepage"><span itemprop="title"><?=$nameCat;?></span></a></div>
		<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="no-bg"><?=$rs->productname;?></div>
	</div>
	
	<div class="box-info-de-prod">
	<?php 
	$name  			= $rs->productname;
	$priceDetail  	= (!empty($rs->price))?number_format($rs->price,0,'.','.').' VND':'Liên hệ';
	$note			= $rs->note;
	$date			= date('d/m/Y', $rs->date_time);
	$tinhTrang      = ($rs->tinhtrang == 1)?'Mới':'Hàng cũ';
	$baoHanh      	= $rs->baohanh;
	$xuatXu      	= $this->vdb->find_by_id('shop_manufacture',array('manufactureid'=>$rs->manufactureid))->name;
	$vanChuyen      = $rs->van_chuyen;
	$tinhtrangHang  = ($rs->tinhtrang_hang == 1)?'Còn hàng': 'Hết hàng';
	$thongso    	= $rs->tinhnang;
	$moTa    		= $rs->mieuta;
	?>
	
	 <link href="<?=base_url()?>/site/templates/default/images/images/cloud-zoom.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<?=base_url()?>/site/templates/default/images/images/cloud-zoom.1.0.2.js"></script>
		<div class="zoom-section"> 
			<div class="zoom-small-image">
				<a href='<?=base_url()?>data/products/500/<?=$rs->productimg;?>' title='<?=$rs->productname?>' class = 'cloud-zoom' id='zoom1' rel="adjustX: 10, adjustY:-4"><img src="<?=base_url()?>data/products/500/<?=$rs->productimg?>" width="335" alt='<?=$rs->productname;?>' title="<?=$rs->productname;?>" /></a>
			</div>
			<div class="zoom-desc">
	        		<?
	        		$diemImg  = 1;
	        		foreach($listimg as $img):
	        		?>
						<a href='javascript:;<?=base_url()?>data/products/500/<?=$img->imagepath?>' class='cloud-zoom-gallery' title='<?=$rs->productname.'-'.$diemImg;?>' rel="useZoom: 'zoom1', smallImage: '<?=base_url()?>data/products/500/<?=$img->imagepath?>' "><img class="zoom-tiny-image" src="<?=base_url()?>data/products/200/<?=$img->imagepath?>"  width="35" height="30" alt = "<?=$rs->productname.'-'.$diemImg;?> "/></a>				
					<?
					$diemImg++;
					endforeach;
					?>
					
					
						
			</div>
			
						  
		</div>
		
		<!-- BEGIN show box -->
		
		<div class="popslideshow" style="display: none;" >
	    <a class="close" id="slideshow_close"></a>
	    <div class="popslideshow-content">
	   		<link type="text/css" rel="stylesheet" href="<?=base_url();?>site/templates/default/css/ad-gallery.css" media="screen" />
			<script type="text/javascript" src="<?=base_url();?>site/templates/default/js/ad-gallery.js"></script> 
	
			<script type="text/javascript">
				$(function() {
							var galleries = $('.ad-gallery').adGallery({
							slideshow: {
								enable: true,
								autostart: true,
								speed: 3000,
								stop_on_scroll: true,	
													
							  },
							  effect: 'slide-hori',
							  
							});
	
							
						  });
					
			</script>
			
			<div id="gallery" class="ad-gallery">
				<div class="ad-image-wrapper"></div>
				<div class="ad-nav">
					<div class="ad-thumbs" >
						<ul class="ad-thumb-list1" style="width: 9000px;">	
						<?
		        		$diemImg  = 1;
		        		foreach($listimg as $img):
		        		?>
		        			<li style="float: left;">
							<a href='<?=base_url()?>data/products/500/<?=$img->imagepath?>' class='cloud-zoom-gallery' title='<?=$rs->productname.'-'.$diemImg;?>' rel="useZoom: 'zoom1', smallImage: '<?=base_url()?>data/products/500/<?=$img->imagepath?>' "><img class="zoom-tiny-image" src="<?=base_url()?>data/products/200/<?=$img->imagepath?>"  width="35" height="30" alt = "<?=$rs->productname.'-'.$diemImg;?> "/></a>
							</li>				
						<?
						$diemImg++;
						endforeach;
						?>			
					
						
						</ul>
					</div>
				</div>                 
			</div>
					 			
	    
	    </div>
	</div>
		
	<!-- END show box -->	
		
		
		
		<div class="info-detail-prod">
			<p class="line"></p>
			<p class="name"><?=$name;?> - <?php if(!empty($rs->barcode)){?>(Mã: <?=$rs->barcode;?>)<?php }?></p>
			<ul class="item-detail-pr">
				<li><strong>Giá sản phẩm:</strong> <span class="price"> <?=$priceDetail;?></span></li>
				<li>
					<strong>Hiện đang:</strong>
					<img src="<?=base_url()?>/site/templates/default/images/notice_price.gif" width="12" alt="asda" align="middle"> <?=$tinhtrangHang;?>
				</li>
				<?php if(!empty($note)){?>
				<li class="note"><?=$note;?></li>
				<?php }?>
				<li>
					<div class="col"><strong>Câp nhật:</strong> <?=$date;?></div>
					<div class="col"><strong>Tình trạng:</strong> <?=$tinhTrang;?></div>
				</li>
				<li>
					<div class="col"><strong>Bảo hành:</strong> <?=$baoHanh;?></div>
					<div class="col"><strong>Xuất xứ:</strong> <?=$xuatXu;?></div>
				</li>
				
				<li>
					<div class="col"><strong>Vận chuyển:</strong> <?=$vanChuyen;?></div>
					
				</li>
			</ul>
			<div class="put-cart-box">
				<?php 
				$linkBuy				= site_url('mua-ngay/'.$rs->producturl.'-'.$rs->productid);
				?>
				<div class="box-input-cart"><strong>Số lượng:</strong> <input type="text" value="1" name="so_luong" style="width: 50px;"></div>
				<a href="<?=$linkBuy;?>"><img src="<?=base_url()?>/site/templates/default/images/btn_order.gif" width=""></a>
			</div>
			<!-- 
			<div class="box-bao_dam">
				<img src="<?=base_url()?>/site/templates/default/images/estore_verified.png" alt="<?=$name;?>">
			</div> -->
			<div class="box-plugin">
			<!-- AddThis Button BEGIN -->
						<div class="addthis_toolbox addthis_default_style ">
						<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
						<a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
						<a class="addthis_button_tweet" tw:related="addthis"></a> 
						</div>
						<script type="text/javascript">var addthis_config = {"data_track_addressbar":false};</script>
						
						<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>
						<!-- AddThis Button END -->
			</div>			
		</div>
	</div>
	<!-- 
	<?php if(!empty($thongso)){?>
	<div class="thong-so">
		<div class="title">THÔNG SỐ KỸ THUẬT</div>
		<div class="content-text"> 
			<?php echo $thongso;?>
		</div>
	</div>
	
	<?php }?>
	 -->
	<?php if(!empty($moTa)){?>
	<div class="thong-so">
		<div class="title">MÔ TẢ CHI TIẾT</div>
		<div class="content-text"> 
			<?php echo $moTa;?>
		</div>
	</div>
	<?php }?>
	
	<?php if(sizeof($listRelative)>0){?>
	<div class="box-prod">
		<div class="title">SẢN PHẨM KHÁC</div>
		<ul class="sub-items">
			<?php 
			foreach ($listRelative as $val):
				$name   		= $val->productname;
				$price 			= (!empty($val->price))?number_format($val->price,0,'.','.').' VND':'Liên hệ';
				$linkDetail 	= site_url('San-pham/'.vnit_change_title($name).'-'.$val->productid);
				$img			= (!empty($val->productimg))? base_url().'data/products/200/'.$val->productimg: base_url().'site/templates/default/images/no_image.gif';
			?>
			<li>
				<p class="img"><a href="<?=$linkDetail;?>"><img src="<?=$img;?>" width="176" height="145" alt="<?=$name;?>"></a></p>
				<p class="name"><a href="<?=$linkDetail;?>"><?=$name;?></a></p>
				<p class="price">Giá: <?=$price;?></p>
			</li>
			<?php endforeach;?>
					
		</ul>
	</div>
	
	<?php }?>
	
</div>
<script type="text/javascript">
    $(document).ready(function(){ 
    	$(".zoom-desc").live("click", function(){
        
    	window_height = $(window).height();    	
        window_width = $(window).width();
             
        h_box = $(".zoom-section").height();        
        w_box = $(".zoom-section").width();      
        $(".popslideshow").css({
           'display':'block',
           'top': (window_height - 450)/2,
           'left': (window_width - w_box)/2
        });
        $(".popslideshow").show();
        
    });
    //close album
    $("#slideshow_close").live("click", function(){
        $(".popslideshow").hide();
        window.location.reload();       
   });

    });

  </script>