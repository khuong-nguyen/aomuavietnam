<div id="footer">	
	<div class="box-footer">
		<div class="col-contact">
			<?php 
			$rowContact = $this->vdb->find_by_id("contact",  array('id'=>1));
			?>
			<p class="name">Chúng tôi Cam kết tận tâm	</p>
			<ul>
				
				<li class="cam-ket"><i></i>Sản phẩm, hàng hóa chính hãng, chất lượng.</li>
				<li class="bao-hanh"><i></i>7 ngày bảo hành đổi trả miễn phí</li>
				<li class="service"><i></i>Dịch vụ chăm sóc khách hàng tốt nhất</li>				
			</ul>
			<p><script src="//images.dmca.com/Badges/DMCABadgeHelper.min.js"></script><a href="http://www.dmca.com/Protection/Status.aspx?ID=2fd16cdb-1309-4a36-8b6d-3a400dd78b60" title="DMCA.com Protection Program" class="dmca-badge"> <img src ="//images.dmca.com/Badges/dmca_protected_sml_120r.png?ID=2fd16cdb-1309-4a36-8b6d-3a400dd78b60"  alt="DMCA.com Protection Status" /></a></p>
		</div>		
		<div class="col-item">
			<p class="title">Thông tin trợ giúp</p>
			<ul class="items">
				<?php 
					echo $this->vdb->findMenuCacheSimple("introduction","","TT", 0, array('ordering'=>'ASC'),null);
				?>
				<?php 
					echo $this->vdb->findMenuCacheSimple("help","","TG", 0, array('ordering'=>'ASC'),null);
				?>
			</ul>
		</div>
		
		
		<div class="col-item margin-left-20 border-no">
			<p class="title">Liên Hệ với chúng tôi</p>
			<ul class="items">
				<li class="no-bg"><?php echo $rowContact->address;?></li>
				<li class="no-bg"><strong>Điện thoại:</strong>: <?php echo $rowContact->phone;?></li>
				<li class="no-bg"><strong>Hotline:</strong>:  <?php echo $rowContact->hotline;?> </li>
				<li class="no-bg"><strong>Email:</strong> <?php echo $rowContact->email;?></li>
			</ul>
		</div>
		<div class="facebook">
				<iframe src="//www.facebook.com/plugins/likebox.php?href=https://www.facebook.com/pages/Ho%C3%A0ng-Qu%C3%A2n-Computer/596941347058314&amp;width=243&amp;height=235&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=true" scrolling="no" frameborder="0" style="border: none; overflow: hidden; width: 243px; height: 235px;" allowtransparency="true" display="none"></iframe>
		</div>
		
		
	</div>
	<div class="copyright">
		<p class="text">© <?php echo date('Y', time());?> www.aomuavietnam.com. Inc. All rights reserved.</p>
	
	</div>
</div>
<!-- $CHAT -->
<script language="javascript">    
    var f_chat_vs = "Version 2.1";
    var f_chat_domain =  "http://aomuavietnam.com";    
    var f_chat_name = "Hỗ trợ quý khách 24/7";
    var f_chat_star_1 = "Chào bạn!";
    var f_chat_star_2 = 'Bạn có thắc mắc muốn giải đáp? Hãy chat với chúng tôi tại đây.';
    var f_chat_star_3 = "<a href='javascript:;' onclick='f_bt_start_chat()' id='f_bt_start_chat'>Bắt đầu Chat</a>";
    var f_chat_star_4 = "Chú ý: Bạn phải đăng nhập <a href='http://facebook.com/' target='_blank' rel='nofollow'>Facebook</a> mới có thể trò chuyện.";
    var f_chat_fanpage = "https://www.facebook.com/Ho%C3%A0ng-Qu%C3%A2n-Computer-596941347058314/"; /* Đây là địa chỉ Fanpage*/
    var f_chat_background_title = "#F77213"; /* Lấy mã màu tại đây http://megapixelated.com/tags/ref_colorpicker.asp */
    var f_chat_color_title = "#fff";
    var f_chat_cr_vs = 2.1; /* Version ID */
    var f_chat_vitri_manhinh = "right:10px;"; /* Right: 10px; hoặc left: 10px; hoặc căn giữa left:45% */    
</script>
<!-- $Chat iCon Font (có thể bỏ) -->
<link rel="stylesheet" href="http://aomuavietnam.com/livechat/fonts/css/font-awesome.min.css" type="text/css"/>
<!-- $Chat Javascript (không được xóa) -->
<script src="http://aomuavietnam.com/livechat/chat.js?vs=2.1"></script>
<!-- $Chat HTML (không được xóa) -->
<div id='fb-root'></div>
<a title='Mở hộp Chat' id='chat_f_b_smal' onclick='chat_f_show()' class='chat_f_vt'><i class='fa fa-comments title-f-chat-icon'></i> Chat</a><div id='b-c-facebook' class='chat_f_vt'><div id='chat-f-b' onclick='b_f_chat()' class='chat-f-b'><i class='fa fa-comments title-f-chat-icon'></i><label id="f_chat_name"></label><span id='fb_alert_num'>1</span><div id='t_f_chat'><a href='javascript:;' onclick='chat_f_close()' id='chat_f_close' class='chat-left-5'>x</a></div></div><div id='f-chat-conent' class='f-chat-conent'><script>document.write("<div class='fb-page' data-tabs='messages' data-href='https://www.facebook.com/"+f_chat_fanpage+"' data-width='250' data-height='310' data-small-header='true' data-adapt-container-width='true' data-hide-cover='true' data-show-facepile='false' data-show-posts='true'></div>");</script><div id='fb_chat_start'><div id='f_enter_1' class='msg_b fb_hide'></div><div id='f_enter_2' class='msg_b fb_hide'></div><br/><p id='f_enter_3' class='fb_hide' align='center'><a href='javascript:;' onclick='f_bt_start_chat()' id='f_bt_start_chat'>Bắt đầu Chat</a></p><br/><p id='f_enter_4' class='fb_hide' align='center'></p></div><div id="f_chat_source" class='chat-single'></div></div></div>
<!-- #CHAT -->
