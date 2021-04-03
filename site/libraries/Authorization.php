<?php
class Authorization
{

    var $obj;
    var $area;
    var $auth_cookie_name;
    var $remember_cookie_name;
    var $userdata_cookie_name;
    var $remembered_cookie_lifetime;
    var $login_page;
    var $control_string;
    

    /**
     * Constructor
     *
     * @access  public
     * @param   string  name of the area
    */  
    function Authorization($area)
    { 
        $this->obj =& get_instance();
            
        $this->area = $area;
        $config = $this->obj->config->item($area);
            
        $this->auth_cookie_name = md5($config['auth_cookie_name']);
        $this->remember_cookie_name = md5($config['remember_cookie_name']);
        $this->userdata_cookie_name = md5($config['userdata_cookie_name']);
        $this->remembered_cookie_lifetime = $config['remembered_cookie_lifetime'];
        $this->login_page = $config['login_page'];
        $this->control_string = $config['control_string'];
    }
        

    /**
     * Login user
     *
     * If the 'remember me' functionality is used 
     * the lifetimes of the authorization cookies will be extended.
     *
     * @access  public
     * @param   string  ID of the user
     * @param   bool    true - use the 'remember me' functionality / 
     *                  false - do not use the 'remember me' functionality
     */        
    function login($auth_id, $remember = false)
    {
        $encoded_auth_cookie = $this->obj->encrypt->encode($this->control_string . $auth_id);
            
        if ($remember)
        {
            set_cookie($this->auth_cookie_name, $encoded_auth_cookie, 
                $this->remembered_cookie_lifetime, 
                $this->obj->config->item('cookie_domain'));        
            set_cookie($this->remember_cookie_name, 
                $this->obj->encrypt->encode($this->control_string), 
                $this->remembered_cookie_lifetime, 
                $this->obj->config->item('cookie_domain'));
            if (false !== ($encoded_userdata = $this->get_encoded_userdata()))
            {
                set_cookie($this->userdata_cookie_name, $encoded_userdata,  
                    $this->remembered_cookie_lifetime, 
                    $this->obj->config->item('cookie_domain'));
            }
        }
        else 
        {
            set_cookie($this->auth_cookie_name,$encoded_auth_cookie, 
                $this->obj->config->item('sess_expiration'), 
                $this->obj->config->item('cookie_domain'));
            if (false !== ($encoded_userdata = $this->get_encoded_userdata()))
            {
                set_cookie($this->userdata_cookie_name,$encoded_userdata,
                    $this->obj->config->item('sess_expiration'), 
                    $this->obj->config->item('cookie_domain'));
            }                
            delete_cookie($this->remember_cookie_name, 
                $this->obj->config->item('cookie_domain'));    
        }
    }


    /**
     * Logout user
     *
     * @access  public
     */        
    function logout()
    {
        delete_cookie($this->auth_cookie_name, $this->obj->config->item('cookie_domain'));
        delete_cookie($this->remember_cookie_name, 
            $this->obj->config->item('cookie_domain'));
        delete_cookie($this->userdata_cookie_name, 
            $this->obj->config->item('cookie_domain'));
    }


