<?php echo form_open('ads_category/dels',  array('id' => 'admindata'));?> 
<input type="hidden" name="page" value="<?php echo $this->uri->segment(4);?>">
<table class="admindata">
    <thead>
        <tr>
            <th class="head" colspan="5">

                Hiện có <?php echo $num;?> banner <span class="pages"><?php echo $pagination;?></span>
            </th>
            <th>
            	<select class="w200" onchange="window.open(this.value,'_self');" name="cat_id" id="cat_id">
				<option value="<?php echo site_url('ads_category/listads');?>">--Chọn chủ đề--</option>		                
			    <?php foreach($listCat as $val):?>
			    <option value="<?php echo site_url('ads_category/listads?cat_id='.$val->cat_id);?>" <?php echo ($val->cat_id == $catID)?'selected="selected"':'' ;?>><?php echo $val->cat_title?></option>
			 
			    <?php 
			     $listSub = $this->vdb->find_by_list('category_prod',array('parent_id'=>$val->cat_id));
			     if(count($listSub)>0){
			    ?>
			    	<?php foreach($listSub as $valSub):?>
			    	<option value="<?php echo site_url('ads_category/listads?cat_id='.$valSub->cat_id);?>" <?php echo ($valSub->cat_id == $catID)?'selected="selected"':'' ;?>>&nbsp;|- <?php echo $valSub->cat_title?></option>
			 	<?php 
			 		endforeach;
			     }
			 	?>
			 		
			    <?php endforeach;?>
			                
			</select>
            </th>
        </tr>
        <tr>
            <th class="checkbox"><input type="checkbox" name="sa" id="sa" onclick="check_chose('sa', 'ar_id[]', 'admindata')"></th>
            <th class="id"><?php echo vnit_order('ads_category/listads/0/id/desc','ID');?></th>
            <th width="150"><?php echo vnit_order('ads_category/listads/0/fullname/desc','Hình ảnh');?></th>
            <th><?php echo vnit_order('ads_category/listads/0/name/desc','Tên banner');?></th>        
            <th><?php echo vnit_order('ads_category/listads/0/url/desc','Link banner');?></th>                      
            <th class="publish">Chức năng</th>
        </tr>        
    </thead>
    <?php 
    $k=1;
    foreach($list as $rs):
    	$id	 	 = $rs->id;
    	$name 	 = $rs->name;
    	$img	 = (!empty($rs->image))?base_url_site().'data/ads_category/thumb/'.$rs->image:base_url_site().'site/templates/default/images/no_image.gif';
    ?>
    <tr class="row<?php echo $k;?>">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?php echo $id;?>"></td>
        <td><?php echo $id;?></td>
        <td align="center"><img src="<?php echo $img;?>" width="90" alt=""></td>
        <td><?php echo $name;?></td>        
        <td><?php echo $rs->url;?></td>
      
        <td align="center">
            <?php echo icon_edit('ads_category/edit/'.$rs->id.'/'.(int)$this->uri->segment(4))?> 
             <span id="publish<?php echo $rs->id?>"><?php echo icon_active("'ads_right'","'id'",$rs->id,$rs->published)?></span>       
            <?php echo icon_del('ads_category/del/'.$rs->id.'/'.(int)$this->uri->segment(4))?>        
        </td>
    </tr>        
    <?php 
    $k=1-$k;
    endforeach;
    ?>
            <tfoot>
                <td colspan="8">
                    Hiện có <?php echo $num;?> banner <span class="pages"><?php echo $pagination;?></span>
                </td>
            </tfoot>    
</table>
<?php echo form_close();?>
