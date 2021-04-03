<?php
class syn_model extends CI_Model{
    function __construct(){
        parent::__construct();
        $this->fyi = $this->load->database('fyi',true);
        
    }
    
    function getCity(){
        return $this->fyi->get('city')->result();
    }
    
    function getUser(){
        return $this->fyi->get('account')->result();
    }
}
