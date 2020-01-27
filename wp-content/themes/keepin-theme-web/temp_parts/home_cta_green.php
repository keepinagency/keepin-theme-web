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

<div class="row home-green pt-3 pb-3 container-fluid col-xs-12 d-lg-none p-0 m-0">
    <div class="green text-white mx-auto p-0 m-0">
        <?php echo $txt_cta_green;?>
    </div>
    <div class="col-12 mb-3 rounded d-flex align-items-center justify-content-center mx-auto"> 
        <a class="btn btn-default btn-home-green pl-5 pr-5 " href="<?= get_permalink($mod); ?>"role="button">
            <?php echo $txt_btn_green;?>
        </a> 
    </div>
</div>