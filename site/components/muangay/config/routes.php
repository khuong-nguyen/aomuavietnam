<?php  
$route['mua-ngay/(:any)'] 				= 'muangay/index/$1'; 
$route['thong-tin-gio-hang'] 			= 'muangay/step_one'; 
$route['thong-tin-tai-khoan'] 			= 'muangay/step_two'; 
$route['cach-thuc-thanh-toan'] 			= 'muangay/step_three'; 
$route['xac-nhan-don-hang'] 			= 'muangay/step_four'; 
$route['hoan-tat-don-hang'] 			= 'muangay/order_successful'; 
$route['thanh-toan-thanh-cong/(:any)'] 	= 'muangay/payment_successful/$1'; 
$route['khach-hang-xac-nhan/(:any)'] 	= 'muangay/xacnhandonhang/$1'; 
