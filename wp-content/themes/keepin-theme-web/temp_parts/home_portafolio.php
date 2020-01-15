<?php 
/*** Plantilla para el home Clientes third***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'portafolio',
    'order'=>'ASC',
	'posts_per_page'=>3
));
?>

<div>
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div><h1>Portafolio</h1></div>
        <div class="listas_portafolio">
        <?php
        while ($nuevo_arreglo->have_posts()) :
			$nuevo_arreglo->the_post();?>
                <div class=link_portafolio>
                    <a class="titulo_portafolio" href="<?php the_permalink(); ?>"><?php the_title(); ?>
                        <div class="miniatura_portafolio"><?php the_post_thumbnail('medium');?></div>
                    </a>
                </div>
        <?php endwhile;?>
		</div>
        
    <?php endif;?>
</div>