    /**
     * Check if the user is logged in
     *
     * @access  public
     * @return  bool    true - user is logged in / false - user is not logged in
     */        
    function is_logged_in()
    {        
        if (!($auth_cookie = get_cookie($this->auth_cookie_name, true)))
        {
            return false;
        }
        if (!$this->verify_encoded_cookie($auth_cookie))
        {
            return false;
        }
        return true;
    }
        
        
    /**
     * Verify some encoded cookie's content
     *
     * @access  public
     * @param   string  encoded content of the cookie to be verified
     * @return  bool    true - the content is correct / false - the content is not correct
     */        
    function verify_encoded_cookie($encoded_cookie)
    {
        $decoded_cookie = $this->obj->encrypt->decode($encoded_cookie);
        if (!preg_match('/^' . $this->control_string . '/', $decoded_cookie))
        {
            return false;
         }
         return true;        
    }
        
        
    /**
     * Verify some decoded cookie's content
     *
     * @access  public
     * @param   string  decoded content of the cookie to be verified
     * @return  bool    true - the content is correct / false - the content is not correct
     */            
    function verify_decoded_cookie($decoded_cookie)
    {
        if (!preg_match('/^' . $this->control_string . '/', $decoded_cookie))
        {
            return false;
        }
        return true;        
    }    
        
        
    /**
     * Get the authorization ID
     *
     * @access  public
     * @return  string  the authorization ID of the user who is currently logged in
     */            
    function get_auth_id()
    {
        $decoded_cookie = $this->obj->encrypt->decode(
            get_cookie($this->auth_cookie_name, true));
        return str_replace($this->control_string, '', $decoded_cookie);
    }    

        
    /**
     * Authorize the user
     * 
     * If the user which is being authorized is not logged in, 
     * he will be redirected to the login page specified
     * in the authorization.php config file.
     *
     * @access  public
     */            
    function authorize()
    {
        if (!$this->is_logged_in())
        {
            redirect($this->login_page);
        }
            
        /* extend cookies' lifetimes */
        if (get_cookie($this->remember_cookie_name, true))
        {
            $this->login($this->get_auth_id(), true);
        }
        else 
        {
            $this->login($this->get_auth_id(), false);
        }
    }
        
        
    /**
     * Get the userdata array
     *
     * @access  public
     * @return  mixed   array - decoded userdata array / 
     *                  false - if the userdata does not exist or when it is incorrect
     */        
    function get_decoded_userdata()
    {
        if (!($encoded_userdata = get_cookie($this->userdata_cookie_name, true)))
        {
            return false;
        }
        $decoded_userdata = $this->obj->encrypt->decode($encoded_userdata);
        if (!($this->verify_decoded_cookie($decoded_userdata)))
        {
            return false;
        }
            
        return unserialize(str_replace($this->control_string, '', $decoded_userdata));
    }    
        
        
    /**
     * Get the userdata array
     *
     * @access  public  
     * @param   bool    true - verify the userdata cookie's content / 
     *                  false - do not verify the userdata cookie's content
     * @return  mixed   array - encoded userdata array / 
     *                  false - if the userdata does not exist or when it is incorrect
     */        
    function get_encoded_userdata($verify = false)
    {
        if (!($encoded_userdata = get_cookie($this->userdata_cookie_name, true)))
        {
            return false;
        }
            
        if ($verify)
        {
            if (!($this->verify_encoded_cookie($encoded_userdata)))
            {
                return false;
            }
        }
            
        return $encoded_userdata;
    }        
        
        
    /**
     * Get an item from the userdata array
     *
     * @access  public  
     * @param   string  the key of the item in the userdata array
     * @return  mixed   string - the value of the item / 
     *                  false - if the userdata array is incorrect or when 
     *                          the specified item does not exist
     */        
    function get_userdata_item($key)
    {
        $userdata = $this->get_decoded_userdata();
        if ((false !== $userdata) && isset($userdata[$key]))
        {
            return $userdata[$key];
        }
        return false;
    }    

        
    /**
     * Set an item in the userdata array
     *
     * @access  public  
     * @param   string  the key of the item
     * @param   string  the value of the item
     * @param   bool    true - use the 'remember me' functionality / 
     *                  false - do not use the 'remember me' functionality
     */        
    function set_userdata_item($key, $value, $remember = false)
    {
        if (false === ($decoded_userdata = $this->get_decoded_userdata()))
        {
            $decoded_userdata = array();
        }
            
        $decoded_userdata[$key] = $value;
        $encoded_userdata = $this->obj->encrypt->encode(
            $this->control_string . serialize(($decoded_userdata)));
        if (get_cookie($this->remember_cookie_name, true) || $remember)
        {
             set_cookie($this->userdata_cookie_name, $encoded_userdata, 
                 $this->remembered_cookie_lifetime, 
                 $this->obj->config->item('cookie_domain'));
        }
        else 
        {
            set_cookie($this->userdata_cookie_name, $encoded_userdata, 
                $this->obj->config->item('sess_expiration'), 
                $this->obj->config->item('cookie_domain'));
        }
    }

}
