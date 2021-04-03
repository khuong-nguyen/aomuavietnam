<?php
  $this->db->where('IsActive',1);
  $list = $this->db->get('counter_history')->result();
  
?>
<div class="box-statics">
    <div class="title"><p class="icon">THỐNG KÊ TRUY CẬP</p></div>
    <div class="sub-statics">
    	<ul class="items-box">
        <?foreach($list as $counter):
        	if($this->session->userdata("lang") == 'vi'){
        ?>        	
            <li><strong><?=$counter->c_name?>:</strong> <?=$counter->c_count?></li>
         <?php }else{?>
         <li><strong><?=$counter->c_name_en;?>:</strong> <?=$counter->c_count?></li>
         <?php }?>
        <?endforeach;?>    
        </ul>
    </div>
</div>

