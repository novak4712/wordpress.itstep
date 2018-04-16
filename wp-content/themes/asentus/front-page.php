<?php
/*
Template Name: Главная
*/
?>
<?php get_header(); ?>

    <!--========== SLIDER ==========-->
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
                <img class="img-responsive"
                     src="<?php echo get_template_directory_uri(); ?>/assets/img/1920x1080/01.jpg" alt="Slider Image">
                <div class="container">
                    <div class="carousel-centered">
                        <div class="margin-b-40">
                            <h1 class="carousel-title">Hi-Tech Design</h1>
                            <p>Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua <br/> enim minim
                                estudiat veniam siad venumus dolore</p>
                        </div>
                        <a href="#" class="btn-theme btn-theme-sm btn-white-brd text-uppercase">Explore</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="img-responsive"
                     src="<?php echo get_template_directory_uri(); ?>/assets/img/1920x1080/02.jpg" alt="Slider Image">
                <div class="container">
                    <div class="carousel-centered">
                        <div class="margin-b-40">
                            <h2 class="carousel-title">Hi-Tech Design</h2>
                            <p>Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua <br/> enim minim
                                estudiat veniam siad venumus dolore</p>
                        </div>
                        <a href="#" class="btn-theme btn-theme-sm btn-white-brd text-uppercase">Explore</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--========== SLIDER ==========-->

    <!--========== PAGE LAYOUT ==========-->
    <!-- Service -->
    <div class="bg-color-sky-light" data-auto-height="true">
        <div class="content-lg container">
            <div class="row row-space-1 margin-b-2">
                <?php
                // параметры по умолчанию
                $args = array(
                    'numberposts' => 3,
                    'category' => 7,
                    'orderby' => 'date',
                    'order' => 'DESC',
                    'include' => array(55, 57, 60),
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
                    'category' => 7,
                    'orderby' => 'date',
                    'order' => 'DESC',
                    'include' => array(62, 64, 66),
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

    <!-- Latest Products -->

    <div class="content-lg container">
        <div class="row margin-b-40">
            <?php
            // параметры по умолчанию
            $args = array(
                'numberposts' => 1,
                'category' => 8,
                'orderby' => 'date',
                'order' => 'DESC',
                'include' => array(80),
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
                <div class="col-sm-6">
                    <h2><?php the_title(); ?></h2>

                    <?php the_content(); ?>
                </div>
                <?php
            }

            wp_reset_postdata(); // сброс

            ?>
        </div>
        <!--// end row -->

        <div class="row">
            <!-- Latest Products -->
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
            <!-- End Latest Products -->
        </div>
        <!--// end row -->
    </div>
    <!-- End Latest Products -->

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
                                    the_post_thumbnail($size = 'post_thumbnail', $attr = 'swiper-clients-img');
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

    <!-- Testimonials -->
    <div class="content-lg container">
        <div class="row">
            <div class="col-sm-9">
                <h2>Customer Reviews</h2>

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

    <!-- Work -->
    <div class="bg-color-sky-light overflow-h">
        <div class="content-lg container">
            <div class="row margin-b-40">
                <div class="col-sm-6">
                    <h2>Showcase</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore
                        magna aliqua enim minim veniam exercitation</p>
                </div>
            </div>
            <!--// end row -->

            <!-- Masonry Grid -->
            <div class="masonry-grid">
                <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-8">
                    <!-- Work -->
                    <div class="work wow fadeInUp" data-wow-duration=".3" data-wow-delay=".1s">
                        <div class="work-overlay">
                            <img class="full-width img-responsive"
                                 src="<?php echo get_template_directory_uri(); ?>/assets/img/800x400/01.jpg"
                                 alt="Portfolio Image">
                        </div>
                        <div class="work-content">
                            <h3 class="color-white margin-b-5">Art Of Coding</h3>
                            <p class="color-white margin-b-0">Lorem ipsum dolor sit amet consectetur adipiscing</p>
                        </div>
                        <a class="content-wrapper-link" href="#"></a>
                    </div>
                    <!-- End Work -->
                </div>
                <div class="masonry-grid-item col-xs-6 col-sm-6 col-md-4">
                    <!-- Work -->
                    <div class="work wow fadeInUp" data-wow-duration=".3" data-wow-delay=".2s">
                        <div class="work-overlay">
                            <img class="full-width img-responsive"
                                 src="<?php echo get_template_directory_uri(); ?>/assets/img/397x400/01.jpg"
                                 alt="Portfolio Image">
                        </div>
                        <div class="work-content">
                            <h3 class="color-white margin-b-5">Clean Design</h3>
                            <p class="color-white margin-b-0">Lorem ipsum dolor sit amet consectetur adipiscing</p>
                        </div>
                        <a class="content-wrapper-link" href="#"></a>
                    </div>
                    <!-- End Work -->
                </div>
                <div class="masonry-grid-item col-xs-6 col-sm-6 col-md-4">
                    <!-- Work -->
                    <div class="work wow fadeInUp" data-wow-duration=".3" data-wow-delay=".3s">
                        <div class="work-overlay">
                            <img class="full-width img-responsive"
                                 src="<?php echo get_template_directory_uri(); ?>/assets/img/397x300/01.jpg"
                                 alt="Portfolio Image">
                        </div>
                        <div class="work-content">
                            <h3 class="color-white margin-b-5">Clean Design</h3>
                            <p class="color-white margin-b-0">Lorem ipsum dolor sit amet consectetur adipiscing</p>
                        </div>
                        <a class="content-wrapper-link" href="#"></a>
                    </div>
                    <!-- End Work -->
                </div>
                <div class="masonry-grid-item col-xs-6 col-sm-6 col-md-4">
                    <!-- Work -->
                    <div class="work wow fadeInUp" data-wow-duration=".3" data-wow-delay=".4s">
                        <div class="work-overlay">
                            <img class="full-width img-responsive"
                                 src="<?php echo get_template_directory_uri(); ?>/assets/img/397x300/02.jpg"
                                 alt="Portfolio Image">
                        </div>
                        <div class="work-content">
                            <h3 class="color-white margin-b-5">Clean Design</h3>
                            <p class="color-white margin-b-0">Lorem ipsum dolor sit amet consectetur adipiscing</p>
                        </div>
                        <a class="content-wrapper-link" href="#"></a>
                    </div>
                    <!-- End Work -->
                </div>
                <div class="masonry-grid-item col-xs-6 col-sm-6 col-md-4">
                    <!-- Work -->
                    <div class="work wow fadeInUp" data-wow-duration=".3" data-wow-delay=".5s">
                        <div class="work-overlay">
                            <img class="full-width img-responsive"
                                 src="<?php echo get_template_directory_uri(); ?>/assets/img/397x300/03.jpg"
                                 alt="Portfolio Image">
                        </div>
                        <div class="work-content">
                            <h3 class="color-white margin-b-5">Clean Design</h3>
                            <p class="color-white margin-b-0">Lorem ipsum dolor sit amet consectetur adipiscing</p>
                        </div>
                        <a class="content-wrapper-link" href="#"></a>
                    </div>
                    <!-- End Work -->
                </div>
            </div>
            <!-- End Masonry Grid -->
        </div>
    </div>
    <!-- End Work -->
    <!--========== END PAGE LAYOUT ==========-->

<?php
get_footer();
