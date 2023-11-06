-- Membuat tabel untuk menyimpan penulis dari buku
CREATE TABLE `penulis`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nama` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) UNIQUE,
    `tanggal_lahir` DATE
);

-- Membuat tabel untuk menyimpan kategori dari buku
CREATE TABLE `kategori`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nama` VARCHAR(255) NOT NULL,
    `deskripsi` TEXT,
    `status_aktif` BOOLEAN DEFAULT TRUE
);

-- Membuat tabel untuk menyimpan tahun tahun terbit buku
CREATE TABLE `tahun`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`tahun` INT NOT NULL,
	`musim` VARCHAR(20),
	`status_aktif` BOOLEAN DEFAULT TRUE
);

-- Membuat Tabel untuk menyimpan Detail dari Buku
CREATE TABLE `buku`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nama` VARCHAR(255) NOT NULL,
    `kategori_id` INT NOT NULL,
    `penulis_id` INT NOT NULL,    
    `tahun_id` INT NOT NULL,
    `harga` INT NOT NULL,
    `stock` INT NOT NULL,
    FOREIGN key (penulis_id) REFERENCES penulis(id),
    FOREIGN KEY (tahun_id) REFERENCES tahun(id),
    FOREIGN KEY (kategori_id) REFERENCES kategori(id)
);

-- Membuat tabel untuk menyimpan data Transaksi
CREATE TABLE `transaksi`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `date` date NOT NULL,
    `metode` ENUM("Tunai","Kartu Kredit","Transfer Bank") NOT NULL
);

-- Membuat tabel untuk menyimpan setiap transaksi per buku
CREATE TABLE `penjualan_buku`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `buku_id` INT NOT NULL,
    `jumlah` INT NOT NULL,
    `transaksi_id` INT NOT NULL,
    FOREIGN KEY(buku_id) REFERENCES buku(id),
    FOREIGN KEY(transaksi_id) REFERENCES transaksi(id)
);
