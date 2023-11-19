<?php 
/** 
 * 
 * Header Template
 * 
 * @package code
 * 
*/
?>

<!DOCTYPE html>
<html lang="<?php language_attributes(); ?>">
<head>
     <meta charset="<?php bloginfo( 'charset' ); ?>">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Document</title>
     <?php wp_head() ?>
</head>
<body <?php body_class( 'sample-class' ) ?> >
     
     <?php 
          if ( function_exists( 'wp_body_open' )) {
               wp_body_open();

          } 
     ?>

     <div id="page" class="site">
          <header class="cutom-header" id="masterhead" role="banner">
               <?php get_template_part( 'template-parts/content', 'header' ) ?>
          </header>
          <div id="content" class="site-content">


    