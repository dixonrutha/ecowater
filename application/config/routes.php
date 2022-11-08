<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'auth';
$route['404_override'] = 'Notfound';
$route['translate_uri_dashes'] = FALSE;
$route['1b950a2cee305598cdc96de85d706237'] = 'auth/login';
$route['f5584ffebc757d61a28ea9a379e36a62'] = 'auth/logout';
$route['3e326cd7659686c4bec30371e5315097'] = 'auth/index';
$route['9e588699ede691c1e13412e0e41bda1a'] = 'auth/change_password';
$route['inno'] = 'maintenancecentre/filtersMaintenance';
$route['dc7161be3dbf2250c8954e560cc35060'] = 'dashboard';
$route['24892d8b923b1c76a0352812932d840a'] = 'auth/password_expired';
$route['940ed17a2d7a29fdde4215f60f92d1c7c2f10ad4212105c8940b5f1dda21271b'] = 'auth/blocked';

# Routes for Subscriber Module start
$route['a18769583d9f14d672803c80bcabf9a7'] = 'subscribers/listSubscribers';
$route['71e166fa855a3ace69d42b1c62892571'] = 'subscribers/newSubscriber';
$route['63af1019c3f8e05d1e0202c578aa50f0'] = 'subscribers/allSubscribers';
$route['f08dd74551de0aa73421a75ae6af54bd/(:num)'] = 'subscribers/viewSubscriber/$1';
$route['6c2b3b70f6a4b5c780f7a0792d36f727'] = 'subscribers/subscriptionFee';
$route['a4df3aee914ed5bf20dc624ab373ba88'] = 'subscribers/exportExcel';

# Routes for Subscriber Module end

# routes for branch start
$route['0064e2dae17ee8627f29554c8045f804'] = 'branch/listBranches';
# routes for branch end

# routes for campus start
$route['69908164272db3c3ecb3958c51e814ab'] = 'campus/listCampus';
$route['6b02549c5e3b0bb66286901b2a4f3021'] = 'campus/royalty';
$route['e306393ad4d44b6d58d18545a6b2be52'] = 'campus/campusListTwo';
$route['cd9a25f4b5b0854f5c667e9ea64ca992/(:num)/(:any)'] = 'campus/invoiceDownload/$1/$2';
# routes for campus end

# routes for utility start
$route['cb063fe2c1ad14dc432e56c55ee9b331'] = 'campus/utilityBills';
$route['66f0125330096302b596ef45f885b255'] = 'campus/utilityInvoices';
# routes for utility end

# routes for station start
$route['affa31f1b23f94e960c6fe88253709e3'] = 'stations/listStations';
//$route['ed59d1bca3c698a0d044f7f92ac90ec8/(:num)/(:num)'] = 'stations/viewStation';
$route['ed59d1bca3c698a0d044f7f92ac90ec8/(:num)/(:any)'] = 'stations/viewStation/$1/$2';
# routes for station end

# POS module
$route['cbfe61202c372dbcc0208399dbf30cea'] = 'topup/posBalances';
$route['5774951286ac4b3960f1f0a108c40fc8'] = 'topup/mpesaTrans';
# POS module end

# settings module
//$route['7743cabe3a7f7293c36126d4b3962e17'] = 'settings/utilityConfig';
//$route['685c394bf2baa8ed736302c4ae165b6e'] = 'settings/waterPrice';
$route['e110b3ae5bdf99ad573324d7e3e97922'] = 'settings/screensConf';
$route['2c3ff997627677d6d6858c40147109ba'] = 'settings/street';
$route['5873799c9616298f1568c97f4ae4ca7b'] = 'settings/subStatus';
$route['2119d6e53554d6165666faed924b84f3'] = 'settings/subscriptionPlan';
$route['27519a766694c2cd37fa6b343e640c23'] = 'settings/royaltyConfig';
$route['1e782707d31dbc3ada3b17c533376c16'] = 'settings/systemParameters';
$route['2feb80ea5126598fd8dfdb428db22ec8'] = 'settings/dashboards';
$route['00e5a24f92f5b45aa4a6571b53d36745'] = 'settings/mobilePayParam';
$route['809e41f3c92e39b8a833737c57e29abf'] = 'settings/upload';

#Investors
$route['719e5fd2bcdea0c82f8b2d66823a071e'] = 'investors/listInvestors';
$route['45e1a84d034d65a00bf29f525110c511'] = 'investors/investorContracts';
$route['058cf4d83dc58e2fd7a8a3eeff03c61a'] = 'investors/transfers';

#Cashier
$route['0e440098a33575c32246132ec2395e56ee43da01b539d2135760c9a6e02bfeed'] = 'cashier/newSubscriber';
$route['043390f2871d161b988b175ead45b6210be8853f05325c453be74989a1479712'] = 'cashier/cardRecharge';
$route['01a1a0fea0e585e55a53563bbab3237a7dbbe71081b27e53f4b3dd50e177595a'] = 'cashier/listSubscribers';
$route['c70f87b323bcd5bb6d3f63f1b9dd0619d8ceac4c419565546ffcda5db6a17b88'] = 'cashier/listRecharges';
$route['b0cbf919ab3638e70a5b377db94cd5ba89012c87335745c1902fccb8d0ac6949'] = 'cashier/mobilePaymentMessaging';
$route['ae892dc5d86252a3617a66d8524fe3247da3b566d767dec82f2f8a4e41e11cae/(:any)'] = 'cashier/sellBottle/$1';


#OffGrid
$route['offgrid/viewOffGridCust'] = 'OffGrid/Viewoffgrid';
$route['Offgrid/Dashboard']='OffGrid/dashboard';
$route['dd2eb2d734eb51d46fc49806c916b9a5'] = 'Offgrid/new_offgrid_customers';
$route['fea80e4851ade9a5c70f97873b248c9f'] = 'Promotion/addnewpromotion';
