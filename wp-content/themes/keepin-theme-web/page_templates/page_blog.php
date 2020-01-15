<?php 
/*
Template Name:blog
Template Post Type: page
Esta es la plantilla para el Bog del menu
 */
get_header();
    
$paginacion_nueva = get_query_var('paged');

$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'blog',
	'posts_per_page'=>6,
	'paged'=>$paginacion_nueva 
));
?>
<div>
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div><h2 class="page-internas-titulo"><?php the_title(); ?></h2></div>
        <div class="listas_entradas">
        <?php
        while ($nuevo_arreglo->have_posts()) :
			$nuevo_arreglo->the_post();?>
                <div class=link_entradas>
                    <a class="titulo_entradas" href="<?php the_permalink(); ?>"><?php the_title(); ?>
                        <div class="miniatura_blog"><?php the_post_thumbnail('medium');?></div>
                    </a>
                        <div class="extracto"><?php the_excerpt();?></div>
                </div>
        <?php endwhile;?>
		</div>
        <div class="cont_pag_numbers" >
			<?php 
			    echo paginate_links(array(
				'total' => $nuevo_arreglo->max_num_pages
			));
			?>
		</div>
    <?php endif;?>
        <div>Mas de nuestro Blog</div>
</div>
<?php get_footer(); ?>