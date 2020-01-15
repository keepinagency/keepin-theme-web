<?php 
/*** Esta es la plantilla para el home ***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'blog',
	'posts_per_page'=>3
));
?>
<div>
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div><h1>Nuestro Blog</h1></div>
        <div class="listas_blog">
        <?php
        while ($nuevo_arreglo->have_posts()) :
			$nuevo_arreglo->the_post();?>
                <div class=link_blog>
                    <a class="titulo_blog" href="<?php the_permalink(); ?>"><?php the_title(); ?>
                        <div class="miniatura_blog"><?php the_post_thumbnail('medium');?></div>
                    </a>
                        <div class="extracto"><?php the_excerpt();?></div>
                </div>
        <?php endwhile;?>
		</div>
        
    <?php endif;?>
        <div>Mas de nuestro Blog</div>
</div>