<div class="title-main">
		<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="<?=base_url()?>" itemprop="url" class="homepage"><span itemprop="title">Trang chủ</span></a></div>
		<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="no-bg">LIÊN HỆ</div>
	</div>
	<div class="sub-mid">		
		<div class="form-contact">
			<ul class="items">
					<li>
						<strong><?php echo $rs->name;?></strong>
					</li>
					<li>
						<label><?php echo lang('contact.address');?>:</label>
						 <?php echo $rs->address;?>
					</li>
					<li>
						<label><?php echo lang('contact.phone');?>:</label>
						 <?php echo $rs->phone;?>
					</li>
					<li>
						<label><?php echo lang('contact.fax');?>:</label>
						<?php echo $rs->fax;?>
					</li>
					<li>
						<label><?php echo lang('contact.email');?>:</label>
						<?php echo $rs->email;?>
					</li>
			</ul>
			<div class="form">
				<div class="title_form cufon"><?php echo lang('contact.sendcontact');?></div>
				
				<?php echo form_open(uri_string());?>
				<ul class="items">
					<li>
						<label><?php echo lang('contact.fullname')?>(*):</label>
					 	<input type="text" name="contact[fullname]" class="w300" value="<?php echo set_value('contact[fullname]');?>">
					 </li>
					 <li>
						<label><?php echo lang('contact.phone');?>(*):</label>
					 	<input type="text" name="contact[phone]" class="w300" value="<?php echo set_value('contact[phone]');?>">
					 </li>
					 <li>
						<label><?php echo lang('contact.email')?>(*):</label>
					 	<input type="text" name="contact[email]" class="w300" value="<?php echo set_value('contact[email]');?>">
					 </li>
					 <li>
						<label><?php echo lang('contact.content')?>(*):</label>
					 	 <textarea cols="43" rows="5" name="contact[content]"><?php echo set_value('contact[content]');?></textarea>
					 </li>
					 <li>
					 	<label>&nbsp;</label>
					  <?php echo lang('contact.comment');?>
					 </li>
					 <li>
					 	<label>&nbsp;</label>
					 	<input type="submit"  class="submit" name="bt_contact" value="<?php echo lang('contact.send')?>">
					 </li>
				</ul>
				
				<?php echo form_close();?>
			</div>
		</div>
	
		<div class="map-box">			
			<?php echo $headerjs;?>
			<?php echo $headermap;?>
			<?php echo $onload;?>
			<?php echo $map;?>
		</div>
	</div>
	
