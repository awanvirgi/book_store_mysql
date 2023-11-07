SELECT buku.nama as Nama_Buku ,count(sell.buku_id) as Jumlah_beli FROM buku 
INNER JOIN penjualan_buku as sell ON buku.id = sell.buku_id 
GROUP BY Nama_Buku ORDER BY Jumlah_beli DESC LIMIT 3;