<?php 
$uri3  = $this->uri->segment('3');
?>
<fieldset>
    <legend>Thống kê</legend>
    <table class="form">
        <tr>
            <td style="width: 150px;">Tổng số đơn hàng:</td>
            <td style="width: 24%;"><b> <?=$this->order->get_total_donhang($uri3);?></b></td>
            <td style="width: 150px;">Đơn hàng Mới nhất:</td>
            <td><b> <?=$this->order->get_num_donhang($uri3, 'moinhat')?></b></td>
        </tr>
        <tr>
            <td>Đơn hàng Chưa xác nhận:</td>
            <td><b> <?=$this->order->get_num_donhang($uri3, 'chuaxacnhan')?></b></td>
            <td>Đơn hàng Đã xác nhận:</td>
            <td><b> <?=$this->order->get_num_donhang($uri3, 'daxacnhan')?></b></td>
        </tr>
        <tr>
            <td>Đơn hàng Đã hoàn thành:</td>
            <td><b> <?=$this->order->get_num_donhang($uri3, 'hoanthanh')?></b></td>
            <td>Đơn đơn Đang xử lý:</td>
            <td><b> <?=$this->order->get_num_donhang($uri3, 'dangxuly')?></b></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>Đơn đơn Đã hủy:</td>
            <td><b> <?=$this->order->get_num_donhang($uri3, 'dahuy')?></b></td>
        </tr>
    </table>
</fieldset>
<fieldset>
    <legend>Tìm kiếm đơn hàng</legend>
    <table class="form">
        <tr>
            <td class="label" style="width: 50px;">Mã ĐH</td>
            <td style="width: 120px;"><input type="text" id="barcode"></td>
            <td class="label">Khách hàng</td>
            <td style="width: 120px;"><input type="text" id="fullname"></td>
            <td class="label">Tình trạng</td>
            <td>
                <select name="" id="status" style="width: 150px;">
                    <option value="0">Tất cả</option>
                    <option value="1">Chưa xác nhận</option>
                    <option value="2">Đã xác nhận</option>
                    <option value="3">Đang xử lý</option>
                    <option value="4">Hoàn thành</option>
                    <option value="5">Đã hủy</option>
                </select>
            </td>
        </tr>
        <tr>
            <td class="label">Từ ngày</td>
            <td><input type="text" id="date_begin"></td>
            <td class="label">Từ ngày</td>
            <td><input type="text" id="date_end"></td>
            <td class="label">Tình| Thành phố</td>
            <td>
                <select name="" id="city_id" style="width: 150px;">
                    <option value="0">Tất cả</option>
                    <?php foreach($listcity as $val):?>
                    <option value="<?=$val->city_id?>"><?=$val->city_name?></option>
                    <?php endforeach;?>
                </select>
                <input type="button" onclick="order_page(0)" value="Tìm kiếm">
            </td>
        </tr>                     
    </table>
</fieldset>

<?php
$uri3 = $this->uri->segment(3);
?>
<!-- 
<ul class="tab">
    <li class="<?=($uri3 == 'moinhat')?'select':''?>"><a href="<?=site_url('product/order/listorder/moinhat')?>">Mới nhất</a></li>
    <li class="<?=($uri3 == 'chuaxacnhan')?'select':''?>"><a href="<?=site_url('product/order/listorder/chuaxacnhan')?>">Chưa xác nhận</a></li>
    <li class="<?=($uri3 == 'daxacnhan')?'select':''?>"><a href="<?=site_url('product/order/listorder/daxacnhan')?>">Đã xác nhận</a></li>
    <li class="<?=($uri3 == 'dangxuly')?'select':''?>"><a href="<?=site_url('product/order/listorder/dangxuly')?>">Đang xử lý</a></li>
    <li class="<?=($uri3 == 'hoanthanh')?'select':''?>"><a href="<?=site_url('product/order/listorder/hoanthanh')?>">Hoàn thành</a></li>
    <li class="<?=($uri3 == 'dahuy')?'select':''?>"><a href="<?=site_url('product/order/listorder/dahuy')?>">Đã hủy</a></li>
</ul>
 -->
