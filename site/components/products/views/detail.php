<div class="title-main">
	<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="<?php echo base_url();?>" itemprop="url" class="homepage"><span itemprop="title">Trang chủ</span></a></div>
	<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="<?php echo $linkCat;?>" itemprop="url" class="homepage"><span itemprop="title"><?=$nameCat;?></span></a></div>
	<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="no-bg"><?php echo $rs->productname;?></div>
</div>
	
<div class="box-info-de-prod">
	<?php 
	$name  			= $rs->productname;
	$priceOld  		= (!empty($rs->price_front))?number_format($rs->price_front,0,'.','.').' ₫':'';
	$priceDetail  	= (!empty($rs->price))?number_format($rs->price,0,'.','.').' ₫':'Liên hệ';
	$percent		= $rs->percent;
	
	$tinhTrang      = ($rs->status == 1)?'Mới':'Hàng cũ';	
	$manuafature   	= $this->vdb->find_by_id('shop_manufacture',array('manufactureid'=>$rs->manufactureid))->name;
	$content    	= $rs->content;
	$imgFirt		= $rs->productimg;
	$guarantee      = ($rs->guarantee !='')? $rs->guarantee: 'Liên hệ';
	$gif   			= $rs->gif;
	?>
	
	<div class="zoom-section"> 
			<!-- BEGIN show box -->		
			<div class="popslideshow-content">	   		
			<script type="text/javascript">				
				//*************************
				function getZoom(idVal){					
					var imgPath1  = idVal;					
					var imgLoadScucess = '';
					jQuery(function() {
						jQuery.post("<?php echo base_url();?>products/loadImgProduct",
					      {imgpath: imgPath1},
					        function(data) {									      							  
							   var a = data.replace('"','');
							   var fileName  =  a.replace('"','');	          
							   imgLoadScucess  = '<?php echo base_url();?>'+'data/products/500/'+fileName;	
							   
					           jQuery("div.change_photo").html('<img id="image2ww" border="0" src=\"'+imgLoadScucess+'" style="width:450px;height:400px;border: solid 1px #eee;">');


						         //*******************************

								jQuery(document).ready(function($){
									
									$('#image2ww').addimagezoom({ // single image zoom
										zoomrange: [3, 3],
										magnifiersize: [450,400],
										magnifierpos: 'right',
										cursorshade: true,
										largeimage: imgLoadScucess //<-- No comma after last option!
									});
								
							
								});

						         //*******************************
								
					        });

							
					         
					    });
					    
						
				}

			</script>
			<div class="change_photo">
				<script type="text/javascript">							
				jQuery(document).ready(function($){
					var imgPath     = '<?php echo base_url().'data/products/500/'.$imgFirt;?>';
					$('#image1').addimagezoom({ // single image zoom
						zoomrange: [3,3],
						magnifiersize: [450,400],
						magnifierpos: 'right',
						cursorshade: true,
						largeimage: imgPath //<-- No comma after last option!
					});							
				});
				</script>
				<img id="image1" border="0" src="<?php echo base_url()."data/products/500/".$imgFirt;?>" style="width:450px;height:400px;">
			</div>			
	
			<div class="box-sroll">				
				<script type="text/javascript">
					jQuery(document).ready(function($){
						$('ul#mod_hethong').carouFredSel({
							auto: false,
							prev: "#prev_ht1",
							width : 340,
							visible : 5,
							items: 1,
							duration : 1000,
							start: 0,
							next: "#next_ht1"
							});
					
						});
				</script>
				
				<div class="image_hethong">					
					<ul class="mod_hethong" id="mod_hethong">
							<?php
			        		$diemImg  = 1;
			        		foreach($listimg as $img):
			        		?>
			        		<li>
								<a rel="example_group" href="<?php echo base_url()?>data/products/500/<?php echo $img->imagepath;?>"  onmouseover="getZoom('<?php echo $img->imagepath;?>');">
								<img src="<?php echo base_url()?>data/products/500/<?php echo $img->imagepath;?>" alt="<?php echo $rs->productname.'-'.$diemImg;?>">
								</a>
									
							</li>		
												
							<?php
							$diemImg++;
							endforeach;
							?>						 																				    
					</ul>
					
					<div class="clearfix"></div>
					<a id="prev_ht1" class="prev" href="javascript:;"></a>
					<a id="next_ht1" class="next" href="javascript:;"></a>
				</div>																
			</div>
	    	
	    </div>
		
		<!-- group popup -->		
		<script type="text/javascript">
			jQuery(document).ready(function($){				
				jQuery("a[rel=example_group]").fancybox({
					'transitionIn'		: 'none',
					'transitionOut'		: 'none',
					'titlePosition' 	: 'over',
					'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
						return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
					}
				});
	
			});
		</script>
		</div>
		<!-- product infomation -->
		<div class="info-detail-prod">			
			<h1 class="name"><?php echo $name;?></h1>
			<div class="bar-code">
				<span class="code"><strong>Mã sản phẩm:</strong> <?php if(!empty($rs->barcode)){?><?php echo $rs->barcode;?><?php }?></span>
				<span class="views"><strong>Lượt xem:</strong> <?php echo $rs->hits;?> lần</span>
			</div>
			<div class="brand-guarantee">
				<span class="brand"><strong>Hãng sản xuất: </strong> <?php echo $manuafature;?></span>
				<span class="guarantee"><strong>Bảo hành: </strong> <?php echo $guarantee;?></span>
			</div>
			<div class="box-price">
				<div class="price">
					<span class="old"><?php echo $priceOld; ?></span>
					<span class="sales">
						<?php echo $priceDetail; ?>
						<span class="vat">(Đã bao gồm VAT)</span>
					</span>
				</div>
				<div class="percent">
					<?php echo $percent;?>%
				</div>
			</div>
						
			<?php 
			if(!empty($rs->phu_kien)){
			?>
			<div class="phu-kien">
				<p class="title">Miêu tả sản phẩm</p>
				<ul>
					<?php echo addli($rs->phu_kien);?>
				</ul>
			</div>
			<?php }?>
			<?php if($gif!='') {?>
			<div class="info_hot">
				<?php echo $gif;?>
			</div>			
			<?php } ?>
		</div>
		<div class="box-info-price-cart">
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
			<div class="put-cart-box">
				<div class="status">
					<?php if($rs->tinhtrang_hang == 1){?>
					<i class="on"></i>
					<?php }else {?>
					<i class="off"></i>
					<?php }?>
					<?php echo ($rs->tinhtrang_hang == 1) ?'Còn hàng':'Hết hàng';?>
				</div>
				<span class="new-old">Tình trạng máy: <?php echo ($rs->status == 1)?'Mới':'Cũ';?></span>
				<?php 
				$linkBuy	= site_url('mua-ngay/'.$rs->producturl.'-'.$rs->productid);
				?>
				<div class="box-input-cart">
					<strong>Số lượng:</strong> <input type="text" name="quantity_<?php echo $rs->productid?>" id="quantity_<?php echo $rs->productid;?>" value="1" style="width: 50px;"/>
				</div>
				<?php 
				if($rs->tinhtrang_hang == 1){
				?>
				<div class="button-cart">
					<a href="javascript:;" class="addCart" id="addCart_<?php echo $rs->productid?>">Mua hàng ngay</a>
				</div>
				
				<?php }else {?>
				<div class="button-cart">
					Hết hàng
				</div>
				<?php }?>
			</div>
			
			<div class="cam-ket">
				<div class="title">Cam kết của chúng tôi</div>
				<ul class="items-cam-ket">
                    <li class="payment">Trả tiền khi nhận hàng</li>
                    <li class="giao-hang">Giao hàng toàn quốc</li>
                    <li class="dam-bao">Đảm bảo hàng hóa Đổi trả, hoàn tiền khi sản phẩm lỗi</li>
                </ul>
			</div>
			<div class="order-byphone">
				<?php $rowContact = $this->vdb->find_by_id("contact",  array('id'=>1));?>
				<div class="title">Đặt hàng qua điện thoại</div>
				<ul>
					<li class="address"><strong>ĐC:</strong> <?php echo $rowContact->address;?></li>
					<li class="hotline"><strong>Hotline:</strong> <?php echo $rowContact->phone;?> / <?php echo $rowContact->hotline;?></li>
					<li class="time-work"><strong>Làm việc:</strong>  Từ 8h00 đến 20h00 Thứ 2 - CN hàng tuần</li>
					<li class="timer-out"><strong>Ngoài giờ:</strong>   Vui lòng đặt hàng trực tuyến trên website</li>
				</ul>
			</div>
		</div>
	</div>
	
	
	<div class="box-content-de">
		<div class="left-de">
			<?php if(!empty($content)){?>
			<div class="thong-so">
				<div class="title">Thông tin sản phẩm</div>
				<div class="content-text"> 
					<?php echo $content;?>
				</div>
			</div>
			<?php }?>
		</div>		
	</div>
	
	<?php if(sizeof($listRelative)>0){?>
		<div class="group-items">
			<div class="title-prod"><span class="text">Sản phẩm <a href="<?php echo $linkCat; ?>"><?php echo $nameCat; ?></a>liên quan</span></div>
			<ul class="item-list">
				<?php 
				foreach ($listRelative as $val):
					$name   		= $val->productname;
					$percentRe		= $val->percent;
					$priceOld 		=  (!empty($valSub->price_front)) ? number_format($val->price_front,0,'.','.') .' ₫' : '';
					$price 			= (!empty($val->price))?number_format($val->price,0,'.','.').' ₫':'Liên hệ';
					$linkDetail 	= site_url('san-pham/'.vnit_change_title($name).'-'.$val->productid);
					$img			= (!empty($val->productimg))? base_url().'data/products/200/'.$val->productimg: base_url().'site/templates/default/images/no_image.gif';
					//brand
					$manuafatureName 		= $this->vdb->find_by_id('shop_manufacture',array('manufactureid'=>$val->manufactureid))->name;
				?>
				<li>
					<div class="img"><a href="<?php echo $linkDetail?>" title="<?php echo $name;?>"><img src="<?php echo $img;?>" width="180" height="150" alt="<?php echo $name;?>"/></a></div>
					<div class="info_brand">
						<div class="brand_name fl"><?php echo $manuafatureName;?></div>
						<div class="icon_gift fr"><img src="http://aomuavietnam.com/site/templates/default/images/icon-gift.png"></div>
					</div>
					<p class="name"><a href="<?php echo $linkDetail;?>" title="<?php echo $name;?>"><?php echo $name;?></a></p>	
					<div class="info-deal-bootom">
						<div class="group-price-sales">
						<?php
                        if ($percentRe > 0) {
                        ?>
						<div class="box-price">
							<p class="discount"><?php echo $percentRe;?>%</p>
							 <div class="price-old">
								<span class="old"><?php echo $priceOld;?></span>
								<span class="price"><?php echo $price;?></span>
							</p>
						</div>	
						<?php } else { ?>	
						 <div class="no-percent">
                             <p class="old"><?php echo $priceOld; ?></p>
                            <p class="price"><?php echo $price; ?></p>
                         </div>	

						 <?php } ?>		
						</div>	
					</div>	
				</li>
				<?php endforeach;?>						
			</ul>
		</div>
		
		<?php }?>