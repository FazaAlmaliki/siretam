<div class="content-wrapper">
    <section class="content-header">
        <h1 class="fontPoppins">
            <?php echo strtoupper($this->uri->segment(2)); ?>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo site_url('admin/dashboard'); ?>"><i class="fa fa-dashboard"></i> DASHBOARD</a></li>
        </ol>
        </ol>
    </section>
    <section class="content">
        <div class="box">
            <div class="box-header with-border">

                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                        <i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                        <i class="fa fa-times"></i></button>
                </div>
            </div>
            <div class="box-body">
                <?php
                if ($this->session->flashdata('alert')) {
                    echo $this->session->flashdata('alert');
                    unset($_SESSION['alert']);
                }
                ?>

                <div class="row">

                    <div class="col-lg-6 col-xs-6">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3><?php echo $widget[0]->total_kategori; ?></h3>
                                <p>Total Kategori</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-file"></i>
                            </div>
                            <a href="<?php echo site_url('admin/kategori'); ?>" class="small-box-footer">
                                More info <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xs-6">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3><?php echo $widget[0]->total_supplier; ?></h3>
                                <p>Total Supplier</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-user"></i>
                            </div>
                            <a href="<?php echo site_url('admin/supplier'); ?>" class="small-box-footer">
                                More info <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-6 col-xs-6">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3><?php echo $widget[0]->total_produk; ?></h3>
                                <p>Total Produk</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-file"></i>
                            </div>
                            <a href="<?php echo site_url('admin/produk'); ?>" class="small-box-footer">
                                More info <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>

                </div>

                <hr style="border: 0.5px dashed #d2d6de">

                <div class="box-footer">
                    <small>Page rendered in <strong>{elapsed_time}</strong> seconds.</small>
                </div>
            </div>
    </section>
</div>