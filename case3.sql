SELECT kategori.nama as Kategori_Buku,SUM(buku.stock) AS Stock FROM kategori 
INNER JOIN buku ON kategori.id = buku.kategori_id
GROUP BY Kategori_Buku ORDER BY Stock DESC LIMIT 1 ;