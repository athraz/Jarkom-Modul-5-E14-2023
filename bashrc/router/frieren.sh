echo nameserver 192.168.122.1 > /etc/resolv.conf

route add -net 192.213.0.0 netmask 255.255.255.252 gw 192.213.0.10
route add -net 192.213.0.4 netmask 255.255.255.252 gw 192.213.0.10
route add -net 192.213.0.128 netmask 255.255.255.128 gw 192.213.0.10
route add -net 192.213.2.0 netmask 255.255.254.0 gw 192.213.0.10

iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.213.4.2 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.213.4.2
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.213.4.2 -j DNAT --to-destination 192.213.0.14
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.213.0.14 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.213.0.14
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.213.0.14 -j DNAT --to-destination 192.213.4.2
iptables -A INPUT -j LOG --log-level debug --log-prefix 'drop packet' -m limit --limit 1/second --limit-burst 10