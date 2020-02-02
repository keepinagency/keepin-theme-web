<?php
$titulo_header = get_option('titulo-header');
$subtitulo_header = get_option('subtitulo-header');
$texto_ctastart = get_option('texto-cta-start');
?>
<!--Luego de header-->
<div class="row col-12 d-flex flex-row justify-content-center  
            header-start p-0 pt-2 m-0 align-items-center">
    
    <div class="col-12 d-lg-none text-center pt-3">
        <img src="<?php echo get_template_directory_uri() . '/img/multi_platform.png'; ?>">
        <img src="<?php echo get_template_directory_uri() . '/img/easy_integration.png'; ?>">
    </div>

    <div class="col-12 col-lg-6 text-center text-lg-right txt-home-start pt-2">
    <?php echo $titulo_header; ?><br><?php echo $subtitulo_header; ?>
    </div>
    <div  class="col-12 col-lg-6 text-center txt-home-start pt-3 pb-4 pb-lg-0 ">
        <button type="button" 
            class="btn btn-home-start align-middle col-6 col-lg-6">
        <?php echo $texto_ctastart; ?></button> 
    </div>
    <div class="col-12 mt-auto" style="background-color:#413a4d; height:10px;">&nbsp;</div>
</div>