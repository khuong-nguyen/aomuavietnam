<?php
class syn extends CI_Controller{
    function __construct(){
        parent::__construct();
        $this->load->model('syn_model','syn');
    }
    
    function syn_city(){
        
        $list = $this->syn->getCity();
        foreach($list as $rs):
            $this->db = $this->load->database('default',true);   
            $city_name_en = vnit_change_string($rs->CityName);
            $vdata['city_id'] = $rs->CityID;
            $vdata['parentid'] = $rs->ParentID;
            $vdata['city_name'] = $rs->CityName;
            $vdata['city_url'] = vnit_change_title($rs->CityName);
            $vdata['ordering'] = $rs->Ordering;
            $vdata['published'] = $rs->IsActive;
            $this->db->insert('city',$vdata);
            
            $vdata_en['city_id'] = $rs->CityID;
            $vdata_en['parentid'] = $rs->ParentID;
            $vdata_en['city_name'] = $city_name_en;
            $vdata_en['city_url'] = vnit_change_title($city_name_en);
            $vdata_en['ordering'] = $rs->Ordering;
            $vdata_en['published'] = $rs->IsActive;
            $this->db->insert('city_en',$vdata_en);
        endforeach; 
        
    }
    
    function syn_user(){
        $list = $this->syn->getUser();
        foreach($list as $rs):
            $this->db = $this->load->database('default',true); 
             $vdata['user_id'] = $rs->AccountID;
             $vdata['user_code'] = vnit_barcode('FYI_',$rs->AccountID,8);
             $vdata['group_id'] = 1;
             $vdata['password'] = $rs->Passwd;
             $vdata['fullname'] = $rs->FullName;
             $vdata['email'] = $rs->Email;
             $vdata['brithday'] = $rs->Birthday;
             $vdata['male'] = $rs->Male;
             $vdata['phone'] = $rs->PhoneNumber;
             $vdata['address'] = $rs->Address;
             $vdata['city_id'] = $rs->CityID;
             $vdata['url_avatar'] = $rs->Avatar;
             $vdata['is_openid'] = $rs->IsOpenid;
             $vdata['create_time'] = $rs->RegisteredDate;
             $vdata['active_code'] = $rs->Scode;
             $vdata['published'] = $rs->IsActive;
             $this->db->insert('user',$vdata);
             
        endforeach;
    }
    

}
