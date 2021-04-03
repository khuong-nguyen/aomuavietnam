<?php echo form_open('phuongthuc/dels',  array('id' => 'admindata'));?> 
<input type="hidden" name="page" value="<?php echo $this->uri->segment(3);?>">
<?php $uri3 = (int)$this->uri->segment(3)?>
<?php $uri4 = (int)$this->uri->segment(4)?>
<table class="admindata">
    <thead>
        <tr>
            <th class="head" colspan="4">
                Hiện có <?php echo $num?> phương thức thanh toán
            </th>
        </tr>
        <tr>
            <th class="checkbox"><input type="checkbox" name="sa" id="sa" onclick="check_chose('sa', 'ar_id[]', 'admindata')"></th>
            <th class="id">ID</th>
            <th>Phương thức</th>
            <th class="publish">Chức năng</th>
        </tr>        
    </thead>
    <?php 
    $k=1;
    foreach($list as $rs):    
    ?>
    <tr class="row<?php echo $k;?>">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?php echo $rs->payment_id;?>"></td>
        <td><?php $rs->payment_id;?></td>
        <td><?php echo $rs->payment_name;?></td>
        <td align="center">
            <?php echo icon_edit('phuongthuc/edit/'.$rs->payment_id);?>
            <span id="publish<?php echo $rs->payment_id;?>"><?php echo icon_active("'shop_payment'","'payment_id'",$rs->payment_id,$rs->published);?></span>    
        </td>
    </tr>
   
    <?php 
    $k=1-$k;
    endforeach;
    ?>
    <tfoot>
        <td colspan="5">
            Hiện có <?php echo $num;?> phương thức thanh toán
        </td>
    </tfoot>    
</table>
<?php echo form_close();?>