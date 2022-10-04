<section id="breadcrumbs" class="breadcrumbs">
    <div class="container">

        <ol>
            <li><a href="<?php echo site_url('home') ?>">Home</a></li>
            <li><a href="#">Pengaturan</a></li>
        </ol>
        <h2>Pengaturan Profil</h2>

    </div>
</section><!-- End Breadcrumbs -->
<main id="main">

    <section class="hero-search">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-3">
                    <p>Data Profil <b> <?php echo $profile[0]->user_fullname; ?></b> :</p>
                    <?php
                    if ($this->session->userdata('user_photo') == "") {
                        echo '<img class="profile-setting" src="' . base_url() . 'upload/user/noimage.png" alt="User profile picture">';
                    } else {
                        echo '<img class="profile-setting" src="' . base_url() . 'upload/user/' . $profile[0]->user_photo . '" alt="User profile picture">';
                    }
                    ?>
                    <br><br>

                </div>
                <div class="col-lg-6">
                    <div class="login-box">
                        <div class="login-box-body">
                            <?php
                            if ($this->session->flashdata('alert')) {
                                echo $this->session->flashdata('alert');
                                unset($_SESSION['alert']);
                            }
                            ?>
                            <br>
                        </div>
                    </div>
                    <?php echo form_open_multipart("settings/update") ?>
                    <div class="row">
                        <?php echo csrf(); ?>
                        <div class="col-lg-12">
                            <!-- <div class="form-group has-feedback">
                                <label for="">NIM</label>
                                <input disabled type="text" class="form-control" placeholder="NIM" name="user_nim" value="<?php if (isset($profile[0]->anggota_nim)) echo $profile[0]->anggota_nim ?>">
                            </div> -->

                            <div class="form-group has-feedback">
                                <label for="">Nama User</label>
                                <input type="text" class="form-control" placeholder="Nama Lengkap" name="user_fullname" value="<?php if (isset($profile[0]->user_name)) echo $profile[0]->user_fullname; ?>">
                                <input type="hidden" class="form-control" name="user_id" value="<?php echo $profile[0]->user_id; ?>" required>
                                <input type="hidden" class="form-control" name="old_photo" value="<?php echo $profile[0]->user_photo; ?>" required>
                            </div>

                            <div class="form-group has-feedback">
                                <label for="">Username</label>
                                <input type="text" class="form-control" placeholder="Username" name="user_name" value="<?php if (isset($profile[0]->user_name)) echo $profile[0]->user_name ?>">
                            </div>
                            <div class="form-group has-feedback">
                                <label for="">Foto</label>
                                <input type="file" class="form-control pt-2" name="userfile">
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="form-group has-feedback">
                                <label for="">Password</label>
                                <input style="margin-bottom:5px;" type="hidden" class="form-control" name="old_password" value="<?php echo $profile[0]->user_password; ?>">
                                <input type="pass" class="form-control" placeholder="Password Lama" name="password" value="">
                            </div>
                            <div class="form-group has-feedback">
                                <input type="text" class="form-control" placeholder="Password Baru" name="new_password" value="">
                            </div>
                            <div class="form-group has-feedback">
                                <input type="text" class="form-control" placeholder="Konfirmasi Password Baru" name="confirm_password" value="">
                            </div>

                            <hr style="border: 1px dashed">

                            <button class="btn btn-success" type="submit">
                                <b>Update Data</b>
                            </button>

                        </div>
                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main><!-- End #main -->