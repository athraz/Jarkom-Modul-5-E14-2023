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

kita dapat menambahkan configurasi di server sebagai berikut:

```sh
iptables -A INPUT -p tcp --dport 22 -s 192.213.4.0/22 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP
```

Perintah `iptables` yang Anda berikan adalah perintah untuk mengonfigurasi firewall di Linux menggunakan `iptables`. Mari kita uraikan perintah tersebut:

- `iptables -A INPUT`: Ini menambahkan (`-A` untuk append) sebuah aturan ke dalam rantai `INPUT`. Rantai `INPUT` digunakan untuk memutuskan nasib paket data yang masuk ke sistem.

- `-p tcp`: Ini menentukan bahwa aturan ini hanya berlaku untuk protokol TCP. TCP adalah protokol tingkat transport yang umum digunakan untuk aplikasi seperti web browsing, email, dan transfer file.

- `--dport 22`: Ini menentukan bahwa aturan hanya berlaku untuk paket data yang ditujukan ke port 22. Port 22 umumnya digunakan untuk layanan SSH (Secure Shell), yang digunakan untuk akses jarak jauh ke server secara aman.

- `-s 192.213.4.0/22`: Ini menentukan sumber (source) paket data yang akan diterima oleh aturan ini. `192.213.4.0/22` adalah notasi subnet yang merepresentasikan range alamat IP dari `192.213.4.0` hingga `192.213.7.255`. Jadi, aturan ini hanya berlaku untuk paket yang datang dari alamat IP dalam range ini.

- `-j ACCEPT`: Ini menentukan tindakan yang harus diambil jika sebuah paket cocok dengan kriteria yang didefinisikan di atas. Dalam hal ini, `-j ACCEPT` berarti paket tersebut akan diterima.

adapula untuk selain subnet tersebut akan didrop.
$~$

## Soal 5
> Selain itu, akses menuju WebServer hanya diperbolehkan saat jam kerja yaitu Senin-Jumat pada pukul 08.00-16.00.


Config pada webserver 

```sh
iptables -A INPUT -p tcp --dport 22 -m time --weekdays Mon,Tue,Wed,Thu,Fri --timestart 08:00 --timestop 16:00 -s 192.213.4.0/22 -j ACCEPT
```
 Berikut penjelasannya:

- `iptables -A INPUT`: Ini menambahkan aturan ke rantai `INPUT` dari iptables. Rantai `INPUT` mengatur paket yang masuk ke host.

- `-p tcp`: Aturan ini hanya berlaku untuk protokol TCP, yang umumnya digunakan untuk SSH.

- `--dport 22`: Aturan ini berlaku untuk paket yang ditujukan ke port 22, port standar untuk SSH.

- `-m time`: Modul ini digunakan untuk membatasi aturan berdasarkan waktu. Dalam hal ini, aturan akan berlaku hanya pada waktu tertentu.

- `--weekdays Mon,Tue,Wed,Thu,Fri`: Aturan ini hanya berlaku pada hari Senin, Selasa, Rabu, Kamis, dan Jumat.

- `--timestart 08:00 --timestop 16:00`: Ini mendefinisikan bahwa aturan hanya aktif antara jam 08:00 pagi dan 16:00 sore.

- `-s 192.213.4.0/22`: Aturan hanya berlaku untuk sumber (source) paket yang berasal dari rentang alamat IP `192.213.4.0/22`.

- `-j ACCEPT`: Paket yang cocok dengan kriteria di atas akan diterima.

$~$

## Soal 6
> Lalu, karena ternyata terdapat beberapa waktu di mana network administrator dari WebServer tidak bisa stand by, sehingga perlu ditambahkan rule bahwa akses pada hari Senin - Kamis pada jam 12.00 - 13.00 dilarang (istirahat maksi cuy) dan akses di hari Jumat pada jam 11.00 - 13.00 juga dilarang (maklum, Jumatan rek).

Config webserver:
```sh
iptables -A INPUT -p tcp --dport 22 -m time --weekdays Mon,Tue,Wed,Thu --timestart 12:00 --timestop 13:00 -j DROP
iptables -A INPUT -p tcp --dport 22 -m time --weekdays Fri --timestart 11:00 --timestop 13:00 -j DROP
```

Berikut penjelasannya:

Paket akan didrop pada config pertama untuk hari senin - kamis jam 12.00-13.00 lalu jumat pada jam 11.00-13.00
$~$

## Soal 7
> Karena terdapat 2 WebServer, kalian diminta agar setiap client yang mengakses Sein dengan Port 80 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan dan request dari client yang mengakses Stark dengan port 443 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan.

kita dapat menambahakan config di masing masing router webserver:
pertama untuk config port 80:
```sh
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.213.4.2 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.213.4.2
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.213.4.2 -j DNAT --to-destination 192.213.0.14

```

Perintah `iptables` yang Anda berikan adalah untuk mengonfigurasi Network Address Translation (NAT) menggunakan `iptables` di Linux. Mari kita uraikan perintah tersebut:

