<?php 
/*
Template Name:OurServices
Template Post Type: page
Esta es la plantilla para el Team del menu
*/
get_header();
$imgservices = get_option( 'imgservices', '' );
$texctaour = get_option('texto-cta-ourpage');
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'services',
    'order'=>'ASC',
	'posts_per_page'=>6
));
?>
<div class="container-fluid p-0 m-0">
    <div class="row col-12 p-0 m-0">
        <?php if ($nuevo_arreglo->have_posts()) :?>
            <div class="col-12 p-2 text-center">
                <img src="<?php echo $imgservices; ?>">
            </div>
            <div class="subourpage col-12 text-center col-lg-6 text-lg-right p-lg-0 pr-lg-1 m-lg-0">
                <?php echo get_post_meta($post->ID, 'subtitulo', true); ?>
            </div>
            <div class="sub_ourpage col-12 text-center col-lg-6 text-lg-left p-lg-0 pl-lg-1 m-lg-0">
                <?php echo get_post_meta($post->ID, 'sub_titulo', true); ?>
            </div>
            <div class="col-lg-2 d-none d-sm-block">
                &nbsp
            </div>
            <div class="text-ourpage col-12 text-center pt-3 pr-4 pl-4 col-lg-8">
                <?php the_excerpt();?>
            </div>
            <div class="col-lg-2 d-none d-sm-block">
                &nbsp
            </div>
    <div>
    <div class="col-12 mt-3" style="background-color:#413a4d; height:10px;">&nbsp;</div>

    <div class="row col-12 pt-3 col-lg-12 p-0 m-0 d-flex align-items-center 
                justify-content-center mx-auto pt-lg-5">
                <?php while ($nuevo_arreglo->have_posts()) :
                    $nuevo_arreglo->the_post();?>
                    <div class="pt-2 col-12 col-lg-6 p-lg-0 m-lg-0 d-lg-flex 
                                flex-lg-row flex-lg-column align-self-lg-center
                                pl-lg-5 pr-lg-5 pb-lg-5 mb-lg-5">

                        <div class="p-0 m-0 col-lg-12 d-flex">
                            <a class="titulo_services pl-3" href="<?php the_permalink(); ?>"><?php the_title(); ?>
                                <div class="sub-ourpage p-0 m-0 col-lg-12 ">
                                    <?php echo get_post_meta($post->ID, 'titulo', true); ?>
                                </div>
                            </a>
                        </div>
                        <div class="pr-3 pl-3 pt-2 text-ourpage col-lg-12 d-flex">
                            <?php the_excerpt();?>
                        </div>
                        <a class="col-12 text-lg-right" href="<?php the_permalink(); ?>">
                            <div class="col-12 mb-3 rounded "> 
                                <button type="button" class="btn btn-ourpage col-12 pl-5 pr-5 
                                                            text-white col-lg-6">
                                    <?php echo $texctaour;?>
                                </button> 
                            </div>
                        </a>
                    </div>
                <?php endwhile;?>
        <?php endif;?>
    </div>
</div>
<?php get_footer();?>