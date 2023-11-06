<?php

function my_theme_register_styles(){

     $version = wp_get_theme()->get('Version');     
     // Main and Custom Stylesheet
     wp_enqueue_style( 'main-style', get_template_directory_uri() . '/style.css', array('bootstrap'), $version, 'all' );
     // wp_enqueue_style( 'custom-style', get_template_directory_uri() . '/assets/css/custom-style.css', array(), $version, 'all' );
     
     // Bootstrap
     wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/assets/bootstrap/css/bootstrap.min.css', array(), '5.3.2', 'all' );
     
}

function my_theme_register_scripts(){
     
     $version = wp_get_theme()->get('Version');   
     // Jquery
     wp_enqueue_script( 'jQuery', get_template_directory_uri() . '/assets/bootstrap/js/jquery.min.js', array(), '3.7.1', true );
     // Popper
     wp_enqueue_script( 'popper', get_template_directory_uri() . '/assets/bootstrap/js/popper.min.js', array(), '2.4.4', true );
     // Bootstrap
     wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/assets/bootstrap/js/bootstrap.min.js', array(), '5.3.2', true );
     // Custom Javascript
     wp_enqueue_script( 'custom-javascript', get_template_directory_uri() . '/assets/js/custom-js.js', array(), $version, true );

}

// Hook Stylesheets
add_action('wp_enqueue_scripts', 'my_theme_register_styles');

// Hook Javascripts
add_action('wp_enqueue_scripts', 'my_theme_register_scripts');