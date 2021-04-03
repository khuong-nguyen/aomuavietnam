<script language="javascript">
$(document).ready(function(){
    if($.cookie('fyi_sgr_popf') == 1 || $.cookie('fyi_sgr_popf') ==''){
        $.cookie('fyi_sgr_popf',1);
        $("#largecorner").slideDown(500);
    }
});
function showlarger()
{
    $("#largecorner").slideDown(500);
    $("#smallcorner").slideUp(200);
}
function closesmall(){
    $(".pop_f").hide();
    $.cookie('fyi_sgr_popf',0);
}

function showsmall()
{
    $("#largecorner").slideUp(300);
    $("#smallcorner").slideDown(500);
}
function hideme()
{
    $("#divcorner").slideDown(200);
}
</script>
<link type="text/css" rel="stylesheet" href="<?=base_url()?>site/views/modules/mod_popf/esset/popf.css?v=2.0" media="screen" />
<?
$target_ads = get_params('target_ads',$attr);
$link_ads = get_params('link_ads',$attr);
$file_img = get_params('file_img',$attr);
$pa_url = explode(':',$file_img);
$type_file = end(explode('.',$file_img));
if($pa_url[0] == 'http' || $pa_url[0] =='https'){
    $src = $file_img;
}else{
    $src = $_SERVER['HTTP_HOST'].$file_img;
}
$target = ($target_ads == 'page_new')?'target="_blank"':'';
?>
<div class="pop_f" id="largecorner" style="display: none;">

    <div class="mid-pop" id="f-pop" style="display: block;">
        <div class="pop-content">
            <div class="action">
                <a href="javascript:showsmall();" class="down"></a>
                <a href="javascript:closesmall();" class="remove"></a>
            </div> 
            <?if($type_file == 'swf'){?>
                <a href="<?=$link_ads?>" <?=$target?>><embed width="250" wmode="transparent" quality="high" name="mymovie" id="mymovie" src="<?=$file_img?>" type="application/x-shockwave-flash"></a>
            <?}else{?>
                <a href="<?=$link_ads?>" <?=$target?>><img src="<?=$src?>" title="<?=$title?>" width="250"></a>
            <?}?>
        </div>
    </div>
</div>
<div class="pop_f" id="smallcorner" style="display: none; height: 30px;">
    <div class="top-pop">
        <div class="title">
        <marquee style="padding-left: 5px" width="200" direction="left" onmouseover="this.stop();" onmouseout="this.start();"><?=$title?></marquee>
        </div>
        <div class="close_f_p">
            <a href="javascript:showlarger();" class="down"></a>
            <a href="javascript:closesmall();" class="remove"></a>
        </div>
    </div>
</div>