- `iptables -A PREROUTING`: Ini menambahkan sebuah aturan ke dalam rantai `PREROUTING` dari tabel `nat`. Rantai `PREROUTING` digunakan untuk mengatur alamat tujuan paket sebelum routing, yaitu sebelum keputusan mengenai ke mana paket akan dikirim diambil.

- `-t nat`: Ini menunjukkan bahwa aturan yang ditambahkan berada di dalam tabel `nat`, yang biasanya digunakan untuk NAT (Network Address Translation).

- `-p tcp`: Ini menentukan bahwa aturan ini hanya berlaku untuk protokol TCP, yang merupakan protokol tingkat transport yang umum digunakan.

- `--dport 80`: Ini menentukan bahwa aturan hanya berlaku untuk paket data yang ditujukan ke port 80, yang merupakan port standar untuk lalu lintas web HTTP.

- `-d 192.213.4.2`: Ini menentukan destinasi (tujuan) paket yang akan di-NAT. Dalam kasus ini, paket yang ditujukan ke alamat IP `192.213.4.2`.

- `-m statistic`: Ini memanggil modul `statistic` yang digunakan untuk mencocokkan paket berdasarkan statistik tertentu.

- `--mode nth --every 2 --packet 0`: Ini adalah pengaturan dari modul `statistic`. Modus `nth` digunakan untuk mencocokkan setiap paket ke-N. Dalam hal ini, `--every 2` berarti setiap paket kedua akan dicocokkan, mulai dari `--packet 0` (paket pertama).

- `-j DNAT`: Ini menentukan tindakan `DNAT` (Destination Network Address Translation), yang mengubah alamat tujuan paket.

- `--to-destination 192.213.4.2`: Menentukan alamat tujuan baru untuk paket yang cocok. Dalam hal ini, paket yang cocok akan diarahkan ulang ke `192.213.4.2`.

untuk config kedua akan di teruskan untuk paket ke 2 ke webserver stark.

Config untuk port 443:

```sh
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.213.0.14 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.213.0.14
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.213.0.14 -j DNAT --to-destination 192.213.4.2
```

penjelasan mirip seperti config port 80 akan tetapi berbeda dalam penerapan portnya  port 443.
$~$

## Soal 8
> Karena berbeda koalisi politik, maka subnet dengan masyarakat yang berada pada Revolte dilarang keras mengakses WebServer hingga masa pencoblosan pemilu kepala suku 2024 berakhir. Masa pemilu (hingga pemungutan dan penghitungan suara selesai) kepala suku bersamaan dengan masa pemilu Presiden dan Wakil Presiden Indonesia 2024.

config di webserver:

```sh
iptables -A INPUT -p tcp --dport 80 -m time --datestart "2024-02-14T00:00" --datestop "2024-06-26T23:59" -s 192.213.0.0/30 -j DROP
```

Perintah `iptables` yang Anda berikan adalah untuk mengonfigurasi aturan firewall di Linux menggunakan `iptables`. Aturan ini secara spesifik menetapkan kondisi berdasarkan waktu dan sumber alamat IP. Mari kita uraikan perintah tersebut:

- `iptables -A INPUT`: Ini menambahkan aturan ke rantai `INPUT`. Rantai `INPUT` digunakan untuk memutuskan nasib paket yang masuk ke sistem.

- `-p tcp`: Aturan ini hanya berlaku untuk protokol TCP, yang adalah protokol tingkat transport yang umum digunakan.

- `--dport 80`: Ini menentukan bahwa aturan hanya berlaku untuk paket data yang ditujukan ke port 80, yang merupakan port standar untuk lalu lintas web HTTP.

- `-m time`: Ini memanggil modul `time` yang digunakan untuk membatasi aturan berdasarkan waktu.

- `--datestart "2024-02-14T00:00" --datestop "2024-06-26T23:59"`: Ini mendefinisikan rentang waktu di mana aturan ini aktif. Dalam hal ini, aturan akan aktif dari tanggal 14 Februari 2024 pukul 00:00 hingga tanggal 26 Juni 2024 pukul 23:59.

- `-s 192.213.0.0/30`: Ini menentukan sumber (source) paket yang akan dijatuhi aturan ini. `192.213.0.0/30` adalah notasi CIDR yang merepresentasikan range alamat IP dari `192.213.0.0` hingga `192.213.0.3`.

- `-j DROP`: Ini menentukan tindakan yang harus diambil jika sebuah paket cocok dengan kriteria yang didefinisikan di atas. Dalam hal ini, `-j DROP` berarti paket tersebut akan dibuang (tidak diterima dan tidak ada respons dikirim kembali ke pengirim).

## Soal 9
> Sadar akan adanya potensial saling serang antar kubu politik, maka WebServer harus dapat secara otomatis memblokir  alamat IP yang melakukan scanning port dalam jumlah banyak (maksimal 20 scan port) di dalam selang waktu 10 menit. 

$~$
config di webserver:

