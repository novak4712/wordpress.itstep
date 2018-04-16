<?php
/*
Template Name: FAQ
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
    <!-- Service -->
    <div class="bg-color-sky-light" data-auto-height="true">
        <div class="content-lg container">
            <div class="row row-space-1 margin-b-2">
                <?php
                // параметры по умолчанию
                $args = array(
                    'numberposts' => 2,
                    'category'    => 7,
                    'orderby'     => 'date',
                    'order'       => 'DESC',
                    'include'     => array(62,64),
                    'exclude'     => array(),
                    'meta_key'    => '',
                    'meta_value'  =>'',
                    'post_type'   => 'post',
                    'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
                );

                $posts = get_posts( $args );

                foreach($posts as $post){ setup_postdata($post);
                    ?>
                    <div class="col-sm-6 sm-margin-b-2">
                        <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".2s">
                            <div class="service" data-height="height">
                                <h3><?php the_title(); ?></h3>
                                <?php the_content(); ?>
                                <a href="#" class="content-wrapper-link"></a>
                            </div>
                        </div>
                    </div>
                    <?php
                }

                wp_reset_postdata(); // сброс

                ?>
            </div>
            <!--// end row -->

            <div class="row row-space-1 margin-b-2">
                <?php
                // параметры по умолчанию
                $args = array(
                    'numberposts' => 2,
                    'category'    => 7,
                    'orderby'     => 'date',
                    'order'       => 'DESC',
                    'include'     => array(60,66),
                    'exclude'     => array(),
                    'meta_key'    => '',
                    'meta_value'  =>'',
                    'post_type'   => 'post',
                    'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
                );

                $posts = get_posts( $args );

                foreach($posts as $post){ setup_postdata($post);
                    ?>
                    <div class="col-sm-6 sm-margin-b-2">
                        <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".2s">
                            <div class="service" data-height="height">
                                <h3><?php the_title(); ?></h3>
                                <?php the_content(); ?>
                                <a href="#" class="content-wrapper-link"></a>
                            </div>
                        </div>
                    </div>
                    <?php
                }

                wp_reset_postdata(); // сброс

                ?>
            </div>
            <!--// end row -->

            <div class="row row-space-1">
                <?php
                // параметры по умолчанию
                $args = array(
                    'numberposts' => 2,
                    'category'    => 7,
                    'orderby'     => 'date',
                    'order'       => 'DESC',
                    'include'     => array(55,57),
                    'exclude'     => array(),
                    'meta_key'    => '',
                    'meta_value'  =>'',
                    'post_type'   => 'post',
                    'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
                );

                $posts = get_posts( $args );

                foreach($posts as $post){ setup_postdata($post);
                    ?>
                    <div class="col-sm-6 sm-margin-b-2">
                        <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".2s">
                            <div class="service" data-height="height">
                                <h3><?php the_title(); ?></h3>
                                <?php the_content(); ?>
                                <a href="#" class="content-wrapper-link"></a>
                            </div>
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
    <!-- End Service -->

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
                        the_post_thumbnail($size = 'Questions', $attr = 'img-responsive');
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
                    </div>
                </div>
            </div>
            <!--// end row -->
        </div>
    </div>
    <!-- End Pricing -->
    <!--========== END PAGE LAYOUT ==========-->
<?php get_footer();
