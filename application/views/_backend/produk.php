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
                                        <?php echo form_open("admin/produk/search") ?>
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
                                    <a href="<?php echo site_url('admin/produk') ?>" class="btn btn-success btn-flat" title="Refresh halaman">Refresh</a>
                                    <button type="submit" class="btn btn-primary btn-flat" title="Tambah data" data-toggle="modal" data-target="#modalCreate"> Tambah</button>
                                </div>

                                <!-- Modal-->
                                <div class="modal fade" id="modalCreate" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Tambah Data Baru</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <i aria-hidden="true" class="ki ki-close"></i>
                                                </button>
                                            </div>
                                            <?php echo form_open_multipart("admin/produk/create") ?>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for=""><b style="color: black">Kategori <span style="color:red">*</span></b></label>
                                                    <select class="form-control" name="kategori_id" required>
                                                        <option value="">- Pilih Kategori -</option>
                                                        <?php
                                                        foreach ($kategori as $g) {
                                                            echo '<option value="' . $g->kategori_id . '">' . $g->kategori_nama . '</option>';
                                                        }
                                                        ?>
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <label for=""><b style="color: black">Supplier <span style="color:red">*</span></b></label>
                                                    <select class="form-control" name="supplier_id" required>
                                                        <option value="">- Pilih Supplier -</option>
                                                        <?php
                                                        foreach ($supplier as $g) {
                                                            echo '<option value="' . $g->supplier_id . '">' . $g->supplier_nama . '</option>';
                                                        }
                                                        ?>
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <label for=""><b style="color: black">Nama Produk <span style="color:red">*</span></b></label>
                                                    <?php echo csrf(); ?>
                                                    <input type="text" class="form-control" placeholder="Nama Produk " name="produk_nama" required="required">
                                                </div>
                                                <div class="form-group">
                                                    <label for=""><b style="color: black">Harga Sewa Produk <span style="color:red">*</span></b></label>
                                                    <input type="number" class="form-control" placeholder="Harga Sewa Produk" name="produk_harga" required="required">
                                                </div>

                                                <div class="form-group">
                                                    <label for=""><b style="color: black">Stok Barang <span style="color:red">*</span></b></label>
                                                    <input type="number" class="form-control" placeholder="Stok Barang" name="produk_stok" required="required">
                                                </div>

                                                <div class="form-group">
                                                    <label for=""><b style="color: black">Gambar <span style="color:red">*</span></b></label>
                                                    <input type="file" class="form-control" placeholder="" name="produk_gambar" required="required">
                                                </div>
                                                <div class="form-group">
                                                    <label for=""><b style="color: black">Keterangan <span style="color:red">*</span></b></label>
                                                    <textarea name="produk_ket" class="form-control" cols="30" rows="10"></textarea>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-primary font-weight-bold">Simpan</button>
                                                <?php echo form_close(); ?>
                                                <button type="button" class="btn btn-light-primary font-weight-bold" data-dismiss="modal">Batal</button>
                                            </div>
                                        </div>
                                    </div>
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
                                    <th>Nama Produk</th>
                                    <th>Harga Sewa</th>
                                    <th>Kategori</th>
                                    <th>Nama Supplier </th>
                                    <th>Gambar</th>
                                </tr>
                                <?php
                                if ($produk) {
                                    $nox = 1;
                                    $no = 1;
                                    foreach ($produk as $key) {

                                ?>
                                        <tr>
                                            <td><?php echo $no + $numbers; ?></td>
                                            <td>
                                                <button class="btn btn-xs btn-flat btn-warning" data-toggle="modal" data-target="#modalUpdate<?php echo $key->produk_id; ?>">Update</button>
                                                <button class="btn btn-xs btn-flat btn-danger" data-toggle="modal" data-target="#modalDelete<?php echo $key->produk_id ?>">Hapus</button>
                                            </td>
                                            <td><?php echo $key->produk_nama; ?></td>
                                            <td><?php echo indonesiaCurrency($key->produk_harga); ?></td>
                                            <td><?php echo $key->kategori_nama; ?></td>
                                            <td><?php echo $key->supplier_nama; ?></td>
                                            <td><a href="<?php echo base_url('upload/produk/' . $key->produk_gambar); ?>" target="_blank" rel="noopener noreferrer"><?= $key->produk_gambar ?></a></td>
                                        </tr>

                                        <!-- Modal Update-->
                                        <div class="modal fade" id="modalUpdate<?php echo $key->produk_id ?>" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Update Data</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <i aria-hidden="true" class="ki ki-close"></i>
                                                        </button>
                                                    </div>
                                                    <?php echo form_open_multipart("admin/produk/update") ?>
                                                    <div class="modal-body">
                                                        <div class="form-group">
                                                            <label for=""><b style="color: black">Kategori <span style="color:red">*</span></b></label>
                                                            <select class="form-control" name="kategori_id" required>
                                                                <option value="">- Pilih Kategori -</option>
                                                                <?php
                                                                foreach ($kategori as $g) {
                                                                    if ($g->kategori_id == $key->kategori_id) {
                                                                        echo '<option value="' . $g->kategori_id . '" selected>' . $g->kategori_nama . '</option>';
                                                                    } else {
                                                                        echo '<option value="' . $g->kategori_id . '">' . $g->kategori_nama . '</option>';
                                                                    }
                                                                }
                                                                ?>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for=""><b style="color: black">Supplier <span style="color:red">*</span></b></label>
                                                            <select class="form-control" name="supplier_id" required>
                                                                <option value="">- Pilih Supplier -</option>
                                                                <?php
                                                                foreach ($supplier as $g) {
                                                                    if ($g->supplier_id == $key->supplier_id) {
                                                                        echo '<option value="' . $g->supplier_id . '" selected>' . $g->supplier_nama . '</option>';
                                                                    } else {
                                                                        echo '<option value="' . $g->supplier_id . '">' . $g->supplier_nama . '</option>';
                                                                    }
                                                                }
                                                                ?>
                                                            </select>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for=""><b style="color: black">Nama Produk <span style="color:red">*</span></b></label>
                                                            <?php echo csrf(); ?>
                                                            <input type="hidden" class="form-control" name="produk_id" required="required" value="<?php echo $key->produk_id; ?>">
                                                            <input type="text" class="form-control" placeholder="Nama Produk " name="produk_nama" required="required" value="<?php echo $key->produk_nama; ?>">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for=""><b style="color: black">Harga Sewa Produk <span style="color:red">*</span></b></label>
                                                            <input type="number" class="form-control" placeholder="Harga Sewa Produk" name="produk_harga" value="<?php echo $key->produk_harga; ?>" required="required">
                                                        </div>

                                                        <div class="form-group">
                                                            <label for=""><b style="color: black">Stok Barang <span style="color:red">*</span></b></label>
                                                            <input type="number" class="form-control" placeholder="Stok Barang" name="produk_stok" value="<?php echo $key->produk_stok; ?>" required="required">
                                                        </div>

                                                        <div class="form-group">
                                                            <label for=""><b style="color: black">Gambar</b></label>
                                                            <span class="text-red">file sebelumnya: </span><a href="<?php echo base_url() . "upload/produk/" . $key->produk_gambar; ?>" target="_blank"><?php echo $key->produk_gambar; ?></a>
                                                            <input type="file" class="form-control" placeholder="" name="produk_gambar">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for=""><b style="color: black">Keterangan <span style="color:red">*</span></b></label>
                                                            <textarea name="produk_ket" class="form-control" cols="30" rows="10"><?php echo $key->produk_ket; ?></textarea>
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
                                        <div class="modal fade" id="modalDelete<?php echo $key->produk_id ?>" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Hapus Data</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <i aria-hidden="true" class="ki ki-close"></i>
                                                        </button>
                                                    </div>
                                                    <?php echo form_open("admin/produk/delete") ?>
                                                    <div class="modal-body">
                                                        Apakah anda yakin akan menghapus data produk : <?php echo $key->produk_nama; ?> ?
                                                        <?php echo csrf(); ?>
                                                        <input type="hidden" class="form-control" placeholder="produk_nama" name="produk_nama" required="required" value="<?php echo $key->produk_nama; ?>">
                                                        <input type="hidden" class="form-control" name="produk_id" required="required" value="<?php echo $key->produk_id; ?>">
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
                            <?php if ($produk) { ?>
                                <div class="float-left">Tampil <?php echo ($nox + $numbers) . " - " . (count($produk) + $numbers) . " dari " . $total_data; ?> Data</div>
                            <?php } else { ?>
                                <div class="float-left">Tampil 0 <?php echo " dari " . $total_data; ?> Data</div>
                            <?php } ?>
                            <small>Page rendered in <strong>{elapsed_time}</strong> seconds.</small>
                        </div>
                    </div>
                </section>
            </div>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
            <script type="text/javascript">
                $('#import_form').on('submit', function(event) {
                    event.preventDefault();
                    $.ajax({
                        url: "<?php echo base_url(); ?>api/produk_import",
                        method: "POST",
                        data: new FormData(this),
                        contentType: false,
                        cache: false,
                        processData: false,
                        success: function(data) {
                            // alert(data);
                            $("#importModal").modal('hide');
                            window.location = "<?php echo site_url('admin/produk'); ?>";
                        }
                    })
                });
            </script>