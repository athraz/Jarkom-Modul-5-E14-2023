echo nameserver 192.168.122.1 > /etc/resolv.conf

apt-get update -y
apt-get install netcat -y

iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp -j DROP
iptables -A INPUT -p udp -j DROP