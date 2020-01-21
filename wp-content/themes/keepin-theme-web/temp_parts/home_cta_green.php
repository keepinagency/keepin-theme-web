<?php 
/*** Plantilla para el home Meet Team sixth***/
    $txt_cta_green = get_option( 'txt-cta-green', '' );
    $txt_btn_green = get_option( 'txt-btn-green', '' );
    $url_btn_green = get_option( 'url-btn-green', 'http://www.keepinagency.com' );
?>
<a href="<?php $url_btn_green; ?>">
    <div class="row home-green mt-3 container-fluid col-xs-12 d-lg-none p-0 m-0">
        <div class="green text-white mx-auto p-0 m-0">
            <?php echo $txt_cta_green;?>
        </div>
        <div class="col-12 mb-3 rounded d-flex align-items-center justify-content-center mx-auto"> 
            <button type="button" class="btn btn-default btn-home-green pl-5 pr-5 ">
                <?php echo $txt_btn_green;?>
            </button> 
            
        </div>
    </div>
</a>