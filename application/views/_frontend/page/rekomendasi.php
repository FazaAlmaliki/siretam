<section id="breadcrumbs" class="breadcrumbs">
    <div class="container">

        <ol>
            <li><a href="<?php echo site_url('home') ?>">Beranda</a></li>
            <li><a href="#">Produk</a></li>
            <li><a href="#">Rekomendasi</a></li>

        </ol>
        <h2>Rekomendasi</h2>

    </div>
</section>
<main id="main">

    <section id="services" class="services">
        <div class="container">
            <div class="sidebar-item search-form">
                <?php echo form_open("page/produk_search/" . $this->uri->segment(3), "class='form-inline'"); ?>
                <input type="text" class="form-control" style="width:80%" placeholder="Cari Nama Alat" name="key">
                <button class="btn btn-danger" type="submit">Search </button>
                <?php echo form_close(); ?>
            </div>
            <br>
            <?php if ($this->session->flashdata('alert')) {
                echo $this->session->flashdata('alert');
                unset($_SESSION['alert']);
            }

            if ($this->uri->segment(2) == "produk_search") {
                echo "Kata Kunci Pencarian : <span class='label label-danger label-inline font-weight-lighter mr-2'>" . $search . "</span>
            <hr style='border: 0.5px dashed #d2d6de'>";
            }
            ?>

            <section id="blog" class="blog">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 entries">
                            <div class="row">
                                <?php
                                if ($rekomendasi) {
                                    foreach ($produk as $n) {
                                        foreach ($rekomendasi as $r => $s) {
                                            if ($n->produk_nama == $r) {
                                ?>
                                                <div class="col-lg-4">
                                                    <article class="entry">
                                                        <div class="entry-img">
                                                            <img src="<?php echo base_url(); ?>upload/produk/<?php echo $n->produk_gambar; ?>" alt="" class="img-fluid">
                                                        </div>

                                                        <h2 class="entry-title">
                                                            <a href="#" style="font-size: 15px;"><?php echo $n->produk_nama; ?></a>
                                                        </h2>
                                                        <p style="color:black; font-size:medium"><?= $n->supplier_nama; ?></p>

                                                        <div class="entry-meta" style="color:black;font-size:12px;">
                                                            <ul>
                                                                <li class="d-flex align-items-center"> <i class="icofont-money"></i> <b><?php echo indonesiaCurrency($n->produk_harga) . ' / Jam'; ?></b>&nbsp;&nbsp;
                                                                    <?php if ($n->produk_stok > 3) { ?>
                                                                        <b class="badge badge-success"><?php echo 'Stock ' . $n->produk_stok; ?></b>
                                                                    <?php } else { ?>
                                                                        <b class="badge badge-danger"><?php echo 'Stock ' . $n->produk_stok; ?></b>
                                                                    <?php } ?>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <?php
                                                        $ambil_rating = 0;
                                                        $jlm_transaksi = 0;
                                                        foreach ($transaksi as $value) {
                                                            if ($n->produk_id == $value->produk_id) {
                                                                $ambil_rating += $value->transaksi_rating;
                                                                $jlm_transaksi++;
                                                            }
                                                        }
                                                        $rating_p = $ambil_rating == 0 ? 0 : round($ambil_rating / $jlm_transaksi, 1);
                                                        ?>
                                                        <p style="color:black; font-size:medium"><?= $rating_p . ' / 5'; ?></p>
                                                        <div class="mb-3">
                                                            <?php if ($rating_p >= 5) { ?>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                            <?php } elseif ($rating_p >= 4) { ?>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star"></i>
                                                            <?php } elseif ($rating_p >= 3) { ?>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star"></i>
                                                                <i class="icofont-star"></i>
                                                            <?php } elseif ($rating_p >= 2) { ?>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star"></i>
                                                                <i class="icofont-star"></i>
                                                                <i class="icofont-star"></i>
                                                            <?php } elseif ($rating_p >= 1) { ?>
                                                                <i class="icofont-star" style="color:yellow"></i>
                                                                <i class="icofont-star"></i>
                                                                <i class="icofont-star"></i>
                                                                <i class="icofont-star"></i>
                                                                <i class="icofont-star"></i>
                                                            <?php } else { ?>
                                                                <i class="icofont-star"></i>
                                                                <i class="icofont-star"></i>
                                                                <i class="icofont-star"></i>
                                                                <i class="icofont-star"></i>
                                                                <i class="icofont-star"></i>
                                                            <?php }  ?>

                                                        </div>

                                                        <div class="entry-content">
                                                            <div class="read-more">
                                                                <?php if (!$this->session->userdata('user_id')) {
                                                                    if ($n->produk_stok > 0) { ?>
                                                                        <a class="btn btn-xs btn-flat btn-warning" href="<?php echo base_url('auth/cek_login') ?>">Sewa</a>
                                                                    <?php } else { ?>
                                                                        <button class="btn btn-xs btn-flat btn-warning" style="background-color:grey" disabled data-toggle="modal" data-target="#modalSewa<?php echo $n->produk_id; ?>">Sewa</button>
                                                                    <?php }
                                                                } else {
                                                                    if ($n->produk_stok > 0) {
                                                                    ?>
                                                                        <button class="btn btn-xs btn-flat btn-warning" data-toggle="modal" data-target="#modalSewa<?php echo $n->produk_id; ?>">Sewa</button>
                                                                    <?php } else { ?>
                                                                        <button class="btn btn-xs btn-flat btn-warning" style="background-color:grey" disabled data-toggle="modal" data-target="#modalSewa<?php echo $n->produk_id; ?>">Sewa</button>
                                                                <?php }
                                                                } ?>
                                                            </div>
                                                        </div>

                                                    </article>
                                                </div>

                                                <!-- Modal-->
                                                <div class="modal fade" id="modalSewa<?php echo $n->produk_id; ?>" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">Sewa Alat</h5>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <i aria-hidden="true" class="ki ki-close"></i>
                                                                </button>
                                                            </div>
                                                            <?php echo form_open_multipart("page/sewa") ?>
                                                            <div class="modal-body">
                                                                <center>
                                                                    <img src="<?php echo base_url(); ?>upload/produk/<?php echo $n->produk_gambar; ?>" style="width: 200px;">
                                                                </center>
                                                                <div class="form-group">
                                                                    <label for=""><b style="color: black">Nama Alat</b></label>
                                                                    <?php echo csrf(); ?>
                                                                    <input type="hidden" class="form-control" name="produk_id" value="<?php echo $n->produk_id; ?>">
                                                                    <input type="hidden" class="form-control" name="produk_stok" value="<?php echo $n->produk_stok; ?>">
                                                                    <input type="text" class="form-control" value="<?php echo $n->produk_nama; ?>" readonly>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for=""><b style="color: black">Harga Sewa/Jam <span style="color:red">*</span></b></label>
                                                                    <input id="harga<?php echo $n->produk_id; ?>" type="hidden" class="form-control" value="<?php echo $n->produk_harga; ?>">
                                                                    <input type="text" class="form-control" value="<?php echo indonesiaCurrency($n->produk_harga); ?>" readonly>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for=""><b style="color: black">Waktu Sewa (Jam) <span style="color:red">*</span></b></label>
                                                                    <input id="waktu<?php echo $n->produk_id; ?>" type="number" class="form-control" placeholder="Masukkan Jumlah Jam Sewa" name="transaksi_jam" oninput="myFunction(<?php echo $n->produk_id; ?>)" required="required">
                                                                </div>

                                                                <div class="form-group">
                                                                    <label for=""><b style="color: black">Total Bayar (Rp) <span style="color:red">*</span></b></label>
                                                                    <input id="total<?php echo $n->produk_id; ?>" type="text" class="form-control" readonly>
                                                                    <input id="total_<?php echo $n->produk_id; ?>" type="hidden" class="form-control" name="transaksi_total_harga" readonly>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="submit" class="btn btn-primary font-weight-bold">Sewa</button>
                                                                <?php echo form_close(); ?>
                                                                <button type="button" class="btn btn-light-primary font-weight-bold" data-dismiss="modal">Batal</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                <?php
                                            }
                                        }
                                    }
                                } else {
                                    echo "Silahkan Transaksi Sebanyak Mungkin Untuk Mendapatkan Rekomendasi";
                                }
                                ?>
                            </div>

                        </div>

                        <div class="col-lg-4">
                            <div class="sidebar">
                                <h3 class="sidebar-title">Kategori</h3>
                                <hr style="border: 0.9px dashed #d2d6de">
                                <div class="sidebar-item categories">
                                    <ul>
                                        <li><a href="<?php echo site_url('page/produk/0'); ?>">Semua</a></li>
                                        <?php foreach ($kategori as $nc) { ?>
                                            <li><a href="<?php echo site_url('page/produk/' . $nc->kategori_id); ?>"><?php echo $nc->kategori_nama; ?></a></li>
                                        <?php } ?>
                                    </ul>
                                </div>

                                <h3 class="sidebar-title">Rekomendasi</h3>
                                <hr style="border: 0.9px dashed #d2d6de">
                                <div class="sidebar-item categories">
                                    <ul>
                                        <li><a href="<?php echo site_url('page/rekomendasi'); ?>">Lihat</a></li>
                                    </ul>
                                </div>

                                <!-- <h3 class="sidebar-title">Toko</h3>
                                <hr style="border: 0.9px dashed #d2d6de">
                                <div class="sidebar-item categories">
                                    <ul>
                                        <li><a href="<?php echo site_url('page/produk'); ?>">Semua</a></li>
                                        <?php foreach ($supplier as $nc) { ?>
                                            <li><a href="<?php echo site_url('page/produk/' . $this->uri->segment(3) . '/' . $nc->supplier_id); ?>"><?php echo $nc->supplier_nama; ?></a></li>
                                        <?php } ?>
                                    </ul>
                                </div> -->
                                <!-- <div class="sidebar-item recent-posts">
                                    <?php foreach ($recent as $r) { ?>
                                        <div class="post-item clearfix">
                                            <img src="<?php echo base_url(); ?>upload/produk/<?php echo $r->produk_gambar ?>" alt="">
                                            <h4><a href="<?php echo site_url('page/produk_detail/' . $r->kategori_id . '/' . $r->supplier_id); ?>"><?php echo $r->produk_title; ?></a></h4>
                                            <time style="color:gray"><i class="icofont-eye-alt"></i> <b><?php echo $r->produk_count_view; ?>x dilihat</b> &nbsp;&nbsp;<b class="badge badge-success"><?php echo $r->supplier_name; ?></b></time>
                                        </div>
                                    <?php } ?>
                                </div> -->
                            </div>
                        </div>

                    </div>

                </div>
            </section>

        </div>
    </section>
</main>

</script>
<script type="text/javascript">
    function myFunction(id) {
        var waktu = document.getElementById("waktu" + id).value;
        // alert(waktu);
        var harga = document.getElementById("harga" + id).value;
        var total = waktu * harga;
        document.getElementById("total" + id).value = total.toLocaleString('id', {
            style: 'currency',
            currency: 'IDR',
            minimumFractionDigits: 0
        });

        document.getElementById("total_" + id).value = total;



    }
</script>