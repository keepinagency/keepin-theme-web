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

/*** Añadir acciones en base a las funciones definidas ***/ 
add_action( 'wp_enqueue_scripts', 'keepin_enqueue_styles' );    // Css
add_action( 'wp_enqueue_scripts', 'keepin_enqueue_scripts' );   // Scripts Javas
add_action( 'after_setup_theme', 'keepin_wp_setup' );           // Colocar título, logo de la página e imagen destacada desde wordpress
add_action( 'after_setup_theme', 'keepin_register_menu' );      // Menús
?>