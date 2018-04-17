<?php
/*
Template Name: Pricing
*/
?>
<?php get_header(); ?>
    <div class="parallax-window" data-parallax="scroll" data-image-src="<?php echo get_template_directory_uri(); ?>/assets/img/1920x1080/01.jpg" style="background: url(<?php echo get_template_directory_uri(); ?>/assets/img/1920x1080/01.jpg)">
        <div class="parallax-content container">
            <h1 class="carousel-title">Product Pricing</h1>
            <p>Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua <br/> enim minim estudiat veniam siad venumus dolore</p>
        </div>
    </div>

<!--========== PAGE LAYOUT ==========-->
    <!-- Pricing -->
    <div class="bg-color-sky-light">
        <div class="content-lg container">
            <div class="row row-space-1">
                <?php
                // параметры по умолчанию
                $args = array(
                    'numberposts' => 0,
                    'category' => 11,
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
                    <div class="col-sm-4 sm-margin-b-2">
                        <!-- Pricing -->
                        <div class="pricing <?php
                        $i++;
                        if($i%2 == 0){
                            echo 'pricing-active';
                        }
                        ?>">
                            <div class="margin-b-30">
                                <?php the_field('icon'); ?>
                                <h3><?php the_title(); ?> <span> - $</span> <?php the_field('price'); ?></h3>
                                <?php the_content(); ?>
                            </div>
                            <ul class="list-unstyled pricing-list margin-b-50">
                                <li class="pricing-list-item"><?php the_field('bonus-1'); ?></li>
                                <li class="pricing-list-item"><?php the_field('bonus-2'); ?></li>
                                <li class="pricing-list-item"><?php the_field('bonus-3'); ?></li>
                            </ul>
                            <a href="#" class="btn-theme btn-theme-sm btn-default-bg text-uppercase">Choose</a>
                        </div>
                        <!-- End Pricing -->
                    </div>
                    <?php
                }

                wp_reset_postdata(); // сброс

                ?>
            </div>
            <!--// end row -->
        </div>
    </div>
    <!-- End Pricing -->

<!-- Testimonials -->
<div class="content-lg container">
    <div class="row">
        <div class="col-sm-9">
            <h2>Why Customers Are Choosing Asentus?</h2>

            <!-- Swiper Testimonials -->
            <div class="swiper-slider swiper-testimonials">
                <!-- Swiper Wrapper -->
                <div class="swiper-wrapper">
                    <?php
                    // параметры по умолчанию
                    $args = array(
                        'numberposts' => 0,
                        'category' => 10,
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
                        <div class="swiper-slide">
                            <blockquote class="blockquote">
                                <div class="margin-b-20">
                                    <?php the_field('text-1'); ?>
                                </div>
                                <div class="margin-b-20">
                                    <?php the_field('text-2'); ?>
                                </div>
                                <p><span class="fweight-700 color-link"><?php the_field('avtor'); ?></span>, <?php the_field('publishing'); ?></p>
                            </blockquote>
                        </div>
                        <?php
                    }

                    wp_reset_postdata(); // сброс

                    ?>
                </div>
                <!-- End Swiper Wrapper -->

                <!-- Pagination -->
                <div class="swiper-testimonials-pagination"></div>
            </div>
            <!-- End Swiper Testimonials -->
        </div>
    </div>
    <!--// end row -->
</div>
<!-- End Testimonials -->

    <!-- Clients -->
    <div class="bg-color-sky-light">
        <div class="content-lg container">
            <!-- Swiper Clients -->
            <div class="swiper-slider swiper-clients">
                <!-- Swiper Wrapper -->
                <div class="swiper-wrapper">
                    <?php
                    // параметры по умолчанию
                    $args = array(
                        'numberposts' => 0,
                        'category' => 9,
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
                        <div class="swiper-slide">
                            <?php if ( has_post_thumbnail() ) {
                                the_post_thumbnail($size = 'post_thumbnail', $attr = 'class=swiper-clients-img');
                            } ?>
                        </div>
                        <?php
                    }

                    wp_reset_postdata(); // сброс

                    ?>

                </div>
                <!-- End Swiper Wrapper -->
            </div>
            <!-- End Swiper Clients -->
        </div>
    </div>
    <!-- End Clients -->
<!--========== END PAGE LAYOUT ==========-->
<?php get_footer();
