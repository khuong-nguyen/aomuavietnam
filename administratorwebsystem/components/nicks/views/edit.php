<?=form_open(uri_string(),array('id'=>'admindata'))?>
<table class="form">
    <tr>
        <td class="label">Nicks name:</td>
        <td><input type="text" name="ads[name_nick]" value="<?=$rs->name_nick;?>"></td>
    </tr>
    <tr>
        <td class="label">Kiểu nicks:</td>
        <td>
        	<input type="radio" name="ads[type]" value="Yahoo" <?=(($rs->type=='Yahoo'))?'checked="checked"':'';?>> Yahoo
        	<input type="radio" name="ads[type]" value="Skype" <?=(($rs->type=='Skype'))?'checked="checked"':'';?>> Skype
        
        </td>
    </tr>
    
    <tr>
        <td class="label">Ghi chú:</td>
        <td>
        	<input type="text" name="ads[note]" value="<?=$rs->note;?>" class="w350">        	
        </td>
    </tr>
    <tr>
        <td class="label">Loại:</td>
        <td>
        	<select name="ads[loai]" class="w250">
        		<option value="">|- Chọn kiểu</option>
        		<option value="KD" <?=(($rs->loai)=='KD')?'selected="selected"':'';?>>|- Kinh doanh</option>
        		<option value="KT" <?=(($rs->loai)=='KT')?'selected="selected"':'';?>>|- Kỹ thuật</option>
        	</select>       	
        </td>
    </tr>
     <tr>
        <td class="label">Sắp xếp:</td>
        <td><input type="text" name="ads[ordering]" value="<?=$rs->ordering;?>"></td>
    </tr>
	 <tr>
        <td class="label">Hiển thị:</td>
        <td><input type="radio" value="1" name="ads[published]" checked="checked">Hiện <input type="radio" name="ads[published]" value="0">Không</td>
    </tr>
  
</table>
<?=form_close();?>


