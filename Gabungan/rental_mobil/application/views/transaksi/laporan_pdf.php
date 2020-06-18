<!DOCTYPE html>
<html lang="en"><head>
    <title></title>
</head><body>
    <h3>Laporan Transaksi</h3>
    <br>
    <table>
        <tr>
            <th>NO</th>
            <th>ID Transaksi</th>
            <th>Nama User</th>
            <th>Tanggal Order</th>
            <th>Total Pembayaran</th>
            <th>Tanggal Pembayaran</th>
            </tr>
            
            <?php 
            $no= 1;
            foreach ($transaksi as $trs): ?>

            <tr>
                <td><?php echo $no++ ?></td>
                <td><?php echo $trs->KODE_TRANSAKSI ?></td>
                <td><?php echo $trs->NAME ?></td>
                <td><?php echo $trs->TGL_ORDER ?></td>
                <td>Rp. <?php echo number_format($trs->TOTAL_PEMBAYARAN) ?></td>
                <td><?php echo $trs->TGL_PEMBAYARAN ?></td>
            </tr>

            <?php endforeach; ?>
            </table>
    
</body></html>