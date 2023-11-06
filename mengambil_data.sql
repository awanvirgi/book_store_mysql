-- Mengambil data pada semua kolom
SELECT * FROM buku;

-- mengambil data pada beberapa kolom dan diurutkan stock besar ke kecil
SELECT nama,stock from buku ORDER BY stock DESC;

-- mengambil data dengan nama kolom alias dan diambil berdasarkan data dan kondisi tertentu
SELECT date as Waktu_Transaksi,metode FROM transaksi WHERE metode='Tunai';

-- mengambil data berdasarkan data dengan spesifik karakter tertentu dengan pengunaan logika
SELECT tahun,musim FROM tahun WHERE tahun LIKE '__23' or TAHUN LIKE '%20';

-- mengambil data dengan group dan penggunaan join dengan menggunakan logika
SELECT kategori.nama,count(buku.kategori_id)FROM buku LEFT JOIN kategori ON buku.kategori_id = kategori.id
WHERE NOT kategori.nama = 'Puisi'
GROUP BY kategori.nama;