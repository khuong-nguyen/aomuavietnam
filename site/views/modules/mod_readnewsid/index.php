<?php

$id = get_params('contentid',$attr);
$css = get_params('css',$attr);
$rs = $this->vdb->find_by_id('content',array('id'=>$id));
?>
<h3 class="<?=$css?>"><a href="<?=site_url('tin-tuc/bai-viet/'.$rs->title_alias.'-'.$rs->id)?>"><?=$title?></a></h3>           
<?=vnit_cut_string($rs->introtext,400)?> 
  