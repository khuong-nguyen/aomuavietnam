<?php echo form_open('contact/dels',  array('id' => 'admindata'));?> 
<input type="hidden" name="page" value="<?php echo $this->uri->segment(4);?>">
<table class="admindata">
    <thead>
        <tr>
            <th class="head" colspan="5">

                Hiện có <?php echo $num;?> banner <span class="pages"><?php echo $pagination;?></span>
            </th>
        </tr>
        <tr>
            <th class="checkbox"><input type="checkbox" name="sa" id="sa" onclick="check_chose('sa', 'ar_id[]', 'admindata')"></th>
            <th class="id"><?php echo vnit_order('ads/listcat/0/id/desc','ID');?></th>
            <th width="150"><?php echo vnit_order('ads/listcat/0/fullname/desc','Hình ảnh');?></th>
            <th><?php echo vnit_order('ads/listcat/0/phone/desc','Tên banner');?></th>
           
           
            <th class="publish">Chức năng</th>
        </tr>        
    </thead>
    <?php 
    $k=1;
    foreach($list as $rs):
    	$id	 		= $rs->id;
    	$name 	 = $rs->name;
    	$img	 = (!empty($rs->image))?base_url_site().'data/ads/thumb/'.$rs->image:base_url_site().'site/templates/default/images/no_image.gif';
    ?>
    <tr class="row<?php echo $k;?>">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?php echo $id;?>"></td>
        <td><?php echo $id;?></td>
        <td align="center"><img src="<?php echo $img;?>" width="90" alt=""></td>
        <td><?php echo $name;?></td>
      
        <td align="center">
            <?php echo icon_edit('ads/edit/'.$rs->id.'/'.(int)$this->uri->segment(4));?>        
            <?php echo icon_del('ads/del/'.$rs->id.'/'.(int)$this->uri->segment(4));?>        
        </td>
    </tr>        
    <?php
    $k=1-$k;
    endforeach;
    ?>
            <tfoot>
                <td colspan="5">

                    Hiện có <?php echo $num?> banner <span class="pages"><?php echo $pagination;?></span>
                </td>
            </tfoot>    
</table>
<?php echo form_close();?>
