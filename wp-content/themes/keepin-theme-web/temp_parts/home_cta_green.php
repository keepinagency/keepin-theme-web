<?php 
/*** Plantilla para el home CTA-GREEN sixth***/
    $txt_cta_green = get_option( 'txt-cta-green', '' );
    $txt_btn_green = get_option( 'txt-btn-green', '' );
    $url_btn_green = get_option( 'url-btn-green', 'http://www.keepinagency.com' );
    //$page_btn_green = get_option( 'page-btn-green', '' );

    $mod = get_theme_mod( 'page-btn-green' );
	/*if ( 'page-none-selected' != $mod ) {
		$pagesel[] = $mod;
    }*/
?>

<div class="row home-green pt-3 pb-3 col-lg-12 p-0 m-0">
    <div class="green text-white mx-auto p-0 m-0 mb-lg-0 pt-lg-2">
        <?php echo $txt_cta_green;?>
    </div>
    <div class="col-12 col-lg-12 mb-3 pt-lg-0 mt-lg-0 rounded d-flex align-items-center justify-content-center mx-auto"> 
        <button type="submit" 
            class="btn btn-default btn-home-green pl-5 pr-5 col-lg-4 p-lg-3 m-lg-3"
            data-toggle="modal" data-target="#formmasinf" >
            <?php echo $txt_btn_green;?>
        </button>
    </div>
</div>