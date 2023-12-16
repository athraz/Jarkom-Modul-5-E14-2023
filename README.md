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

$~$

## Soal 1
> Agar topologi yang kalian buat dapat mengakses keluar, kalian diminta untuk mengkonfigurasi Aura menggunakan iptables, tetapi tidak ingin menggunakan MASQUERADE.

Berikut rule yang harus dimasukkan pada Aura supaya topologi dapat mengakses keluar:
```sh
iptables -t nat -A POSTROUTING -s 192.213.0.0/20 -o eth0 -j SNAT --to-source $(hostname -I | awk '{print $1}')
```
Dikarenakan mengakses jaringan luar merupakan tugas dari NAT, maka table yang digunakan adalah table nat, sehingga digunakan syntax `-t nat`. NAT bekerja dengan meng-translate IP pada topologi menjadi satu IP yang sama, sehingga chain yang digunakan adalah `POSTROUTING`, jump targetnya `SNAT` dan sourcenya adalah NID Topologi yaitu `192.213.0.0/20`. Interface Aura yang berhubungan dengan NAT adalah eth0, sehingga menggunakan syntax `-o eth0`. IP interface Aura dapat dilihat dengan command `hostname -I`, karena NAT terkoneksi dengan eth0 maka source IP merupakan IP yang pertama, sehingga digunakan syntax `--to-source $(hostname -I | awk '{print $1}')`.

Berikut hasil tes dari beberapa node untuk mengakses jaringan luar:
![image](https://github.com/athraz/Jarkom-Modul-5-E14-2023/assets/96050618/e0a8321e-4d81-43cf-866e-ed05c3428296)

$~$

## Soal 2
> Kalian diminta untuk melakukan drop semua TCP dan UDP kecuali port 8080 pada TCP.

Karena tidak ada ketentuan node apa yang harus menerapkan soal ini, maka kami memilih TurkRegion, berikut rule yang harus dimasukkan:
```sh
iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp -j DROP
iptables -A INPUT -p udp -j DROP
```
Untuk menyaring semua paket yang masuk sesuai ketentuan soal, maka kami menggunakan chain `INPUT`. Rule pertama digunakan untuk meng-accept paket TCP yang memasuki port 8080. Rule kedua digunakan untuk meng-drop semua paket TCP yang tidak memenuhi rule pertama. Rule ketiga digunakan untuk meng-drop semua paket UDP.

Berikut hasil tes pada paket protokol TCP:
![image](https://github.com/athraz/Jarkom-Modul-5-E14-2023/assets/96050618/a8522571-20b1-48b6-9604-8e1f0e4d2465)

$~$

## Soal 3
> Kepala Suku North Area meminta kalian untuk membatasi DHCP dan DNS Server hanya dapat dilakukan ping oleh maksimal 3 device secara bersamaan, selebihnya akan di drop.

Berikut rule yang harus dimasukkan pada Revolte (DHCP Server) dan Richter (DNS Server):
```sh
iptables -A INPUT -p icmp -m connlimit --connlimit-above 3 --connlimit-mask 0 -j DROP
```
Untuk menyaring ping yang masuk digunakan chain `INPUT` serta protokol `icmp`. Digunakan modul `connlimit` untuk membatasi jumlah koneksi paralel pada satu IP server, karena maksimal 3 device maka digunakan syntax `--connlimit-above 3`. Sedangkan syntax `--conlimit-mask 0` digunakan untuk menganggap ping dari IP yang berbeda merupakan koneksi yang berbeda.

Berikut hasil dari ping IP Revolte pada 4 node secara langsung:
![Screenshot 2023-12-16 182522](https://github.com/athraz/Jarkom-Modul-5-E14-2023/assets/96050618/2f6f78da-0908-4dda-bf4c-6452f39796c5)

$~$

## Soal 4
> Lakukan pembatasan sehingga koneksi SSH pada Web Server hanya dapat dilakukan oleh masyarakat yang berada pada GrobeForest.

$~$

## Soal 5
> Selain itu, akses menuju WebServer hanya diperbolehkan saat jam kerja yaitu Senin-Jumat pada pukul 08.00-16.00.

$~$

## Soal 6
> Lalu, karena ternyata terdapat beberapa waktu di mana network administrator dari WebServer tidak bisa stand by, sehingga perlu ditambahkan rule bahwa akses pada hari Senin - Kamis pada jam 12.00 - 13.00 dilarang (istirahat maksi cuy) dan akses di hari Jumat pada jam 11.00 - 13.00 juga dilarang (maklum, Jumatan rek).

$~$

## Soal 7
> Karena terdapat 2 WebServer, kalian diminta agar setiap client yang mengakses Sein dengan Port 80 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan dan request dari client yang mengakses Stark dengan port 443 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan.

$~$

## Soal 8
> Karena berbeda koalisi politik, maka subnet dengan masyarakat yang berada pada Revolte dilarang keras mengakses WebServer hingga masa pencoblosan pemilu kepala suku 2024 berakhir. Masa pemilu (hingga pemungutan dan penghitungan suara selesai) kepala suku bersamaan dengan masa pemilu Presiden dan Wakil Presiden Indonesia 2024.

$~$

## Soal 9
> Sadar akan adanya potensial saling serang antar kubu politik, maka WebServer harus dapat secara otomatis memblokir  alamat IP yang melakukan scanning port dalam jumlah banyak (maksimal 20 scan port) di dalam selang waktu 10 menit. 

$~$

## Soal 10
> Karena kepala suku ingin tau paket apa saja yang di-drop, maka di setiap node server dan router ditambahkan logging paket yang di-drop dengan standard syslog level. 

$~$

## Kendala Pengerjaan

$~$
