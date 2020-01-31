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
                <div class="portfolio d-flex d-flex-row col-12 col-lg-11 p-0 pt-3 pb-3 m-0">
                    <div class="col-10 ">
                        <a class="text-white p-0 m-0" href="<?php the_permalink(); ?>">
                            <div class="titulo_portfolio p-0 m-0">
                                <?php the_title();?>
                            </div>
                            <div class="post_portfolio p-0 m-0">
                                <?php the_content();?>
                            </div>
                        </a>
                    </div>
                    <div class="col-2 d-flex align-items-end p-0 m-0">
                        <a class="p-0 m-0" href="<?php the_permalink(); ?>">
                            <img src="<?php echo get_template_directory_uri() . '/img/btn-vermas_trans.png'; ?>">
                        </a>
                    </div>
                </div>
                <div class="d-flex align-items-center justify-content-center
                            col-12 pt-2 pb-4 m-0 align-self-lg-end col-lg-12">
                    <?php 
                    the_post_thumbnail('medium', ['class' => 'img-portafolio', 'title' => 'Portafolio imagen']);
                     ?>
                </div>
        <?php endwhile; wp_reset_postdata();?>   

    <?php endif;?>
</div>