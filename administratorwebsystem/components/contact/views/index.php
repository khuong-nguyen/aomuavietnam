<?php echo form_open(uri_string(),array('id'=>'admindata'));?>
<table class="form">
    <tr>
        <td class="label">Tên liên hệ:</td>
        <td><input type="text" class="w500" name="contact[name]" value="<?php echo $rs->name;?>"></td>
    </tr>
  
    <tr>
        <td class="label">Địa chỉ:</td>
        <td>
            <input type="text" class="w300" name="contact[address]" value="<?php echo $rs->address;?>">
            <div>Ví dụ: phường 25, Bình Thạnh, TPHCM, Việt Nam</div>
        </td>
    </tr>
   
    <tr>
        <td class="label">Điện thoại:</td>
        <td><input type="text" name="contact[phone]" class="w300" value="<?php echo $rs->phone?>"></td>
    </tr>
    <tr>
        <td class="label">Hotline:</td>
        <td><input type="text" name="contact[hotline]" class="w300" value="<?php echo $rs->hotline;?>">
        	
        </td>
    </tr>
    <tr>
        <td class="label">Fax</td>
        <td><input type="text" name="contact[fax]" class="w300" value="<?php echo $rs->fax;?>"></td>
    </tr>
    <tr>
        <td class="label">Email</td>
        <td><input type="text" name="contact[email]" class="w300" value="<?php echo $rs->email;?>"></td>
    </tr>
    <tr>
        <td class="label">&nbsp;</td>
                        <td>
                        	<!-- 
                            <div id="image" class="img_news" onclick="openKCFinder(this)">
                            <?if($rs->img != ''){?>
                            <img src="<?=base_url_site().$rs->img?>" alt="">    
                            <?}else{?>
                            <img src="<?=base_url()?>templates/images/no-img.png" alt="">
                            <?}?>
                            </div> -->
                            <input type="hidden" name="contact[img]" id="news_img" value="<?php echo $rs->img;?>">
                        </td>
    </tr>    

</table>
<?php echo form_close();?>
