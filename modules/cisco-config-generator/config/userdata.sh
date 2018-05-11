hostname="${local_hostname}"
ios-config-1="line vty 0 4"
ios-config-2="exec-timeout 3 50"
ios-config-3="crypto ikev2 profile default"
ios-config-4="match identity remote fqdn domain cisco.com"
ios-config-5="identity local fqdn ${local_hostname}.cisco.com"
ios-config-6="authentication remote pre-share key ${remote_pre_share_key}"
ios-config-7="authentication local pre-share key ${local_pre_share_key}"
ios-config-8="interface Tunnel0"
ios-config-9="ip address ${tunnel_ip_local_site} 255.255.255.252"
ios-config-10="tunnel source GigabitEthernet1"
ios-config-11="tunnel destination ${public_ip_remote_site}"
ios-config-12="tunnel protection ipsec profile default"
iso-config-13="crypto ikev2 dpd 10 2 on-demand"
ios-config-14="int gi2"
ios-config-15="no shut"
ios-config-16="ip route ${private_ip_remote_site} 255.255.0.0 ${tunnel_ip_remote_site}"
