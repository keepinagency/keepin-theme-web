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
        while ($nuevo_arreglo->have_posts()) :
			$nuevo_arreglo->the_post();?>
                <div class="portfolio p-0 m-0 w-100">
                    <a class="titulo_portfolio text-white" href="<?php the_permalink(); ?>">
                        <h3><?php the_title();?></h3>
                    </a>
                    <a class="post_portfolio text-white" href="<?php the_permalink(); ?>">
                        <h5><?php the_content();?></h4>
                    </a>
                </div>
                <div class="d-flex align-items-center justify-content-center
                            col-12 p-0 m-0 regular shadow" >
                    <?php the_post_thumbnail('medium'); ?>
                </div>
        <?php endwhile;?>        
    <?php endif;?>
</div>