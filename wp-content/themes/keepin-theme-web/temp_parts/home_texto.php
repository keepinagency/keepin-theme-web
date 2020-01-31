<?php 
/*** Plantilla para el home TEXTO sixth***/    

    $home_texto = get_option( 'home-texto', '' );
   
?>
<div class="pl-3 pr-3 d-lg-flex justify-content-lg-center">
    <div class="texto-home p-3 pt-4 m-0 text-center col-lg-8 p-lg-5 m-lg-3">
        <?php echo $home_texto; ?>
    </div>
</div>
