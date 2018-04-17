<?php
/*
Template Name: Products
*/
?>
<?php get_header(); ?>

    <div class="parallax-window" data-parallax="scroll" data-image-src="<?php echo get_template_directory_uri(); ?>/assets/img/1920x1080/01.jpg" style="background: url(<?php echo get_template_directory_uri(); ?>/assets/img/1920x1080/01.jpg)">
        <div class="parallax-content container">
            <h1 class="carousel-title">PRODUCTS</h1>
            <p>Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua <br/> enim minim estudiat veniam siad venumus dolore</p>
        </div>
    </div>

<!--========== PAGE LAYOUT ==========-->
<!-- Our Exceptional Solutions -->
<div class="content-lg container">
    <div class="row margin-b-40">
        <div class="col-sm-6">
            <?php
            // параметры по умолчанию
            $args = array(
                'numberposts' => 1,
                'category' => 8,
                'orderby' => 'date',
                'order' => 'DESC',
                'include' => array(110),
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

                    <h2><?php the_title(); ?></h2>
                    <?php the_content(); ?>

                <?php
            }

            wp_reset_postdata(); // сброс

            ?>
        </div>
    </div>
    <!--// end row -->

    <div class="row margin-b-50">
        <!-- Our Exceptional Solutions -->
        <?php
        // параметры по умолчанию
        $args = array(
            'numberposts' => 3,
            'category' => 8,
            'orderby' => 'date',
            'order' => 'ASC',
            'include' => array(),
            'exclude' => array(80,110),
            'meta_key' => '',
            'meta_value' => '',
            'post_type' => 'post',
            'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
        );

        $posts = get_posts($args);

        foreach ($posts as $post) {
            setup_postdata($post);
            ?>
            <div class="col-sm-4 sm-margin-b-50">
                <div class="margin-b-20">
                    <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                        <?php if ( has_post_thumbnail() ) {
                            the_post_thumbnail($size = 'post_thumbnail', $attr = 'class=img-responsive');
                        } ?>

                    </div>
                </div>
                <h4><a href="#"><?php the_title(); ?></a> <span class="text-uppercase margin-l-20"><?php the_field('activity'); ?></span></h4>
                <?php the_content(); ?>
                <a class="link" href="#">Read More</a>
            </div>
            <?php
        }

        wp_reset_postdata(); // сброс

        ?>
        <!-- End Our Exceptional Solutions -->
    </div>
    <!--// end row -->

    <div class="row">
        <!-- Our Exceptional Solutions -->
        <?php
        // параметры по умолчанию
        $args = array(
            'numberposts' => 3,
            'category' => 8,
            'orderby' => 'date',
            'order' => 'DESC',
            'include' => array(),
            'exclude' => array(80,110),
            'meta_key' => '',
            'meta_value' => '',
            'post_type' => 'post',
            'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
        );

        $posts = get_posts($args);

        foreach ($posts as $post) {
            setup_postdata($post);
            ?>
            <div class="col-sm-4 sm-margin-b-50">
                <div class="margin-b-20">
                    <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                        <?php if ( has_post_thumbnail() ) {
                            the_post_thumbnail($size = 'post_thumbnail', $attr = 'class=img-responsive');
                        } ?>

                    </div>
                </div>
                <h4><a href="#"><?php the_title(); ?></a> <span class="text-uppercase margin-l-20"><?php the_field('activity'); ?></span></h4>
                <?php the_content(); ?>
                <a class="link" href="#">Read More</a>
            </div>
            <?php
        }

        wp_reset_postdata(); // сброс

        ?>
        <!-- End Our Exceptional Solutions -->
    </div>
    <!--// end row -->
</div>
<!-- End Our Exceptional Solutions -->

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
                    the_post_thumbnail($size = 'post_thumbnail', $attr = 'class=img-responsive');
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