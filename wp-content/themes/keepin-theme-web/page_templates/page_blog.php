<?php 
/*
Template Name:blog
Template Post Type: page
Esta es la plantilla para el Bog del menu
 */
get_header();
    
$imgblog = get_option( 'imgblog', '' );
$paginacion_nueva = get_query_var('paged');
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'blog',
	'posts_per_page'=>4,
	'paged'=>$paginacion_nueva 
));
?>
<div class="row container-fluid col-12 d-lg-none p-0 m-0">
    <?php if ($nuevo_arreglo->have_posts()) : ?>
        <div class="col-12 p-2 text-center">
            <img src="<?php echo $imgblog; ?>">
        </div>
        <div class="col-12 text-center titleblog_page">
            <?php the_title(); ?>
        </div>
        <div class="col-12 text-center subblog_page">
            <?php echo get_post_meta($post->ID, 'subtitulo', true); ?>
        </div>
        <div class="col-12 text-center sub_blog_page">
            <?php echo get_post_meta($post->ID, 'sub_titulo', true); ?>
        </div>
        <div class="col-12 text-center pt-3 pr-5 pl-5 textblog_page">
            <?php the_excerpt();?>
        </div>
        <div class="col-12 mt-2" style="background-color:#413a4d; height:10px;">&nbsp;</div>

        <?php while ($nuevo_arreglo->have_posts()) : $nuevo_arreglo->the_post();?>
                <div class="d-flex d-flex-row col-12 p-0 pt-2 pb-2 contblog_post">
                    <div class="col-10">
                        <a class="text-white p-0 m-0" href="<?php the_permalink(); ?>">
                            <div class="p-0 m-0 titleblog_post">
                                <?php the_title();?>
                            </div>
                            <div class="p-0 m-0 postblog_post">
                                <?php the_content();?>
                            </div>
                        </a>
                    </div>
                    <div class="col-2 d-flex align-items-end p-0 m-0">
                        <a class="p-0 m-0 text-white " href="<?php the_permalink(); ?>">
                            <img src="<?php echo get_template_directory_uri() . '/img/btn-vermas_trans.png'; ?>">
                        </a>
                    </div>
                </div>

                <div class="d-flex align-items-center justify-content-center
                            col-12 pt-2 pb-4 m-0 "
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