<?php
$linkNews = site_url('tin-tuc');
$linkService = site_url('dich-vu');
?>
<div class="box-menu-slider">
    <nav id="menu-bar">
        <ul id="menu-left">	
            <?php echo $this->vdb->findMenuCache_list('category_prod', 'cat_id,cat_alias,cat_title,note_title,ordering', '', array('parent_id' => 0, 'published' => 1), array('ordering' => 'ASC')) ?>			
        </ul>
    </nav>
    <?php $this->load->view('templates/default/html/slider'); ?>

</div>

<?php
if (sizeof($listCat) > 0) {
    $stt = 1;
    foreach ($listCat as $valCat):
        $catTitle = $valCat["cat_title"];
        $linkCat = site_url('chuyen-muc/' . $valCat["cat_alias"] . '-' . $valCat["cat_id"]);
		$listSub = $this->vnit->getAllCategoryCatID($valCat["cat_id"]);
        //get list product
        $listProduct = $this->vnit->get_all_productCat($valCat["cat_id"]);
        if (sizeof($listProduct) > 0) {
            ?>
            <div class="group-items">
                <div class="title-prod">
					<span class="text"><a href="<?php echo $linkCat; ?>" title="<?php echo $catTitle; ?>"><?php echo $catTitle; ?></a></span>
					<?php if(count($listSub)>0){ ?>
					<ul class="sub-cat">
						<?php foreach($listSub as $catSub){ ?>
						<li><a href="<?php echo site_url('chuyen-muc/' . $catSub["cat_alias"] . '-' . $catSub["cat_id"]);?>"><?php echo $catSub['cat_title'];?></a> | </li>						
						<?php } ?>
						<li><a href="<?php echo $linkCat; ?>">Tất cả &raquo;</a></li>
					</ul>
					<?php } ?>
				</div>
                <?php if (sizeof($listProduct) > 0) { ?>
                    <ul class="item-list">
                        <?php
                        $k = 0;
                        foreach ($listProduct as $valSub):
                            $namCatSub = $valSub->productname;
                            $linkCatSub = site_url('san-pham/' . $valSub->producturl . '-' . $valSub->productid);
                            if (file_exists(base_url() . 'data/products/155/' . $valSub->productimg)) {
                                $imgCheck = base_url() . 'data/products/155/' . $valSub->productimg;
                            } else {
                                $imgCheck = base_url() . 'data/products/200/' . $valSub->productimg;
                            }
                            $imgCatSub = (!empty($valSub->productimg)) ? $imgCheck : base_url() . 'site/templates/default/images/no_image.gif';

                            //price and percent
                            $percent = $valSub->percent;
                            $priceOld = (!empty($valSub->price_front)) ? number_format($valSub->price_front, 0, '.', '.') . ' ₫' : '';
                            $price = (!empty($valSub->price)) ? number_format($valSub->price, 0, '.', '.') . ' ₫' : '';
							$manuafature   	= $this->vdb->find_by_id('shop_manufacture',array('manufactureid'=>$valSub->manufactureid))->name;
                            ?>				
                            <li <?php echo ($k == 5 || $k == 11) ? 'class="item-r"' : ''; ?>>
                                <div class="img">
                                    <a href="<?php echo $linkCatSub; ?>"><img src="<?php echo $imgCatSub; ?>" width="185" height="160" alt="<?php echo $namCatSub; ?>"></a>

                                    <?php
                                    if ($valSub->icon_deal == 1) {
                                        echo '<div class="deal-off"></div>';
                                    }
                                    ?>
                                    <?php
                                    if ($valSub->icon_hot == 1) {
                                        echo '<div class="deal-hot">&nbsp;</div>';
                                    }
                                    ?>
                                    <?php
                                    if ($valSub->icon_new == 1) {
                                        echo '<div class="deal-circle"> </div>';
                                    }
                                    ?>
                                    <div class="buttom-buy"><a href="<?php echo $linkCatSub; ?>"></a></div>
									
                                </div>	
								<div class="info_brand">
									<div class="brand_name fl"><?php echo $manuafature;?></div>
									<div class="icon_gift fr"><img src="<?php echo base_url()."site/templates/default/images/icon-gift.png";?>"></div>
								</div>								
                                <p class="name"><a href="<?php echo $linkCatSub; ?>" title="<?php echo $namCatSub; ?>"><?php echo $namCatSub; ?></a></p>						
                                <div class="info-deal-bootom">
                                    <div class="group-price-sales">
                                        <?php
                                        if ($percent > 0) {
                                            ?>
                                            <div class="price-box">						
                                                <p class="percent"><?php echo $percent; ?>%</p>
                                                <div class="price-old">
                                                    <p class="old"><?php echo $priceOld; ?></p>
                                                    <p class="price"><?php echo $price; ?></p>
                                                </div>														
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

                            <?php
                            $k++;
                        endforeach;
                        ?>		   		

                    </ul>
            <?php } ?>
            </div>			
            <?php
        }
        $stt ++;
    endforeach;
}
?>
		