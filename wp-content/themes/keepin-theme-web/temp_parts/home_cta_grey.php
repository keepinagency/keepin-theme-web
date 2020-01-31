<?php 
/*** Plantilla para el home CTA-GREY Team sixth***/
    $txt_cta_grey = get_option( 'txt-cta-grey', '' );
    $txt_btn_grey = get_option( 'txt-btn-grey', '' );
    $url_btn_grey = get_option( 'url-btn-grey', 'http://www.keepinagency.com' );
?>
<a class="home_cta_grey_div" href="<?php $url_btn_grey; ?>">
    
    <div class="row col-12 container-fluid home-grey mt-3 pt-3 pb-3 p-0 m-0 pl-4 pr-4 mb-lg-3 col-lg-12 p-lg-5 ">
        

        <div class="grey text-white text-center mx-auto p-0 m-0 pb-3 
                    col-lg-6 justify-content-lg-end text-lg-right pr-lg-5 pb-lg-0 pt-lg-0 pl-lg-0">
            <?php echo $txt_cta_grey;?>
        </div>

        <div class="col-12 mb-3 rounded d-flex justify-content-center 
                    justify-content-lg-start mx-auto col-lg-6 p-lg-0"> 
            <button type="button" class="btn btn-default btn-home-grey pl-5 pr-5 
                    col-12 col-lg-8">
                <?php echo $txt_btn_grey;?>
            </button> 
        </div>

    </div>
</a>