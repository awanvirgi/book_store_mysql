-- Menyiapkan data sebagai parent key dari Pembelian nanti
INSERT INTO `Transaksi`(`date`)VALUES ('2023-11-07');

-- hanya menampilkan Data terbaru dari tabel transaksi untuk melihat id yang didapat dalam kasus ini misalnya id nya adalah 11
SELECT * FROM transaksi ORDER BY ID DESC LIMIT 1;

-- Masukan data2 buku yang ingin dibeli berserta jumlahnya,lalu masukan transaksi id yang baru kita buat sebelumnya
INSERT INTO penjualan_buku (buku_id,jumlah,transaksi_id) VALUES
(2,1,11),
(4,1,11),
(7,1,11);

-- menampilkan apa saja yang dibeli
SELECT * FROM penjualan_buku WHERE transaksi_id=11;

-- menghitung total harga yang perlu dibayar
SELECT SUM(buku.harga) as Total_Pembayaran FROM buku INNER JOIN penjualan_buku ON buku.id = penjualan_buku.buku_id WHERE transaksi_id=11;

-- merubah metodenya menjadi tunai ataupun yang lain sesuai metode yang digunakan setelah pembayaran selesai(null saat blom dibayar)
UPDATE transaksi SET metode='Tunai' WHERE id = 11;

-- setelah sudah dibayar maka kita perlu mengurangi stock bukunya sesuai buku yang dibeli
UPDATE buku SET stock=stock - 1 WHERE ID IN (2,4,7);
