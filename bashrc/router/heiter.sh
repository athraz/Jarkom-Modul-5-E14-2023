echo nameserver 192.168.122.1 > /etc/resolv.conf

route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.213.0.21

apt-get update -y
apt-get install isc-dhcp-relay -y

echo '
SERVERS="192.213.0.2"
INTERFACES="eth0 eth1 eth2"
OPTIONS=' > /etc/default/isc-dhcp-relay

echo 'net.ipv4.ip_forward=1' > /etc/sysctl.conf

service isc-dhcp-relay start

iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.213.4.2 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.213.4.2
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.213.4.2 -j DNAT --to-destination 192.213.0.14
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.213.0.14 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.213.0.14
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.213.0.14 -j DNAT --to-destination 192.213.4.2
iptables -A INPUT -j LOG --log-level debug --log-prefix 'drop packet' -m limit --limit 1/second --limit-burst 10