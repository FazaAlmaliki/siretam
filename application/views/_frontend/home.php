    <section style="height: 80vh;" id="hero">
        <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel" style="height: 100%;">
            <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>
            <div class="carousel-inner" role="listbox">
                <?php $i = 1;
                foreach ($slider as $s) { ?>
                    <div class="carousel-item <?php if ($i == 1) {
                                                    echo "active";
                                                } ?>" style="background-image: url(<?php echo base_url(); ?>upload/slider/<?php echo $s->slider_image; ?>); background-size: cover;background-position: center; height:100vh">
                        <div class="carousel-container">
                            <div class="container">
                                <h2 class="animate__animated animate__fadeInDown"><?php echo $s->slider_title; ?></h2>
                                <p class="animate__animated animate__fadeInUp"><?php echo $s->slider_text; ?></p>
                                <p style="margin-top:300px"></p>
                            </div>
                        </div>
                    </div>
                <?php $i++;
                } ?>
            </div>
        </div>
    </section>
    </main>
    <footer style="position:absolute; bottom:0; width:100%" id="footer">
        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong><span><?php echo $setting[0]->setting_owner_name; ?></span></strong>. All Rights Reserved
            </div>
        </div>
    </footer>