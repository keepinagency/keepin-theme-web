<?php 
/*
Template Name:portfolio
Template Post Type: page
Esta es la plantilla para el Portafolio del menu
 */
get_header();
$imgportfolio = get_option( 'imgportfolio', '' );
$paginacion_nueva = get_query_var('paged');
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'portfolio',
    'order'  =>'ASC',
	'posts_per_page'=>4,
	'paged'=>$paginacion_nueva 
));
?>
<div class="row container-fluid col-12 p-0 m-0">
    <?php if ($nuevo_arreglo->have_posts()) : ?>
        <div class="col-12 p-2 text-center">
            <img src="<?php echo $imgportfolio; ?>">
        </div>
        <div class="col-12 text-center title_portfpage col-lg-12">
            <?php the_title(); ?>
        </div>
        <div class="subportfpage col-12 text-center col-lg-12 text-lg-center p-lg-0 pr-lg-1 m-lg-0">
            <?php echo get_post_meta($post->ID, 'subtitulo', true); ?>
        </div>
        <div class="col-lg-2 d-none d-sm-block">
            &nbsp
        </div>
        <div class="col-12 text-center pt-3 pr-3 pl-3 text-portfpage col-lg-8">
            <?php the_excerpt();?>
        </div>
        <div class="col-lg-2 d-none d-sm-block">
            &nbsp
        </div>
        <div class="col-12 mt-2 mb-2" style="background-color:#413a4d; height:10px;">&nbsp;</div>
        <?php while ($nuevo_arreglo->have_posts()) : $nuevo_arreglo->the_post();?>
                <div class="d-flex d-flex-row col-12 p-0 pt-3 pb-3 m-0">
                    <div class="col-10">
                        <a class="titulo_portfolio text-white p-0 m-0" href="<?php the_permalink(); ?>">
                            <div class="p-0 m-0">
                                <?php the_title();?>
                            </div>
                            <div class="post_portfolio p-0 m-0">
                                <?php the_content();?>
                            </div>
                        </a>
                    </div>
                    <div class="col-2 p-0 m-0 d-flex align-items-end align-items-lg-center">
                        <a class="p-0 m-0 text-white " href="<?php the_permalink(); ?>">
                            <img src="<?php echo get_template_directory_uri() . '/img/btn-vermas_trans.png'; ?>">
                        </a>
                    </div>
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

    <div class="cont_pag_numbers" >
                <?php 
                    echo paginate_links(array(
                    'total' => $nuevo_arreglo->max_num_pages
                ));
                ?>
            </div>
        <?php endif;?>
    </div>
</div>
<?php get_footer(); ?>