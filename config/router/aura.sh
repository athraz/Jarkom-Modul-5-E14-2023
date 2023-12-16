auto eth0 
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
	address 192.213.0.21
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 192.213.0.17
	netmask 255.255.255.252