echo nameserver 192.168.122.1 > /etc/resolv.conf

apt-get update -y
apt-get install isc-dhcp-server -y
apt-get install netcat -y

echo '
INTERFACESv4="eth0"
INTERFACESv6=' > /etc/default/isc-dhcp-server

echo '
subnet 192.213.0.0 netmask 255.255.255.252 {

}

subnet 192.213.0.4 netmask 255.255.255.252 {

}

subnet 192.213.0.128 netmask 255.255.255.128 {
    range 192.213.0.131 192.213.0.194;
    option routers 192.213.0.129;
    option broadcast-address 192.213.0.255;
    option domain-name-servers 192.213.0.6;
}

subnet 192.213.2.0 netmask 255.255.254.0 {
    range 192.213.2.2 192.213.3.0;
    option routers 192.213.2.1;
    option broadcast-address 192.213.3.255;
    option domain-name-servers 192.213.0.6;
}

subnet 192.213.0.8 netmask 255.255.255.252 {

}

subnet 192.213.0.12 netmask 255.255.255.252 {

}

subnet 192.213.0.16 netmask 255.255.255.252 {

}

subnet 192.213.0.20 netmask 255.255.255.252 {

}

subnet 192.213.8.0 netmask 255.255.248.0 {
    range 192.213.8.2 192.213.11.255;
    option routers 192.213.8.1;
    option broadcast-address 192.213.15.255;
    option domain-name-servers 192.213.0.6;
}

subnet 192.213.4.0 netmask 255.255.252.0 {
    range 192.213.4.3 192.213.6.2;
    option routers 192.213.4.1;
    option broadcast-address 192.213.7.255;
    option domain-name-servers 192.213.0.6;
}
' > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart

iptables -A INPUT -p icmp -m connlimit --connlimit-above 3 --connlimit-mask 0 -j DROP