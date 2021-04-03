<?if($this->config->item('site_close') == 0){redirect();}?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html>
<head>
     <title><?if(isset($title)){echo $title.' - '.$this->config->item('site_name_'.$this->session->userdata('lang'));}else{$this->config->item('site_name_'.$this->session->userdata('lang'));}?></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="<?if(isset($des)){echo $des;}else{echo  $this->config->item('site_des_'.$this->session->userdata('lang'));}?>">
    <meta name="keywords" content="<?if(isset($keyword)){echo $des;}else{echo  $this->config->item('site_keyword_'.$this->session->userdata('lang'));}?>">
    <?$this->esset->display();?> 
</head>
<body id="bd">
    <div class="wrapper_close">
        <?if(isset($message) && $message !=''){ echo '<div class="show_notice" id="msg">'.$message.'</div>';}?>
        <?if($this->session->flashdata('message')){
            echo '<div class="show_success" id="msg">'.$this->session->flashdata('message').'</div>';
        }if($this->session->flashdata('error')){
            echo '<div class="show_error" id="msg">'.$this->session->flashdata('error').'</div>';
        }if($this->session->flashdata('notes')){
            echo '<div class="show_notice" id="msg">'.$this->session->flashdata('notes').'</div>';
        }
        ?> 

        <table>
            <tr>
                <td><img src="<?=base_url()?>site/components/closesite/views/esset/icon_maintenance.jpg" alt=""></td>
                <td class="title"><?=$this->config->item('site_message_close_vi')?></td>
            </tr>
        </table>
            
           
    </div>
</body>
</html>
