<?php 

/*
Template Name: Contact Us
*/

?>

<?php get_header(); ?>
     <div class="container bg">
          <div class="row">
               <div class="col-lg-6 bg-dark text-light">
                    <h1><?php the_title(); ?></h1>          
               </div>
               <div class="col-lg-6">
                    <?php get_template_part("includes/section", "content"); ?>
               </div>
          </div>

     </div>
<?php get_footer(); ?>