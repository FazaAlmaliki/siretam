            <div class="content-wrapper">
                <section class="content-header">
                    <h1 class="fontPoppins">
                        <?php echo strtoupper($title); ?>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?php echo site_url('admin/dashboard'); ?>"><i class="fa fa-dashboard"></i> DASHBOARD</a></li>
                        <?php
                        if ($this->uri->segment(3)) {
                            echo '<li class="active"><a href="' . site_url('admin/' . $this->uri->segment(2)) . '">' . strtoupper($title) . '</a></li>';
                            echo '<li class="active">' . strtoupper($this->uri->segment(3)) . '</li>';
                        } else {
                            echo '<li class="active">' . strtoupper($title) . '</li>';
                        }
                        ?>

                    </ol>
                </section>

                <section class="content">
                    <div class="box">
                        <div class="box-header with-border">
                            <div class="box-tools pull-left">
                                <div class="form-inline">
                                    <select class="form-control" id="rowpage">
                                        <?php
                                        $rowpage = array(5, 10, 25, 50, 100);
                                        for ($r = 0; $r < count($rowpage); $r++) {
                                            if ($rowpage[$r] == $this->session->userdata('sess_rowpage')) {
                                                echo '<option value="' . $rowpage[$r] . '" selected>' . $rowpage[$r] . '</option>';
                                            } else {
                                                echo '<option value="' . $rowpage[$r] . '">' . $rowpage[$r] . '</option>';
                                            }
                                        }
                                        ?>

                                    </select>
                                    <div class="input-group margin">
                                        <?php echo form_open("admin/transaksi/search") ?>
                                        <input type="text" class="form-control" name="key" placeholder="Masukkan Kata Kunci Pencarian">
                                        <span class="input-group-btn">
                                            <button type="submit" class="btn btn-danger btn-flat">Cari</button>
                                        </span>
                                        <?php echo form_close(); ?>
                                    </div>
                                </div>
                            </div>
                            <div class="box-tools pull-right">
                                <div style="padding-top:10px">
                                    <a href="<?php echo site_url('admin/transaksi') ?>" class="btn btn-success btn-flat" title="Refresh halaman">Refresh</a>
                                </div>
                            </div>
                        </div>
                        <div class="box-body">
                            <?php
                            if ($this->session->flashdata('alert')) {
                                echo $this->session->flashdata('alert');
                                unset($_SESSION['alert']);
                            }

                            if ($this->uri->segment(3) == "search") {
                                echo "Kata Kunci Pencarian : <span class='label label-danger label-inline font-weight-lighter mr-2'>" . $search . "</span><hr style='border: 0.5px dashed #d2d6de'>";
                            }
                            ?>
                            <table class="table table-bordered">
                                <tr style="background-color: gray;color:white">
                                    <th style="width: 60px">No</th>
                                    <th style="width: 12%">#Aksi</th>
                                    <th>Id Transaksi</th>
                                    <th>Nama Produk</th>
                                    <th>Penyewa</th>
                                    <th>Lama Sewa</th>
                                    <th>Harga Sewa</th>
                                    <th>Status</th>
                                    <th>Waktu Transaksi</th>
                                </tr>
                                <?php
                                if ($transaksi) {
                                    $nox = 1;
                                    $no = 1;
                                    foreach ($transaksi as $key) {

                                ?>
                                        <tr>
                                            <td><?php echo $no + $numbers; ?></td>
                                            <td>
                                                <button class="btn btn-xs btn-flat btn-danger" data-toggle="modal" data-target="#modalDelete<?php echo $key->transaksi_id ?>">Hapus</button>
                                                <button class="btn btn-xs btn-flat btn-success" data-toggle="modal" data-target="#modalUpdate<?php echo $key->transaksi_id ?>">Aksi</button>
                                            </td>
                                            <td><?php echo $key->transaksi_id; ?></td>
                                            <td><?php echo $key->produk_nama; ?></td>
                                            <td><?php echo $key->user_fullname; ?></td>
                                            <td><?php echo $key->transaksi_jam . ' Jam'; ?></td>
                                            <td><?php echo indonesiaCurrency($key->transaksi_total_harga); ?></td>
                                            <td><?php echo $key->transaksi_status; ?></td>
                                            <td><?php echo $key->createtime; ?></td>
                                        </tr>

                                        <!-- Modal Update-->
                                        <div class="modal fade" id="modalUpdate<?php echo $key->transaksi_id ?>" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Update Data</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <i aria-hidden="true" class="ki ki-close"></i>
                                                        </button>
                                                    </div>
                                                    <?php echo form_open_multipart("admin/transaksi/update") ?>
                                                    <div class="modal-body">
                                                        <div class="form-group">
                                                            <label for=""><b style="color: black">Status <span style="color:red">*</span></b></label>
                                                            <select class="form-control" name="transaksi_status" required>
                                                                <option value="">- Pilih Status -</option>
                                                                <?php if ($key->transaksi_status  == 'Pengecekkan Alat') { ?>
                                                                    <option selected value="Pengecekkan Alat">Pengecekkan Alat</option>
                                                                    <option value="Pengantaran Alat">Pengantaran Alat</option>
                                                                    <option value="Pengembalian Alat">Pengembalian Alat</option>
                                                                    <option value="Selesai">Selesai</option>
                                                                <?php } elseif ($key->transaksi_status  == 'Pengantaran Alat') { ?>
                                                                    <option value="Pengecekkan Alat">Pengecekkan Alat</option>
                                                                    <option selected value="Pengantaran Alat">Pengantaran Alat</option>
                                                                    <option value="Pengembalian Alat">Pengembalian Alat</option>
                                                                    <option value="Selesai">Selesai</option>
                                                                <?php } elseif ($key->transaksi_status  == 'Pengembalian Alat') { ?>
                                                                    <option value="Pengecekkan Alat">Pengecekkan Alat</option>
                                                                    <option value="Pengantaran Alat">Pengantaran Alat</option>
                                                                    <option selected value="Pengembalian Alat">Pengembalian Alat</option>
                                                                    <option value="Selesai">Selesai</option>
                                                                <?php } elseif ($key->transaksi_status  == 'Selesai') { ?>
                                                                    <option value="Pengecekkan Alat">Pengecekkan Alat</option>
                                                                    <option value="Pengantaran Alat">Pengantaran Alat</option>
                                                                    <option value="Pengembalian Alat">Pengembalian Alat</option>
                                                                    <option selected value="Selesai">Selesai</option>
                                                                <?php } else { ?>
                                                                    <option value="Pengecekkan Alat">Pengecekkan Alat</option>
                                                                    <option value="Pengantaran Alat">Pengantaran Alat</option>
                                                                    <option value="Pengembalian Alat">Pengembalian Alat</option>
                                                                    <option value="Selesai">Selesai</option>
                                                                <?php } ?>
                                                            </select>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for=""><b style="color: black">Keterangan Status <span style="color:red">*</span></b></label>
                                                            <?php echo csrf(); ?>
                                                            <input type="hidden" class="form-control" name="produk_id" required="required" value="<?php echo $key->produk_id; ?>">
                                                            <input type="hidden" class="form-control" name="produk_stok" required="required" value="<?php echo $key->produk_stok; ?>">
                                                            <input type="hidden" class="form-control" name="transaksi_id" required="required" value="<?php echo $key->transaksi_id; ?>">
                                                            <input type="text" class="form-control" placeholder="Keterangan Status " name="transaksi_status_ket" required="required" value="">
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn btn-warning font-weight-bold">Update</button>
                                                        <?php echo form_close(); ?>
                                                        <button type="button" class="btn btn-light-primary font-weight-bold" data-dismiss="modal">Batal</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Modal Delete-->
                                        <div class="modal fade" id="modalDelete<?php echo $key->transaksi_id ?>" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Hapus Data</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <i aria-hidden="true" class="ki ki-close"></i>
                                                        </button>
                                                    </div>
                                                    <?php echo form_open("admin/transaksi/delete") ?>
                                                    <div class="modal-body">
                                                        Apakah anda yakin akan menghapus data transaksi id : <?php echo $key->transaksi_id; ?> ?
                                                        <?php echo csrf(); ?>
                                                        <input type="hidden" class="form-control" name="transaksi_id" required="required" value="<?php echo $key->transaksi_id; ?>">
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn btn-danger font-weight-bold">Hapus</button>
                                                        <?php echo form_close(); ?>
                                                        <button type="button" class="btn btn-light-primary font-weight-bold" data-dismiss="modal">Batal</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                <?php
                                        $no++;
                                    }
                                } else {
                                    echo '
                                        <tr>
                                            <td colspan="3">Tidak ada ditemukan</td>
                                        </tr>
                                        ';
                                }
                                ?>


                            </table>
                        </div>
                        <div class="box-footer">



                            <!-- PAGINATION -->
                            <div class="float-right"><?php echo $links; ?></div>

                            <!-- COUNT DATA -->
                            <?php if ($transaksi) { ?>
                                <div class="float-left">Tampil <?php echo ($nox + $numbers) . " - " . (count($transaksi) + $numbers) . " dari " . $total_data; ?> Data</div>
                            <?php } else { ?>
                                <div class="float-left">Tampil 0 <?php echo " dari " . $total_data; ?> Data</div>
                            <?php } ?>
                            <small>Page rendered in <strong>{elapsed_time}</strong> seconds.</small>
                        </div>
                    </div>
                </section>
            </div>