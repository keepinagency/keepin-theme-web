<?php
/* Libreria bootstrap para Nav - Menu */
require_once('class-wp-bootstrap-navwalker.php');

/*Definicion de rutas TEMP_PARTS*/
define( 'Keepin_VERSION', '0.0.1' );
define( 'Keepin_TEMP_PARTS', trailingslashit( get_template_directory() ) . 'temp_parts/' );

/*** Área para SetUp GENERAL de la página según ajustes de WordPress: Título, etc. ***/
function keepin_wp_setup() {
    add_theme_support( 'title-tag' );
    add_theme_support( 'post-thumbnails' );
    add_theme_support( 'custom-logo', array(
        'height'      => 100,
        'width'       => 400,
        'flex-height' => false,
        'flex-width'  => false,
        'header-text' => array( 'site-title', 'site-description' ),
    ) );
}


/*** Carga de Archivos CSS y Js para el site ***/
function keepin_enqueue_styles() {

    /*** Archivos CSS Bootstrap ***/
    wp_register_style('bootstrap', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' );
    $dependencies = array('bootstrap');
    wp_enqueue_style( 'keepin-style', get_stylesheet_uri(), $dependencies ); 
    wp_enqueue_style('animate', get_template_directory_uri() . '/css/animate.css' );
    wp_enqueue_style('fontawesome', get_template_directory_uri() . '/css/all.css' );

}
            
function keepin_enqueue_scripts() {

    /*** Archivos JS BootStrap y sus dependencias ***/
    $dependencies = array('jquery');
    wp_enqueue_script('jquery', 'https://code.jquery.com/jquery-3.2.1.slim.min.js', $dependencies, '', true );
    wp_enqueue_script('popper', 'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js', $dependencies, '', true );
    wp_enqueue_script('bootstrap', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js', $dependencies, '', true );
    wp_enqueue_script('wow', get_template_directory_uri() . '/js/wow.min.js', $dependencies, '', true );
    wp_enqueue_script('keepinjs', get_template_directory_uri() . '/js/keepin.js', '', '', true );

}

/*** Registro de áreas para menús de WP ***/
function keepin_register_menu() {
    register_nav_menu( 'header-menu', __('Header Menu'));
    register_nav_menu( 'footer-menu', __('Footer Menu'));

}
/***** FUNCIONES CUSTOM PARA EL PERSONZALIDOR *******
*****************************************************/
function custom_keepinagency_register( $wp_customize ) {

    /** Panel OPCIONES KEEPIN HOME para el personalizador **/
    /******************************************************/
    /******************************************************/
    $wp_customize->add_panel( 'keepinagency', array(
        'title' => 'KeepIn Home',
        'description' => 'Opciones personales',
        'priority' => 1,
    ));

    /******* SECCIÓN PARA SOCIALMEDIA FOOTER **********/
    $wp_customize->add_section( 'SocialMediaFoot', array(
        'title' => __( 'Social Media Footer', 'textdomain' ),
        'panel' => 'keepinagency',
        'priority' => 1,
    ));
    /** Setting Insta Icono FOOTER **/
    $wp_customize->add_setting( 'instalogo', array (
        'default'        => get_template_directory_uri() . '/img/ico-instagram.png',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
    ));
    $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'insta', array(
        'label'      => __( 'Icono Instagram', 'textdomain' ),
        'section'    => 'SocialMediaFoot',
        'settings'   => 'instalogo',
        'priority'   => 1,
    )));
    /** Setting InstaURL FOOTER **/
    $wp_customize->add_setting( 'instaurl', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('instaurl', array(
        'label' => __( 'Perfil Instagram', 'textdomain' ),
        'section' => 'SocialMediaFoot',
        'priority' => 2,
        'type' => 'text',
    ));
    /** el Setting FaceIcono FOOTER **/
    $wp_customize->add_setting( 'facelogo', array (
        'default'        => get_template_directory_uri() . '/img/ico-facebook.png',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
    ));
    $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'face', array(
        'label'      => __( 'Icono Facebook', 'textdomain' ),
        'section'    => 'SocialMediaFoot',
        'settings'   => 'facelogo',
        'priority'   => 3,
    )));
    /**Agrego el Setting FaceURL FOOTER **/
    $wp_customize->add_setting( 'faceurl', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('faceurl', array(
        'label' => __( 'Perfil Facebook', 'textdomain' ),
        'section' => 'SocialMediaFoot',
        'priority' => 4,
        'type' => 'text',
    ));
    /** Setting Link Icono FOOTER **/
    $wp_customize->add_setting( 'linkelogo', array (
        'default'        => get_template_directory_uri() . '/img/ico-linkedin.png',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
    ));
    $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'linke', array(
        'label'      => __( 'Icono Linkedin', 'textdomain' ),
        'section'    => 'SocialMediaFoot',
        'settings'   => 'linkelogo',
        'priority'   => 5,
    )));
    /** Setting Link url FOOTER **/
    $wp_customize->add_setting( 'linkeurl', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('linkeurl', array(
        'label' => __( 'Perfil Linkedin', 'textdomain' ),
        'section' => 'SocialMediaFoot',
        'priority' => 6,
        'type' => 'text',
    ));
    /** Setting GitHub Icono FOOTER **/
    $wp_customize->add_setting( 'gitlogo', array (
        'default'        => get_template_directory_uri() . '/img/ico-github.png',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
    ));
    $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'git', array(
        'label'      => __( 'Icono Github', 'textdomain' ),
        'section'    => 'SocialMediaFoot',
        'settings'   => 'gitlogo',
        'priority'   => 7,
    )));
    /** Setting Git url FOOTER **/
    $wp_customize->add_setting( 'giturl', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('giturl', array(
        'label' => __( 'Perfil Github', 'textdomain' ),
        'section' => 'SocialMediaFoot',
        'priority' => 8,
        'type' => 'text',
    ));
    /************** SECCIÓN PARA BTN HOME 01 *******************/
    $wp_customize->add_section( 'green', array(
        'title' => __( 'Boton Home 01 - Green', 'textdomain' ),
        'panel' => 'keepinagency',
        'priority' => 2,
    ));
     /** Setting CTA-TXT *********
      **    HOME 01      ********/
     $wp_customize->add_setting( 'txt-cta-green', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('txt-cta-green', array(
        'label' => __( 'Texto CTA Home 01 - Green', 'textdomain' ),
        'section' => 'green',
        'priority' => 1,
        'type' => 'textarea',
    ));
    /** Setting BTN-URL *********
     **     HOME 01     ********/
    $wp_customize->add_setting( 'url-btn-green', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('url-btn-green', array(
        'label' => __( 'URL CTA Home 01 - Green', 'textdomain' ),
        'section' => 'green',
        'priority' => 2,
        'type' => 'text',
    ));
    /** Setting BTN-TXT *********
     **      HOME 01    ********/
    $wp_customize->add_setting( 'txt-btn-green', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('txt-btn-green', array(
        'label' => __( 'Texto boton Home 01 - Green', 'textdomain' ),
        'section' => 'green',
        'priority' => 3,
        'type' => 'text',
    ));
   /************** SECCIÓN PARA BTN HOME 02 *********************/
   $wp_customize->add_section( 'grey', array(
    'title' => __( 'Boton Home 02 - Gray', 'textdomain' ),
    'panel' => 'keepinagency',
    'priority' => 3,
    ));
    /** Setting CTA-TXT *********
     **      HOME 02    ********/
    $wp_customize->add_setting( 'txt-cta-grey', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('txt-cta-grey', array(
        'label' => __( 'Texto CTA Home 02 - Grey', 'textdomain' ),
        'section' => 'grey',
        'priority' => 1,
        'type' => 'textarea',
    ));
    /** Setting BTN-URL *********
     **      HOME 02    ********/
    $wp_customize->add_setting( 'url-btn-grey', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('url-btn-grey', array(
        'label' => __( 'URL CTA Home 02 - Grey', 'textdomain' ),
        'section' => 'grey',
        'priority' => 2,
        'type' => 'text',
    ));
    /** Setting BTN-TXT *********
     **      HOME 02    ********/
    $wp_customize->add_setting( 'txt-btn-grey', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('txt-btn-grey', array(
        'label' => __( 'Texto boton Home 02 - Grey', 'textdomain' ),
        'section' => 'grey',
        'priority' => 3,
        'type' => 'text',
    ));
    
    /***************** SECCIÓN PARA BTN HOME 03 *********************/
    $wp_customize->add_section( 'blue', array(
        'title' => __( 'Boton Home 03 - Blue', 'textdomain' ),
        'panel' => 'keepinagency',
        'priority' => 4,
    ));

    /** Setting CTA-TXT *********
     **      HOME 03    ********/
    $wp_customize->add_setting( 'txt-cta-blue', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('txt-cta-blue', array(
        'label' => __( 'Texto CTA Home 03 - Blue', 'textdomain' ),
        'section' => 'blue',
        'priority' => 1,
        'type' => 'textarea',
    ));
    /** Setting BTN-URL *********
     **      HOME 03    ********/
    $wp_customize->add_setting( 'url-btn-bue', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('url-btn-bue', array(
        'label' => __( 'URL CTA Home 03 - Blue', 'textdomain' ),
        'section' => 'blue',
        'priority' => 2,
        'type' => 'text',
    ));
    /** Setting BTN-TXT *********
     **      HOME 03    ********/
    $wp_customize->add_setting( 'txt-btn-blue', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control('txt-btn-blue', array(
        'label' => __( 'Texto boton Home 03 - Blue', 'textdomain' ),
        'section' => 'blue',
        'priority' => 3,
        'type' => 'text',
    ));
     /** Setting IMG CTA ********
     **      HOME 03    ********/
     $wp_customize->add_setting( 'imgteam', array (
        'default'        => get_template_directory_uri() . '/img/ico-team.png',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
    ));
    $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'imgteam', array(
        'label'      => __( 'Imagen Team', 'textdomain' ),
        'section'    => 'blue',
        'settings'   => 'imgteam',
        'priority'   => 4,
    )));
    
    /******* SECCIÓN PARA TEXTO HOME **********/
    $wp_customize->add_section( 'citahome', array(
        'title' => __( 'Texto o Cita para el Home', 'textdomain' ),
        'panel' => 'keepinagency',
        'priority' => 5,
    ));
    /** Setting TEXTO *********
    ***    HOME       ********/
    $wp_customize->add_setting( 'home-texto', array(
        'type' => 'option',
        'capability' => 'edit_theme_options',
    ));
    $wp_customize->add_control( 'home-texto', array(
        'label' => __( 'Ingrese el texto para el Home', 'textdomain' ),
        'section' => 'citahome',
        'priority' => 1,
        'type' => 'textarea',
    ));

    /** Panel OPCIONES KEEPIN PAGE para el personalizador **/
    /*******************************************************/
    /******************************************************/
    $wp_customize->add_panel( 'keepin-agency', array(
        'title' => 'KeepIn Page',
        'description' => 'Opciones personales',
        'priority' => 2,
    ));
    /******* SECCIÓN PARA IMAGEN O ICONO PAGE **********/
    $wp_customize->add_section( 'ImagenPages', array(
        'title' => __( 'Imagen para Pages', 'textdomain' ),
        'panel' => 'keepin-agency',
        'priority' => 1,
    ));
    /** Setting Imagen OUR SERVICES **/
    $wp_customize->add_setting( 'imgservices', array (
        'default'        => get_template_directory_uri() . '/img/ico-instagram.png',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
    ));
    $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'services', array(
        'label'      => __( 'Imagen Servicios', 'textdomain' ),
        'section'    => 'ImagenPages',
        'settings'   => 'imgservices',
        'priority'   => 1,
    )));
    /** Setting Imagen OUR PORTFOLIO **/
    $wp_customize->add_setting( 'imgportfolio', array (
        'default'        => get_template_directory_uri() . '/img/ico-instagram.png',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
    ));
    $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'portfolio', array(
        'label'      => __( 'Imagen Protafolio', 'textdomain' ),
        'section'    => 'ImagenPages',
        'settings'   => 'imgportfolio',
        'priority'   => 2,
    )));
     /** Setting Imagen OUR TEAM **/
     $wp_customize->add_setting( 'imgteam', array (
        'default'        => get_template_directory_uri() . '/img/ico-instagram.png',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
    ));
    $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'team', array(
        'label'      => __( 'Imagen Team', 'textdomain' ),
        'section'    => 'ImagenPages',
        'settings'   => 'imgteam',
        'priority'   => 3,
    )));
    /** Setting Imagen OUR BLOG **/
    $wp_customize->add_setting( 'imgblog', array (
        'default'        => get_template_directory_uri() . '/img/ico-instagram.png',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
    ));
    $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'blog', array(
        'label'      => __( 'Imagen Blog', 'textdomain' ),
        'section'    => 'ImagenPages',
        'settings'   => 'imgblog',
        'priority'   => 4,
    )));
    
}

