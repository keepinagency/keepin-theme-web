<?php
    // Obtenemos la página seleccionada en el personalizador
    $mod = get_theme_mod( 'page-home-superior' );
	if ( 'page-none-selected' != $mod ) {
		$pagesel[] = $mod;
    }
    
    $args = array(
        'posts_per_page' => 1,
        'post_type' => 'page',
        'post__in' => $pagesel,
        'orderby' => 'post__in'
    );

    $query = new WP_Query( $args );

    if ( $query->have_posts() ){
        $count = 1;
        while ( $query->have_posts() ) : $query->the_post();
        ?>
            <?php the_content(); ?>
        <?php
        $count++;
        endwhile;
    }else{
        if ( current_user_can( 'customize' ) ) { ?>
            <div class="message">
                <p><?php _e( 'There are no pages available to display.', 'textdomain' ); ?></p>
                <p><?php printf(
                    __( 'These pages can be set in the <a href="%s">customizer</a>.', 'textdomain' ),
                    admin_url( 'customize.php?autofocus[control]=showcase' )
                ); ?>
                </p>
            </div>
        <?php 
        }
    }

?>