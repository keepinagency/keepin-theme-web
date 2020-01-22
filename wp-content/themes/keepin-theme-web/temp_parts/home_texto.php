<?php 
/*** Plantilla para el home TEXTO sixth***/    

    $home_texto = get_option( 'home-texto', '' );
   
?>

<div class="texto-home col-xs-12 d-lg-none p-3 pt-4 m-0 text-center">
    <?php echo $home_texto; ?>
</div>
