<?php echo form_open_multipart(uri_string(),array('id'=>'admindata'));?>
<input type="hidden" name="id" value="<?php echo $rs->manufactureid;?>">
<table class="form"> 
    <tr>
        <td class="label">Tên nhà sản xuất</td>
        <td><input type="text" name="nsx[name]" value="<?php echo $rs->name;?>" class="w300"></td>
    </tr> 
      
</table>
<?php echo form_close();?>