<?php echo form_open('contact/dels',  array('id' => 'admindata'));?> 
<input type="hidden" name="page" value="<?php echo $this->uri->segment(4);?>">
<table class="admindata">
    <thead>
        <tr>
            <th class="head" colspan="7">

                Hiện có <?php echo $num;?> liên hệ <span class="pages"><?php echo $pagination;?></span>
            </th>
        </tr>
        <tr>
            <th class="checkbox"><input type="checkbox" name="sa" id="sa" onclick="check_chose('sa', 'ar_id[]', 'admindata')"></th>
            <th class="id"><?php echo vnit_order('photo/listcat/0/id/desc','ID');?></th>
            <th><?php echo vnit_order('photo/listcat/0/fullname/desc','Họ tên');?></th>
            <th><?php echo vnit_order('photo/listcat/0/phone/desc','Điện thoại');?></th>
            <th><?php echo vnit_order('photo/listcat/0/email/desc','Email');?></th>
            <th><?php echo vnit_order('photo/listcat/0/datesend/desc','Ngày gửi');?></th>
            <th class="publish">Chức năng</th>
        </tr>        
    </thead>
    <?php 
    $k=1;
    foreach($list as $rs):
    ?>
    <tr class="row<?php echo $k;?>">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?php echo $rs->contactid;?>"></td>
        <td><?php echo $rs->contactid;?></td>
        <td><?php echo anchor('contact/edit/'.$rs->contactid.'/'.$this->uri->segment(3),$rs->fullname);?></td>
        <td><?php echo $rs->phone;?></td>
        <td><?php echo $rs->email;?></td>
        <td><?php echo date('H:i:s d/m/Y',$rs->datesend);?></td>

        <td align="center">
             <?php echo icon_edit('contact/edit/'.$rs->contactid)?>     
            <?php echo icon_del('contact/del/'.$rs->contactid.'/'.(int)$this->uri->segment(4));?>        
        </td>
    </tr>        
    <?php 
    $k=1-$k;
    endforeach;
    ?>
            <tfoot>
                <td colspan="7">
                    Hiện có <?php echo $num;?> liên hệ <span class="pages"><?php echo $pagination;?></span>
                </td>
            </tfoot>    
</table>
<?php echo form_close();?>
