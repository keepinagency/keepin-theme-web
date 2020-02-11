<?php 
/*** 
 *  Portafolio en home, categoría de entradas    
 *  Categoría: portfolio   
 ***/     
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'portfolio',
    'order'=>'ASC',
	'posts_per_page'=>3
));
?>
<div class="row container-fluid col-12 p-0 m-0 justify-content-lg-center">
    <?php if ($nuevo_arreglo->have_posts()) : 
        while ($nuevo_arreglo->have_posts()) : $nuevo_arreglo->the_post();?>
                <div class="col-lg-1 d-none d-sm-block">
                    &nbsp
                </div>
                <div class="portf d-flex d-flex-row col-12 col-lg-10 p-0 pt-3 pb-3 m-0">
                    
                    <div class="col-10 col-lg-10 ml-lg-3">
                        <a class="titulo_portfolio p-0 m-0" href="<?php the_permalink(); ?>">
                            <div class="p-0 m-0 pl-lg-5 text-white">
                                <?php the_title();?>
                            </div>
                            <div class="post_portfolio p-0 m-0 pl-lg-5 text-white">
                                <?php echo get_post_meta($post->ID, 'titulo', true); ?>
                            </div>
                        </a>
                    </div>
                    <div class="col-2 d-flex align-items-center align-self-lg-end p-0 m-0 col-lg-2 pl-lg-5 ml-lg-3">
                        <a class="p-0 m-0 text-white " href="<?php the_permalink(); ?>">
                            <img src="<?php echo get_template_directory_uri() . '/img/btn-vermas_trans.png'; ?>">
                        </a>
                    </div>

                </div>                    
                <div class="col-lg-1 d-none d-sm-block">
                    &nbsp
                </div>
                <div class="d-none d-sm-block col-lg-12 p-lg-0 img-port pt-lg-3 pb-lg-3 text-center">
                    <?php the_post_thumbnail('large');?>
                </div>  
                <div class="d-flex align-items-center justify-content-center
                            col-12 pt-2 pb-4 m-0 d-lg-none"
                     >
                    <?php 
                    the_post_thumbnail('medium', ['class' => 'img-portafolio', 'title' => 'Portafolio imagen']);
                     ?>
                </div>
        <?php endwhile; wp_reset_postdata();?>

    <?php endif;?>
</div>