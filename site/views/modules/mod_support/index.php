<?php 
$imgPath	  = base_url().'site/templates/default/images/';
$listNickKD	  = $this->vdb->find_by_list("nicks",null,array('loai'=>'KD'), array('ordering'=>'ASC'));
$listNickKT	  = $this->vdb->find_by_list("nicks",null,array('loai'=>'KT'), array('ordering'=>'ASC'));

?>
<div class="box-support">
	 <div class="title"><p class="icon">HỖ TRỢ TRỰC TUYẾN</p></div>
	 <div class="items-support">
	 	<?php 
	 	if(sizeof($listNickKD)>0){
	 	?>
		<ul class="items">
			<li><strong>HỖ TRỢ KINH DOANH</strong></li>
			<?php 
			foreach ($listNickKD as $valKD):
				if($valKD->type == 'Yahoo'){
			?>
			<li><a href="ymsgr:sendim?<?=$valKD->name_nick;?>&amp;m=Xin kính chào quý khách"><img src="http://opi.yahoo.com/online?u=<?=$valKD->name_nick;?>&amp;m=g&amp;t=1" border="0" alt="<?=$valKD->name_nick;?>"></a> <span><?=$valKD->note;?></span></li>
			
			<?php }else{?>
			<li><a href="skype:<?=$valKD->name_nick;?>?chat"><img border="0" src="http://mystatus.skype.com/smallclassic/<?=$valKD->name_nick;?>" width="80"></a> <span><?=$valKD->note;?></span></li>
			
			
			<?php } endforeach;?>
			<li style="font-size: 14px;color: #ff0000;text-transform: uppercase;font-weight: bold;border-top: dotted 1px #ccc;">Đường dây nóng</li>
			<li class="hot-line">
				<?php 
				echo $rowContact = $this->vdb->find_by_id("contact",  array('id'=>1))->hotline;
				?>
			</li>
		</ul>
		<?php }?>
		
		<?php 
	 	if(sizeof($listNickKT)>0){
	 	?>
		<ul class="items">
			<li><strong>HỖ TRỢ KỸ THUẬT</strong></li>
			<?php 
			foreach ($listNickKT as $valKT):
			?>
			<li><a href="ymsgr:sendim?<?=$valKT->name_nick;?>&amp;m=Xin kính chào quý khách"><img src="http://opi.yahoo.com/online?u=<?=$valKT->name_nick;?>&amp;m=g&amp;t=1" border="0" alt="<?=$valKT->name_nick;?>"></a> <span><?=$valKT->note;?></span></li>
			<?php endforeach;?>
			<li class="hot-line">
				<?php 
				echo $rowContact = $this->vdb->find_by_id("contact",  array('id'=>1))->hotline;
				?>
			</li>
		</ul>
		<?php }?>
	</div>
</div>