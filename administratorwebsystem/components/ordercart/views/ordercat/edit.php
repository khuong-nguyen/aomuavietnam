<div class="order_box">
    <div class="order-head">
        <div class="colleft">
        	<?php 
        	$itemContact = $this->vdb->find_by_id('contact',array('id'=>1));        	
        	?>
            <p class="company"><?php echo $itemContact->name;?></p>
            <p>Địa chỉ: <?php echo $itemContact->address;?></p>
            <p>Điện thoại: <?php echo $itemContact->phone;?> - Fax: <?php echo $itemContact->fax;?></p>
        </div>
        <div class="colright">
            <img src="<?=base_url()?>templates/images/logo.jpg" align="right" height="70">
        </div>
    </div>
    <div class="title_order">
        <h3>ĐƠN HÀNG ONLINE - ECOM</h3>
        <h3><?=$info->barcode;?></h3>
    </div>	
    <table width="100%" class="info">
        <tr>
            <td width="49%">
                <table width="100%" class="info">
                    <tr>
                        <td class="label" style="width: 80px;">Họ tên</td>
                        <td><?php echo  $info->fullname;?></td>
                    </tr>
                    <tr>
                        <td class="label">Điện thoại</td>
                        <td><?php echo  $info->phone;?></td>
                    </tr>
                    <tr>
                        <td class="label">Email</td>
                        <td><?php echo  $info->email;?></td>
                    </tr>
                    <tr>
                        <td class="label">Địa chỉ</td>
                        <td><?php echo $info->address;?></td>
                    </tr>
                     <tr>
                        <td class="label">Ghi chú:</td>
                        <td><?php echo $info->note;?></td>
                    </tr>
                </table>
            </td>
            <td width="49%">
                <table width="100%" class="info">
                    <tr>
                        <td class="label" style="width: 150px;">Phương thức thanh toán</td>
                        <td><?=$this->vdb->find_by_id('shop_payment',array('payment_id'=>$info->payment_id))->payment_name?></td>
                    </tr>
                   
                    <tr>
                        <td class="label">Thời gian đặt hàng</td>
                        <td><?php echo date('H:i d/m/Y',$info->date_buy)?></td>
                    </tr>

                </table>
            </td>
        </tr>
    </table>
	
    <table class="admindata">
        <thead>
            <tr>
                <th class="id">ID</th>
                <th>Tên sản phẩm</th>
                <th style="width: 120px;">Số lượng</th>
                <th style="width: 120px;">Đơn giá</th>
                <th style="width: 120px;">Thành tiền</th>
            </tr>        
        </thead>
        <?
        $k=1;
        $qty = 0;
        $total = 0;
        foreach($list as $rs):
        //$list_gifts = $this->order->get_gifts($rs->id);
        $qty = $qty + $rs->s_qty;
        $total = $total + ($rs->s_price * $rs->s_qty);
        ?>
        <tr class="row<?=$k?>">
            <td><?php echo $rs->productid;?></td>
            <td>
            <b><?php echo $rs->productname;?></b>
                <ul>
                    <?foreach($list_gifts as $val):?>
                    <li>- <?=$val->name?> _Áp dụng đến <?=format_date($val->dateend,'d/m/Y')?></li>
                    <?endforeach;?>
                </ul>
            </td>
            <td align="center"><?php echo $rs->s_qty;?></td>
            <td align="right"><b><?=number_format($rs->s_price,0,'.','.')?></b></td>
            <td align="right"><b><?=number_format($rs->s_price * $rs->s_qty,0,'.','.')?></b> đ</td>
        </tr>       
        <?
        $k=1-$k;
        endforeach;
        ?>    
    </table>
    
    <div class="total_order">
        <?php
       // $tongdonhang = $total - $giamgia + ($info->price_shipping);
        ?>
        Tổng giá trị đơn hàng: <span class="price"><? //number_format($tongdonhang,0,'.','.')?></span> vnđ
        
    </div>
     <div class="cp_info">
    <?php echo form_open(uri_string(),array('id'=>'admindata'))?>
    <input type="hidden" name="order_id" value="<?=$info->order_id?>">
    <table class="form">
        <tr>
            <td>
                Ghi chú khách hàng<br />
                <textarea style="width: 500px; height: 100px;" name="cart[notes]"><?=$info->notes?></textarea><br />
                <input type="checkbox" name="sendmail" value="1"> Gửi email cho khách hàng
              
            </td>
            <td>
                Ghi chú Quản trị<br />
                <textarea style="width: 500px; height: 100px;" name="cart[admin_notes]"><?=$info->admin_notes?></textarea><br />
                <select name="cart[status]">
                    <option value="1" <?=($info->status==1)?'selected="selected"':''?>>Chưa xác nhận</option>
                    <option value="2" <?=($info->status==2)?'selected="selected"':''?>>Đã xác nhận</option>
                    <option value="3" <?=($info->status==3)?'selected="selected"':''?>>Đang xử lý</option>
                    <option value="4" <?=($info->status==4)?'selected="selected"':''?>>Hoàn thành</option>
                    <option value="5" <?=($info->status==5)?'selected="selected"':''?>>Đã hủy</option>
                </select>
            </td>
        </tr>

    </table>
    <?=form_close()?>
    </div>
</div>
