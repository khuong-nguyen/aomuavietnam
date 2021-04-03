<?echo form_open('nicks/dels',  array('id' => 'admindata'));?> 
<input type="hidden" name="page" value="<?=$this->uri->segment(4)?>">
<table class="admindata">
    <thead>
        <tr>
            <th class="head" colspan="7">

                Hiện có <?=$num?> nicks <span class="pages"><?=$pagination?></span>
            </th>
        </tr>
        <tr>
            <th class="checkbox"><input type="checkbox" name="sa" id="sa" onclick="check_chose('sa', 'ar_id[]', 'admindata')"></th>
            <th class="id"><?=vnit_order('nicks/listNicks/0/id/desc','ID')?></th>
            <th><?=vnit_order('nicks/listNicks/0/name/desc','nicks name')?></th>
            <th><?=vnit_order('nicks/listNicks/0/type/desc','Kiểu')?></th>
            <th><?=vnit_order('nicks/listNicks/0/note/desc','Ghi chú')?></th>
            <th><?=vnit_order('nicks/listNicks/0/loai/desc','Loại')?></th>
           
           
            <th class="publish">Chức năng</th>
        </tr>        
    </thead>
    <?
    $k=1;
    foreach($list as $rs):
    	$id	 		= $rs->id;
    	$name 	 	= $rs->name_nick;
    	$type 	 	= $rs->type;
    	$note 	 	= $rs->note;
    	$loai 	 	= $rs->loai;
    	
    ?>
    <tr class="row<?=$k?>">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?=$id;?>"></td>
        <td align="center"><?=$id;?></td>
        <td align="center"><?=$name;?></td>
        <td align="center"><?=$type;?></td>
        <td align="center"><?=$note;?></td>
        <td align="center"><?=$loai;?></td>
      
        <td align="center">
            <?=icon_edit('nicks/edit/'.$rs->id.'/'.(int)$this->uri->segment(4))?>        
            <?=icon_del('nicks/del/'.$rs->id.'/'.(int)$this->uri->segment(4))?>        
        </td>
    </tr>        
    <?
    $k=1-$k;
    endforeach;
    ?>
            <tfoot>
                <td colspan="7">

                    Hiện có <?=$num?> nicks <span class="pages"><?=$pagination?></span>
                </td>
            </tfoot>    
</table>
<?=form_close()?>
