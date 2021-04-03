<script type="text/javascript" src="<?=base_url()?>site/components/muangay/views/esset/muangay.js" charset="UTF-8"></script>
  <div class="bg_step">
    <div class="step_1">
        <div class="number">1</div>
        <h2><?=lang('mn.giohangcuaban')?></h2>
        <div class="dot3"></div>
    </div>
    <div class="step_2">
        <div class="number">2</div>
        <h2><?=lang('mn.cachthucgiaohang')?></h2>
        <div class="dot2"></div>
    </div>
    <div class="step_3_select">
        <div class="number_select">3</div>
        <h2><?=lang('mn.xacnhandonhang')?></h2>
    </div>
</div>
<div class="box_checkout">
<div class="box_muangay">
    <h3 class="title-checkout"><?=lang('xacnhandonhang')?></h3>
    <div class="checkout-content">

        <?=form_open('muangay/save_step3',array('id'=>'muahang_buoc3'))?>
        <div style="margin-bottom: 10px;overflow: hidden;">
            <div style="width: 60%;float: left;">
                <p style="font-weight: bold;font-size: 14px;">CÔNG TY TNHH FYI VIÊT NAM</p>
                <p>Địa chỉ: SS1N Hong Linh - F15 - Q10 - TP HCM</p>
                <p>Điện thoại: (84-9) 3977 8088   -   Fax: (84-8) 3977 8068</p>
            </div>    
            <div style="width: 39%;float: right;">
                <img src="<?=base_url()?>site/templates/fyi/images/logo.png" align="right">
            </div>    
        </div>
        <div class="title-dot">
            <p><?=lang('donhangonline')?> - SGR</p>

        </div>
        <table style="width: 100%;">
            <tr>
               <td style="width: 150px;"><b><?=lang('tenkhachhang')?></b>:</td>
               <td><?=$row->hovaten?></td>
               <td style="width: 1%;"></td>
               <td style="width: 150px;"><b><?=lang('phuongthucgiaohang')?></b>:</td>
               <td><?=$this->vdb->find_by_id('shop_shipping',array('shipping_id'=>$row->phuongthucgiaohang_id))->shipping_name?></td>
            </tr>
            <tr>
               <td><b><?=lang('diachigiaohang')?></b>:</td>
               <td><?=$row->diachi?></td>
               <td style="width: 1%;"></td>
               <td><b><?=lang('phuongthucthanhtoan')?></b>:</td>
               <td><?=$this->vdb->find_by_id('shop_payment',array('payment_id'=>$row->phuongthucthanhtoan_id))->payment_name?></td>
            </tr>
            <tr>
               <td><b><?=lang('khuvuc')?></b>:</td>
               <td><?=$this->vdb->find_by_id('city',array('city_id'=>$row->thanhpho_id))->city_name?></td>
               <td style="width: 1%;"></td>
               <td><b><?=lang('thoigiandathang')?></b>:</td>
               <td><?=date('H:i d/m/Y',$row->ngaymua)?></td>
            </tr>
            <tr>
               <td><b><?=lang('dienthoai')?></b>:</td>
               <td><?=$row->dienthoai?></td>
               <td style="width: 1%;"></td>
               <td></td>
               <td></td>
            </tr>
            <tr>
               <td><b>Email</b>:</td>
               <td><?=$row->email?></td>
               <td style="width: 1%;"></td>
               <td></td>
               <td></td>
            </tr>
        </table>
        <table class="auto">
            <thead>
                <th style="width: 80px;"><?=lang('mn.hinhanh')?></th>
                <th><?=lang('mn.tensanpham')?></th>
                <th style="width: 80px;"><?=lang('mn.soluong')?></th>
                <th style="width: 80px;"><?=lang('mn.dongia')?></th>
                <th style="width: 80px;"><?=lang('mn.thanhtien')?></th>
            </thead>
            <tr>
                <td><img src="<?=base_url_img()?>sangiare/200/<?=$pro->productimg?>" width="80" alt=""> </td>
                <td><?=$rs->cheap_title?></td>
                <td>
                    <select name="soluong" id="buy_qty">
                        <?for($i=1; $i <= $rs->cheap_buy_limit; $i++){?>
                        <option value="<?=$i?>" <?=($i == $row->soluong)?'selected="selected"':''?>><?=$i?></option>
                        <?}?>
                    </select>
                </td>
                <td align="right" style="width: 100px;"><span id="price"><?=number_format($rs->cheap_price,0,'.','.')?></span> vnd</td>
                <td align="right" style="width: 100px;"><span id="total"><?=number_format($row->thanhtien,0,'.','.')?></span> vnd</td>
            </tr>
            <tr>
                <td colspan="2" valign="top">
                    <?=lang('nhapmakhuyenmai')?>: <input type="text" id="makhuyenmai" name="makhuyenmai"><input type="button" onclick="kiemtramakhuyenmai()" class="submit" style="padding: 2px 10px;" value="<?=lang('nhap')?>">
                    <div style="padding-left: 120px;" id="list_discount">
                        <?foreach($listdiscount as $val):?>
                        <p class="del_small" id="remove_<?=$val->dis_id?>">
                            <span id="<?=$val->dis_id?>" class="discount_item" onclick="remove_discount(<?=$val->dis_id?>)"><img src="<?=site_url()?>site/templates/fyi/images/icon_delete_small.gif"></span>
                            <label><?=$val->key?></label>
                        </p>
                        <?endforeach;?>
                    </div>
                </td>
                <td colspan="2" align="right" valign="top">
                    <p><?=lang('khuyenmai')?></p>
                    <p><?=lang('phigiaohang')?></p>
                    <p><?=lang('phithanhtoan')?></p>
                </td>
                <td valign="top">
                    <p id="price_discount"><?=number_format($total_discount,0,'.','.')?></p>
                    <p id="prce_ship"><?=number_format($row->phivanchuyen,0,'.','.')?></p>
                    <p id="price_total">0</p>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <p style="font-size: 15px;text-align: right;font-weight: bold;"><?=lang('tongthanhtoan')?></p>
                </td>
                <td>
                    <?$total = $row->thanhtien + $row->phivanchuyen - $total_discount?>
                    <p style="font-weight: bold;font-size: 15px;color: #FF0000;"><span id="tongthanhtoan"><?=number_format($total,0,'.','.')?></span> VND</p>
                </td>
            </tr>
        </table>
        <input type="button" onclick="get_step('get_step2');" class="submit" name="bt_back" value="<?=lang('mn.quaylai')?>">
        <input type="submit" class="submit" name="sb_con" value="<?=lang('hoanthanh')?>">
        <?=form_close();?>
        </div>
    </div>
</div>