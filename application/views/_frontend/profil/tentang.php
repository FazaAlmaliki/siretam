<!-- ======= Breadcrumbs ======= -->
<section id="breadcrumbs" class="breadcrumbs">
    <div class="container">

        <ol>
            <li><a href="<?php echo site_url('home') ?>">Beranda</a></li>
            <li><a href="#">Tentang</a></li>
        </ol>
        <h2>Tentang</h2>

    </div>
</section><!-- End Breadcrumbs -->
<main id="main" style="height: 65vh;">

    <section id="services" class="services">
        <div class="container" data-aos="fade-up">

            <?php echo $content[0]->content_text; ?>



        </div>
    </section>
</main><!-- End #main -->

<footer style="position:absolute; bottom:0; width:100%" id="footer">
    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong><span><?php echo $setting[0]->setting_owner_name; ?></span></strong>. All Rights Reserved
        </div>
    </div>
</footer>