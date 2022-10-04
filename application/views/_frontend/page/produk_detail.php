<section id="breadcrumbs" class="breadcrumbs">
    <div class="container">
        <ol>
            <li><a href="<?php echo site_url('home') ?>">Home</a></li>
            <li><a href="#">Produk</a></li>
            <li><a href="#">Produk Detail</a></li>
        </ol>
        <h2><?php echo $produk[0]->produk_nama; ?></h2>

    </div>
</section>
<main id="main">

    <section id="services" class="services">
        <div class="container" data-aos="fade-up">
            <section id="blog" class="blog">
                <div class="container" data-aos="fade-up">
                    <div class="row">
                        <div class="col-lg-8 entries">
                            <?php foreach ($produk as $n) { ?>
                                <article class="entry">
                                    <div class="">
                                        <img src="<?php echo base_url(); ?>upload/produk/<?php echo $n->produk_gambar; ?>" alt="" style="max-width:100%; max-height:100%;">
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
                                    if ($transaksi) {
                                        foreach ($transaksi as $value) {
                                            if ($n->produk_id == $value->produk_id) {
                                                $ambil_rating += $value->transaksi_rating;
                                                $jlm_transaksi++;
                                            }
                                        }
                                    }
                                    $rating_p = $ambil_rating == 0 ? 0 : round($ambil_rating / $jlm_transaksi, 1);
                                    ?>
                                    <p style="color:black; font-size:medium">Rating : <?= $rating_p . ' / 5'; ?></p>
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
                                        <hr style="border: 0.9px dashed #d2d6de">
                                        <p>
                                            <h7><strong>Deskripsi Produk :</strong></h7><br>
                                            <?php echo $n->produk_ket; ?>
                                        </p>

                                    </div>
                                    

                                </article>

                            <?php } ?>
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
                                <?php if ($this->session->userdata('user_fullname') and $cek_transaksi) { ?>
                                    <h3 class="sidebar-title">Rekomendasi</h3>
                                    <hr style="border: 0.9px dashed #d2d6de">
                                    <div class="sidebar-item categories">
                                        <ul>
                                            <li><a href="<?php echo site_url('page/rekomendasi'); ?>">Lihat</a></li>
                                        </ul>
                                    </div>
                                <?php } ?>
                            </div>

                        </div>

                    </div>

                </div>
            </section>
        </div>
    </section>
</main>