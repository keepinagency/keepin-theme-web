<?php 
    /*** Plantilla para el home Resumen Second***/    
    $nuevo_arreglo = new WP_Query(array(
        'post_type'=>'page', 
        'category_name' => 'portafolio',
        'order'=>'ASC',
        'posts_per_page'=>3
    ));
?>

<div class="row col-xs-12 d-lg-none p-0 m-0 border">
    <div class="col-4 mt-2"> <img src="\img\Iconos\multi_platform.png">hola </div>
    <div class="col-4 mt-2">hey</div>
    <div class="col-12 mt-2">We build solutions </div>
    
    <!--div class="row"></div-->
    <div class="col-12 mb-2">...on web</div>
    <div class="col-12"> 
        <button type="button" class="btn-home btn btn-default">Get Started!</button> 
    </div>
    <div class="col-12 mt-3" style="background-color:#413a4d; height:10px;"> </div>
</div>