# Technichal-Assignment-Intro-Essential-Node.js
Mohon jelaskan apa itu Node.js? Apa perbedannya dengan JavaScript?
----
  * Node.js adalah sebuah runtime environment untuk JavaScript open-source,backend dan cross-platform yang berjalan pada mesin V8 dan mengeksekusi kode JavaScript di luar browser web. Javascript adalah sebuah bahasa pemrograman dan bersifat client-side oriented, sedangkan Node.js adalah runtime yang membuat dapat menggunakan Javascript untuk melakukan berbagai proses di sisi server.
----
Mohon jelaskan arsitektur dari Node.js?
----
  * Node.js dibangun di atas mesin V8 Google, dengan  mengubah kode javascript menjadi kode mesin, hasilnya kemudian dibuat dan dikembalikan ke node.js
  * Dalam I / O Synchronous, Thread (thread hanyalah urutan instruksi) akan menunggu hingga seluruh operasi selesai. Di sisi lain dalam Asynchronous I / O, thread tidak menunggu selama operasi.
  * LIBUV adalah ketergantungan utama lainnya pada node.js, yaitu sebuah open source library dengan fokus kuat pada asynchronous I / O (Input-output), serta mengimplementasikan dua fitur penting yaitu event loop dan thread pool.
  * Terdapat event queue yang berguna sebagai penampung ketika terdapat perintah baru yang akan dieksekusi yang mana dihandle oleh event loop yang akan memeriksa terus menerus, ketika antrian kosong di call stack maka akan menambah antrian baru dari event queue sampai semua perintah selesai di eksekusi.
  * Dengan menggunakan NodeJS kita dapat menjalankan javascript di server side menggunakan terminal command line menggunakan perintah “node”.
 ----
Ape perbedaan antara Built-in Module, External Module, dan Custom Module pada Node.js?
----
  * Built-in module memungkinkan Node JS mentransfer data melalui Hyper Text Transfer Protocol (HTTP).
  * External module memungkinkan penggunaan open source dengan melakukan instalasi module/package dengan npm
  * Custom module adalah sebuah modul yang kita buat sendiri lalu di export, kemudian memasukkan modul tersebut ke dalam file aplikasi utama kita dengan fungsi method require.
----
Sebutkan salah satu contoh dari Built-in Module, External Module, dan Custom Module pada Node.js?
----
  * Contoh Built-in module : var http = require("http");
  * Contoh External module : npm install moment >> penggunaan :var moment = require("moment");
  * Contoh Custom module : 
  exports.hello = function () {
    return "Hello World!";
}; // pada sebuah file helloworld.js >> panggil module: 
var hellow = require("./helloworld");
// menggunakan modul
console.log(hellow.hello());
