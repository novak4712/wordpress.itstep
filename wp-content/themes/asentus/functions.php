<?php

add_action('wp_enqueue_scripts', 'asentus_scripts');

function asentus_scripts()
{
    wp_enqueue_style('main', get_stylesheet_uri());
    wp_enqueue_style('simple-line-icons',
        get_template_directory_uri() . '/assets/vendor/simple-line-icons/simple-line-icons.min.css');
    wp_enqueue_style('bootstrap', get_template_directory_uri() . '/assets/vendor/bootstrap/css/bootstrap.min.css');
    wp_enqueue_style('animate', get_template_directory_uri() . '/assets/css/animate.css');
    wp_enqueue_style('swiper.min', get_template_directory_uri() . '/assets/vendor/swiper/css/swiper.min.css');
    wp_enqueue_style('layout.min', get_template_directory_uri() . '/assets/css/layout.min.css');
}

add_action('wp_footer', 'asentus_scripts_footer');
function asentus_scripts_footer()
{
    //
}

add_action('wp_enqueue_scripts', 'jquery_lib');
function jquery_lib()
{
    wp_enqueue_script('jquery.min', get_template_directory_uri() . '/assets/vendor/jquery.min.js', array(), null, true);
    wp_enqueue_script('jquery-migrate', get_template_directory_uri() . '/assets/vendor/jquery-migrate.min.js',
        array('jquery.min'), null, true);
    wp_enqueue_script('bootstrap', get_template_directory_uri() . '/assets/vendor/bootstrap/js/bootstrap.min.js',
        array('jquery.min'), null, true);
    wp_enqueue_script('jquery.easing', get_template_directory_uri() . '/assets/vendor/jquery.easing.js',
        array('jquery.min'), null, true);
    wp_enqueue_script('jquery.back-to-top', get_template_directory_uri() . '/assets/vendor/jquery.back-to-top.js',
        array('jquery.min'), null, true);
    wp_enqueue_script('jquery.smooth-scroll', get_template_directory_uri() . '/assets/vendor/jquery.smooth-scroll.js',
        array('jquery.min'), null, true);
    wp_enqueue_script('jquery.wow', get_template_directory_uri() . '/assets/vendor/jquery.wow.min.js',
        array('jquery.min'), null, true);
    wp_enqueue_script('swiper', get_template_directory_uri() . '/assets/vendor/swiper/js/swiper.jquery.min.js',
        array('jquery.min'), null, true);
    wp_enqueue_script('jquery.masonry',
        get_template_directory_uri() . '/assets/vendor/masonry/jquery.masonry.pkgd.min.js', array('jquery.min'), null,
        true);
    wp_enqueue_script('imagesloaded', get_template_directory_uri() . '/assets/vendor/masonry/imagesloaded.pkgd.min.js',
        array('jquery.min'), null, true);
    wp_enqueue_script('layout.min', get_template_directory_uri() . '/assets/js/layout.min.js', array('jquery.min'),
        null, true);
    wp_enqueue_script('wow.min', get_template_directory_uri() . '/assets/js/components/wow.min.js', array('jquery.min'),
        null, true);
    wp_enqueue_script('swiper.min', get_template_directory_uri() . '/assets/js/components/swiper.min.js',
        array('jquery.min'), null, true);
    wp_enqueue_script('masonry.min', get_template_directory_uri() . '/assets/js/components/masonry.min.js',
        array('jquery.min'), null, true);
}

add_action('after_setup_theme', 'asentus_register_nav_menu');
function asentus_register_nav_menu()
{
    register_nav_menu('top_menu', 'Top Menu');
    register_nav_menu('social_menu', 'Social Menu');
    register_nav_menu('bottom_menu', 'Bottom Menu');
}

add_filter('nav_menu_css_class', 'nav_css_filter');
function nav_css_filter($classes)
{
    // Здесь добавить или убрать классы...
    return $classes;
}

add_filter('nav_menu_link_attributes', 'nav_link_filter', 10, 4);

function nav_link_filter($atts, $item, $args, $depth){
    if($atts['rel'] == 'top'){
        $atts['class'] = 'nav-item-child nav-item-hover';
    }elseif ($atts['rel'] == 'bottom'){
        $atts['class'] = 'footer-list-link';
    }

    return $atts;

}
add_theme_support( 'post-thumbnails' );
add_image_size('Team', '360', '420', 'true');
add_image_size('Questions', '360', '213', 'true');