<?php 
get_header(); 
?>
<div class="row contenedor-general-internas col-md-12 p-0 m-0">
    <?php if ( have_posts() ) { ?>
        <div class="titleblog_post col-12 text-center col-lg-12">
            <?php the_title(); ?>
        </div>
    <?php
        while ( have_posts() ) : the_post();
            ?>
            <div class="row blog-post col-12 p-4 m-0">
                <!--div class="col-lg-12 text-center p-lg-5 d-none d-sm-block">
                    <?php the_post_thumbnail('large');?>
                </div>
                <div class="col-12 d-lg-none d-flex justify-content-lg-around m-0 p-0">
                    <?php the_post_thumbnail('medium');?>
                </div-->
                <div class="col-lg-1 d-none d-sm-block">
                    &nbsp
                </div>
                <div class="col-lg-10 pr-lg-5 pl-lg-5 col-12 text-justify cont_single pl-1 pt-3 m-0">
                    <?php the_content(); ?>
                </div>
                <div class="col-lg-1 d-none d-sm-block">
                    &nbsp
                </div>
            </div><!-- /.blog-post -->
            <?php
        endwhile;
        } 
    ?>
</div>
        <!--Navegacion para cada entrada o post-->
<div class="navegacion_entradas">    
    <?php 
        if ( is_singular( 'post' ) ) {
            the_post_navigation( array(
                'prev_text'          => __( '&nbsp;' ).'<span class="nav_post">%title</span>',
                'next_text'          => '<span class="nav_post">%title</span>'.__( '&nbsp;' ),
                'in_same_term'       => true,
                'screen_reader_text' => __( '&nbsp;' )
            ) );
        }
    ?>
</div>
<div>&nbsp</div>
<div>&nbsp</div>
<div>&nbsp</div>
<?php get_footer();?>