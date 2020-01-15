<?php 
/*** Plantilla para el home Meet Team sixth***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'team',
    'order'=>'ASC',
	'posts_per_page'=>1
));
?>