<!DOCTYPE html>
<html lang="en" class="no-js">
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>Asentus</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <!-- GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
    <?php wp_head(); ?>
</head>
<!-- END HEAD -->

<!-- BODY -->
<body>

<!--========== HEADER ==========-->
<header class="header navbar-fixed-top">
    <!-- Navbar -->
    <nav class="navbar" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="menu-container">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="toggle-icon"></span>
                </button>

                <!-- Logo -->
                <div class="logo">
                    <a class="logo-wrap" href="<?php echo get_home_url(); ?>">
                        <img class="logo-img logo-img-main" src="<?php echo get_template_directory_uri(); ?>/assets/img/logo.png" alt="Asentus Logo">
                        <img class="logo-img logo-img-active" src="<?php echo get_template_directory_uri(); ?>/assets/img/logo-dark.png" alt="Asentus Logo">
                    </a>
                </div>
                <!-- End Logo -->
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse nav-collapse">
                <div class="menu-container">

                    <?php
                    wp_nav_menu(array(
                        'theme_location'  => 'top_menu',
                        'menu'            => 'top menu',
                        'container'       => 'ul',
                        'container_class' => '',
                        'container_id'    => '',
                        'menu_class'      => 'navbar-nav navbar-nav-right',
                        'menu_id'         => 'top',
                        'echo'            => true,
                        'fallback_cb'     => 'wp_page_menu',
                        'before'          => '',
                        'after'           => '',
                        'link_before'     => '',
                        'link_after'      => '',
                        'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
                        'depth'           => 0,
                        'walker'          => '',
                    ) );
                    ?>
                </div>
            </div>
            <!-- End Navbar Collapse -->
        </div>
    </nav>
    <!-- Navbar -->
</header>
<!--========== END HEADER ==========-->