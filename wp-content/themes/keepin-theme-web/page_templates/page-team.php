<?php 
/*
Template Name:Team
Template Post Type: page
Esta es la plantilla para el Team del menu
*/
get_header();
    $imgteam = get_option( 'imgteam', '' );
    $nuevo_arreglo = new WP_Query(array(
        'post_type'=>'post', 
        'category_name' => 'team',
        'posts_per_page'=>6
    ));
?>
<div class="container-fluid col-12 d-lg-none p-0 m-0">
    <div class="row col-xs-12 col-lg-none p-0 m-0">
        <?php if ($nuevo_arreglo->have_posts()) :?>
            <div class="col-12 p-2 text-center">
                <img src="<?php echo get_template_directory_uri() . '/img/ico-instagram.png'; ?>">
            </div>
            <div class="col-12 text-center">
                <?php the_title(); ?>
            </div>
            <div class="col-12 text-center">
                <?php echo get_post_meta($post->ID, 'subtitulo', true); ?>
            </div>
            <div class="col-12 text-center pt-3 pr-2 pl-2">
                <?php the_excerpt();?>
            </div>
    <div>
    <div class="col-12 mt-2" style="background-color:#413a4d; height:10px;">&nbsp;</div>
    <div class="row">
        <?php
        while ($nuevo_arreglo->have_posts()) :
            $nuevo_arreglo->the_post();?>
                <div class="col-6">
                    <div class="col-12 text-center">
                        <?php the_post_thumbnail('medium');?>
                        <a class="text-center" href="<?php the_permalink(); ?>">
                            <?php the_title(); ?>
                            <p><?php echo get_post_meta($post->ID, 'titulo', true); ?></p>
                        </a>
                    </div>
                </div>
        <?php endwhile;?>
    </div>
    <?php endif;?>
</div>

</div><!-- /.blog-main -->
<?php get_footer(); ?>