```sh
iptables -N scanning_tab
iptables -A INPUT -m recent --name scanning_tab --update --seconds 600 --hitcount 20 -j DROP
iptables -A FORWARD -m recent --name scanning_tab --update --seconds 600 --hitcount 20 -j DROP
iptables -A INPUT -m recent --name scanning_tab --set -j ACCEPT
iptables -A FORWARD -m recent --name scanning_tab --set -j ACCEPT

```

Perintah `iptables -N scanning_tab` adalah untuk membuat rantai baru dalam konfigurasi `iptables`. Mari kita jelaskan bagian perintah ini:

- `iptables`: Ini adalah perintah untuk mengonfigurasi `iptables`, sebuah tool untuk mengatur aturan firewall di Linux.

- `-N scanning_tab`: Opsi `-N` digunakan untuk membuat rantai baru. `scanning_tab` di sini adalah nama yang diberikan untuk rantai baru ini.

Perintah `iptables` yang Anda berikan digunakan untuk mengatur aturan dalam `iptables` untuk memblokir percobaan akses berulang ke sistem yang Anda lindungi. Ini adalah bagian dari mekanisme pertahanan untuk melindungi terhadap serangan seperti brute-force atau penelusuran port (port scanning). Berikut penjelasan detailnya:

- `iptables -A INPUT`: Ini menambahkan aturan ke rantai `INPUT`, yang mengatur paket data yang masuk ke sistem.

- `-m recent`: Modul `recent` digunakan untuk melacak paket yang diterima dari alamat IP tertentu. Modul ini memungkinkan Anda membuat keputusan berdasarkan jumlah paket yang diterima dari alamat IP tersebut dalam jangka waktu tertentu.

- `--name scanning_tab`: Ini menentukan nama daftar yang digunakan oleh modul `recent` untuk melacak. Dalam kasus ini, "scanning_tab" adalah nama yang diberikan. Ini harus sesuai dengan nama rantai atau daftar yang telah Anda definisikan sebelumnya.

- `--update`: Opsi ini memperbarui waktu terakhir sebuah paket diterima dari alamat IP tertentu.

- `--seconds 600`: Ini menentukan periode waktu untuk melacak. Dalam hal ini, aturan akan mempertimbangkan paket yang diterima dalam 600 detik (10 menit) terakhir.

- `--hitcount 20`: Ini menetapkan jumlah paket yang diperlukan untuk memicu aturan. Dalam hal ini, jika lebih dari 20 paket diterima dari alamat IP yang sama dalam 600 detik, aturan ini akan aktif.

- `-j DROP`: Tindakan yang diambil bila aturan ini cocok adalah `DROP`, yang berarti paket akan dibuang dan tidak ada tanggapan yang dikirim kembali ke pengirim.

lalu untuk forward sendiri sama seperti config input akan tetapi forward adalah paket yang sampai ke host secara tidak langsung ke host itu sendiri.

Jika tidak melanggar aturan akan di accept.

## Soal 10
> Karena kepala suku ingin tau paket apa saja yang di-drop, maka di setiap node server dan router ditambahkan logging paket yang di-drop dengan standard syslog level. 

$~$

config:

```sh
iptables -A INPUT -j LOG --log-level debug --log-prefix 'drop packet' -m limit --limit 1/second --limit-burst 10
```
Perintah `iptables` yang Anda berikan digunakan untuk membuat aturan log pada firewall Linux menggunakan `iptables`. Aturan ini khususnya mencatat paket yang melewati rantai `INPUT`. Mari kita uraikan perintah tersebut:

- `iptables -A INPUT`: Ini menambahkan aturan ke rantai `INPUT`, yang mengatur paket yang masuk ke host.

- `-j LOG`: Tindakan ini menginstruksikan `iptables` untuk mencatat informasi tentang paket yang cocok dengan aturan ini. Aturan ini tidak memblokir atau mengizinkan paket, hanya mencatat informasi tentangnya.

- `--log-level debug`: Ini menentukan tingkat log yang akan digunakan untuk mencatat. Tingkat `debug` adalah salah satu tingkat log yang paling rinci, yang menyediakan banyak informasi untuk tujuan debugging.

- `--log-prefix 'drop packet'`: Ini menambahkan prefix 'drop packet' ke setiap baris log yang dibuat oleh aturan ini. Prefix ini membantu mengidentifikasi entri log yang dibuat oleh aturan ini.

- `-m limit`: Modul `limit` digunakan untuk membatasi seberapa sering aturan ini dapat mencocokkan paket. Ini mencegah log menjadi terlalu penuh dengan entri berulang.

- `--limit 1/second`: Ini menetapkan bahwa aturan dapat mencocokkan maksimal satu paket per detik. Jadi, jika ada banyak paket yang cocok, hanya satu per detik yang akan dicatat.

- `--limit-burst 10`: Ini menetapkan jumlah "burst" untuk batas. Dalam konteks ini, `iptables` akan memungkinkan hingga 10 paket cocok sekaligus sebelum membatasi pencatatan ke satu paket per detik. Ini berguna untuk situasi di mana ada ledakan singkat dari banyak paket yang cocok.

## Kendala Pengerjaan

$~$
