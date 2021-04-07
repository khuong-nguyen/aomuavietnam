<div class="wrapper_slider" style = "width: 80%"> 
    <div id="slider" class="nivoSlider" style = "width: 100%">>
        <?php
            echo $this->vdb->findBannerCache_list("ads", null, array('ordering' => 'ASC'));
        ?>						
    </div>	
</div>