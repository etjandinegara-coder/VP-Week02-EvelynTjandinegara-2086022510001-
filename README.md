How many widget classes did you extract, and for each one: was the // trigger reuse, or readability? // 
= saya membuat 5 kelas widget, yaitu:
  1. class 'MenuHeader' termasuk readability agar kode lebih mudah dibaca. class ini untuk widget bagian header aplikasi.
  2. class 'MenuSearchField' termasuk readability. class ini berisi kolom pencarian menu.
  3. class 'MenuCard' termasuk reuse yang digunakan berulang kali. class ini agar menampilkan satu menu yang sama.
  4. class 'EmptyMenuState' termasuk readability. class ini untuk menampilkan pesan ketika saat mencari tidak ada menu yang dicari.
  5. class 'OrderTotalBar' termasuk readability. class ini untuk menampilkan total harga dan tombol simpan. 

Which piece of state did you nearly push down into a child widget, and // what would have broken if you had?
= state yang hampir di pindahkan ke child widget salah satunya ada '_quantities', karena tombol tambah dan kurang berada di dalam class 'MenuCard' lalu setelah melihat jumlah pesanan juga dibutuhkan oleh class 'MenuScreen' di main.dart  untuk menghitung total harga dan menyimpan seluruh pesanan. Jika setiap 'MenuCard' mengelola jumlahnya sendiri, data pesanan akan tersebar dan parent akan susah untuk menghitung total seluruh menu jadi sebaiknya '_quantities' tetap dikelola di main.dart, sedangkan class 'MenuCard' cukup menerima data jumlah dan callback dari parent.
