<?php
$key_url = ($key != '') ? '&key='.$key:'';
?>
<input type="hidden" name="page" value="<?php echo $this->uri->segment(3);?>">
<table class="tuychon" style="width: 100%;">
    <tr>
        <td colspan="">
            <strong>Lọc:</strong> <input type="text" name="key" id="key" value="<?php echo $key;?>" class="w200">
            <input type="button" onclick="go_search()" name="bt_loc" value="Tìm">
            <input type="button" onclick="go_search_reset()" name="bt_loc" value="Làm lại">
        </td>
        <td align="right" class="w200">
            
        </td>
    </tr>
</table>
<?php
    $cat_url = (isset($cat_url))? $cat_url:'';
    $url 		= 'help/baiviet/0/?option=true'.$cat_url;
    $url_reset 	= $_SERVER['REQUEST_URI'];
    $url_reset 	= str_replace(end(explode('&',$_SERVER['REQUEST_URI'])),'',$_SERVER['REQUEST_URI']);
    
?>
<script type="text/javascript">
    function go_search(){ 
        var key = $("#key").val();
        window.location.href = base_url + "<?php echo $url?>&key=" + key;
    }
    function go_search_reset(){ 
        window.location.href = 'http://'+document.domain + "<?php echo $url_reset?>";
    }    
</script>
<?php echo form_open('help/dels',  array('id' => 'admindata'));?> 
<table class="admindata">
    <thead>
        <tr>
            <th class="head" colspan="8">
                Hiện có <?php echo $num?> bài viết <span class="pages"><?php echo $pagination?></span>
            </th>
        </tr>
        <tr>
            <th class="checkbox"><input type="checkbox" name="sa" id="sa" onclick="check_chose('sa', 'ar_id[]', 'admindata')"></th>
            <th class="id"><?php echo vnit_order('help/baiviet/0/id/asc','ID')?></th>
            <th><?php echo vnit_order('help/baiviet/0/name/asc','Tiêu đề')?></th>
            <th style="width: 150px;"><?php echo vnit_order('help/baiviet/0/img/asc','Hình ảnh')?></th>
          
            <th class="publish">Chức năng</th>
        </tr>        
    </thead>
    <?php 
    $k=1;
    foreach($list as $rs):
    	$img   = (!empty($rs->img))? base_url_site().'data/help/thumb/'.$rs->img: base_url_site().'site/templates/default/images/no_image.gif';
    ?>
    <tr class="row<?php echo $k;?>">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?php echo $rs->id?>"></td>
        <td><?php echo $rs->id;?></td>
        <td><?php echo $rs->name;?></td>
        <td align="center">
        	<img src="<?php echo $img;?>" width="90" alt="">
        </td>
              
        <td align="center">
            <?php echo icon_edit('help/edit/'.$rs->id)?>
            <span id="publish<?php echo $rs->id?>"><?php echo icon_active("'help'","'id'",$rs->id,$rs->status,'help/publishednew')?></span>
            <?php echo icon_del('help/del/'.$rs->id.'/'.(int)$this->uri->segment(4))?>        
        </td>
    </tr>       
    <?php
    $k=1-$k;
    endforeach;
    ?>
    <tfoot>
        <td colspan="8">
            Hiện có <?php echo $num?> bài viết <span class="pages"><?php echo $pagination?></span>
        </td>
    </tfoot>    
</table>
<?php echo form_close()?>
