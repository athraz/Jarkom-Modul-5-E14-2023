# Jarkom-Modul-5-E14-2023

| Nama                      | NRP           |Username      |
|---------------------------|---------------|--------------|
|Muhammad Razan Athallah    |5025211008     |athraz        |
|Moh rosy haqqy aminy       |5025211012     |hqlco         |

$~$

## Topologi
Berikut topologi yang digunakan pada praktikum modul 5:

![image](https://github.com/athraz/Jarkom-Modul-5-E14-2023/assets/96050618/e6ef5ded-57ab-41dd-8f9f-d294ce1b09db)

$~$

## VLSM
Berikut pembagian rute untuk topologi diatas:

![Jarkom E14 - Rute](https://github.com/athraz/Jarkom-Modul-5-E14-2023/assets/96050618/aaf2dfff-2bf0-4235-8333-487d574a040c)

![image](https://github.com/athraz/Jarkom-Modul-5-E14-2023/assets/96050618/4fd7aa9e-e6c0-403a-950b-36bc0b9c4327)

Berikut tree pembagian IP:

![Jarkom E14 - VLSM Tree (1)](https://github.com/athraz/Jarkom-Modul-5-E14-2023/assets/96050618/40f8fb3b-0122-407c-82a6-3ce67d3adfdb)

$~$

## Konfigurasi
Berikut konfigurasi pada masing-masing router, client, dan server untuk melakukan subnetting:

- **Aura**

```
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
```

- **Heiter**

```
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
```

- **Frieren**

```
auto eth0
iface eth0 inet static
	address 192.213.0.130
	netmask 255.255.255.128
	gateway 192.213.0.129

auto eth1
iface eth1 inet static
	address 192.213.0.5
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 192.213.0.1
	netmask 255.255.255.252
```

- **Himmel**

```
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
```

- **Fern**

```
auto eth0
iface eth0 inet static
	address 192.213.0.130
	netmask 255.255.255.128
	gateway 192.213.0.129

auto eth1
iface eth1 inet static
	address 192.213.0.5
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 192.213.0.1
	netmask 255.255.255.252
```

- **Revolte**

```
auto eth0
iface eth0 inet static
	address 192.213.0.2
	netmask 255.255.255.252
	gateway 192.213.0.1
```

- **Richter**

```
auto eth0
iface eth0 inet static
	address 192.213.0.6
	netmask 255.255.255.252
	gateway 192.213.0.5
```

- **Sein**

```
auto eth0
iface eth0 inet static
	address 192.213.4.2
	netmask 255.255.252.0
	gateway 192.213.4.1
```

- **Stark**

```
auto eth0
iface eth0 inet static
	address 192.213.0.14
	netmask 255.255.255.252
	gateway 192.213.0.13
```

- **GrobeForest**

```
auto eth0 
iface eth0 inet dhcp
```

- **LaubHills**

```
auto eth0 
iface eth0 inet dhcp
```

- **TurkRegion**

```
auto eth0 
iface eth0 inet dhcp
```

- **SchwerMountain**

```
auto eth0 
iface eth0 inet dhcp
```

$~$

## Routing
Berikut konfigurasi pada masing-masing router untuk melakukan routing:

- **Aura**

```
route add -net 192.213.0.0 netmask 255.255.255.252 gw 192.213.0.18
route add -net 192.213.0.4 netmask 255.255.255.252 gw 192.213.0.18
route add -net 192.213.0.128 netmask 255.255.255.128 gw 192.213.0.18
route add -net 192.213.2.0 netmask 255.255.254.0 gw 192.213.0.18
route add -net 192.213.0.8 netmask 255.255.255.252 gw 192.213.0.18
route add -net 192.213.0.12 netmask 255.255.255.252 gw 192.213.0.18
route add -net 192.213.8.0 netmask 255.255.248.0 gw 192.213.0.22
route add -net 192.213.4.0 netmask 255.255.252.0 gw 192.213.0.22
```

- **Heiter**

```
route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.213.0.21
```

- **Frieren**

```
route add -net 192.213.0.0 netmask 255.255.255.252 gw 192.213.0.10
route add -net 192.213.0.4 netmask 255.255.255.252 gw 192.213.0.10
route add -net 192.213.0.128 netmask 255.255.255.128 gw 192.213.0.10
route add -net 192.213.2.0 netmask 255.255.254.0 gw 192.213.0.10
```

- **Himmel**

```
route add -net 192.213.0.0 netmask 255.255.255.252 gw 192.213.0.130
route add -net 192.213.0.4 netmask 255.255.255.252 gw 192.213.0.130
```

- **Fern**

```
route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.213.0.129
```

$~$

## Setup DHCP

- **Revolte (DHCP Server)**

```sh
apt-get update -y
apt-get install isc-dhcp-server -y

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
```

- **Heiter dan Himmel (DHCP Relay)**

```sh
apt-get update -y
apt-get install isc-dhcp-relay -y

echo '
SERVERS="192.213.0.2"
INTERFACES="eth0 eth1 eth2"
OPTIONS=' > /etc/default/isc-dhcp-relay

echo 'net.ipv4.ip_forward=1' > /etc/sysctl.conf

service isc-dhcp-relay start

```

