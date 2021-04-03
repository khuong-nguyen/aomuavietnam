<?php echo form_open('category/dels',  array('id' => 'admindata'));
$sections_url = (isset($sections_id) != 0) ? '/?option=true&sections_id='.$sections_id : '';
?> 
<input type="hidden" name="page" value="<?php echo $this->uri->segment(3);?>">
<table class="admindata">
    <thead>
        <tr>
            <th class="head" colspan="7">
                Hiện có <?php echo $num ;?> Chủ đề <span class="pages"><?php echo $pagination?></span>
            </th>
        </tr>
        <tr>
            <th class="checkbox"><input type="checkbox" name="sa" id="sa" onclick="check_chose('sa', 'ar_id[]', 'admindata')"></th>
            <th class="id"><?php echo vnit_order('category/listcategory/0/cat_id/desc'.$sections_url,'ID')?></th>
            <th><?php echo vnit_order('category/listcategory/0/cat_title/desc'.$sections_url,'Tiêu đề')?></th>
           	<th style="width: 80px;">Hiện trang chủ</th>
            <th style="width: 30px;"><?php echo vnit_order('category/listcategory/0/ordering/desc'.$sections_url,'Sắp xếp')?> <?php echo action_order()?></th>
            
            <th class="publish">Chức năng</th>
        </tr>        
    </thead>
    <?php
    $k = 1;
    foreach($list as $rs):
    	$is_menu   = ($rs->is_home != 0)? '<input type="radio" value="1" checked="checked">Hiện':'<input type="radio" value="0"> Không'
    ?>
    <tr class="row<?php echo $k;?>">
        <td align="center"><input type="checkbox" name="ar_id[]" value="<?php echo $rs->cat_id;?>"></td>
        <td><?php echo $rs->cat_id;?></td>
        <td><strong style="color: #003399;text-transform: uppercase;">|-<?php echo $rs->cat_title;?></strong></td>
        <td align="center">
        	<?php echo $is_menu;?>
        </td>
        <td>
            <input type="text"  class="order" name="order_<?php echo $rs->cat_id;?>" value="<?php echo $rs->ordering;?>">
            <input type="hidden" name="id[]" value="<?php echo $rs->cat_id;?>">
        </td>
        
        
        <td align="center">
            <?php echo icon_edit('category/edit/'.$rs->cat_id);?>
            <span id="publish<?php echo $rs->cat_id;?>"><?php echo icon_active("'category_prod'","'cat_id'",$rs->cat_id,$rs->published)?></span>
             <?php echo icon_del('category/del/'.$rs->cat_id);?>
        </td>
    </tr>
    <?php 
    	$listSub = $this->vdb->find_by_list("category_prod", array('parent_id'=>$rs->cat_id));
    	
    	if(count($listSub)>0){
    		foreach ($listSub as $valSub): 
    			$is_menuSub   = ($valSub->is_home != 0)? '<input type="radio" value="1" checked="checked">Hiện':'<input type="radio" value="0"> Không';   		
    ?>
    <tr class="row<?php echo $k;?>">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?php echo $valSub->cat_id?>"></td>
        <td><?php echo $valSub->cat_id;?></td>
        <td>&nbsp;&nbsp;|_ <?php echo $valSub->cat_title;?></td>
        <td align="center"><?php echo $is_menuSub;?></td>
        <td>
            <input type="text"  class="order" name="order_<?php echo $valSub->cat_id;?>" value="<?php echo $valSub->ordering;?>">
            <input type="hidden" name="id[]" value="<?php echo $valSub->cat_id;?>">
        </td>
        
        <td align="center">
            <?php echo icon_edit('category/edit/'.$valSub->cat_id);?>
            <span id="publish<?php echo $valSub->cat_id;?>"><?php echo icon_active("'category_prod'","'cat_id'",$valSub->cat_id,$valSub->published)?></span>
             <?php echo icon_del('category/del/'.$valSub->cat_id);?>
        </td>
    </tr>
    
    <?php 
    	//menu cap 3
    	$listSub2 = $this->vdb->find_by_list("category_prod", array('parent_id'=>$valSub->cat_id));
    	
    	if(count($listSub2)>0){
    		foreach ($listSub2 as $valSub2): 
    			$is_menuSub2   = ($valSub2->is_home != 0)? '<input type="radio" value="1" checked="checked">Hiện':'<input type="radio" value="0"> Không';   		
    ?>
    <tr class="row<?php echo $k;?>">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?php echo $valSub2->cat_id?>"></td>
        <td><?php echo $valSub2->cat_id;?></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|_ <?php echo $valSub2->cat_title;?></td>
        <td align="center"><?php echo $is_menuSub2;?></td>
        <td>
            <input type="text"  class="order" name="order_<?php echo $valSub2->cat_id;?>" value="<?php echo $valSub2->ordering;?>">
            <input type="hidden" name="id[]" value="<?php echo $valSub2->cat_id;?>">
        </td>
        
        <td align="center">
            <?php echo icon_edit('category/edit/'.$valSub2->cat_id);?>
            <span id="publish<?php echo $valSub2->cat_id;?>"><?php echo icon_active("'category_prod'","'cat_id'",$valSub2->cat_id,$valSub2->published)?></span>
             <?php echo icon_del('category/del/'.$valSub2->cat_id);?>
        </td>
    </tr>
    
    <?php 
    endforeach;
    	}
    ?>
    
    <?php 
    endforeach;
    	}
    ?>
    <?php
    $k = 1 - $k;
    endforeach;?>
    <tfoot>
        <td colspan="7">
            Hiện có <?php echo $num?> Chủ đề con <span class="pages"><?php echo $pagination?></span>
        </td>
    </tfoot>    
</table>
<?php echo form_close()?>
<script type="text/javascript">
    function save_order(){
       // load_show();
        var fields = $('#admindata :input[type="text"]').serializeArray();
        console.log(fields);
        $.post(base_url+"category/save_order",fields, function(data) {
           // load_hide();
            location.reload();
        });
    }

</script>