/************** METABOXES PARA EL TITULO ****************
********************************************************/
function meta_box_titulo() {
    add_meta_box('titulo','Indique el titulo a ser usado para esta página.','el_titulo','post','normal','high');
}
function el_titulo() {
    global $wpdb, $post;
    $value  = get_post_meta($post->ID, 'titulo', true);

    echo '<label><strong>Titulo:</strong></label>
    <input type="text" name="titulo" id="titulo" value="'.htmlspecialchars($value).'" style="width: 300px;" /></br>';
}
function guardar_titulo() {
    global $wpdb, $post;
    if (!$post_id) $post_id = $_POST['post_ID'];
    if (!$post_id) return $post;
    $price= $_POST['titulo'];
    update_post_meta($post_id, 'titulo', $price);
}

function subtitulo() { 
	add_meta_box( 'subtitulo','Indique el Subtitulo a ser usado para esta página.','el_subtitulo','page','normal','high' );  
}
function el_subtitulo() {
    global $wpdb, $post;
    $subfirst  = get_post_meta($post->ID, 'subtitulo', true);
    $subsecond = get_post_meta($post->ID, 'sub_titulo', true);
    $textarea  = get_post_meta($post->ID, 'descripcion', true);

    echo '<label"><strong>Titulo:</strong></label>
    <input type="text" name="subtitulo" id="subtitulo" value="'.htmlspecialchars($subfirst).'" style="width: 300px;" /></br>';
    echo '<label"><strong>Sub Titulo:</strong></label>
    <input type="text" name="sub_titulo" id="sub_titulo" value="'.htmlspecialchars($subsecond).'" style="width: 300px;" /></br>';
    echo '<label"><strong>Descripci&oacute;n:</strong></label>
    <textarea type="text" name="descripcion" id="descripcion" rows="5" cols="50" value="'.htmlspecialchars($textarea).'"  /></textarea></br>';
}
function guardar_subtitulo() {
    global $wpdb, $post;
    if (!$post_id) $post_id = $_POST['post_ID'];
    if (!$post_id) return $post;
    $price= $_POST['subtitulo'];
    update_post_meta($post_id, 'subtitulo', $price);
}
function guardar_sub_titulo() {
    global $wpdb, $post;
    if (!$post_id) $post_id = $_POST['post_ID'];
    if (!$post_id) return $post;
    $price= $_POST['sub_titulo'];
    update_post_meta($post_id, 'sub_titulo', $price);
}
function guardar_descripcion() {
    global $wpdb, $post;
    if (!$post_id) $post_id = $_POST['post_ID'];
    if (!$post_id) return $post;
    $price= $_POST['descripcion'];
    update_post_meta($post_id, 'descripcion', $price);
}


