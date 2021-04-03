<?php echo form_open('product/manufacture/dels',  array('id' => 'admindata'));?> 
<input type="hidden" name="page" value="<?php echo $this->uri->segment(4);?>">
<input type="hidden" name="catid" value="<?php echo $this->uri->segment(3);?>">
<?php $uri3 = (int)$this->uri->segment(3);?>
<?php $uri4 = (int)$this->uri->segment(4);?>
<table class="admindata">
    <thead>
        <tr>
            <th class="head" colspan="4">
                Hiện có <?php echo $num;?> nhà sản xuất <span class="pages"><?php echo $pagination;?></span>
            </th>
        </tr>
        <tr>
            <th class="checkbox"><input type="checkbox" name="sa" id="sa" onclick="check_chose('sa', 'ar_id[]', 'admindata')"></th>
            <th class="id"><?php echo vnit_order('product/manufacture/listmanufacture/0/manufactureid/asc','ID')?></th>
            <th><?php echo vnit_order('product/manufacture/listmanufacture/0/name/asc','Tên xuất xứ')?></th>
            <th class="publish">Chức năng</th>
        </tr>        
    </thead>
    <?php
    $k=1;
    foreach($list as $rs):
    ?>
    <tr class="row<?php echo $k;?>">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?php echo $rs->manufactureid;?>"></td>
        <td><?php echo $rs->manufactureid;?></td>
        <td><?php echo $rs->name;?></td>

        <td align="center">
            <?php echo icon_edit('product/manufacture/edit/'.$rs->manufactureid)?>
            <span id="publish<?php echo $rs->manufactureid;?>"><?php echo icon_active("'shop_manufacture'","'manufactureid'",$rs->manufactureid,$rs->published)?></span>
            <?php echo icon_del('product/manufacture/del/'.$rs->manufactureid);?>        
        </td>
    </tr>       
    <?php
    $k=1-$k;
    endforeach;
    ?>
    <tfoot>
    	<td colspan="4">
          Hiện có <?php echo $num;?> nhà sản xuất <span class="pages"><?php echo $pagination;?></span>
        </td>
    </tfoot>    
</table>
<?php echo form_close();?>
