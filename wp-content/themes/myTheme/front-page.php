<?php get_header(); ?>
<section class="page-wrapper">
     <div class="container">
          <h1><?php the_title(); ?></h1>          
          <?php get_template_part("template-parts/content", "page"); ?>
          
     </div>
     <div class="header">
          header 2
     </div>
</section>
<?php get_footer(); ?>