<?php 
	$uri1 			= $this->uri->segment(1);
	$uri2 			= $this->uri->segment(2);
	$catID			= end(explode('-',$this->uri->segment(2)));
	$catRow      	= $this->vdb->find_by_id('category_prod',array('cat_id'=>$catID));
	$parentID	 	= $this->vdb->find_by_id('category_prod',array('cat_id'=>$catRow->cat_id))->parent_id;
	$catID		 	= ($catRow->parent_id == 0)?$catRow->cat_id:$parentID;
	
	$listCategory  	= $this->vdb->find_by_list("category_prod",null,array('parent_id'=>0,'published'=>1), array('ordering'=>'ASC'));
?>
<link type="text/css" rel="stylesheet" href="<?=base_url()?>site/templates/default/css/menu_left.css?v=2.0" media="screen" />

<script type="text/javascript">	
	var item_member		= "item<?=$catID;?>";
	jQuery(document).ready(function($){    	
       $("#nv_ac").each(function() {
    	   $("#nv_ac ul").css("display", "none");
    	   $(this).find('ul#'+item_member).css('display','block');    	       	      	             
       });
       
       
        $("#nv_ac li a").click(function() {           
            var nv_id = "#" + $(this).attr("rel");                                          
            if ($(nv_id).css("display") == "none") {                        	
                $(nv_id).slideDown();
                $("#nv_ac ul"+nv_id).show();              
            }
        });
    });

</script>

<div class="category-left">
	<div class="title"><p class="icon">Danh mục sản phẩm</p></div>
	<?php 
	if(count($listCategory)>0){
	?>
	<ul class="nv-ac" id="nv_ac">
		<?php 
		foreach ($listCategory as $val):
			$nameCat	= $val->cat_title;
			$linkCat	= site_url('Chuyen-muc/'.$val->cat_alias.'-'.$val->cat_id);
			$listSubCat = $this->vdb->find_by_list("category_prod",null,array('parent_id'=>$val->cat_id,'published'=>1), array('ordering'=>'ASC'));
		
		?>
		<li>
        	<a href="<?php $linkCat;?>" rel="item<?=$val->cat_id;?>"><?php $nameCat;?></a>
        	<?php if (count($listSubCat)>0){?>
            <ul id="item<?php $val->cat_id;?>" class="hide">
            	<?php 
            	foreach ($listSubCat as $valSub):
            		$nameCatSub	= $valSub->cat_title;
					$linkCatSub	= site_url('Chuyen-muc/'.$valSub->cat_alias.'-'.$valSub->cat_id);
            	?>
             		<li><a href="<?php $linkCatSub;?>"> <?php $nameCatSub;?></a></li>
             	<?php endforeach;?>             			
             	
           	</ul>
            <?php }?>
            
        </li>
        <?php endforeach;?>     
          
	</ul>
	<?php }?>
</div>