auto eth0
iface eth0 inet static
	address 192.213.0.22
	netmask 255.255.255.252
	gateway 192.213.0.21

auto eth1
iface eth1 inet static
	address 192.213.8.1
	netmask 255.255.248.0

auto eth2
iface eth2 inet static
	address 192.213.4.1
	netmask 255.255.252.0