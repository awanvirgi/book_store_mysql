-- menghapus table pada suatu database

DROP TABLE penjualan_buku;

-- namun untuk menghapus parent table pada suatu yang menjadi parent dari tabel tidak bisa langsung dihapus
-- perlu menghapus foreign key yang ada disuatu tabel yang terhubung oleh tabel parent
-- dan tidak semena mena langsung hapus kolom tersebut,harus hapus dulu contrant foreign key
-- cara mengetahuinya foreign keynya yaitu dengan queery
SHOW CREATE TABLE buku;

-- lalu hapus foreign keynya terlebih dahulu
DROP FOREIGN KEY buku_IBfk_1;

-- opsional hapus juga kolom yang sebelumnya menjadi foreign key untuk menghindari anomali

-- kalau sudah tinggal hapus aj table parenta yang ingin dihapus sebelumnya

DROP TABLE penulis;

