<?php 
/*** Plantilla para el home Meet Team sixth***/    
    $txt_cta_blue = get_option( 'txt-cta-blue', '' );
    $img_cta_blue = get_option( 'imgctablue', '' );
    $txt_btn_blue = get_option( 'txt-btn-blue', '' );
    $url_btn_blue = get_option( 'url-btn-bue', 'http://www.keepinagency.com' );
?>
<div class="row home-team container-fluid d-lg-none p-0 m-0 bg-success">
    <div class="team text-white pt-4 pl-4 col-8 p-0 m-0
                col-lg-6 justify-content-lg-end">
        <?php echo $txt_cta_blue;?>
    </div>

    <div class="col-4 d-flex align-items-end justify-content-center 
                col-lg-6 justify-content-lg-end" >
        <img src="<?php echo get_template_directory_uri() .'/img/ico-team.png';?> ">
    </div>

    <div class="col-12 mt-4 mb-4 rounded d-flex align-items-center justify-content-center mx-auto 
                col-lg-6"> 
        <a href="<?php $url_btn_blue; ?>" class="col-12 col-lg-12">
            <button type="button" class="col-12 btn btn-default text-white 
                    btn-home-team pl-5 pr-5 col-lg-12">
                <?php echo $txt_btn_blue;?>
            </button> 
        </a>
    </div>
</div>

<div class="col-lg-12 p-lg-5 m-lg-0 d-lg-flex flex-lg-row home-team d-none d-sm-block">

    <div class="col-lg-5 text-lg-right pr-lg-5">
        <img src="<?php echo get_template_directory_uri() .'/img/ico-team.png';?>" class="img-team">
    </div>

    <div class="col-lg-7">
        <div class="team text-white pb-lg-3 col-lg-8">
            <?php echo $txt_cta_blue;?>
        </div>
        <div class="rounded col-lg-12"> 
            <a href="<?php $url_btn_blue; ?>" class="">
                <a type="button" class="btn btn-default text-white 
                        btn-home-team pl-lg-5 pr-lg-5"
                    href="<?=$url_btn_blue;?>">
                    <?php echo $txt_btn_blue;?>
                </a> 
            </a>
        </div>
    </div>
</div>

                        