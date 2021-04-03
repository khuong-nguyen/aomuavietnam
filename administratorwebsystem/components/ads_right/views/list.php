<?php echo form_open('ads_right/dels',  array('id' => 'admindata'));?> 
<input type="hidden" name="page" value="<?php echo $this->uri->segment(4);?>">
<table class="admindata">
    <thead>
        <tr>
            <th class="head" colspan="8">

                Hiện có <?php echo $num;?> banner <span class="pages"><?php echo $pagination;?></span>
            </th>
        </tr>
        <tr>
            <th class="checkbox"><input type="checkbox" name="sa" id="sa" onclick="check_chose('sa', 'ar_id[]', 'admindata')"></th>
            <th class="id"><?php echo vnit_order('ads_right/listads/0/id/desc','ID');?></th>
            <th width="150"><?php echo vnit_order('ads_right/listads/0/fullname/desc','Hình ảnh');?></th>
            <th><?php echo vnit_order('ads_right/listads/0/name/desc','Tên banner');?></th>
            <th><?php echo vnit_order('ads_right/listads/0/price_old/desc','Giá thị trường');?></th>
            <th><?php echo vnit_order('ads_right/listads/0/price/desc','Giá bán');?></th>
            <th><?php echo vnit_order('ads_right/listads/0/url/desc','Link banner');?></th>
           
           
            <th class="publish">Chức năng</th>
        </tr>        
    </thead>
    <?php 
    $k=1;
    foreach($list as $rs):
    	$id	 		= $rs->id;
    	$name 	 = $rs->name;
    	$img	 = (!empty($rs->image))?base_url_site().'data/ads_right/thumb/'.$rs->image:base_url_site().'site/templates/default/images/no_image.gif';
    ?>
    <tr class="row<?php echo $k;?>">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?php echo $id;?>"></td>
        <td><?php echo $id;?></td>
        <td align="center"><img src="<?php echo $img;?>" width="90" alt=""></td>
        <td><?php echo $name;?></td>
        <td><?php echo number_format($rs->price_old,'.','.','.');?></td>
        <td><?php echo number_format($rs->price,'.','.','.');?></td>
        <td><?php echo $rs->url;?></td>
      
        <td align="center">
            <?php echo icon_edit('ads_right/edit/'.$rs->id.'/'.(int)$this->uri->segment(4))?> 
             <span id="publish<?php echo $rs->id?>"><?php echo icon_active("'ads_right'","'id'",$rs->id,$rs->published)?></span>       
            <?php echo icon_del('ads_right/del/'.$rs->id.'/'.(int)$this->uri->segment(4))?>        
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
