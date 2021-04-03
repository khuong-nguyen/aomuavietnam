<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
* memcached
*
* Config file for memc library.
* Multiple Memcache server is supported.
* 
* @package CodeIgniter
* @subpackage Memcache Session Storage
* @category Libraries
* @author Arieditya PrdH - @arieditya
* @link http://www.facebook.com/arieditya.prdh
*/

$config['memcache_default']				= 'primary'; 
$config['memcache_multi']				= FALSE;

$memcache['primary']['server'] 			= 'localhost';
$memcache['primary']['port'] 			= 11211;
$memcache['primary']['persistent']        = TRUE;
$memcache['primary']['weight']		= 1;

$memcache['secondary']['server'] 		= 'localhost';
$memcache['secondary']['port'] 			= 11211;
$memcache['secondary']['persistent']	= TRUE;
$memcache['secondary']['weight']        = 1;

$config['memcache_storage']				=	$memcache;
$memcached['servers'] = array(

    'default' => array(

            'host'            => 'localhost',
            'port'            => '11211',
            'weight'        => '1',
            'persistent'    => FALSE
                        
        )
);

/* End of file memcached.php */
/* Location: application/config/memcached.php */