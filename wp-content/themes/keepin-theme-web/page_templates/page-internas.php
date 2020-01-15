<?php
/*
Template Name:Internas
Template Post Type: page
 */
get_header();
     if ( have_posts() ) { 
        while ( have_posts() ) : the_post();
            ?>
            <div class="page-internas">
                <h2 class="page-internas-titulo"><?php the_title(); ?></h2>
                <div class="page-internas-contenido"><?php the_content();?></div>
            </div><!-- /.blog-post -->
            <?php
        endwhile;
    } 
?>
</div><!-- /.blog-main -->
<?php get_footer(); ?>