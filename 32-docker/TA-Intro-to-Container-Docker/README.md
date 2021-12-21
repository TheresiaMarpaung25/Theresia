# TA-Intro-to-Container-Docker

# 1 Jelaskan apa yang dimaksud dengan container pada docker !
Container adalah sebuah wadah yang digunakan pada aplikasi yang berjalan pada sebuah software yaitu docker

# 2 Jelaskan apa perbedaan antara konsep container dengan virtual machine !
penggunaan virtual machine menghabiskan banyak resource yang kinerjanya berjalan pada OS di dalam sebuah OS, sedangkan container memungkinkan untuk membuat aplikasi dan mendeploynya menggunakan OS yang ada di komputer itu sendiri sehinggga menggunakan resource menjadi lebih kecil

# 3 Apa yang dimaksud dengan docker file ?
Docker file adalah file teks yang berisi semua perintah yang bisa dijalankan user pada baris perintah untuk membuat image atau blueprint untuk membuat sebuah image.

# 4 Apa yang dimaksud dengan docker registery ?
Docker registry adalah sebuah wadah untuk menyimpan (upload/ download) docker image

# 5 Jelaskan bagaimana cara untuk menjalankan lebih dari 1 container secara bersamaan dan saling terhubung !
* Buat file NAMA_FILE.yaml di dalam project yang kamu buat
* Tulis beberapa perintah ke dalam sana
* Jalankan menggunakan perintah docker-compose NAMA_FILE.yaml up
