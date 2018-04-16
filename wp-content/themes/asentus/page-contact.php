<?php
/*
Template Name: Contact
*/
?>
<?php get_header(); ?>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <div class="container">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            </ol>
        </div>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/assets/img/1920x1080/01.jpg" alt="Slider Image">
                <div class="container">
                    <div class="carousel-centered">
                        <div class="margin-b-40">
                            <h1 class="carousel-title">Hi-Tech Design</h1>
                            <p>Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua <br/> enim minim estudiat veniam siad venumus dolore</p>
                        </div>
                        <a href="#" class="btn-theme btn-theme-sm btn-white-brd text-uppercase">Explore</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/assets/img/1920x1080/02.jpg" alt="Slider Image">
                <div class="container">
                    <div class="carousel-centered">
                        <div class="margin-b-40">
                            <h2 class="carousel-title">Hi-Tech Design</h2>
                            <p>Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua <br/> enim minim estudiat veniam siad venumus dolore</p>
                        </div>
                        <a href="#" class="btn-theme btn-theme-sm btn-white-brd text-uppercase">Explore</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--========== SLIDER ==========-->

    <!--========== PAGE LAYOUT ==========-->
    <!-- Contact List -->
    <div class="section-seperator">
        <div class="content-lg container">
            <div class="row">
                <!-- Contact List -->
                <div class="col-sm-4 sm-margin-b-50">
                    <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".3s">
                        <h3><a href="#">New York</a> <span class="text-uppercase margin-l-20">Head Office</span></h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                        <ul class="list-unstyled contact-list">
                            <li><i class="margin-r-10 color-base icon-call-out"></i> 1 012 3456 7890</li>
                            <li><i class="margin-r-10 color-base icon-envelope"></i> hq@acidus.com</li>
                        </ul>
                    </div>
                </div>
                <!-- End Contact List -->

                <!-- Contact List -->
                <div class="col-sm-4 sm-margin-b-50">
                    <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".3s">
                        <h3><a href="#">London</a> <span class="text-uppercase margin-l-20">Operation</span></h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                        <ul class="list-unstyled contact-list">
                            <li><i class="margin-r-10 color-base icon-call-out"></i> 44 77 3456 7890</li>
                            <li><i class="margin-r-10 color-base icon-envelope"></i> operation@acidus.com</li>
                        </ul>
                    </div>
                </div>
                <!-- End Contact List -->

                <!-- Contact List -->
                <div class="col-sm-4 sm-margin-b-50">
                    <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".3s">
                        <h3><a href="#">Singapore</a> <span class="text-uppercase margin-l-20">Finance</span></h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                        <ul class="list-unstyled contact-list">
                            <li><i class="margin-r-10 color-base icon-call-out"></i> 50 012 456 7890</li>
                            <li><i class="margin-r-10 color-base icon-envelope"></i> finance@acidus.com</li>
                        </ul>
                    </div>
                </div>
                <!-- End Contact List -->
            </div>
            <!--// end row -->
        </div>
    </div>
    <!-- End Contact List -->
    <!-- Promo Section -->
    <div class="promo-section overflow-h">
        <?php
        // параметры по умолчанию
        $args = array(
            'numberposts' => 0,
            'category' => 12,
            'orderby' => 'date',
            'order' => 'ASC',
            'include' => array(),
            'exclude' => array(),
            'meta_key' => '',
            'meta_value' => '',
            'post_type' => 'post',
            'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
        );

        $posts = get_posts($args);

        foreach ($posts as $post) {
            setup_postdata($post);
            ?>
            <div class="container">
                <div class="clearfix">
                    <div class="ver-center">
                        <div class="ver-center-aligned">
                            <div class="promo-section-col">
                                <h2><?php the_title(); ?></h2>
                                <?php the_content(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="promo-section-img-right">
                <?php if ( has_post_thumbnail() ) {
                    the_post_thumbnail($size = 'post_thumbnail', $attr = 'img-responsive');
                } ?>
            </div>
            <?php
        }

        wp_reset_postdata(); // сброс

        ?>

    </div>
    <!-- End Promo Section -->
    <!--========== END PAGE LAYOUT ==========-->
<?php get_footer();
