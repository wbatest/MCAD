<?php 
/**
 * Template Name: Custom Post Cabins
 *
 *
 *
 */
get_header(); ?>

<div id="main-content" class="main-content">
<?php while ( have_posts() ) : the_post(); ?>
	
<div id="cabin-background" style="background-image: url(<?php the_field('background_image') ;?>);"></div>

	<div id="cabins" class="content-area">

		<div id="cabin-1" class="site-content" role="main">
		
			<div class="cabin-images">
				<img id="main-image" src="<?php the_field('main_image'); ?>" />

				<?php 
					$images = get_field('thumbnail_gallery');

					if( $images ): ?>
					    <ul>
					        <?php foreach( $images as $image ): ?>
					            <li>
					                <a href="<?php echo $image['url']; ?>">
					                     <img src="<?php echo $image['sizes']['thumbnail']; ?>" alt="<?php echo $image['alt']; ?>" />
					                </a>
					                <p><?php echo $image['caption']; ?></p>
					            </li>
					        <?php endforeach; ?>
					    </ul>
					<?php endif; ?>
			</div>

			<div class="cabin-description">
				<h2><?php the_field('cabin_name'); ?></h2>

				<p><?php the_field('cabin_description'); ?></p>

				<p><?php the_field('cabin_pricing'); ?></p>

				<a href="#" id="cabin-button"><?php the_field('button'); ?></a>
			</div>

		</div>
	</div>
<?php endwhile;?>
</div><!-- #main-content -->
	



<?php

get_footer();?>