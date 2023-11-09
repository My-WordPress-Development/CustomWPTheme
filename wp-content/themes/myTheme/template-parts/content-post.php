<div class="container">
     <?php if( have_posts() ): ?>
          <?php while( have_posts() ): ?>
               <?php the_post()?>
               <h1><?php the_title()?></h1>
               <p><?php the_excerpt()?></p>
               <a href="<?php the_permalink()?>">Read More</a>
          <?php endwhile; ?>
     <?php endif; ?>
</div>