/*** Añadir acciones en base a las funciones definidas ***/ 
add_action( 'wp_enqueue_scripts', 'keepin_enqueue_styles' );    // Css
add_action( 'wp_enqueue_scripts', 'keepin_enqueue_scripts' );   // Scripts Javas
add_action( 'after_setup_theme', 'keepin_wp_setup' );           // Colocar título, logo de la página e imagen destacada desde wordpress
add_action( 'after_setup_theme', 'keepin_register_menu' );      // Menús
add_action( 'customize_register', 'custom_keepinagency_register' );  // Personalizador

add_action( 'add_meta_boxes', 'subtitulo' );                       //Metaboxes para PAGE
add_action( 'save_post', 'guardar_subtitulo' );                    //guardar subtitulo metabox
add_action( 'publish_post', 'guardar_subtitulo' );                 //Publicar subtitulo metabox en page

add_action('save_post', 'guardar_sub_titulo');
add_action('publish_post', 'guardar_sub_titulo');

add_action('save_post', 'guardar_descripcion');
add_action('publish_post', 'guardar_descripcion');

add_action( 'add_meta_boxes', 'meta_box_titulo' );                //Metaboxes para POST
add_action( 'save_post', 'guardar_titulo' );                     //guardar titulo metabox
add_action( 'publish_post', 'guardar_titulo' );                  //Publicar título metabox en post

?>