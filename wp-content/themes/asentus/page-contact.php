<?php
/*
Template Name: Contact
*/
?>
<?php get_header(); ?>
    <div class="parallax-window" data-parallax="scroll" data-image-src="<?php echo get_template_directory_uri(); ?>/assets/img/1920x1080/01.jpg" style="background: url(<?php echo get_template_directory_uri(); ?>/assets/img/1920x1080/01.jpg)">
        <div class="parallax-content container">
            <h1 class="carousel-title">CONTACT</h1>
            <p>Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua <br/> enim minim estudiat veniam siad venumus dolore</p>
        </div>
    </div>

    <!--========== PAGE LAYOUT ==========-->
    <!-- Contact List -->
    <div class="section-seperator">
        <div class="content-lg container">
            <div class="row">


                <?php
                // параметры по умолчанию
                $args = array(
                    'numberposts' => 0,
                    'category' => 16,
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
                            <h3><a href="#"><?php the_title(); ?></a> <span class="text-uppercase margin-l-20"><?php the_field('adress') ?></span></h3>
                            <?php the_content(); ?>
                            <ul class="list-unstyled contact-list">
                                <li><i class="margin-r-10 color-base icon-call-out"></i><?php the_field('telefon') ?></li>
                                <li><i class="margin-r-10 color-base icon-envelope"></i><?php the_field('email') ?></li>
                            </ul>
                        </div>
                    </div>
                    <?php
                }

                wp_reset_postdata(); // сброс

                ?>
                <!-- End Contact List -->
            </div>
            <!--// end row -->
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
