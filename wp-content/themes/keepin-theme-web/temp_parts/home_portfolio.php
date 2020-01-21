<?php 
/*** Plantilla para el home Clientes third***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'portfolio',
    'order'=>'ASC',
	'posts_per_page'=>3
));
?>
<div class="row container-fluid col-xs-12 d-lg-none p-0 m-0">
    <?php if ($nuevo_arreglo->have_posts()) : 
        while ($nuevo_arreglo->have_posts()) : $nuevo_arreglo->the_post();?>
                <div class="portfolio col-12 pt-3 pl-2 m-0">
                    <div>
                        <a class="titulo_portfolio text-white p-0 m-0" href="<?php the_permalink(); ?>">
                            <?php the_title();?>
                        </a>
                    </div>
                    <div class="row d-flex-row ">
                        <a class="post_portfolio text-white p-0 m-0" href="<?php the_permalink(); ?>">
                             <div class="col-10 float-left"><?php the_content();?></div>
                             <div class="col-2 float-right">
                                 <img src="<?php echo get_template_directory_uri() . '/img/btn-vermas_trans.png'; ?>">
                            </div>
                        </a>
                    </div>
                </div>

                <div class="d-flex align-items-center justify-content-center
                            col-12 p-0 m-0 regular shadow" >
                    <?php the_post_thumbnail('medium'); ?>
                </div>
        <?php endwhile; wp_reset_postdata();?>   

    <?php endif;?>
</div>