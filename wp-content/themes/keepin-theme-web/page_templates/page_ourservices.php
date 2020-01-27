<?php 
/*
Template Name:OurServices
Template Post Type: page
Esta es la plantilla para el Team del menu
*/
get_header();
$imgteam = get_option( 'imgteam', '' );
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'services',
    'order'=>'ASC',
	'posts_per_page'=>4
));
?>
<div class="container-fluid col-xs-12 d-lg-none p-0 m-0">
    <div class="row col-xs-12 col-lg-none p-0 m-0">
        <?php if ($nuevo_arreglo->have_posts()) :?>
            <div class="col-12 p-2 text-center">
                <img src="<?php echo get_template_directory_uri() . '/img/ico-instagram.png'; ?>">
            </div>
            <div class="col-12 text-center">
                <?php echo get_post_meta($post->ID, 'subtitulo', true); ?>
            </div>
            <div class="col-12 text-center">
                <?php echo get_post_meta($post->ID, 'sub_titulo', true); ?>
            </div>
            <div class="col-12 text-center pt-3 pr-2 pl-2">
                <?php the_excerpt();?>
            </div>
    <div>
    <div class="col-12 mt-4" style="background-color:#413a4d; height:10px;">&nbsp;</div>
    <div class="row col-12 p-0 m-0 d-flex align-items-center justify-content-center mx-auto">
                <?php while ($nuevo_arreglo->have_posts()) :
                    $nuevo_arreglo->the_post();?>
                        <div class="col-12">
                            <a class="" href="<?php the_permalink(); ?>"><?php the_title(); ?>
                                <br>
                                <?php echo get_post_meta($post->ID, 'titulo', true); ?>
                            </a>
                                <div class="post_services pt-2"><?php the_excerpt();?></div>
                        </div>
                        <a class="col-12" href="<?php the_permalink(); ?>">
                            <div class="col-12 mb-3 rounded"> 
                                <button type="button" class="btn btn-success col-12 pl-5 pr-5 ">
                                    Learn more
                                </button> 
                            </div>
                        </a>
                <?php endwhile;?>
        <?php endif;?>
    </div>
</div>
<?php get_footer(); ?>
