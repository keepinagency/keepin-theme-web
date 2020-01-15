<?php get_header(); 
	if ( have_posts() ) { 
		while ( have_posts() ) : the_post();
			?>
			<div class="blog-post">
				<h2 class="blog-post-title"><?php the_title(); ?></h2>
                <?php the_post_thumbnail('medium');?>
				<?php the_content(); ?>
			</div><!-- /.blog-post -->
			<?php
		endwhile;
    } 
?>
        <!--Navegacion para cada entrada o post-->
<div class="navegacion_entradas">
    <?php 
        if ( is_singular( 'post' ) ) {
            the_post_navigation( array(
                'prev_text'          => __( '&nbsp;<' ).'<span class="">%title</span>',
                'next_text'          => '<span class="">%title</span>'.__( '&nbsp;>' ),
                'in_same_term'       => true,
                'screen_reader_text' => __( '&nbsp;' )
            ) );
        }
    ?>
</div>
<?php get_footer();?>