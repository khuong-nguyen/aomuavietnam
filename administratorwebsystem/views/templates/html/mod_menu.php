<div id="slidemenu" class="ddsmoothmenu">
    <ul>
        <li>
            <a href="<?php echo site_url('admincp');?>" style="padding-right: 23px;" class=""><span>Bảng điều khiển</span></a>
            <ul>
                <li><a href="<?php echo site_url('accountinfo');?>">Thông tin tài khoản</a></li>
                <li><a href="<?php echo site_url('login/logout');?>">Thoát</a></li>
            </ul>
        </li>
        <li>
            <a href="#"><span>Quản trị viên</span></a>
            <ul>
                <li><a href="<?php echo site_url('account/listaccount');?>"><span>Danh sách quản trị</span></a></li>
                <li><a href="<?php echo site_url('account/add');?>"><span>Thêm mới quản trị</span></a></li>

            </ul>
        </li>      
        <li>
            <a href=""><span>Sản phẩm</span></a>
            <ul>
                <li><a href="<?php echo site_url('category/listcategory');?>"><span>Danh sách chuyên mục</span></a></li>
                <li><a href="<?php echo site_url('product/manufacture/listmanufacture');?>"><span>Danh sách Hãng sản xuất</span></a></li>
                <li><a href="<?php echo site_url('shop/listproduct');?>"><span>Danh sách sản phẩm</span></a>
                	<ul>
                		<li><a href="<?php echo site_url('product/producthome/index');?>"><span>Danh sách sản phẩm hot</span></a></li>
                		<li><a href="<?php echo site_url('shop/listproduct?home=1');?>"><span>Sản phẩm trang chủ</span></a></li>
                	</ul>
                </li>
				<li><a href="<?php echo site_url('ordercart/listorder');?>"><span>Danh sách đơn hàng</span></a></li>
            </ul>
        </li>
        <li>
            <a href="<?php echo site_url('projects/baiviet')?>"><span>Cẩm nang</span></a>
        </li>
         <li>
            <a href="<?php echo site_url('service/baiviet')?>"><span>Dịch vụ</span></a>
        </li>
        <li>
            <a href="<?php echo site_url('help/baiviet');?>"><span>Thông tin footer</span></a>
            <ul>
            	<li>
            		<a href="<?php echo site_url('introduction/baiviet');?>"><span>Thông tin công ty</span></a>
        		</li>
        		<li><a href="<?php echo site_url('help/baiviet');?>"><span>Trợ giúp</span></a></li>
            </ul>
        </li>                        
		        
        <li>
            <a href="<?php echo site_url('ads');?>"><span>Banner</span></a>
            <ul>
               <!--   <li><a href="<?=site_url('ads/cauhinh/configshow');?>"><span>Cấu hình banner hiển thị</span></a></li>
               <li><a href="<?php echo site_url('ads/editflash');?>"><span>Banner Flash</span></a></li>--> 
                <li><a href="<?php echo site_url('ads/listads');?>"><span>Danh sách banner index</span></a></li>
                <li><a href="<?php echo site_url('ads_right/listads');?>"><span>Banner bên phải</span></a></li>
                <li><a href="<?php echo site_url('ads_category/listads');?>"><span>Banner chuyên mục</span></a></li>
                <li><a href="<?php echo site_url('ads/editBannerLeft');?>"><span>Banner news left</span></a></li>
                <li><a href="<?php echo site_url('ads/editBannerRight');?>"><span>Banner news right</span></a></li>
                <li><a href="<?php echo site_url('ads/editBannerRightScreen');?>"><span>Banner screen right</span></a></li>
                <li><a href="<?php echo site_url('ads/editBannerLeftScreen');?>"><span>Banner screen left</span></a></li>
                <li><a href="<?php echo site_url('ads/edithotline');?>"><span>Hotline</span></a></li>
				<li><a href="<?php echo site_url('ads/edit_header');?>"><span>Banner header</span></a></li>
            </ul>
        </li>           
       
               
        <li>
            <a href="<?php echo site_url('contact');?>"><span>Quản lý Liên hệ</span></a>
        </li>
         <li>
            <a href="<?php echo site_url('eskin/ds');?>"><span>Email Templates</span></a>
             
        </li>
        <li>
            <a href="<?php echo site_url('csdl');?>"><span>Cơ sở dữ liệu</span></a>
        </li>        
        
    </ul>
<div class="clear"></div>

</div>


