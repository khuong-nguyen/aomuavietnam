<?php
class category_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
    function find_by_num(){
    	$query = $this->db->get('category_prod');    	
        if($query->num_rows()>0){
        	return $query->num_rows();
        }else {
        	return 0;
        }       
    }
    
    function find_by_all($num, $offset, $field, $order){
    	$this->db->where('parent_id', 0);
        if($field != '' && $order != ''){
            $this->db->order_by($field,$order);
        }else{
            $this->db->order_by('ordering','asc');
        }
             
        return $this->db->get('category_prod',$num,$offset)->result();
    }
    
    function ar_category($cat_id = 0, $level = 0){
        $this->db->where('parent_id',$cat_id);
        $this->db->where('lang',vnit_lang());
        $this->db->order_by('ordering','asc');
        $list = $this->db->get('category_prod')->result();
        $level ++;
        $data = '';
        foreach($list as $k => $rs):
            $title = ($level ==1)?'<b>'.$rs->cat_title.'</b>':$rs->cat_title;
            $icon_del = icon_del('category/del/'.$rs->cat_id.'/'.(int)$this->uri->segment(4));
            $data .='<tr class="row'.($k % 2).'">';
                $data .='<td><input  type="checkbox" name="ar_id[]" value="'.$rs->cat_id.'"></td>';
                $data .='<td>'.$rs->cat_id.'</td>';
                $data .='<td>'.str_repeat('<span class="gi">|----</span>', $level).' '.$title.'</td>';
                $data .='<td></td>';
                $data .='<td><input type="text"  class="order" name="order_'.$rs->cat_id.'" value="'.$rs->ordering.'"><input type="hidden" name="id[]" value="'.$rs->cat_id.'"></td>';
                $data .='<td class="copy" id="'.$rs->cat_id.'" align="center"><img src="'.base_url().'templates/images/page_white_copy.png"  alt="copy to clipboard" title="Copy to Clipboard"><input class="w200" id="link_'.$rs->cat_id.'" type="hidden" value=""></td>';
                $data .='<td>'.icon_edit('category/edit/'.$rs->cat_id).'<span id="publish'.$rs->cat_id.'">'. icon_active("\'category\'","\'cat_id\'",'.$rs->cat_id.','.$rs->published.').'</span>'.$icon_del.'</td>';
                
            $data .='</tr>';
            $data .=$this->ar_category($rs->cat_id,$level);

        endforeach;
        return $data;
    }
    
    function ar_option_cat($cat_id = 0, $select=0, $level = 0){
        $this->db->where('parent_id',$cat_id);
        $this->db->where('lang',vnit_lang());
        $this->db->order_by('ordering','asc');
        $list = $this->db->get('category_prod')->result();
        $level ++;
        $data = '';
        foreach($list as $rs):
            $sel = ($select == $rs->parent_id)?'selected="selected"':'';
            $data .='<option value="'.$rs->cat_id.'" '.$sel.'>'.str_repeat('<span class="gi">|----</span>', $level).' '.$rs->cat_title.'</option>';    
            $data .=$this->ar_option_cat($rs->cat_id,$select,$level);
        endforeach;
        
        $data .='';
        return $data;
        
    }
}
