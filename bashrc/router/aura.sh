iptables -t nat -A POSTROUTING -s 192.213.0.0/20 -o eth0 -j SNAT --to-source $(hostname -I | awk '{print $1}')

route add -net 192.213.0.0 netmask 255.255.255.252 gw 192.213.0.18
route add -net 192.213.0.4 netmask 255.255.255.252 gw 192.213.0.18
route add -net 192.213.0.128 netmask 255.255.255.128 gw 192.213.0.18
route add -net 192.213.2.0 netmask 255.255.254.0 gw 192.213.0.18
route add -net 192.213.0.8 netmask 255.255.255.252 gw 192.213.0.18
route add -net 192.213.0.12 netmask 255.255.255.252 gw 192.213.0.18
route add -net 192.213.8.0 netmask 255.255.248.0 gw 192.213.0.22
route add -net 192.213.4.0 netmask 255.255.252.0 gw 192.213.0.22