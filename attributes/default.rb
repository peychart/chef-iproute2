#
# Cookbook Name:: iproute2
# Attributes:: iproute2
#
"package" => "iproute2"

default['iproute2']['stop'] = [ "ip route add default dev eth0" ]

default['iproute2']['start'] = [ "ip route add default scope global" ]
default['iproute2']['start'].push( "nexthop via 192.198.7.3 weight 1" )
default['iproute2']['start'].push( "nexthop via 192.198.7.4 weight 1" )
default['iproute2']['start'].push( "nexthop via 192.198.7.5 weight 1" )
default['iproute2']['start'].push( "nexthop via 192.198.7.6 weight 1" )
default['iproute2']['start'].push( "nexthop via 192.198.7.7 weight 1" )
default['iproute2']['start'].push( "nexthop via 192.198.7.8 weight 1" )
default['iproute2']['start'].push( "nexthop via 192.198.7.9 weight 1" )
default['iproute2']['start'].push( "nexthop via 192.198.7.10 weight 1" )

