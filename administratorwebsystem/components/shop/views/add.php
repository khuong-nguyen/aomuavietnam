<script type="text/javascript" src="<?php echo base_url()?>templates/js/shop.js?v=2.0" charset="UTF-8"></script>
<script type="text/javascript" src="<?php echo base_url()?>templates/js/core/datetimepicker_css.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>templates/js/shop_upload.js?v=2.0" charset="UTF-8"></script>
<link type="text/css" rel="stylesheet" href="<?php echo base_url()?>templates/css/shop.css?v=2.0" media="screen" />


<ul class="tab">
    <li class="select" title="thongtin"><a href="javascript:void(0)">Thông tin sản phẩm</a></li>
   
    <li title="hinhanh"><a href="javascript:void(0)">Hình ảnh</a></li>

</ul>
<?php echo form_open(uri_string(),array('id'=>'admindata'));?>
<div class="gray">
        <div id="thongtin" class="content" style="display: block;">
            <table class="form">
                <tr>
                    <td class="label">Mã hàng:</td>
                    <td><input type="text" name="sp[barcode]" value="" class="w200"></td>
                </tr>
               <tr>
			        <td class="label">Chủ đề: (*)</td>
			        <td>
			            <select name="sp[catid]" style="padding: 4px;" class="w300">
			                <option value="0">Chủ đề chính</option>
			                <?php foreach($listCategory as $val):?>
			                <option value="<?php echo $val->cat_id?>"><?php echo $val->cat_title?></option>
			                <?php echo $this->category->ar_option_cat($val->cat_id)?>
			                <?php endforeach;?>
			                
			            </select>
			        </td>
			    </tr>
                <tr>
                    <td class="label">Tên sản phẩm: (*)</td>
                    <td><input type="text" name="sp[productname]" value="<?=set_value('sp[productname]')?>" class="w400"></td>
                </tr>

                <tr>
                    <td class="label">Hãng sản xuất: (*)</td>
                    <td>
                    
                        <select name="sp[manufactureid]" id="manufacture" class="w250">
                            <?php foreach($listmanufacture as $val):?>
                                <option value="<?=$val->manufactureid?>"><?=$val->name?></option>
                            <?php endforeach;?>
                        </select>
                    </td>
                </tr> 
                
                <tr>
                    <td class="label">Giá thị trường: (*)</td>
                    <td><input type="text" id="price_front" name="sp[price_front]" value=""></td>
                </tr>
                  <tr>
                    <td class="label">Giá bán: (*)</td>
                    <td>
                    	<input type="text" id="price" name="sp[price]" value=""> (Không điền giá thì giá là liên hệ)
                    	<input type="hidden" id="percent" name="sp[percent]" id="percent" value="">
                    
                    </td>
                </tr>
				<tr>
                    <td class="label">Giá thị trường: (*)</td>
                    <td><input type="text" id="price_front" name="sp[price_front]" value=""></td>
                </tr>
				<tr>
                    <td class="label">Bảo hành:</td>
                    <td><input type="text"  name="sp[guarantee]" value=""></td>
                </tr>
				<tr>
                    <td class="label">Khuyến mãi:</td>
                    <td><textarea id="phu_kien" name="sp[gif]" rows="7" cols="65"></textarea> </td>
                </tr>
                <tr>
                    <td class="label">Hiện trang chủ:</td>
                    <td>
                    	<input type="radio" name="sp[is_home]" value="1"> Hiện
                    	<input type="radio" name="sp[is_home]" value="0" checked="checked"> Không
                    
                    </td>
                </tr>
                <tr>
                    <td class="label">Hiện sản phẩm:</td>
                    <td>
                    	<input type="radio" name="sp[tinhtrang_hang]" value="1" checked="checked" /> Còn hàng
                    	<input type="radio" name="sp[tinhtrang_hang]" value="0"/> Hết hàng
                    
                    </td>
                </tr>
                <tr>
                    <td class="label">Tình trạng:</td>
                    <td>
                    	<input type="radio" name="sp[status]" value="1" checked="checked"/> Hàng mới
                    	<input type="radio" name="sp[status]" value="0" /> Hàng cũ
                    
                    </td>
                </tr>
                
                <tr>
                    <td class="label">Icon:</td>
                    <td>
                    	<input type="checkbox" name="sp[icon_hot]" value="1"/> Hot
                    	<input type="checkbox" name="sp[icon_deal]" value="1" /> Mới
                    	<input type="checkbox" name="sp[icon_new]" value="1" />  Bán chạy
                    
                    </td>
                </tr>
                
                <tr>
                    <td class="label">Phụ kiện:</td>
                    <td>
                        <textarea id="phu_kien" name="sp[phu_kien]" rows="7" cols="65"></textarea>  
                    </td>
                </tr>
                          
                <tr>
                    <td class="label">Mô tả:</td>
                    <td>
                       
                        <?php echo vnit_editor('','sp[content]','full',false)?>
                    </td>
                </tr>
             	<tr>
                        <td class="label">Sắp xếp:</td>
                        <td>
                            <input type="text" name="sp[ordering]" value="1">  
                                                    
                        </td>
                    </tr>     
                  

            </table>
        </div>
      
        <!---hinh anh-->
        <div id="hinhanh" class="content">
            <table class="form">
                <tr>
                    <td class="label">Hình chính</td>
                    <td>
                        <div id="main_img">
                            <img src="<?php echo base_url_site()?>site/templates/default/images/no_image.gif" alt="">
                        </div>
                        <input type="hidden" id="productimg" value="" name="sp[productimg]">
                    </td>
                </tr>
                <tr>
                    <td class="label">Tải hình ảnh</td>
                    <td>
                        <div id="upload_button"><span>Chọn File Upload<span></div>
                        <div id="status_message">Click chọn hình để đưa vào hình chính của sản phẩm</div>   
                        <ul id="list_img">
                        
                        </ul>                                             
                    </td>
                </tr>
            </table>
        </div>
         
</div>
<?php echo form_close();?>
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
            
            action: base_url+'shop/uploader/',
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
                var str = response;               
              	
                var last_li = $('ul#list_img li:last').attr('id'); 
                    last_id = (last_li)?parseInt(last_li + 1):0
                    $('<li id="'+last_id+'"></li>').appendTo('#list_img').html('<div  align="center"><img  onclick="chosen_add(\''+str+'\')" src="'+base_url_img+'temp/'+str+'" width="80" height="80"><a href="javascript:;" id="'+last_id+'" class="delete_button"> Xóa</a><input type="hidden" name="ar_img[]" value="'+str+'"></div>').addClass('success');
                } else{
                    $('<li></li>').appendTo('#list_img').text(file).addClass('error');
                }
            }
        });
        
    });
</script>