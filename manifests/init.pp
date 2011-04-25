# Set the Dynect setup you are using
# 1 - Standard A records
# 2 - GSLB
# 3 - Load Balancer
# 4 - Failover (main ip address)
# 5 - Failover (failover ip address)
#
$dynect_type = 1

#Required for adding records to any dynect account
$customer_name = "<customer name>"
$user_name = "<user name>"
$password = "<password>"
$zone = "<zone>"
$dynect_record = "<fqdn>"

# This is only required if you are using GSLB
$region = "<region>"


class dyn_module {
	case $dynect_type {
		1: {
			add_a_record($customer_name, $user_name, $password, $zone, $dynect_record)
		}
		2: {
			add_address_to_gslb($customer_name, $user_name, $password, $zone, $dynect_record, $region)
		}
		3: {
			add_address_to_load_balance($customer_name, $user_name, $password, $zone, $dynect_record)
		}
		4: {
			update_failover_address($customer_name, $user_name, $password, $zone, $dynect_record)
		}
		5: {
			update_failover_foaddress($customer_name, $user_name, $password, $zone, $dynect_record)
		}
	}
}

