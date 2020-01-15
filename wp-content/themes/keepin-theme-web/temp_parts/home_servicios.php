<?php 
/*** Plantilla para el home Servicios fifth***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'servicios',
    'order'=>'ASC',
	'posts_per_page'=>4
));
?>

<div>
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div><h1>Alguno de nuestros servicios</h1></div>
        <div class="listas_servicios">
        <?php
        while ($nuevo_arreglo->have_posts()) :
			$nuevo_arreglo->the_post();?>
                <div class="link_servicios">
                    <a class="titulo_servicios" href="<?php the_permalink(); ?>"><?php the_title(); ?>
                        <div class="miniatura_servicios"><?php the_post_thumbnail('medium');?></div>
                    </a>
                        <div class="extracto"><?php the_excerpt();?></div>
                </div>
        <?php endwhile;?>
		</div>
        
    <?php endif;?>
</div>