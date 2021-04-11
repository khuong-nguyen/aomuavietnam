<?php
class tintuc extends CI_Controller{
    protected $_templates;
    function __construct(){
        parent::__construct();
      
       //load model 
       $this->load->model("tintuc_model","tintuc");
        
        $this->lang->load('news',$this->session->userdata('lang_site'));
        $this->load->language(array('system','vnit'));
        $this->load->helper('params');
        if($this->session->userdata('lang') == 'vi'){
         $this->langdb = "";
        }else{
         $this->langdb = "_en";
        }
        $this->uri2 = $this->uri->segment(2);
        $this->uri3 = $this->uri->segment(3);
        $this->uri4 = $this->uri->segment(4);
        $this->uri5 = $this->uri->segment(5);
        $this->uri6 = $this->uri->segment(6);
        //load css
        $cssArr = array(
        				array(base_url().'site/templates/default/css/news.css'),
        				);
        //set to view
        $this->esset->css($cssArr);
    }
    /**
     * action default
     */
    function index(){
     	$data["title"]			   = 'Tin tức';
     	//set view link Canonical
     	$data['linkCanonical']  = base_url().'tin-tuc.html';
     	//config pagination
     	$config['base_url'] 		= base_url().'tin-tuc/'.$this->uri2;  
        $config['suffix'] 			= '.html';
        $config['total_rows']   	= $this->vdb->find_by_num("projects",0);
        $data['num'] 				= $config['total_rows'];
        $config['per_page']  		= 20;
        $config['uri_segment'] 		= 3; 
        $this->load->library('pagination');
        $this->pagination->initialize($config); 
        //get list project and set view  
        $data["listProject"]	   	= $this->vdb->find_by_all("projects",null, $config['per_page'],$this->uri->segment(2),array('published'=>1),'date_time','DESC');
		
        $data['pagination']   	 = $this->pagination->create_links();
        $data['total_page'] 	= round($config['total_rows']/$config['per_page'],0);
        $data['current'] 		= ($this->uri2 == 0)?1:($this->uri2/$config['per_page'])+1;
        
    	//load templates
    	$this->_templates['page']  = 'index';
    	$this->templates->load($this->_templates['page'], $data);
    }
    
    
    function detail(){
        //get id
        $id = end(explode('-',$this->uri2)); 
        $rs = $this->vdb->find_by_id('projects'.$this->langdb,array('id'=>$id));
        //set view link Canonical
        $data['linkCanonical']  = base_url().'tin-tuc/'.vnit_change_title($rs->name).'-'.$rs->id.'.html';
      	//update
      	  // UPdate View
        $this->db->query("UPDATE projects SET views = views + 1 WHERE id = ".$id);
        if(!$rs){
            redirect();
        }
        $data['title'] 	= $rs->name;
        $data['rs'] 	= $rs;
        $data['listRelative']	= $this->tintuc->getListOrther($id);
        
        //load templates -------
        $this->_templates['page'] = 'detail';
        $this->templates->load($this->_templates['page'],$data);
    }
    
    function printer(){
        $id = end(explode('-',$this->uri3));
        $data['rs'] = $this->vdb->find_by_id('content'.$this->langdb,array('id'=>$id));
        $this->templates->load('printer',$data,'print');        
    }
    
    function sendmail(){
        $id = end(explode('-',$this->uri3));
        $data['rs'] = $this->vdb->find_by_id('content'.$this->langdb,array('id'=>$id));
        $this->load->view('sendmail',$data);
    }
}
