<?php 
/*** 
 *  About us en home, categoría de entradas    
 *  Categoría: about_us_home   
 ***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'about_us_home',
    'order'=>'DESC',
	'posts_per_page'=>3
));
?>
<div class="col-12 d-flex flex-column d-lg-none p-0 pl-4 pr-4 m-0">
    <?php 
    $i=1;
    if ($nuevo_arreglo->have_posts()){
        while ($nuevo_arreglo->have_posts()) : $nuevo_arreglo->the_post();
                if ($i==2){
                    $direccion   = "-reverse";
                    $justifytext = "text-left";
                    $classmiddle = "middle_aboutus_home";
                }else{
                    $direccion="";
                    $justifytext = "text-right";
                    $classmiddle = "";
                }?>
                <div class="aboutus_home <?=$classmiddle?> col-12 d-flex flex-row<?=$direccion?> p-0 m-0 text-center">
                    <div class="col-4 img_aboutus_home d-flex align-items-center">
                        <?php the_post_thumbnail('medium'); ?>  
                    </div>
                    <div class="col-8 text_aboutus_home <?=$justifytext?> pt-4 pb-4 p-0
                                d-flex align-items-center">
                        <?php echo get_the_content();?>
                    </div>
                </div>
            <?php 
            $i++;
        endwhile; 
        wp_reset_postdata();
    }
    ?>
</div>