<div id="search_result">
<?php echo form_open('product/ordercat/dels',  array('id' => 'admindata'));?> 
<input type="hidden" name="page" value="<?=$this->uri->segment(4)?>">
<input type="hidden" name="tinhtrang" value="<?=$this->uri->segment(3)?>">
<table class="admindata">
    <thead>
        <tr>
            <th class="head" colspan="12">
                Hiện có <?=$num?> đơn hàng <span class="pages"><?=$pagination?></span>
            </th>
        </tr>
        <tr>
            <th class="checkbox"><input type="checkbox" name="sa" id="sa" onclick="check_chose('sa', 'ar_id[]', 'admindata')"></th>
            <th class="id"><?=vnit_order('ordercat/listorder/'.$uri3.'/0/barcode/asc','Mã đơn hàng')?></th>
            <th style="width: 100px;"><?=vnit_order('ordercat/listorder/'.$uri3.'/0/date_buy/asc','Ngày đặt hàng')?></th>
            <th style="width: 150px;"><?=vnit_order('ordercat/listorder/'.$uri3.'/0/fullname/asc','Tên khách hàng')?></th>
            <th style="width: 100px;">Điện thoại</th>
             <th>Địa chỉ</th>           
            <th>Sản phẩm</th>
            <th>Giá</th>           
            <th style="width: 90px;"><?=vnit_order('ordercat/listorder/'.$uri3.'/0/status/asc','Tình trạng')?></th>
            <th style="width: 50px;">Tổng giá</th>
            <th style="width: 80px;">Chức năng</th>
        </tr>        
    </thead>
    <?php
    $k=1;
    foreach($list as $rs): 	
    ?>
    <tr class="row<?=$k?>">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?=$rs->order_id?>"></td>
        <td><?=$rs->barcode?></td>
        <td><?=(!empty($rs->date_buy))?date('H:i d/m/Y',$rs->date_buy):'Không xác định';?></td>
        <td><?php echo $rs->fullname;?></td>
        <td><?=$rs->phone?></td>
        <td><?=$rs->address?></td>        
        <td><?php echo $rs->productname;?> </td>         	       
        <td>
        	<?php echo $rs->s_qty;?> x <?php echo number_format($rs->s_price, 0, '.', '.') .' ₫';?> 
        </td>        
        
        <td><?php echo get_status($rs->status)?></td>
        <td>
        <?php echo  number_format($rs->s_qty* $rs->s_price, 0, '.','.'). ' ₫';?>        
        </td>
        <td align="center">
            <?php echo icon_edit('ordercart/edit/'.$rs->order_id)?>
             <?php echo icon_del('ordercart/del/'.$rs->order_id)?>         
        </td>
    </tr>       
    <?php
    $k=1-$k;
    endforeach;
    ?>
    <tfoot>
        <td colspan="12">
            Hiện có <?=$num?> đơn hàng <span class="pages"><?=$pagination?></span>
        </td>
    </tfoot>    
</table>
<?php echo form_close();?>
</div>
<script type="text/javascript">
    $(function() {
        var dates = $( "#date_begin, #date_end" ).datepicker({
            changeMonth: true,
            dateFormat: 'dd-mm-yy', 
            numberOfMonths: 1,
            onSelect: function( selectedDate ) {
                var option = this.id == "date_begin" ? "minDate" : "maxDate",
                    instance = $( this ).data( "datepicker" );
                    date = $.datepicker.parseDate(
                        instance.settings.dateFormat ||
                        $.datepicker._defaults.dateFormat,
                        selectedDate, instance.settings );
                dates.not( this ).datepicker( "option", option, date );
            }
        });
    });
    function order_page(page_no){
        var barcode = $("#barcode").val();
        var fullname = $("#fullname").val();
        var date_begin = $("#date_begin").val();
        var date_end = $("#date_end").val();
        var city_id = $("#city_id").val();
        var status = $("#status").val();
        $.post(base_url+"ordercat/view_result",{'page_no':page_no,'barcode':barcode,'fullname':fullname,'date_begin':date_begin,'date_end':date_end,'city_id':city_id,'status':status},function(data){
            $("#search_result").html(data);                                            
            load_hide();
        });
    }
</script>
