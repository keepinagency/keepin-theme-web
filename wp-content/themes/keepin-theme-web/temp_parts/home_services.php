<?php 
/*** Plantilla para el home Servicios fifth***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'services',
    'order'=>'ASC',
	'posts_per_page'=>4
));
?>

<div class="row container-fluid col-xs-12 d-lg-none p-0 m-0">
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div class="listas_servicios p-4 mt-3">
            <?php while ($nuevo_arreglo->have_posts()) :
                $nuevo_arreglo->the_post();?>
                    <div class="">
                        <a class="titulo_services" href="<?php the_permalink(); ?>"><?php the_title(); ?>
                            <div class="miniatura_servicios"><?php the_post_thumbnail('medium');?></div>
                        </a>
                            <div class="post_services"><?php the_excerpt();?></div>
                    </div>
            <?php endwhile;?>
		</div>
        
    <?php endif;?>
</div>