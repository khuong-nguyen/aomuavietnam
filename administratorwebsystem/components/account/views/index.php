


<!--
<fieldset>
    <legend>Tìm kiếm</legend>
    <table class="tuychon">
        <tr>
            <td>Từ khóa <input type="text" class="w100"></td>
            <td>
                <select name="group_id">
                    <option value="0">--Nhóm thành viên--</option>
                <?foreach($this->group as $val){?>
                    <option value="<?=$val->group_id?>"><?=$val->group_name?></option>
                <?}?>
                </select>
            </td>
            <td>
                <input type="submit" value="Tìm kiếm">
            </td>
        </tr>
    </table>
</fieldset>
-->
<?php
$get = "?option=true";
if($city_id != 0){
    $get .="&city_id=".$city_id;
}
echo $order = $this->uri->segment(5);
?>
<?php echo form_open('account/dels',  array('id' => 'admindata'));?> 
<input type="hidden" name="page" value="<?=$this->uri->segment(3)?>">
<table class="admindata">
    <thead>
        <tr>
            <th class="head" colspan="10">

                Hiện có <?php echo $num?> thành viên <span class="pages"><?php echo $pagination?></span>
            </th>
        </tr>
        <tr>
            <th class="checkbox"><input type="checkbox" name="sa" id="sa" onclick="check_chose('sa', 'ar_id[]', 'admindata')"></th>
            <th class="id"><?php echo vnit_order('account/listaccount/0/user_code/asc','ID')?></th>
            <th><?php echo vnit_order('account/listaccount/0/fullname/asc','Tên thành viên')?></th>
            <th><?php echo vnit_order('account/listaccount/0/email/asc','Email đăng nhập')?></th>
            <th><?php echo vnit_order('account/listaccount/0/phone/asc','Điện thoại')?></th>
            <th><?php echo vnit_order('account/listaccount/0/address/asc','Địa chỉ')?></th>
            
           

            <th class="publish">Chức năng</th>
        </tr>        
    </thead>
    <?php
    $k=1;
    foreach($list as $rs):
    ?>
    <tr class="row<?=$k?>">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?php echo $rs->user_id?>"></td>
        <td><?=$rs->user_id?></td>
        <td><?=$rs->fullname?></td>
        <td><?=$rs->email?></td>
        <td><?=$rs->phone?></td>
        <td><?=$rs->address?></td>
        
       
        <td align="center">
            <?php echo icon_edit('account/edit/'.$rs->user_id)?>
            <span id="publish<?php echo $rs->user_id?>"><?php echo icon_active("'user'","'user_id'",$rs->user_id,$rs->published)?></span>      
        </td>
    </tr>       
    <?php
    $k=1-$k;
    endforeach;
    ?>
    <tfoot>
        <td colspan="10">

            Hiện có <?php echo $num?> thành viên <span class="pages"><?php echo $pagination?></span>
        </td>
    </tfoot>    
</table>
<?php echo form_close()?>

