<?php echo form_open(uri_string(), array('id'=>'admindata'));?>
<table class="form"> 
	<?php 
	//loop data ID
	foreach ($lisID as $val):			
	?>
    <tr>
        <td class="label">ID-<?php echo $val;?></td>
        <td><input type="text" name="ar_id[]" value="<?php echo $val;?>" class="w50"></td>
    </tr> 
    
    <?php 
	endforeach;
	
	?>
</table>
<?php echo form_close();?>