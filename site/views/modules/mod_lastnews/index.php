<?php 
$imgPath	  = base_url().'site/templates/default/images/';
//$listnews   = $this->vdb->find_by_list("projects", 'id,name,img', 0, array('date_time'=>'DESC'));


$this->db->select("id,name,img");
//$this->db->where("cat_id",1);
$this->db->where("lang",$this->session->userdata("lang"));
//$this->db->where("published",1);
$this->db->limit(9);
$listnews      = $this->db->get("projects")->result();

?>
<div class="box-news-left">
	<div class="title"><p class="icon">tin tức tiêu điểm</p></div>
	<ul class="item-news-l">
		<?php 
	    	if (count($listnews)>0){
	    		foreach ($listnews as $val):
	    			$name	 = $val->name;
	    			$img	 = (!empty($val->img))?base_url().'data/projects/thumb/'.$val->img:base_url().'site/templates/default/images/no_image.gif';
	    			$link	 = site_url('Tin-tuc/'.vnit_change_title($name).'-'.$val->id);
	    	?>
	    	<li>
	    		<p class="img">
	    			<a href="<?=$link;?>"><img src="<?=$img;?>" width="60" alt="<?=$name;?>"></a>
	    		</p>
	    		<a href="<?=$link;?>"><?=$name;?></a>
	    		
	    	</li>
	    	<?php 
	    	endforeach;
	    	}
	    	?>
	    	
		
		
	</ul>
</div>