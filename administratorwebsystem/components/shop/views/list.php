<?php 
$sections_url   = '';
$cat_id  = 0;$key = '';
$cat_url = ($cat_id != 0) ? '&cat_id='.$cat_id:'';
$key_url = ($key != '') ? '&key='.$key:'';

$catID		 = (int)$this->uri->segment('3');
?>

<table class="tuychon" style="width: 100%;">
    <tr>
        <td>
            Lọc <input type="text" name="key" id="key" value="<?php echo $key;?>" class="w200">
            <input type="button" onclick="go_search()" name="bt_loc" value="Tìm">
            <input type="button" onclick="go_search_reset()" name="bt_loc" value="Làm lại">
        </td>

        <td align="right" class="w300">
        	Chủ đề:
        	<select class="w200" onchange="window.open(this.value,'_self');" name="cat_id" id="cat_id">
				<option value="<?php echo site_url('shop/listproduct/');?>">--Chọn chủ đề--</option>		                
			    <?php foreach($listCategory as $val):?>
			    <option value="<?php echo site_url('shop/listproduct/'.$val->cat_id);?>" <?php echo ($val->cat_id == $catID)?'selected="selected"':'' ;?>><?php echo $val->cat_title?></option>
			 
			    <?php 
			     $listSub = $this->vdb->find_by_list('category_prod',array('parent_id'=>$val->cat_id));
			     if(count($listSub)>0){
			    ?>
			    	<?php foreach($listSub as $valSub):?>
			    	<option value="<?php echo site_url('shop/listproduct/'.$valSub->cat_id);?>" <?php echo ($valSub->cat_id == $catID)?'selected="selected"':'' ;?>>&nbsp;|- <?php echo $valSub->cat_title?></option>
			 	<?php 
			 		endforeach;
			     }
			 	?>
			 		
			    <?php endforeach;?>
			                
			</select>
			            
           
        </td>
    </tr>
</table>
<?php
    $url = 'shop/listproduct/'.$catID.'/?option=true'.$sections_url.$cat_url;
    $url_reset = $_SERVER['REQUEST_URI'];
    $url_reset = str_replace(end(explode('&',$_SERVER['REQUEST_URI'])),'',$_SERVER['REQUEST_URI']);
    
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



<?php echo form_open('shop/dels',  array('id' => 'admindata'));?> 
<input type="hidden" name="page" value="<?php echo $this->uri->segment(4);?>">
<input type="hidden" name="catid" value="<?php echo $this->uri->segment(3);?>">
<?php $uri3 = (int)$this->uri->segment(3)?>
<?php $uri4 = (int)$this->uri->segment(4)?>
<?php $uri5 = (int)$this->uri->segment(5)?>
<table class="admindata">
    <thead>
        <tr>
            <th class="head" colspan="15">
                Hiện có <?php echo $num;?> sản phẩm 
                 <span class="pages"><?php echo $pagination;?></span>
            </th>
        </tr>
        <tr>
            <th class="checkbox"><input type="checkbox" name="sa" id="sa" onclick="check_chose('sa', 'ar_id[]', 'admindata')"></th>
            <th style="width: 40px;"><?php echo vnit_order('shop/listproduct/'.$uri3.'/productid/asc','ID')?></th>
            <th style="width: 70px;"><?php echo vnit_order('shop/listproduct/'.$uri3.'/barcode/asc','Mã hàng')?></th>
            <th style="width: 70px;">Hình ảnh</th>
            <th><?php echo vnit_order('shop/listproduct/'.$uri3.'/productname/asc','Tên sản phẩm');?></th>
            
            <th class="w100">
                <div><?php echo vnit_order('shop/listproduct/'.$uri3.'/price_front/asc','Giá thị trường')?></div>
            </th>
            <th class="w100">
                <div><?php echo vnit_order('shop/listproduct/'.$uri3.'/price/asc','Giá bán')?></div>
            </th>
            <th>Icon</th>
            <th>Trang chủ</th>
            <th style="width: 60px;">Chức năng</th>
        </tr>        
    </thead>
    <?php
    $k=1;
    foreach($list as $rs):
    ?>
    <tr class="row<?php echo (isset($rs->del) == 1)?'3':$k;?>">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?=$rs->productid?>"></td> 
        <td align="center"><?php echo $rs->productid;?></td>
        <td><?php echo $rs->barcode;?></td>
        <td>
            <img src="<?php echo base_url_img()?>data/products/200/<?=$rs->productimg;?>" alt="" width="80">
        </td>
        <td><?php echo $rs->productname?></td>
        <td>
            <div><input type="text" id="giathitruong_miennam_<?php echo $rs->productid?>" value="<?php echo number_format($rs->price_front,0,'.','.');?>" class="w100"></div>
        </td>
         <td>
            <div><input type="text" id="price_sales_<?php echo $rs->productid?>" value="<?php echo number_format($rs->price,0,'.','.');?>" class="w100"></div>
        </td>
        <td align="center">
        	<input type="checkbox" name="sp[icon_hot]" id="icon_hot" value="1" <?php echo ($rs->icon_hot == 1)?'checked="checked"':'';?>/> Hot
           	<input type="checkbox" name="sp[icon_deal]" id="icon_deal" value="1" <?php echo ($rs->icon_deal == 1)?'checked="checked"':'';?>/> Mới
            <input type="checkbox" name="sp[icon_new]" id="icon_new" value="1" <?php echo ($rs->icon_new == 1)?'checked="checked"':'';?>/> Bán chạy
        </td>
        <td align="center">
        	<input type="checkbox" value="1" <?php echo ($rs->is_home == 1)?'checked="checked"':'';?>>
        </td>
        <td align="center">
          
            <?php echo icon_edit('shop/edit/'.$rs->productid.'/'.$uri4.'/'.$uri5);?>
            <span id="publish<?php echo $rs->productid;?>"><?php echo icon_active("'shop_product'","'productid'",$rs->productid,$rs->published)?></span>
            <?php echo icon_del('shop/del/'.$rs->productid.'/'.$uri4.'/'.$uri5)?>
            
            <script type="text/javascript">
            $(document).ready(function() {
                $('#price_sales_<?php echo $rs->productid;?>').priceFormat({
                    centsSeparator: '', 
                    thousandsSeparator: '.',
                    centsLimit: 0
                });
            });
            </script>
        </td>
    </tr>   
  
    <?php
    $k=1-$k;
    endforeach;
    ?>
    <tfoot>
        <td colspan="15">
            Hiện có <?php echo $num;?> sản phẩm <span class="pages"><?php echo $pagination;?></span>
        </td>
    </tfoot>    
</table>
<?php echo form_close();?>
