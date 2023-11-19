<?php
/** 
 * 
 * Theme Functions
 * 
 * @package code
 * 
*/

// REGISTER STYLES
function code_theme_register_styles(){

     // Add main stylesheet 
     wp_register_style( 'global-style', get_template_directory_uri() . '/style.css', array('bootstrap'), filemtime( get_template_directory(). '/style.css' ), 'all'  );
     
     // Add additional stylesheet 
     wp_register_style( 'custom-style', get_template_directory_uri() . '/assets/css/custom-style.css', array(), filemtime( get_template_directory(). '/assets/css/custom-style.css' ), 'all'  );
     
     // Add Bootstrap
     wp_register_style( 'bootstrap-css', get_template_directory_uri() . '/assets/bootstrap/css/bootstrap.min.css', array(), false, 'all'  );

     // Enqueue all styles here
     wp_enqueue_style( 'global-style' );
     wp_enqueue_style( 'custom-style' );
     wp_enqueue_style( 'bootstrap-css' );
     
}
// Hook Stylesheet and Bootstrap
add_action( 'wp_enqueue_scripts', 'code_theme_register_styles' );

// REGISTER JAVASCRIPTS AND JQUERY
function code_theme_register_scripts(){
  
     // Add jQuery
     // wp_register_script( 'jQuery', get_template_directory_uri() . '/assets/js/jquery.min.js', array(), '3.7.1', true  );
     
     // Add Popper
     wp_register_script( 'popper', 'https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js' , array(), false, true  );
     
     // Add Bootstrap
     wp_register_script( 'bootstrap-js', get_template_directory_uri() . '/assets/bootstrap/js/bootstrap.min.js', array( 'jquery' ), false, true  );
     
     // Add Custom Javascripts
     wp_register_script( 'custom-javascripts', get_template_directory_uri() . '/assets/js/custom-js.js', array(), filemtime( get_template_directory(). '/assets/js/custom-js.js' ), true  );
 
     // Enqueue all scripts here
     // wp_enqueue_script( 'jQuery' );
     wp_enqueue_script( 'popper' );
     wp_enqueue_script( 'bootstrap-js' );
     wp_enqueue_script( 'custom-javascripts' );
}
// Hook Javascripts
add_action( 'wp_enqueue_scripts', 'code_theme_register_scripts' );

// Register Menus
function global_menus(){
     $locations = array(
          'primary-header-menu' => 'Primary Header Menu',
          'primary-footer-menu' => 'Primary Footer Menu',
     );
     register_nav_menus( $locations );
}
// Hook Menus
add_action( 'init', 'global_menus' );