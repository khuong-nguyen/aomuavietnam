<script type="text/javascript" src="<?php echo base_url()?>templates/js/swfupload/swfupload.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>templates/js/jquery.swfupload.js"></script>
<link type="text/css" rel="stylesheet" href="<?php echo base_url()?>templates/js/swfupload/upload.css?v=2.0" media="screen" />

<?php echo form_open(uri_string(), array('id'=>'admindata'));
?>
<input type="hidden" name="cat_id" value="<?php echo $rs->cat_id?>">
<table class="form">
    <tr>
        <td class="label">Tiêu đề: (*)</td>
        <td><input type="text" name="cat[cat_title]" value="<?php echo $rs->cat_title?>" class="w300"></td>
    </tr>
    <tr>
        <td class="label">Ghi chú:</td>
        <td><input type="text" name="cat[note_title]" value="<?php echo $rs->note_title?>" class="w300"></td>
    </tr>
   
    <tr>
        <td class="label">Hiện trên trang chủ:</td>
        <td><input type="radio" name="cat[is_home]" value="0" <?php echo ($rs->is_home == 0)?'checked="checked"':'';?>> Không <input type="radio" name="cat[is_home]" value="1" <?php echo ($rs->is_home== 1)?'checked="checked"':'';?>>Có</td>
    </tr>
    <tr>
        <td class="label">Chủ đề: (*)</td>
        <td>
            <select name="cat[parent_id]" style="padding: 4px;font-size: 11px;" class="w300">
                <option value="0">Chủ đề chính</option>
                <?php foreach($list as $val):?>
                	<option value="<?php echo $val->cat_id?>" <?php echo ($val->cat_id == $rs->parent_id)?'selected="selected"':'';?>><?php echo $val->cat_title?></option>
                	
                	<?php 
			        $listSubCbo  = $this->vdb->find_by_list('category_prod', array('parent_id'=>$val->cat_id));
			        if(count($listSubCbo)>0){
			        	foreach ($listSubCbo as $valSubCbo):
			               		
			        ?>
			        	<option value="<?php echo $valSubCbo->cat_id?>" <?php echo ($valSubCbo->cat_id == $rs->catid)?'selected="selected"':'';?>><?php echo '&nbsp;&nbsp;&nbsp;|_ '.$valSubCbo->cat_title?></option>
			        <?php 
			        endforeach;
			                
			         }
			       ?>
                <?php endforeach;?>
                
            </select>
        </td>
    </tr>
    <tr>
				        <td class="label">Hình ảnh</td>
				        <td>
							<div id="swfupload-control">
								<p>Kiểu hình uploads:(jpg, png, gif), dung lượng tối đa: 1MB  - KT: W:1000px - H: 280px</p>
										<input type="button" id="button" />
										<p id="queuestatus" ></p>
										<ol id="log"></ol>
							</div>
							<!-- hien thi hình -->
							<div class="upload-img" id="imgBody">
								<?php
								$img	= (!empty($rs->image))? base_url_site().'data/category/full_images/'.$rs->image:base_url_site().'site/templates/default/images/no_image.gif';
								?>
								<img src="<?=$img?>" width="85"><br>
								<input type="hidden" value="<?=$rs->image;?>" name="img"> 
							</div>
						</td>
	</tr>
    <tr>
        <td class="label">Sắp xếp:</td>
        <td><input type="text" name="cat[ordering]" value="<?=$rs->ordering;?>"></td>
    </tr>
     <tr>
        <td class="label">Hiển thị:</td>
        <td><input type="radio" name="cat[published]" value="0" <?php echo ($rs->published == 0)?'checked="checked"':'';?>> Không <input type="radio" name="cat[published]" value="1" <?php echo ($rs->published == 1)?'checked="checked"':'';?>>Có</td>
    </tr>
</table>
<?php echo form_close();?>

<script type="text/javascript">
$(function(){
	$('#swfupload-control').swfupload({
		upload_url: "<?php echo site_url('category/uploader');?>",
		file_post_name: 'uploadfile',
		file_size_limit : "1024",
		file_types : "*.jpg;*.png;*.gif",
		file_types_description : "Image files",
		file_upload_limit : 5,
		flash_url : "<?php echo base_url()?>templates/js/swfupload/swfupload.swf",
		button_image_url : '<?php echo base_url()?>templates/js/swfupload/XPButtonUploadText_61x22.png',
		button_text: "<span class='swfuText'>Chọn ảnh</span>",
		button_text_style: '.swfuText {color:#003399;font-family:verdana; font-size: 12px; text-align: center;margin-top:10px;}',
		button_width : 100,
		button_height : 30,
		button_placeholder : $('#button')[0],
		debug: false
	})
		.bind('fileQueued', function(event, file){
			var listitem='<li id="'+file.id+'" >'+
				'File: <em>'+file.name+'</em> ('+Math.round(file.size/1024)+' KB) <span class="progressvalue" ></span>'+
				'<div class="progressbar" ><div class="progress" ></div></div>'+
				'<p class="status" >Pending</p>'+
				'<span class="cancel" >&nbsp;</span>'+
				'</li>';
			$('#log').append(listitem);
			$('li#'+file.id+' .cancel').bind('click', function(){
				var swfu = $.swfupload.getInstance('#swfupload-control');
				swfu.cancelUpload(file.id);
				$('li#'+file.id).slideUp('fast');
			});
			// start the upload since it's queued
			$(this).swfupload('startUpload');
		})
		.bind('fileQueueError', function(event, file, errorCode, message){
			alert('Size of the file '+file.name+' is greater than limit');
		})
		.bind('fileDialogComplete', function(event, numFilesSelected, numFilesQueued){
			$('#queuestatus').text('Files Selected: '+numFilesSelected+' / Queued Files: '+numFilesQueued);
		})
		.bind('uploadStart', function(event, file){
			$('#log li#'+file.id).find('p.status').text('Uploading...');
			$('#log li#'+file.id).find('span.progressvalue').text('0%');
			$('#log li#'+file.id).find('span.cancel').hide();
		})
		.bind('uploadProgress', function(event, file, bytesLoaded){
			//Show Progress
			var percentage=Math.round((bytesLoaded/file.size)*100);
			$('#log li#'+file.id).find('div.progress').css('width', percentage+'%');
			$('#log li#'+file.id).find('span.progressvalue').text(percentage+'%');
		})
		.bind('uploadSuccess', function(event, file, serverData){
			var item	= $('#log li#'+file.id);
			var imgPath = '<?=base_url_site();?>data/category/full_images/'+serverData;	
					
			$('#imgBody').html('<img width="85" height="85" src="'+imgPath+'" alt="Hình đại diện"/> <br><input type="hidden" name="img" value="'+serverData+'">');

			
			
			item.find('div.progress').css('width', '100%');
			item.find('span.progressvalue').text('100%');
			var pathtofile='<a href= "'+imgPath+'" target="_blank" >view &raquo;</a>';
			item.addClass('success').find('p.status').html('Thành công!!! | '+pathtofile);
		})
		.bind('uploadComplete', function(event, file){
			// upload has completed, try the next one in the queue
			$(this).swfupload('startUpload');
		})
	
});	

</script>