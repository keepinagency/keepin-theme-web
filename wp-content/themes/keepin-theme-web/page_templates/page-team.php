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
<div class="container-fluid border border-danger col-12 p-0 m-0">
    <?php
    if ($nuevo_arreglo->have_posts()) :?>
        <!-- Header Team -->
        <div class="col-12 p-0 m-0 row ">
                <div class="col-12 p-2 text-center">
                    <img src="<?php echo $imgteam; ?>">
                </div>
                <div class="col-12 text-center titleteam_page">
                    <?php the_title(); ?>
                </div>
                <div class="col-12 text-center subteam_page">
                    <?php echo get_post_meta($post->ID, 'subtitulo', true); ?>
                </div>
                <div class="col-lg-2 d-none d-sm-block">
                    &nbsp
                </div>
                <div class="col-12 col-lg-8 text-center pt-3 pr-4 pl-4 textteam_page">
                    <?php the_excerpt();?>
                </div>
                <div class="col-lg-2 d-none d-sm-block">
                    &nbsp
                </div>
        <div>

        <div class="col-12 mt-2 border border-warning" style="background-color:#413a4d; height:10px;">&nbsp;</div>

        <div class="row col-12 p-0 m-0 pl-lg-4 pr-lg-4 d-flex justify-content-around">
            <?php
            $i=1;
            while ($nuevo_arreglo->have_posts()):
                $nuevo_arreglo->the_post();
                ?>
                    <div class="col-6 col-lg-4 text-center p-3">
                        
                        
                        <div class="imgteam_indv d-flex justify-content-center col-12 pt-2 pb-0 m-0"
                            style="background-image: url('<?php echo get_the_post_thumbnail_url('');?>');">
                            &nbsp;
                        </div>

                        <div class="col-12 text-center contteam_post 
                                    d-flex flex-column justify-content-center p-0 m-0">
                            <span class="text-center titleteam_post text-white ">
                                <?php the_title(); ?>
                            </span>
                            <span class="col-12 subteam_post text-white">
                                <?php echo get_post_meta($post->ID, 'titulo', true); ?>
                            </span>
                        </div>

                    </div>
                <?php
            endwhile;
            ?>
        </div>
    <?php 
    endif;?>
</div>

</div><!-- /.blog-main -->
<?php get_footer(); ?>

