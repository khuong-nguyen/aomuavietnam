<?php
if(!is_dir(ROOT.'site/config/site/'.vnit_lang())){
    mkdir(ROOT.'site/config/site/'.vnit_lang(),0775);
    $fp = fopen(ROOT.'site/config/site/'.vnit_lang().'/config_site.php', 'w');
}
$config['config_file']    = ROOT."site/config/site/".vnit_lang()."/config_site.php";
require_once($config['config_file']);  
?>