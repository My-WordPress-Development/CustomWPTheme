<?php

function jerrytheme_theme_support(){
     // Add dynamic title tag
     add_theme_support('title-tag');
     add_theme_support('custom-logo');
     add_theme_support('post-thumbnails');
     
}

add_action('after_setup_theme', 'jerrytheme_theme_support');

function jerrytheme_nav_menu(){
     $locations = array(
          'primary' => 'Desktop Primary Left Menu',
          'footer' => 'Footer Menu Item'
     );

     register_nav_menus($locations);
}

add_action('init', 'jerrytheme_nav_menu');


function jerrytheme_register_styles(){

     $version = wp_get_theme()->get('Version');
     wp_enqueue_style('main-style', get_template_directory_uri(). '/style.css', array('bootstrap'), $version, 'all' );
     wp_enqueue_style('bootstrap', 'https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' , array(), '4.4.1', 'all' );
     wp_enqueue_style('fontawesome', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css', array(), '5.13.0', 'all' );
}

add_action('wp_enqueue_scripts', 'jerrytheme_register_styles');

function jerrytheme_register_scripts(){

     // $version = wp_get_theme()->get('Version');
     // wp_enqueue_style('main-style', get_template_directory_uri(). '/style.css', array('bootstrap'), $version, 'all' );
     wp_enqueue_script('jquery', 'https://code.jquery.com/jquery-3.4.1.slim.min.js' , array(), '3.4.1', true );
     wp_enqueue_script('popper', 'https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js' , array(), '1.16
     .0', true );
     wp_enqueue_script('bootstrap', 'https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js', array(), '4.4.1', true );
     wp_enqueue_script('main-js', get_template_directory_uri(). '/assets/js/main.js', array(), '1.0', true );
}

add_action('wp_enqueue_scripts', 'jerrytheme_register_scripts');

function jerrytheme_widget_areas(){

     register_sidebar(
          array(
               'name' => 'Sidebar Areas',
               'id' => 'sidebar-1',
               'description' => 'Sidebar Widget Area',
               'before_widget' => '',
               'after_widget' => '',
               'before_title' => '',
               'after_title' => '',
          )
          
     );

     register_sidebar(
          array(
               'name' => 'Footer Areas',
               'id' => 'footer-1',
               'description' => 'Footer Widget Area',
               'before_widget' => '',
               'after_widget' => '',
               'before_title' => '',
               'after_title' => '',
          )
          
     );
}

add_action('widgets_init', 'jerrytheme_widget_areas');

