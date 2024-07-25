# Ping Bug Host
### Solusi agar paket vidio dan paket xl lainnya tidak putus-putus

Siapkan salah satu dibawah ini :
1. PC Windows
2. Linux / Termux
3. Openwrt (direct internet pada terminal)

Inti utama dari script ini adalah melakukan ping ke bug host, melalui internet direct (tanpa vpn). Script ini melakukan ping secara berulang-ulang ke hostname, bukan IP. Pada ping biasa, biasanya hostname akan diresolve menjadi ip, dan ping selanjutnya akan terus dilakukan ke ip tersebut. Namun agar bug tersebut tidak bengong, maka kita harus selalu ping ke hostname, bukan ip. Inti utamanya adalah kita harus melakukan resolve bug tersebut di DNS default XL.

# Melalui PC Windows
Cara ini hanya bisa dilakukan jika kalian memiliki dua koneksi WiFi, yaitu koneksi direct internet dari modem, dan juga koneksi vpn proxied dari Openwrt.
1. Taruh file win-pingbughost.ps1 di folder mana saja di komputer
2. Sambungkan laptop/pc windows ke wifi direct (tanpa vpn)
3. Klik kanan file tersebut, pilih "Run with Powershell"
4. Jika sudah berjalan, pastikan script tersebut terus berjalan. Karena jika script berhenti, maka internet akan kembali putus-putus.

# Melalui Termux Android
1. Buka aplikasi VPN pilihan kalian.
2. Masukkan termux ke dalam exclude list
