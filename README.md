# Ping Bug Host
### Solusi agar paket vidio dan paket xl lainnya tidak putus-putus

Siapkan salah satu dibawah ini :
1. PC Windows
2. Linux / Termux
3. Openwrt (direct internet pada terminal)

Inti utama dari script ini adalah melakukan ping ke bug host, melalui internet direct (tanpa vpn). Script ini melakukan ping secara berulang-ulang ke hostname, bukan IP. 

Pada ping biasa, biasanya hostname akan diresolve menjadi ip, dan ping selanjutnya akan terus dilakukan ke ip tersebut. 

Namun agar bug tersebut tidak bengong, maka kita harus selalu ping ke hostname, bukan ip. 

Inti utamanya adalah, bug tersebut harus di resolve ke dns xl secara berkala.

# Melalui PC Windows
Cara ini hanya bisa dilakukan jika kalian memiliki dua koneksi WiFi, yaitu koneksi direct internet dari modem, dan juga koneksi vpn proxied dari Openwrt.
1. Taruh file win-pingbughost.ps1 di folder mana saja di komputer
2. Sambungkan laptop/pc windows ke wifi direct (tanpa vpn)
3. Klik kanan file tersebut, pilih "Run with Powershell"
4. Jika sudah berjalan, pastikan script tersebut terus berjalan. Karena jika script berhenti, maka internet akan kembali putus-putus.

# Melalui Termux Android
1. Buka termux
2. Masukkan command
```
pkg install wget -y
wget https://raw.githubusercontent.com/rohmatsb/pingbughost/main/linux-pingbughost.sh && chmod +x linux-pingbughost.sh
```
3. Selanjutnya buka aplikasi vpn pilihan kalian, masukkan termux dalam exclude list, agar mendapatkan koneksi direct.
4. Jalankan command
```   
./linux-pingbughost.sh
```
5. Pastikan script selalu berjalan di latar belakang

# Melalui Linux terminal
Info : Untuk linux terminal bisa menggunakan cara yang hampir sama dengan Termux diatas\
Catatan : ganti "pkg install wget -y" dengan paket manager distro kalian.\
Contoh : "sudo apt install wget -y" "sudo dnf install wget -y"

# Melalui Terminal Openwrt
Info : Cara ini baru dites menggunakan Passwall Openwrt

Step 1 :
Jalankan perintah dibawah (install wget dan nohup)
```
opkg install wget coreutils -y
```
Step 2 :
Download dan berikan izin eksekusi
```
wget https://raw.githubusercontent.com/rohmatsb/pingbughost/main/linux-pingbughost.sh && chmod +x linux-pingbughost.sh
```

Step 3 :
1. Masuk ke bagian Services > Passwall > Basic Setings > Mode
2. Router Localhost TCP Proxy Mode = No Proxy
3. Router Localhost UDP Proxy Mode = No Proxy
4. Save Apply
5. Dengan cara diatas terminal openwrt akan mendapatkan koneksi direct.
6. Jalankan script dengan command
```
nohup ./linux-pingbughost.sh
```

Catatan :
- Untuk menghentikan script, cukup reboot openwrt nya
- Jika listrik mati, script harus dijalankan ulang