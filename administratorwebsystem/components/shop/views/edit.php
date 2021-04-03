<script type="text/javascript" src="<?=base_url()?>templates/js/shop.js?v=2.0" charset="UTF-8"></script>
<script type="text/javascript" src="<?=base_url()?>templates/js/core/datetimepicker_css.js"></script>
<script type="text/javascript" src="<?=base_url()?>templates/js/shop_upload.js?v=2.0" charset="UTF-8"></script>
<link type="text/css" rel="stylesheet" href="<?=base_url()?>templates/css/shop.css?v=2.0" media="screen" />


<ul class="tab">
    <li class="select" title="thongtin"><a href="javascript:void(0)">Thông tin sản phẩm</a></li>
    <li title="hinhanh"><a href="javascript:void(0)">Hình ảnh</a></li>
</ul>
<?php echo form_open(uri_string(),array('id'=>'admindata'));?>
<input type="hidden" name="productid" value="<?=$rs->productid?>">
<div class="gray">
        <div id="thongtin" class="content" style="display: block;">
            <table class="form">
                <tr>
                    <td class="label">Mã hàng:</td>
                    <td><input type="text" name="sp[barcode]" value="<?=$rs->barcode?>" class="w200"></td>
                </tr>
                <tr>
			        <td class="label">Chủ đề:</td>
			        <td>			       		 
			            <select name="sp[catid]" style="padding: 4px;" class="w300">
			                <option value="0">Chủ đề chính</option>
			                <?php foreach($listCategory as $val): ?>
			                <option value="<?php echo $val->cat_id?>" <?php echo ($val->cat_id == $rs->catid)?'selected="selected"':'';?>><?php echo '|- '.$val->cat_title?></option>
			               	<?php 
			               	$listSubCbo  = $this->vdb->find_by_list('category_prod', array('parent_id'=>$val->cat_id));
			                if(count($listSubCbo)>0){
			               	foreach ($listSubCbo as $valSubCbo):
			               		
			               	?>
			                <option value="<?php echo $valSubCbo->cat_id?>" <?php echo ($valSubCbo->cat_id == $rs->catid)?'selected="selected"':'';?>>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo '|- '.$valSubCbo->cat_title?></option>
			               <?php 
			                endforeach;
			                }
			                ?>
			                <?php endforeach;?>
			                
			            </select>
			        </td>
			    </tr>
                <tr>
                    <td class="label">Tên sản phẩm:</td>
                    <td><input type="text" name="sp[productname]" value="<?=$rs->productname?>" class="w400"></td>
                </tr>
                <tr>
                    <td class="label">Hãng sản xuất:</td>
                    <td>
                        <select name="sp[manufactureid]" id="manufacture" class="w250">
                            <?php foreach($listmanufacture as $val):?>
                            <option value="<?php echo $val->manufactureid?>" <?=($rs->manufactureid == $val->manufactureid)?'selected="selected"':'';?>><?=$val->name?></option>
                            <?php endforeach;?>
                        </select>
                    </td>
                </tr> 
                 <tr>
                    <td class="label">Giá thị trường:</td>
                    <td>
                    	<input type="text" id="price_front" name="sp[price_front]" value="<?php echo number_format($rs->price_front,0,'.','.');?>">
                    	
                    </td>
                </tr>
                <tr>
                    <td class="label">Giá bán:</td>
                    <td>
                    	<input type="text" id="price" name="sp[price]" value="<?=number_format($rs->price,0,'.','.')?>">
                    	(Không điền giá thì giá là liên hệ)
                    	<input type="hidden" id="percent" name="sp[percent]" id="percent" value="<?php echo $rs->percent;?>">
                    </td>
                </tr>
				<tr>
                    <td class="label">Bảo hành:</td>
                    <td><input type="text"  name="sp[guarantee]" value="<?php echo $rs->guarantee;?>"></td>
                </tr>
				<tr>
                    <td class="label">Khuyến mãi:</td>
                    <td>
						<textarea id="phu_kien" name="sp[gif]" rows="7" cols="65"><?php echo $rs->gif;?></textarea>  
					</td>
                </tr>
                <tr>
                    <td class="label">Hiện trang chủ:</td>
                    <td>
                    	<input type="radio"" name="sp[is_home]" value="1" <?php echo ($rs->is_home == 1)?'checked="checked"':'';?>/> Hiện
                    	<input type="radio"" name="sp[is_home]" value="0" <?php echo ($rs->is_home == 0)?'checked="checked"':'';?>/> Không
                    
                    </td>
                </tr>
                
                <tr>
                    <td class="label">Hiện sản phẩm:</td>
                    <td>
                    	<input type="radio"" name="sp[tinhtrang_hang]" value="1" <?php echo ($rs->tinhtrang_hang == 1)?'checked="checked"':'';?>/> Còn hàng
                    	<input type="radio"" name="sp[tinhtrang_hang]" value="0" <?php echo ($rs->tinhtrang_hang == 0)?'checked="checked"':'';?>/> Hết hàng
                    
                    </td>
                </tr>
                <tr>
                    <td class="label">Tình trạng:</td>
                    <td>
                    	<input type="radio"" name="sp[status]" value="1" <?php echo($rs->status == 1)?'checked="checked"':'';?>/> Hàng mới
                    	<input type="radio"" name="sp[status]" value="0" <?php echo ($rs->status == 0)?'checked="checked"':'';?>/> Hàng cũ
                    
                    </td>
                </tr>
                <tr>
                    <td class="label">Icon:</td>
                    <td>
                    	<input type="checkbox" name="sp[icon_hot]" value="1" <?php echo ($rs->icon_hot == 1)?'checked="checked"':'';?>/> Hot
                    	<input type="checkbox" name="sp[icon_deal]" value="1" <?php echo ($rs->icon_deal == 1)?'checked="checked"':'';?>/> Mới
                    	<input type="checkbox" name="sp[icon_new]" value="1" <?php echo ($rs->icon_new == 1)?'checked="checked"':'';?>/> Bán chạy 
                    
                    </td>
                </tr>
               <tr>
                    <td class="label">Phụ kiện:</td>
                    <td>
                        <textarea id="phu_kien" name="sp[phu_kien]" rows="7" cols="65"><?php echo $rs->phu_kien;?></textarea>  
                    </td>
                </tr>
                <tr>
                    <td class="label">Mô tả:</td>
                    <td>
                      
                        <?php echo vnit_editor($rs->content,'sp[content]','full',false);?>
                    </td>
                </tr>
                <tr>
                        <td class="label">Sắp xếp:</td>
                        <td>
                            <input type="text" name="sp[ordering]" value="<?php echo $rs->ordering;?>">  
                                                    
                        </td>
                    </tr>     
            </table>

        </div>

        <!---hinh anh-->
        <div id="hinhanh" class="content">
            <table class="form">
                <tr>
                    <td class="label">Hình chính:</td>
                    <td>
                        <div id="main_img">
                            <?php if($rs->productimg==''){?>
                            <img src="<?=base_url_site()?>data/no_image.gif" alt="">
                            <?php }else{?>
                            <img src="<?=base_url_site()?>data/products/200/<?=$rs->productimg?>" width="85" alt="">
                            <?php }?>
                        </div>
                        <input type="hidden" id="productimg" value="<?=$rs->productimg;?>" name="sp[productimg]">
                    </td>
                </tr>
                <tr>
                    <td class="label">Tải hình ảnh</td>
                    <td>
                        <div id="upload_button"><span>Chọn File Upload<span></div>
                        <div id="status_message">Click chọn hình để đưa vào hình chính của sản phẩm</div>   
                        <ul id="list_img">
                              <?php
                              $i = 0;
                              if(count($list_img)>0){
                              foreach($list_img as $img):
                                
                                ?>
                                <li class="success" id="<?=$img->imageid?>">
                                    <div align="center">
                                        <img width="85" height="85" src="<?=base_url_site()?>data/products/200/<?=$img->imagepath?>" onclick="chosen('<?=$img->imagepath?>')">
                                        <a class="delete_button_edit" rel="<?=$i?>" id="<?=$img->imageid?>" href="javascript:;"> Xóa</a>
                                        <input type="hidden" name="ar_img[]" value="<?=$img->imagepath?>">
                                    </div>
                                </li>
                              <?php
                              $i++;
                              endforeach;
                              }
                              ?>
                        </ul>                                             
                    </td>
                </tr>
            </table>
        </div>
        
