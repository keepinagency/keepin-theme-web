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
	'posts_per_page'=>3,
	'paged'=>$paginacion_nueva 
));
?>
<div class="row container-fluid col-12 p-0 m-0">
    <?php if ($nuevo_arreglo->have_posts()) : ?>
        <div class="col-12 p-2 text-center">
            <img src="<?php echo $imgblog; ?>">
        </div>
        <div class="col-12 text-center titleblog_page col-lg-12">
            <?php the_title(); ?>
        </div>
        <div class="col-12 text-center subblog_page col-lg-6 text-lg-right p-lg-0 pr-lg-1 m-lg-0">
            <?php echo get_post_meta($post->ID, 'subtitulo', true); ?>
        </div>
        <div class="col-12 text-center sub_blog_page col-lg-6 text-lg-left p-lg-0 pl-lg-1 m-lg-0">
            <?php echo get_post_meta($post->ID, 'sub_titulo', true); ?>
        </div>
        <div class="col-lg-2 d-none d-sm-block">
            &nbsp
        </div>
        <div class="col-12 text-center pt-3 pr-4 pl-4 textblog_page col-lg-8">
            <?php the_excerpt();?>
        </div>
        <div class="col-lg-2 d-none d-sm-block">
            &nbsp
        </div>

        <div class="col-12 mt-2" style="background-color:#413a4d; height:10px;">&nbsp;</div>
        <div class="row col-12 p-0 m-0 mt-lg-5 d-flex justify-content-lg-around">
        <?php 
            while ($nuevo_arreglo->have_posts()) : $nuevo_arreglo->the_post();?>
                <div class="row d-flex flex-lg-row col-12 p-0 m-0 
                            pt-lg-0 pr-lg-2 pl-lg-2 col-lg-4">
                    <div class="d-none d-sm-block col-lg-12 p-lg-0 cont-img pt-lg-3 pb-lg-1"
                        style="background-image: url('<?php echo get_the_post_thumbnail_url('');?>');">
                        &nbsp;
                        <!--a href="<?php the_permalink(); ?>">
                            <?php //the_post_thumbnail('blog') ;?>
                        </a-->
                    </div>        
                    <div class="row contblog_post col-12 m-0 p-0">
                        <div class="col-10 col-lg-8 flex-lg-row m-0 p-0 cont_tit_blog">
                            <a class="text-white p-0 m-0" href="<?php the_permalink(); ?>">
                                <div class="p-2 m-0 titleblog_post pl-lg-2 text-white">
                                    <?php the_title();?>
                                </div>
                                <div class="p-2 m-0 postblog_post text-lg-justify pl-lg-2 text-white">
                                    <?php the_excerpt();?>
                                </div>
                            </a>
                        </div>
                        <div class="col-2 p-0 m-0 col-lg-4 d-flex align-items-center  
                        align-items-lg-center justify-content-lg-center p-lg-0 m-lg-0">
                            <a class="p-0 m-0 text-white" href="<?php the_permalink(); ?>">
                                <img src="<?php echo get_template_directory_uri() . '/img/btn-vermas_trans.png'; ?>">
                            </a>
                        </div>
                    </div>
                    <div class="d-flex align-items-center justify-content-center col-12 pt-2 pb-4 m-0 d-lg-none cont-img"
                    style="background-image: url('<?php echo get_the_post_thumbnail_url('');?>');">
                        &nbsp;
                        <?php //the_post_thumbnail('medium'); ?>
                    </div>

                </div>
            <?php 
            endwhile; 
            wp_reset_postdata();
            
            ?>
        </div>   
        <div class="cont_pag_numbers col-12 d-flex justify-content-center p-5">
            <?php 
                echo paginate_links(array(
                'total' => $nuevo_arreglo->max_num_pages
            ));
            ?>
        </div>
    <?php endif;?>
</div>
<?php get_footer(); ?>