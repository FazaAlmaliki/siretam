<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title><?php echo $setting[0]->setting_appname; ?></title>
  <link rel="icon" href="<?php echo base_url(); ?>assets/core-images/<?php echo $setting[0]->setting_logo; ?>">
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/login/css/login.css">
  <style type="text/css">
    .fontQuicksand {
      font-family: 'Quicksand', sans-serif;
    }

    .fontPoppins {
      font-family: 'Poppins', sans-serif;
    }

    .logouho {
      position: absolute;

      height: 70px;

      z-index: 2;
    }

    .logoit {
      position: absolute;

      height: 70px;
      margin-left: 90px;

      z-index: 2;
    }

    .judul {
      font-size: 27px;
      text-align: center;
      font-weight: bold;
      color: #808080;
    }

    .sign-font {
      font-size: 18px;

      color: #d3d3d3;
    }

    .logos {
      position: absolute;
      height: 70px;
      z-index: 2;
      margin-top: 10px;
      margin-left: 200px;
    }
  </style>
</head>

<body>
  <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container">
      <div class="card login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <div class="brand-wrapper logouho ">

              <img src="<?php echo base_url(); ?>assets/login/images/logo.png" class="logouho ml-3 mt-3">

              <img src="<?php echo base_url(); ?>assets/login/images/logoit.png" class="logoit mt-3">
            </div>

            <img src="<?php echo base_url(); ?>assets/login/images/login.jpg" alt="login" class="login-card-img">
          </div>
          <div class="col-md-1">

          </div>
          <div class="col-md-5">
            <div class="brand-wrapper">
              <img src="<?php echo base_url(); ?>assets/core-images/<?php echo $setting[0]->setting_logo; ?>" class="logos">
            </div>
            <div class="card-body">


              <p class="judul"><?php echo $setting[0]->setting_appname; ?></p>

              <hr style="border: 0.5px dashed #d2d6de">
              <p class="sign-font">Sign in to start your session</p>
              <?php
              if ($this->session->flashdata('alert')) {
                echo $this->session->flashdata('alert');
                unset($_SESSION['alert']);
              }
              ?>
              <!-- Start Form Login -->
              <?php echo form_open("auth/validate", "class='login-form'"); ?>
              <div class="form-group">
                <?php echo csrf(); ?>
                <label for="email" class="sr-only">Email</label>
                <input type="text" id="email" class="form-control" placeholder="Username" name="username">

              </div>
              <div class="form-group has-feedback">
                <label for="password" class="sr-only">Password</label>
                <input type="password" id="password" class="form-control" placeholder="Password" name="password">

              </div>

              <button type="submit" id="login" class="btn btn-block login-btn mb-4">Sign In</button>

              <?php echo form_close(); ?>
              <!-- End Form Login -->
              <hr style="border: 0.5px dashed #d2d6de">
              <p class="text-center">
                <?php echo $setting[0]->setting_owner_name; ?><br>
                <b>Since @<?php echo date('Y'); ?></b>
              </p>

            </div>
          </div>
        </div>
      </div>

    </div>
  </main>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>

</html>