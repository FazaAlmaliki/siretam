   <style>
       .img-front-prof {
           width: 25px;
           margin-right: 10px;
           border-radius: 50%;
           border: 1px solid #FFC34F;
       }

       .profile-setting {
           width: 200px !important;
           margin-right: 10px;
           border-radius: 50%;
           border: 4px solid #FFC34F;
       }
   </style>

   <body class="fontRubik">
       <header id="header" class="fixed-top ">
           <div class="container d-flex align-items-center">

               <h5 class="logo mr-auto" style="color:white;font-size:20px"><a href="<?php echo base_url(); ?>" class="scrollto"><img src="<?php echo base_url() ?>assets/core-images/<?php echo $setting[0]->setting_logo; ?>"></a> </h5>


               <nav class="nav-menu d-none d-lg-block">
                   <ul>
                       <li class="active"><a href="<?php echo base_url(); ?>">Beranda</a></li>
                       <li><a href="<?php echo site_url('page/produk/0') ?>">Produk</a></li>
                       <!-- <li><a href="<?php echo site_url('page/tracking') ?>">Tracking</a></li> -->
                       <li><a href="<?php echo site_url('page/tentang') ?>">Tentang</a></li>
                       <?php if (!$this->session->userdata('user_id')) { ?>
                           <li><a href="<?php echo site_url('auth') ?>">Login</a></li>
                           <!-- <li> <button class="btn btn-signin"><a href="<?php echo site_url('auth') ?>">Masuk</a></button></li> -->
                       <?php } else { ?>
                           <li class="drop-down" style="color:#E1E1E1">
                               <?php
                                if ($this->session->userdata('user_photo') == "") {
                                    echo '<img class="img-front-prof" src="' . base_url() . 'upload/user/noimage.png" class="user-image" alt="User Image">';
                                } else {
                                    echo '<img class="img-front-prof" src="' . base_url() . 'upload/user/' . $this->session->userdata('user_photo') . '" class="user-image" alt="User Image">';
                                }
                                ?>
                               <!-- <span><?php echo $this->session->userdata('user_name'); ?></span> -->
                               <ul>
                                   <li><a href="<?php echo site_url('page/riwayat') ?>">Riwayat</a></li>
                                   <li><a href="<?php echo site_url('settings/profile') ?>">Pengaturan</a></li>
                                   <li><a href="<?php echo site_url('auth/logout') ?>">Keluar</a></li>
                               </ul>
                           </li>

                       <?php } ?>
                   </ul>
               </nav><!-- .nav-menu -->

           </div>
       </header><!-- End Header -->