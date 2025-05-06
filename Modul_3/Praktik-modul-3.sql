-- Modul    : 3 Nilai Literal, Operator, Fungsi, Date, dan Klausal WHERE
-- Nama     : Martiano Alesandri Jedeot
-- NIM      : 23241070
-- Kelas    : B

-- menggunakan database
USE pti_mart;

--- Praktek 1
SELECT 77;				-- Menampilkan angka literal 77 sebagai hasil query.
SELECT 77 AS angka;		-- Menampilkan angka 77 dengan alias angka.

--- Praktek 2
-- Menampilkan angka 77, nilai boolean true, dan string 'PTI' dengan alias yang sesuai.
SELECT 77 AS angka, true AS nilai_logika, 'PTI' AS teks;

--- Praktek 3
-- Menampilkan nilai NULL dengan alias kosong.
SELECT NULL AS kosong;

--- Praktek 4
-- Menampilkan hasil operasi modulus (5 % 2), pembagian biasa (5 / 2), dan pembagian integer (5 DIV 2).
SELECT 5%2 AS sisa_bagi, 5/2 AS hasil_bagi_1,
5 DIV 2 AS hasil_bagi_2;

--- Latihan Mandiri 1
-- Menghitung hasil perkalian 4 * 2.
SELECT 4*2 AS hasil_kali;

-- Menghitung hasil dari (4*8) % 7.
SELECT (4*8)%7 AS hasil_mod1;

-- Menghitung hasil dari (4*8) MOD 7 (modulus).
SELECT (4*8) MOD 7 AS hasil_mod2;

--- Praktek 5
-- Menghitung total pembelian dengan mengalikan jumlah (qty) dan harga (harga) dari tabel tr_penjualan.
SELECT qty*harga AS total_beli FROM tr_penjualan;

--- Praktek 6
-- Membandingkan berbagai nilai menggunakan operator perbandingan seperti =, <>, !=, >, untuk menampilkan hasil perbandingan logika.
SELECT 5=5 AS sama, 5<>5 AS tidak_sama1, 5<>4 AS tidak_sama2,
       5!=5 AS tidak_sama3, 5!=4 AS tidak_sama4, 5>4 AS lebih_besar;

--- Latihan Mandiri 2
-- lakukan perbandingan 1 = true
SELECT 1 = TRUE AS satu_sama_true;

-- lakukan perbandingan 1 = false
SELECT 1 = FALSE AS satu_sama_false;

-- lakukan perbandingan 5 >= 5
SELECT 5 >= 5 AS lebih_atau_sama;

-- lakukan perbandingan 5.2 = 5.20000
SELECT 5.2 = 5.20000 AS desimal_sama;

-- lakukan perbandingan NULL = 1
SELECT NULL = 1 AS null_sama_satu;

-- lakukan perbandingan NULL = NULL
SELECT NULL = NULL AS null_sama_null;

--- Praktek 7
-- Menampilkan nama produk dan kondisi apakah qty lebih besar dari 3.
SELECT nama_produk, qty > 3 AS lebih_dari_3 FROM tr_penjualan;

--- Praktek 8
-- Menggunakan fungsi matematika untuk menghasilkan hasil pangkat (POW), pembulatan angka (ROUND), lantai (FLOOR), dan atap (CEILING).
SELECT POW(3,2) AS pangkat, ROUND(3.14) AS bulat1, ROUND(3.54) AS bulat2, 
	ROUND(3.155, 1) AS bulat_des1, ROUND(3.155, 2) AS bulat_des2,
	FLOOR(4.28) AS lantai1, FLOOR(4.78) AS lantai2, 
	CEILING(4.39) AS atap1, CEILING(4.55) AS atap2;

--- Praktek 9
-- Menggunakan fungsi waktu seperti NOW(), YEAR(), DATEDIFF(), dan DAY() untuk ekstraksi dan manipulasi tanggal.
SELECT NOW() AS sekarang, 
       YEAR('2022-05-03') AS tahun,
       DATEDIFF('2022-07-22', '2022-05-03') AS selisih_hari,
       DAY('2022-05-03') AS hari;

--- Latihan Mandiri 3
-- Hitung selisih tanggal '2022-07-23' dengan tanggal saat ini
SELECT DATEDIFF(NOW(), '2022-07-23') AS selisih_dgn_sekarang;

-- Ekstrak elemen tahun dari tanggal ini '2022-07-23'
SELECT YEAR('2022-07-23') AS tahun;

-- Ekstrak eleman bulan dari tanggal ini '2022-07-23'
SELECT MONTH('2022-07-23') AS bulan;

-- Ekstrak elemen hari dari date ini '2022-07-23'
SELECT DAY('2022-07-23') AS hari;

-- Ekstrak elemen tahun dari tanggal saat ini
SELECT YEAR(NOW()) AS tahun_sekarang;

--- Praktek 11
-- enampilkan nama produk dan quantity (qty) dari tabel tr_penjualan_dqlab di mana quantity lebih besar dari 3.
SELECT nama_produk, qty 
FROM tr_penjualan_dqlab WHERE qty>3;

--- Praktek 12
-- Menampilkan nama produk, quantity, dan tanggal transaksi yang memenuhi dua kriteria: quantity lebih besar dari 3 dan transaksi terjadi di bulan Juni.
SELECT nama_produk, qty, tgl_transaksi
FROM tr_penjualan_dqlab 
WHERE qty>3 AND MONTH(tgl_transaksi)=6;

--- Praktek 13
-- Menampilkan nama produk dengan kondisi nama produk sama dengan 'Flaskdisk 32 GB'.
SELECT nama_produk, qty, tgl_transaksi
FROM tr_penjualan_dqlab 
WHERE nama_produk = 'Flaskdisk 32 GB';

--- Praktek 14
-- Menampilkan nama produk yang dimulai dengan huruf f.
SELECT nama_produk FROM tr_penjualan_dqlab 
WHERE nama_produk LIKE 'f%';

--- Latihan Mandiri 4
-- Ambil nama_produk yang memiliki karakter kedua ‘a’ pada table tr_penjualan
SELECT nama_produk FROM tr_penjualan WHERE nama_produk LIKE '_a%';

-- Ambil kategori_produk yang mengandung huruf ‘t’ pada table ms_produk
SELECT kategori_produk FROM ms_produk WHERE kategori_produk LIKE '%t%';

-- Ambil kategori_produk yang mengandung karakter ‘un’ pada table ms_produk
SELECT kategori_produk FROM ms_produk WHERE kategori_produk LIKE '%un%';

--- Praktek 15
-- Menampilkan nama produk yang dimulai dengan f dan quantity lebih besar dari 2.
SELECT nama_produk 
FROM tr_penjualan_dqlab 
WHERE nama_produk LIKE 'f%' AND qty > 2;
