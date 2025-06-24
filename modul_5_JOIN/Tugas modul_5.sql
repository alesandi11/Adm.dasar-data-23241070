-- NAMA : MARTIANO ALESANDRI JEDEOT 
-- NIM : 23241070  
-- KELAS : B 

-- tugas mandiri 
-- 1 buatlah join untuk ketiga table yang terdapat pada dqlabmartbasic dengen ENNER JOIN 
SELECT * FROM pelanggan p
JOIN tr_penjualan_dqlab t ON TRUE
JOIN produk pr
ON TRUE;

-- 2 buatlah join untuk ketiga table dengan urutakan ms_pelanggan ,tr_penjualan dan ms produk
-- yang dapat pada dqlabmartbasic dengan LEET JOIN ,kemudian filter untuk qty yng tidak bernilai NULL dengan operator IS NOT NULL
SELECT p.kode_pelanggan, p.nama_pelanggan, t.kode_transaksi, t.tgl_transaksi, t.qty, pr.kode_produk, pr.nama_produk, pr.kategori_produk,
    pr.harga AS harga_produk
FROM pelanggan p
LEFT JOIN tr_penjualan_dqlab t ON p.kode_pelanggan = t.kode_pelanggan
LEFT JOIN produk pr ON t.kode_produk = pr.kode_produk
WHERE t.qty IS NOT NULL;


-- 3 buatlah join untuk ketiga teble dengan urutkan ms_pelanggan,tr_penjualan dan ms_produk yang terdapat pada dqlabmartbasic dengan INNER JOIN, 
-- kemudian tampilkan gruping untuk kolom katagori produk dan penjumbalan qty
SELECT pr.kategori_produk, SUM(t.qty) AS total_qty FROM pelanggan AS p
INNER JOIN 
    tr_penjualan_dqlab AS t ON p.kode_pelanggan = t.kode_pelanggan
INNER JOIN produk AS pr ON t.kode_produk = pr.kode_produk
GROUP BY pr.kategori_produk;

-- latihan khusus: cobalah lakukan JOIN ms_produk dengan table ms_produk juga dengan kolom relatonship kode_produk(benar,anda tidak salah baca),
-- ini kita lakukan dengan table sendiri yang memeang bisa di lakukan ,jangan sampai jangan lupa gunakan alias 
SELECT 
    a.nama_produk AS produk_utama, 
    b.nama_produk AS produk_sekategori
FROM produk a
JOIN produk b ON a.kategori_produk = b.kategori_produk AND a.kode_produk != b.kode_produk;
