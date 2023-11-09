<?php get_header(); ?>
<section class="page-wrapper">
     <div class="container">
        <?php if ( is_home() ) : ?>
            <?php get_template_part("template-parts/content", "article"); ?>
            <?php previous_post_link() ?>
            <?php next_post_link() ?>
        <?php else : ?>
            <?php get_template_part("template-parts/content", "page"); ?>
        <?php endif; ?>
     </div>
</section>
<?php get_footer(); ?>
