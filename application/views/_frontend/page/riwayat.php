<section id="breadcrumbs" class="breadcrumbs">
    <div class="container">

        <ol>
            <li><a href="<?php echo site_url('home') ?>">Beranda</a></li>
            <li><a href="#">Riwayat</a></li>
        </ol>
        <h2>Riwayat</h2>

    </div>
</section>
<main id="main">
    <section id="services" class="services">
        <div class="container">
            <h2 class="center-this">RIWAYAT SEWA</h2>
            <br>
            <?php if ($this->session->flashdata('alert')) {
                echo $this->session->flashdata('alert');
                unset($_SESSION['alert']);
            }
            ?>
            <div class="card-body shadow">
                <div class="table responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th style="width: 60px">No</th>
                                <th style="width: 12%">#Aksi</th>
                                <th>Id Transaksi</th>
                                <th>Total Bayar</th>
                                <th>Status</th>
                                <th>Keterangan</th>
                                <th>Waktu Transaksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if ($transaksi) {
                                $no = 1;
                                foreach ($transaksi as $key) {

                            ?>
                                    <tr>
                                        <td><?php echo $no + $numbers; ?></td>
                                        <td>
                                            <button class="btn btn-xs btn-flat btn-success" data-toggle="modal" data-target="#modalDetail<?php echo $key->transaksi_id ?>">Detail</button>
                                            <button class="btn btn-xs btn-flat btn-primary" data-toggle="modal" data-target="#modalRating<?php echo $key->transaksi_id ?>">Selesai</button>
                                        </td>
                                        <td><?php echo $key->transaksi_id; ?></td>
                                        <td><?php echo indonesiaCurrency($key->transaksi_total_harga); ?></td>
                                        <td><?php echo $key->transaksi_status; ?></td>
                                        <td><?php echo $key->transaksi_status_ket; ?></td>
                                        <td><?php echo $key->createtime; ?></td>
                                    </tr>

                                    <div class="modal fade" id="modalDetail<?php echo $key->transaksi_id; ?>" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Detail Alat</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <i aria-hidden="true" class="ki ki-close"></i>
                                                    </button>
                                                </div>
                                                <?php echo form_open_multipart("page/sewa") ?>
                                                <div class="modal-body">
                                                    <center>
                                                        <img src="<?php echo base_url(); ?>upload/produk/<?php echo $key->produk_gambar; ?>" style="width: 200px;">
                                                    </center>
                                                    <div class="form-group">
                                                        <label for=""><b style="color: black">Nama Alat</b></label>
                                                        <?php echo csrf(); ?>
                                                        <input type="hidden" class="form-control" name="produk_id" value="<?php echo $key->produk_id; ?>">
                                                        <input type="hidden" class="form-control" name="produk_stok" value="<?php echo $key->produk_stok; ?>">
                                                        <input type="text" class="form-control" value="<?php echo $key->produk_nama; ?>" readonly>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for=""><b style="color: black">Harga Sewa/Jam <span style="color:red">*</span></b></label>
                                                        <input id="harga" type="hidden" class="form-control" value="<?php echo $key->produk_harga; ?>">
                                                        <input type="text" class="form-control" value="<?php echo indonesiaCurrency($key->produk_harga); ?>" readonly>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for=""><b style="color: black">Waktu Sewa (Jam) <span style="color:red">*</span></b></label>
                                                        <input id="waktu" type="text" class="form-control" placeholder="Masukkan Jumlah Jam Sewa" name="transaksi_jam" readonly value="<?php echo $key->transaksi_jam . ' Jam'; ?>" required="required">
                                                    </div>

                                                    <div class="form-group">
                                                        <label for=""><b style="color: black">Total Bayar (Rp) <span style="color:red">*</span></b></label>
                                                        <input type="text" class="form-control" value="<?php echo indonesiaCurrency($key->transaksi_total_harga); ?>" name="transaksi_total_harga" readonly>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <?php echo form_close(); ?>
                                                    <button type="button" class="btn btn-light-primary font-weight-bold" data-dismiss="modal">Kembali</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Modal Rating-->
                                    <div class="modal fade" id="modalRating<?php echo $key->transaksi_id ?>" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Pengembalian Alat</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <i aria-hidden="true" class="ki ki-close"></i>
                                                    </button>
                                                </div>
                                                <?php echo form_open("page/rating") ?>
                                                <div class="modal-body">
                                                    Mengembalikan alat : <?php echo $key->produk_nama; ?> pada penyewa. <br> Silahkan memberikan rating pada alat yang telah disewakan, Terimakasih.
                                                    <?php echo csrf(); ?>
                                                    <input type="hidden" class="form-control" name="transaksi_id" id="tes" required="required" value="<?php echo $key->transaksi_id; ?>">
                                                    <br>

                                                    <div class="div">
                                                        <input type="hidden" id="php1<?php echo $key->transaksi_id ?>_hidden" value="1">
                                                        <img src="../assets/star/star1.png" onclick="change(this.id,'<?php echo $key->transaksi_id ?>');" id="php1<?php echo $key->transaksi_id ?>" class="php" width="40px">
                                                        <input type="hidden" id="php2<?php echo $key->transaksi_id ?>_hidden" value="2">
                                                        <img src="../assets/star/star1.png" onclick="change(this.id,'<?php echo $key->transaksi_id ?>');" id="php2<?php echo $key->transaksi_id ?>" class="php" width="40px">
                                                        <input type="hidden" id="php3<?php echo $key->transaksi_id ?>_hidden" value="3">
                                                        <img src="../assets/star/star1.png" onclick="change(this.id,'<?php echo $key->transaksi_id ?>');" id="php3<?php echo $key->transaksi_id ?>" class="php" width="40px">
                                                        <input type="hidden" id="php4<?php echo $key->transaksi_id ?>_hidden" value="4">
                                                        <img src="../assets/star/star1.png" onclick="change(this.id,'<?php echo $key->transaksi_id ?>');" id="php4<?php echo $key->transaksi_id ?>" class="php" width="40px">
                                                        <input type="hidden" id="php5<?php echo $key->transaksi_id ?>_hidden" value="5">
                                                        <img src="../assets/star/star1.png" onclick="change(this.id,'<?php echo $key->transaksi_id ?>');" id="php5<?php echo $key->transaksi_id ?>" class="php" width="40px">
                                                    </div>

                                                    <input type="hidden" id="nilai_rating<?php echo $key->transaksi_id ?>" name="transaksi_rating">
                                                    <input type="hidden" id="nilai_rating_old<?php echo $key->transaksi_id ?>" name="transaksi_rating_old" value="<?php echo $key->transaksi_rating ?>">


                                                </div>
                                                <div class="modal-footer">
                                                    <button type="submit" class="btn btn-success font-weight-bold">Selesai</button>
                                                    <?php echo form_close(); ?>
                                                    <button type="button" class="btn btn-light-primary font-weight-bold" data-dismiss="modal">Batal</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            <?php $no++;
                                }
                            } ?>
                            </tbdoy>
                    </table>
                </div>
            </div>
        </div>
    </section>
</main>

<script type="text/javascript">
    // alert(document.getElementById('tes').value);
    var id_transaksi = document.getElementById('tes').value;
    var ab = document.getElementById('nilai_rating_old' + id_transaksi).value;
    for (var i = ab; i >= 1; i--) {
        document.getElementById('php' + i + id_transaksi).src = "<?php echo base_url() . 'assets/star/star2.png'; ?>";
    }
    var id = parseInt(ab) + 1;
    for (var j = id; j <= 5; j++) {
        document.getElementById('php' + j + id_transaksi).src = "<?php echo base_url() . 'assets/star/star1.png'; ?>";
    }


    function change(id, trid) {
        var cname = document.getElementById(id).className;

        var ab = document.getElementById(id + "_hidden").value;
        document.getElementById('nilai_rating' + trid).value = ab;
        for (var i = ab; i >= 1; i--) {
            document.getElementById(cname + i + trid).src = "<?php echo base_url() . 'assets/star/star2.png'; ?>";
        }
        var id = parseInt(ab) + 1;
        for (var j = id; j <= 5; j++) {
            document.getElementById(cname + j + trid).src = "<?php echo base_url() . 'assets/star/star1.png'; ?>";
        }
    }
</script>