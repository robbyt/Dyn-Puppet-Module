#Region is required for GSLB
define dyn_module::add_address_to_gslb(
  $customer_name, 
  $user_name,
  $password,
  $zone,
  $dynect_record="$fqdn",
  $dynect_ip="$ipaddress", 
  $region="" 
  ) {

  add_address_to_gslb($customer_name, $user_name, $password, $zone, $dynect_record, $region, $dynect_ip)

}
