-- nama : Martiano Alesandri jedeot
-- nim : 23241070
-- kelas : B
-- modul 5 JOIN UNION LIMIT

-- menggunakan database
USE pti_mart;

-- JOIN
-- menggunkan dua buah  table berdasarkan kolom yang sama 

-- praktek 1
-- ambil nama pelanggan yang pernah bertranksaksi 
-- artinya ambil kolom kode_pelanggan, nama_pelanggan,dan qty dari 
-- penggabungan table penjualan dan table pelanggan 

SELECT tp.kode_pelanggan,mp.nama_pelanggan,tp.qty
FROM tr_penjualan_dqlab as tp
JOIN pelanggan as mp 
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- praktek 2
-- mengabugkan dua table tanpa memperhatikan rettiona; keys 
-- artinya ambil kolom kode_pelanggan, nama_pelanggan,dan qty dari 
-- penggabungan table penjualan dan table pelanggan 
-- memperhatikan kolom yang menjadi primary kay

SELECT tp.kode_pelanggan,  mp.nama_pelanggan, tp.qty
FROM tr_penjualan_dqlab AS tp
JOIN pelanggan AS mp
ON true;
-- INER join
-- join yang menggambil data dari dari  dua sisi table yang berhubung 

-- praktek 3
-- ambil kode pelanggan ,nama pelanggan, nama produk ,dan qty
-- dari hasil join table penjualan dan table pelanggan 
SELECT tp.kode_pelanggan, mp.nama_pelanggan ,tp.nama_produk,tp.qty
FROM tr_penjualan_dqlab AS tp
INNER JOIN pelanggan AS mp 
ON tp.kode_pelanggan = mp.kode_pelanggan;