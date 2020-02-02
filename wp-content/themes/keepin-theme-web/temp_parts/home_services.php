<?php 
/*** Plantilla para el home Servicios fifth***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'services',
    'order'=>'ASC',
	'posts_per_page'=>6
));
?>

<div id="services" class="col-12 row">
    <?php if ($nuevo_arreglo->have_posts()) : 
        while ($nuevo_arreglo->have_posts()) : $nuevo_arreglo->the_post();?>
            <div class="pt-2 col-12 col-lg-6 p-lg-0 m-lg-0 d-lg-flex 
                        flex-lg-row flex-lg-column align-self-lg-center
                        pl-lg-5 pr-lg-5">

                <div class="p-0 m-0 col-lg-12 d-flex pl-lg-5 pr-lg-5">
                    <!--a class="titulo_services " href="<?php the_permalink(); ?>"-->
                    <span class="titulo_services">
                        <?php the_title(); ?>
                        <div class="sub-tit p-0 m-0 col-lg-12 ">
                            <?php echo get_post_meta($post->ID, 'titulo', true); ?>
                        </div>
                    </span>
                </div>
                <div class="p-0 m-0 pt-2 post_services col-lg-12 d-flex pl-lg-5 pr-lg-5">
                    <?php the_excerpt();?>
                </div>
            </div>
        <?php endwhile;?>
    <?php endif;?>
</div>