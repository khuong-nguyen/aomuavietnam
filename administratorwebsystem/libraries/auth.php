<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
class CI_Auth{
    function __construct(){
        $this->CI = get_instance();
    }
    
    function check_login($email,$password){
        $this->CI->db->where('email',$email);
        $this->CI->db->where('password',md5($password));
        $row = $this->CI->db->get('user')->row();
        if($row){
            if($row->group_id <17){
                return 0;
            }else{
                return $row->user_id;
            }
            
        }else{
            return 0;
        }
    }
    
    function auth_set_login($user_id){
        $this->CI->db->where('user_id',$user_id);
        $row = $this->CI->db->get('user')->row();
        $this->CI->session->set_userdata($row);
    }
}
?>
