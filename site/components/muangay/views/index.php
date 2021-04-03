<?php if (count($list) > 0) { ?>
    <?php echo form_open(uri_string(), array('id' => 'form-validate')); ?>
    <div class="box-contact-cart">
        <p class="title">Thông tin giao hàng</p>
        <ul>
            <li>
                <label>Họ và tên:</label>
                <input type="text" name="fullName" id="fullName" value="" />
            </li>
            <li>
                <label>Địa chỉ:</label>
                <input type="text" name="address" id="address"  value=""/>
            </li>
            <li>
                <label>Điện thoại:</label>
                <input type="text" name="phone" id="phone" value=""/>
            </li>
            <li>
                <label>Email:</label>
                <input type="text" name="email"  id="email" value=""/>
            </li>
            <li>
                <label>Ghi chú:</label>
                <textarea name="note" rows="5" cols="36"></textarea>
            </li>
        </ul>
    </div>

    <div class="box-payment">
        <p class="title">Hình thức thanh toán</p>
        <?php
        if (sizeof($listPayment) > 0) {
            ?>
            <ul class="payment">
                <?php
                $k = 0;
                foreach ($listPayment as $valPay):
                    ?>
                    <li>
                        <input type="radio" name="payment_id" value="<?php echo $valPay->payment_id; ?>" <?php echo ($k == 0) ? 'checked="checked"' : ''; ?>> 
                        <div class="info-payment">				
                            <p class="name-pay"><?php echo $valPay->payment_name; ?></p>
                            <p class="description"><?php echo $valPay->payment_des; ?></p>
                        </div>
                    </li>
                    <?php
                    $k++;
                endforeach;
                ?>

            </ul>
        <?php } ?>
    </div>

    <div class="box-cart">
        <p class="title">Xác nhận đơn hàng</p>
        <ul class="items">
            <?php
            $k = 1;
            $discount_price = 0;
            $total_price = 0;
            foreach ($list as $rs):
                $total_price = $total_price + ($rs->s_qty * $rs->s_price);
                ?>

                <li>
                    <p class="name">
                        <a href="<?php echo site_url('san-pham/' . $rs->producturl . '-' . $rs->productid); ?>"><?php echo $rs->productname; ?></a>
                    </p>
                    <p class="img">
                        <a href="<?php echo site_url('san-pham/' . $rs->producturl . '-' . $rs->productid); ?>"><img src="<?php echo base_url() ?>data/products/200/<?php echo $rs->productimg; ?>" width="60" alt="<?php echo $rs->productname; ?>" align="left"></a>                          
                    </p>
                    <p class="function">
                        <input type="hidden" value="<?php echo $rs->id; ?>" name="ar_id[]">
                        <a href="<?php echo site_url('muangay/remove/' . $rs->id); ?>"><img src="<?php echo base_url(); ?>site/templates/default/images/dels_status1.png" alt="<?php echo $rs->productname; ?>"></a>	                            
                        <a href="javascript:;" class="updateCart" id="product_<?php echo $rs->id; ?>"><img src="<?php echo base_url(); ?>site/templates/default/images/save.png" width="13" alt="<?php echo $rs->productname; ?>"></a>	                            
                    </p>
                    <p class="quantity">
                        <input type="text" name="qty_<?php echo $rs->id; ?>" id="qty_<?php echo $rs->id; ?>" value="<?php echo $rs->s_qty; ?>">
                    </p>
                    <p class="price"> x <?php echo number_format($rs->s_price, 0, '.', '.') . ' ₫'; ?></p>
                    <p class="money">= <?php echo number_format($rs->s_price * $rs->s_qty, 0, '.', '.') . ' ₫'; ?></p>

                </li>

                <?php
                $k++;
            endforeach;
            ?>
            <li class="totals">
                <span>Thành tiền:</span> <strong><?php echo number_format($total_price, 0, '.', '.') . ' ₫'; ?></strong>
            </li>
            <li>
                <span>Tổng giá trị đơn hàng:</span>  <strong class="total-money"><?php echo number_format($total_price - $discount_price, 0, '.', '.') . ' ₫'; ?></strong>
            </li>
        </ul>

        <div class="box-button">
            <p class="buy-next"><a href="<?php echo base_url(); ?>">Tiêp tục mua hàng</a></p>
            <div class="order">
                <input type="submit" value="Đặt hàng ngay">
            </div>
        </div>
    </div>

    <?php echo form_close() ?>

<?php }else { ?>
    <div class="show_notice" style="margin: 10px; text-align: center;">Không có sản phẩm nào trong giỏ hàng <a href="<?php echo base_url(); ?>"><b>Tiếp tục mua hàng</b></a></div>
<?php }?>
