<?php
class cachepage extends CI_Controller 
{	
	function __construct()
	{
		parent::__construct();
	}
	
	function test()
	{
		// Load library
		$this->load->library('memcached');
		//$this->memcached->auto_connect();
		// Lets try to get the key
		$results = $this->memcached->get('test');
		
		// If the key does not exist it could mean the key was never set or expired
		if (!$results) 
		{
			// Modify this Query to your liking!
			$query = $this->db->get('user')->row();
			
			// Lets store the results
			$this->memcached->add('test', $query);
			
			// Output a basic msg
			echo "Alright! Stored some results from the Query... Refresh Your Browser";
		}
        /*
		else 
		{
			// Output
			var_dump($results);
			
			// Now let us delete the key for demonstration sake!
			//$this->memcached->delete('test');
		}*/
        $data['results'] = $results;
        $this->load->view('test',$data);
        //echo '<br /><br /><br /><br /><br />';
      // echo $this->memcached->key_name('user_id');
		
	}
	
	function stats()
	{
		$this->load->library('memcached');
		
		echo $this->memcached->getversion();
		echo "<br/>";
		
		// We can use any of the following "reset, malloc, maps, cachedump, slabs, items, sizes"
		$p = $this->memcached->getstats("slabs");
        echo '<br />';
        echo $this->memcached->get('user_id');

        echo '<br />';
		var_dump($p);
        

	}
    
    function delete(){
        $this->load->library('memcached');
        $this->memcached->delete('items');
        $this->memcached->delete('user_id');
        for($i= 96 ; $i <=58592 ; $i = $i + 32){
            $this->memcached->delete($i);
        }
        $this->memcached->clear();
        echo '<a href="'.site_url('cachepage/test').'">Quay lai</a>';
    }
}