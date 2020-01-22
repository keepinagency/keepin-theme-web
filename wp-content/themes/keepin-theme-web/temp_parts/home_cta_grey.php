<?php 
/*** Plantilla para el home CTA-GREY Team sixth***/
    $txt_cta_grey = get_option( 'txt-cta-grey', '' );
    $txt_btn_grey = get_option( 'txt-btn-grey', '' );
    $url_btn_grey = get_option( 'url-btn-grey', 'http://www.keepinagency.com' );
?>
<a href="<?php $url_btn_grey; ?>">
    <div class="row home-grey mt-3 pt-3 pb-3 container-fluid col-xs-12 d-lg-none p-0 m-0">
        <div class="grey text-white text-center mx-auto p-0 m-0">
            <?php echo $txt_cta_grey;?>
        </div>
        <div class="col-12 mb-3 rounded d-flex align-items-center justify-content-center mx-auto"> 
            <button type="button" class="btn btn-default btn-home-grey pl-5 pr-5 col-12">
                <?php echo $txt_btn_grey;?>
            </button> 
            
        </div>
    </div>
</a>