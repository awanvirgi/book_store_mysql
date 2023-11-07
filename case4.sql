SELECT MONTH(t.date) AS Bulan,AVG(pbb.Harga) AS Rata_Rata FROM transaksi t 
INNER JOIN (
            SELECT pb.transaksi_id as pb_id, SUM(buku.harga*pb.jumlah) as Harga FROM buku 
            INNER JOIN penjualan_buku pb ON buku.id = pb.buku_id GROUP BY pb_id
) pbb on t.id = pbb.pb_id WHERE MONTH(t.date) = 10 GROUP BY MONTH(t.date);