<?php
/*
Template Name: About
*/
?>
<?php get_header(); ?>
    <div class="parallax-window" data-parallax="scroll" data-image-src="<?php echo get_template_directory_uri(); ?>/assets/img/1920x1080/01.jpg" style="background: url(<?php echo get_template_directory_uri(); ?>/assets/img/1920x1080/01.jpg)">
        <div class="parallax-content container">
            <h1 class="carousel-title">ABOUT US</h1>
            <p>Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua <br/> enim minim estudiat veniam siad venumus dolore</p>
        </div>
    </div>
<!--========== PAGE LAYOUT ==========-->
<!-- Features -->
<div class="section-seperator">
    <div class="content-lg container">
        <div class="row">
            <?php
            // параметры по умолчанию
            $args = array(
                'numberposts' => 0,
                'category' => 14,
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
                <div class="col-sm-4 sm-margin-b-50">
                    <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".3s">
                        <h3><?php the_title(); ?></h3>
                        <?php the_content(); ?>
                        <a class="link" href="#">Read More</a>
                    </div>
                </div>
                <?php
            }

            wp_reset_postdata(); // сброс

            ?>
        </div>
        <!--// end row -->
    </div>
</div>
<!-- End Features -->

    <!-- General Questions -->
    <div class="content-lg container">
        <div class="row margin-b-20">
            <div class="col-sm-6">
                <?php
                // параметры по умолчанию
                $args = array(
                    'numberposts' => 0,
                    'category' => 13,
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
                    <h2><?php the_title(); ?></h2>
                    <?php
                }

                wp_reset_postdata(); // сброс

                ?>
            </div>
        </div>
        <!--// end row -->

        <div class="row">
            <?php
            // параметры по умолчанию
            $args = array(
                'numberposts' => 0,
                'category' => 13,
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
                <div class="col-sm-7 sm-margin-b-50">
                    <div class="margin-b-30">
                        <?php the_field('text-1'); ?>
                    </div>
                    <?php the_field('text-2'); ?>
                </div>
                <div class="col-sm-4 col-sm-offset-1">
                    <?php if ( has_post_thumbnail() ) {
                        the_post_thumbnail($size = 'Questions', $attr = 'class=img-responsive');
                    } ?>

                </div>
                <?php
            }

            wp_reset_postdata(); // сброс

            ?>

        </div>
        <!--// end row -->
    </div>
    <!-- End General Questions -->

    <!-- Service -->
    <div class="bg-color-sky-light" data-auto-height="true">
        <div class="content-lg container">
            <div class="row row-space-1 margin-b-2">
                <?php
                // параметры по умолчанию
                $args = array(
                    'numberposts' => 3,
                    'category'    => 7,
                    'orderby'     => 'date',
                    'order'       => 'DESC',
                    'include'     => array(55,57,60),
                    'exclude'     => array(),
                    'meta_key'    => '',
                    'meta_value'  =>'',
                    'post_type'   => 'post',
                    'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
                );

                $posts = get_posts( $args );

                foreach($posts as $post){ setup_postdata($post);
                    ?>
                    <div class="col-sm-4 sm-margin-b-2">
                        <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".3s">
                            <div class="service" data-height="height">
                                <div class="service-element">
                                    <?php the_field("simple_icons"); ?>
                                </div>
                                <div class="service-info">
                                    <h3><?php the_title(); ?></h3>
                                    <?php the_content(); ?>
                                </div>
                                <a href="#" class="content-wrapper-link"></a>
                            </div>
                        </div>
                    </div>
                    <?php
                }

                wp_reset_postdata(); // сброс

                ?>
            </div>
            <div class="row row-space-1 margin-b-2">
                <?php
                // параметры по умолчанию
                $args = array(
                    'numberposts' => 3,
                    'category'    => 7,
                    'orderby'     => 'date',
                    'order'       => 'DESC',
                    'include'     => array(62,64,66),
                    'exclude'     => array(),
                    'meta_key'    => '',
                    'meta_value'  =>'',
                    'post_type'   => 'post',
                    'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
                );

                $posts = get_posts( $args );

                foreach($posts as $post){ setup_postdata($post);
                    ?>
                    <div class="col-sm-4 sm-margin-b-2">
                        <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".3s">
                            <div class="service" data-height="height">
                                <div class="service-element">
                                    <?php the_field("simple_icons"); ?>
                                </div>
                                <div class="service-info">
                                    <h3><?php the_title(); ?></h3>
                                    <?php the_content(); ?>
                                </div>
                                <a href="#" class="content-wrapper-link"></a>
                            </div>
                        </div>
                    </div>
                    <?php
                }

                wp_reset_postdata(); // сброс

                ?>
            </div>
        </div>
    </div>
    <!-- End Service -->

<!-- Testimonials -->
<div class="content-lg container">
    <div class="row">
        <div class="col-sm-9">
            <h2>Notes From CEO</h2>

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

<!-- Team -->
<div class="bg-color-sky-light">
    <div class="content-lg container">
        <div class="row margin-b-40">
            <div class="col-sm-6">
                <h2>Meet the Team</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>
            </div>
        </div>
        <!--// end row -->

        <div class="row">
            <!-- Team -->
            <?php
            // параметры по умолчанию
            $args = array(
                'numberposts' => 0,
                'category' => 15,
                'orderby' => 'date',
                'order' => 'ASC',
                'include' => array(),
                'exclude' => array(173),
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
                    <div class="bg-color-white margin-b-20">
                        <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                            <?php if ( has_post_thumbnail() ) {
                                the_post_thumbnail($size = 'Team', $attr = 'class=img-responsive');
                            } ?>
                        </div>
                    </div>
                    <h4><a href="#"><?php the_title(); ?></a> <span class="text-uppercase margin-l-20"><?php the_field('position'); ?></span></h4>
                    <?php the_content(); ?>
                    <a class="link" href="#">Read More</a>
                </div>
                <?php
            }

            wp_reset_postdata(); // сброс

            ?>
            <!-- End Team -->
        </div>
        <!--// end row -->
    </div>
</div>
<!-- End Team -->
<!--========== END PAGE LAYOUT ==========-->
<?php get_footer();
