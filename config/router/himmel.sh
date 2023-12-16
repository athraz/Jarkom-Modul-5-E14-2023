auto eth0
iface eth0 inet static
	address 192.213.0.10
	netmask 255.255.255.252
	gateway 192.213.0.9

auto eth1
iface eth1 inet static
	address 192.213.2.1
	netmask 255.255.254.0

auto eth2
iface eth2 inet static
	address 192.213.0.129
	netmask 255.255.255.128