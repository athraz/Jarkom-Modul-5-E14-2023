echo nameserver 192.168.122.1 > /etc/resolv.conf

apt-get update -y
apt-get install netcat -y

iptables -A INPUT -p icmp -m connlimit --connlimit-above 3 --connlimit-mask 0 -j DROP