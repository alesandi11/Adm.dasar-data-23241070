CREATE DATABASE jual_pulsa;
USE jual_pulsa;

CREATE TABLE Owner (
    Id_Owner VARCHAR(10) PRIMARY KEY,
    Nama_Owner VARCHAR(100),
    NIK_Owner VARCHAR(20),
    No_Telp_Owner VARCHAR(20),
    Alamat_Owner TEXT,
    Jenis_Kelamin_Owner VARCHAR(10),
    Tanggal_Lahir_Owner DATE
);

CREATE TABLE Supplier (
    Id_Supplier VARCHAR(10) PRIMARY KEY,
    Nama_Supplier VARCHAR(100),
    No_Telp VARCHAR(20),
    Alamat TEXT
);

CREATE TABLE Produk (
    Id_Produk VARCHAR(10) PRIMARY KEY,
    Nama_Produk VARCHAR(50),
    Kategori VARCHAR(50),
    Harga INT,
    Id_Supplier VARCHAR(10),
    FOREIGN KEY (Id_Supplier) REFERENCES Supplier(Id_Supplier)
);

CREATE TABLE Pelanggan (
    Id_Pelanggan VARCHAR(10) PRIMARY KEY,
    Nama_Pelanggan VARCHAR(100),
    No_Telp VARCHAR(20)
);

CREATE TABLE Transaksi (
    Id_Transaksi VARCHAR(10) PRIMARY KEY,
    Id_Pelanggan VARCHAR(10),
    Id_Produk VARCHAR(10),
    Tanggal DATE,
    Metode_Pembayaran ENUM('cash', 'transfer'),
    FOREIGN KEY (Id_Pelanggan) REFERENCES Pelanggan(Id_Pelanggan),
    FOREIGN KEY (Id_Produk) REFERENCES Produk(Id_Produk)
);

INSERT INTO Owner  VALUES 
('001', 'sandi jt', '5210074211', '087888899123', 
 'jl.situ no 1000 kel.taman angker kec.madura kota maluku. Prov. NTB.',
 'laki laki', '2003-11-11');

INSERT INTO Supplier VALUES 
('S001', 'CV Jaya Cell', '0811000001', 'Jl. Merdeka No. 10'),
('S002', 'PT Pulsa Kita', '0811000002', 'Jl. Veteran No. 12'),
('S003', 'UD Data Net', '0811000003', 'Jl. Mawar No. 15');

INSERT INTO Produk VALUES 
('P001', 'voucher data harian', 'voucher data', 5000, 'S001'),
('P002', 'voucher data mingguan', 'voucher data', 15000, 'S002'),
('P003', 'voucher data bulanan', 'voucher data', 50000, 'S002'),
('P004', 'pulsa 5k', 'pulsa', 5000, 'S003'),
('P005', 'pulsa 10k', 'pulsa', 10000, 'S001'),
('P006', 'pulsa 20k', 'pulsa', 20000, 'S003');

INSERT INTO Pelanggan  VALUES 
('PL001', 'Ahmad', '08123456789'),
('PL002', 'Budi', '08234567890'),
('PL003', 'Citra', '08345678901'),
('PL004', 'Dian', '08456789012'),
('PL005', 'Eka', '08567890123'),
('PL006', 'Fajar', '08678901234');

INSERT INTO Transaksi  VALUES 
('T001', 'PL001', 'P004', '2025-04-20', 'cash'),
('T002', 'PL002', 'P006', '2025-04-20', 'transfer'),
('T003', 'PL003', 'P003', '2025-04-21', 'transfer'),
('T004', 'PL004', 'P001', '2025-04-21', 'cash'),
('T005', 'PL005', 'P002', '2025-04-21', 'cash'),
('T006', 'PL006', 'P005', '2025-04-21', 'transfer');

SELECT * FROM  Owner;
SELECT * FROM  Supplier;
SELECT * FROM  Produk;
SELECT * FROM  Pelanggan;
SELECT * FROM  Transaksi;


-- =======================
-- Tugas Modul 2(SELECT)
-- =======================


-- Melihat Nama_Owner dan No_Telp_Owner dari tabel Owner
SELECT Nama_Owner, No_Telp_Owner FROM Owner;


-- Melihat Id_Owner, Nama_Owner, dan No_Telp_Owner dari tabel Owner
SELECT Id_Owner, Nama_Owner, No_Telp_Owner FROM Owner;


-- Mengambil daftar semua nama produk dari tabel Produk.
SELECT Nama_Produk FROM Produk;


-- Mengambil lebih dari satu kolom: Nama_Produk dan Harga dari tabel Produk
SELECT Nama_Produk, Harga FROM Produk;


-- Mengambil Id_Produk dan Nama_Produk dari tabel Produk
SELECT Id_Produk, Nama_Produk FROM Produk;


-- Menggunakan nama database dan tabel sebagai prefix untuk kolom Nama_Produk
SELECT jual_pulsa.Produk.Nama_Produk FROM Produk;


-- Mengganti nama kolom Nama_Produk menjadi ALIAS 'np'
SELECT Nama_Produk AS np FROM Produk;
-- Tanpa AS
SELECT Nama_Produk np FROM Produk;


-- Mengkombinasikan Prefix dan Alias
SELECT prd.Nama_Produk FROM Produk AS prd;


-- Melihat Nama_Pelanggan dan No_Telp dari tabel Pelanggan
SELECT Nama_Pelanggan, No_Telp FROM Pelanggan;


-- Melihat Nama_Supplier dan No_Telp dari tabel Supplier
SELECT Nama_Supplier, No_Telp FROM Supplier;


-- Melihat Id_Transaksi, Tanggal, dari tabel Transaksi
SELECT Id_Transaksi, Tanggal FROM Transaksi;







