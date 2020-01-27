<?php 
/*** Plantilla para el home Meet Team sixth***/    
    $txt_cta_blue = get_option( 'txt-cta-blue', '' );
    $img_cta_blue = get_option( 'imgctablue', '' );
    $txt_btn_blue = get_option( 'txt-btn-blue', '' );
    $url_btn_blue = get_option( 'url-btn-blue', 'http://www.keepinagency.com' );
?>
<div class="row home-team container-fluid col-xs-12 d-lg-none p-0 m-0">
    <div class="team text-white pt-4 pl-4 col-8 p-0 m-0">
        <?php echo $txt_cta_blue;?>
    </div>
    <div class="col-4 d-flex align-items-end justify-content-center " >
        <img src="<?php echo get_template_directory_uri() .'/img/ico-team.png';?> ">
    </div>
    <div class="col-12 mt-4 mb-4 rounded d-flex align-items-center justify-content-center mx-auto"> 
        <a href="<?php $url_btn_blue; /*the_permalink();*/ ?>" class="col-12">
            <button type="button" class="col-12 btn btn-default text-white btn-home-team pl-5 pr-5 ">
                <?php echo $txt_btn_blue;?>
            </button> 
        </a>
    </div>
</div>

                        