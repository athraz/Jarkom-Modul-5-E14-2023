echo nameserver 192.168.122.1 > /etc/resolv.conf

apt-get update -y
apt-get install netcat -y

iptables -A INPUT -p tcp --dport 22 -m time --weekdays Mon,Tue,Wed,Thu --timestart 12:00 --timestop 13:00 -j DROP
iptables -A INPUT -p tcp --dport 22 -m time --weekdays Fri --timestart 11:00 --timestop 13:00 -j DROP
iptables -A INPUT -p tcp --dport 22 -m time --weekdays Mon,Tue,Wed,Thu,Fri --timestart 08:00 --timestop 16:00 -s 192.213.4.0/22 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP
iptables -A INPUT -p tcp --dport 80 -m time --datestart "2024-02-14T00:00" --datestop "2024-06-26T23:59" -s 192.213.0.0/30 -j DROP
iptables -N scanning_tab
iptables -A INPUT -m recent --name scanning_tab --update --seconds 600 --hitcount 20 -j DROP
iptables -A FORWARD -m recent --name scanning_tab --update --seconds 600 --hitcount 20 -j DROP
iptables -A INPUT -m recent --name scanning_tab --set -j ACCEPT
iptables -A FORWARD -m recent --name scanning_tab --set -j ACCEPT
iptables -A INPUT -j LOG --log-level debug --log-prefix 'drop packet' -m limit --limit 1/second --limit-burst 10