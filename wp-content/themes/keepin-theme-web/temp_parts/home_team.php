<?php 
/*** Plantilla para el home Meet Team sixth***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'about',
    'order'=>'ASC',
	'posts_per_page'=>1
));

    $txt_cta_blue = get_option( 'txt-cta-blue', '' );
    $txt_btn_blue = get_option( 'txt-btn-blue', '' );
    $url_btn_blue = get_option( 'url-btn-blue', 'http://www.keepinagency.com' );
?>
<div class="row home-team container-fluid col-xs-12 d-lg-none p-0 m-0">
    <?php if ($nuevo_arreglo->have_posts()) : 
        while ($nuevo_arreglo->have_posts()) :
			$nuevo_arreglo->the_post();?>
                <div class="team text-white pt-4 pr-0 pl-3 col-8 p-0 m-0">
                    <?php echo $txt_cta_blue;?>
                </div>
                <div class="col-4 d-flex align-items-center justify-content-center " >
                    <?php the_post_thumbnail('medium'); ?>
                </div>
                <div class="col-12 mt-4 mb-4 rounded d-flex align-items-center justify-content-center mx-auto"> 
                    <a href="<?php $url_btn_blue; /*the_permalink();*/ ?>">
                        <button type="button" class="col-12 btn btn-default text-white btn-home-team pl-5 pr-5 ">
                            <?php echo $txt_btn_blue;?>
                        </button> 
                    </a>
                </div>
        <?php endwhile;?>        
    <?php endif;?>
</div>

                        