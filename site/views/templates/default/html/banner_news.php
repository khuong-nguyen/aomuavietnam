<?php 
//load config
$this->load->config('config_news_left');
$this->load->config('config_right_news');
$fileLeft 	=  base_url().'data/ads/banner_news/'.$this->config->item('view-banner');
$fileRight 	=  base_url().'data/ads/banner_news/'.$this->config->item('view-news');
?>