</div>

<?php echo form_close()?>
<script type="text/javascript">
$(function(){
    $("#price").priceFormat();
    $("#price_front").priceFormat();
});
</script>

<script type="text/javascript">
$(document).ready(function(){
	//keyup
	$('#price').keyup(function() {
		var giathitruong 	= ToNumber($("#price_front").val());
        var price 			= ToNumber($(this).val());
        var percent 		= ((giathitruong - price)*100)/giathitruong;      
        $("#percent").val(parseInt(percent));        
	});
	//tab
    $("ul.tab li").click(function () {
        $("ul.tab li.select").removeClass("select");
        $(this).addClass("select");
        $(".content").css('display','none');
        var content_show = $(this).attr("title");
        $("#"+content_show).css('display','block');
    }); 
    
   
   
   
});
</script>

<script type="text/javascript" >
    $(function(){
        var btnUpload=$('#upload_button');
        var status=$('#status_message');
        new AjaxUpload(btnUpload, {
            action: base_url+'shop/uploader_edit/<?=$rs->productid?>',
            name: 'uploadfile',
            onSubmit: function(file, ext){
                 if (! (ext && /^(jpg|png|jpeg|gif|)$/.test(ext))){ 
                    status.text('File cho phép Upload JPG, PNG, JPEG, GIF');
                    return false;
                }
                status.text('Đang tải File lên. Vui lòng đợi');
            },
            onComplete: function(file, response){ 
                status.text('');
                if(response!="error"){
                var str = response.split('|');
             
                var last_li = $('ul#list_img li:last').attr('id'); 
                    last_id = (last_li)?parseInt(last_li + 1):0;                
                    $('<li id="'+str[1]+'"></li>').appendTo('#list_img').html('<div  align="center"><img  onclick="chosen(\''+str[0]+'\')" src="'+base_url_img+'data/products/200/'+str[0]+'" width="85" height="85"><a href="javascript:;" id="'+str[1]+'" class="delete_button_edit"> Xóa</a><span id="v'+str[0]+'" style="display: none;">'+str[0]+'</span><input type="hidden" name="ar_img[]" value="'+str[0]+'"></div>').addClass('success');
                } else{
                    $('<li></li>').appendTo('#list_img').text(file).addClass('error');
                }
            }
        });
        
    });
</script>
