<?php 
/*
Template Name:Team
Template Post Type: page
Esta es la plantilla para el Team del menu
*/
get_header();
    
    //$total = $wp_query->query_vars["posts_per_page"];
    $imgteam = get_option( 'imgteam', '' );
    $nuevo_arreglo = new WP_Query(array(
        'post_type'=>'post', 
        'category_name' => 'team',
        'order'  =>'ASC',
        'posts_per_page'=>8
    ));
    $total = $nuevo_arreglo->post_count;
?>
<div class="container-fluid col-12 d-lg-none p-0 m-0">
    <div class="row col-xs-12 col-lg-none p-0 m-0">
        <?php
        if ($nuevo_arreglo->have_posts()) :?>
            <div class="col-12 p-2 text-center">
                <img src="<?php echo get_template_directory_uri() . '/img/ico-instagram.png'; ?>">
            </div>
            <div class="col-12 text-center titleteam_page">
                <?php the_title(); ?>
            </div>
            <div class="col-12 text-center subteam_page">
                <?php echo get_post_meta($post->ID, 'subtitulo', true); ?>
            </div>
            <div class="col-12 text-center pt-3 pr-4 pl-4 textteam_page">
                <?php the_excerpt();?>
            </div>
    <div>
    <div class="col-12 mt-5" style="background-color:#413a4d; height:10px;">&nbsp;</div>
    <div class="row col-12 p-0 m-0">
        <?php
        $i=1;
        while ($nuevo_arreglo->have_posts()):
             $nuevo_arreglo->the_post();
            if ($i==$total && ($total%2!=0) ){
                $col=6;
                $cla="auto";
            }else{
                $col=6;
            }
            ?>
                <div class="col-<?=$col;?> text-center mx-<?=$cla?> p-1">
                    <?php the_post_thumbnail('medium');?>
                    <div class="col-12 text-center contteam_post ">
                        <a class="text-center titleteam_post text-white" href="<?php the_permalink(); ?>">
                            <?php the_title(); ?>
                            <p class="col-12 subteam_post text-white"><?php echo get_post_meta($post->ID, 'titulo', true); ?></p>
                        </a>
                    </div>
                </div>
            <?php
        $i++; 
        endwhile;
        ?>
    </div>
    <?php endif;?>
</div>

</div><!-- /.blog-main -->
<?php get_footer(); ?>