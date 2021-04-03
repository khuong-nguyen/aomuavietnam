<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="image/x-icon" href="<?php echo base_url();?>favicon.ico" rel="shortcut icon">
<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>site/templates/default/css/font.css?v=2.0" media="screen" />
<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>site/templates/default/css/main.css?v=2.0" media="screen" />
<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>site/templates/default/css/responsive.css?v=2.0" media="screen" />
<link rel="canonical" href="<?php echo $linkCanonical;?>">
<script type="text/javascript" src="<?php echo base_url();?>site/templates/default/js/jquery.js" charset="UTF-8"></script>
<script type="text/javascript" src="<?php echo base_url();?>site/templates/default/js/360vnit.alert.js" charset="UTF-8"></script>
<script type="text/javascript" src="<?php echo base_url();?>site/templates/default/js/jquery.cookie.js" charset="UTF-8"></script>
<script type="text/javascript" src="<?php echo base_url();?>site/templates/default/js/common.system.js" charset="UTF-8"></script>
<script type="text/javascript" src="<?php echo base_url();?>site/templates/default/js/jquery.watermarkinput.js" charset="UTF-8"></script>

<?php $this->esset->display();?>
<?php if($this->config->item('site_close') == 1){redirect('closesite');}?>
<script type="text/javascript">
	var base_url	= '<?php echo base_url();?>';
	var site_url 	= '<?php echo base_url();?>';
	var user_id 	= <?php echo (int)$this->session->userdata('user_id');?>;
	var fullname 	= '<?php echo $this->session->userdata('fullname');?>';
</script>
