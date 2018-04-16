<!--========== FOOTER ==========-->
<footer class="footer">
    <!-- Links -->
    <div class="footer-seperator">
        <div class="content-lg container">
            <div class="row">
                <div class="col-sm-2 sm-margin-b-50">
                    <!-- List -->
                    <?php
                    wp_nav_menu(array(
                        'theme_location'  => 'bottom_menu',
                        'menu'            => 'bottom menu',
                        'container'       => 'ul',
                        'container_class' => '',
                        'container_id'    => '',
                        'menu_class'      => 'list-unstyled footer-list',
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

                    <!-- End List-->
             </div>
             <div class="col-sm-4 sm-margin-b-30">
                 <!-- List -->
                 <?php
                 wp_nav_menu(array(
                     'theme_location'  => 'social_menu',
                     'menu'            => 'social menu',
                     'container'       => 'ul',
                     'container_class' => '',
                     'container_id'    => '',
                     'menu_class'      => 'list-unstyled footer-list',
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
                    <!-- End List -->
                </div>
                <div class="col-sm-5 sm-margin-b-30">
                    <h2 class="color-white">Send Us A Note</h2>
                    <input type="text" class="form-control footer-input margin-b-20" placeholder="Name" required>
                    <input type="email" class="form-control footer-input margin-b-20" placeholder="Email" required>
                    <input type="text" class="form-control footer-input margin-b-20" placeholder="Phone" required>
                    <textarea class="form-control footer-input margin-b-30" rows="6" placeholder="Message" required></textarea>
                    <button type="submit" class="btn-theme btn-theme-sm btn-base-bg text-uppercase">Submit</button>
                </div>
            </div>
            <!--// end row -->
        </div>
    </div>
    <!-- End Links -->

</footer>
<!--========== END FOOTER ==========-->

<!-- Back To Top -->
<a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>
<?php wp_footer(); ?>
</body>
<!-- END BODY -->
</html>