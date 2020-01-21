<?php 
/*** Plantilla para el home Meet Team sixth***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'about',
    'order'=>'ASC',
	'posts_per_page'=>1
));
?>
<div class="row home-team container-fluid col-xs-12 d-lg-none p-0 m-0">
    <?php if ($nuevo_arreglo->have_posts()) : 
        while ($nuevo_arreglo->have_posts()) :
			$nuevo_arreglo->the_post();?>
                <div class="team pt-4 pr-0 pl-3 col-7 p-0 m-0">
                    <h5 class="text-white"><?php the_content();?></h5>
                </div>
                <div class="col-5 pt-5 d-flex align-items-center justify-content-center " >
                    <?php the_post_thumbnail('medium'); ?>
                </div>
                <div class="col-12 mb-3 rounded d-flex align-items-center justify-content-center mx-auto"> 
                    <a href="<?php the_permalink(); ?>">
                        <button type="button" class="btn btn-default text-white btn-home-team pl-5 pr-5 ">Meet the team!</button> 
                    </a>
                </div>
        <?php endwhile;?>        
    <?php endif;?>
</div>

                        