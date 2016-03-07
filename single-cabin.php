<?php 
/**
 * Template Name: Custom Post Cabins
 *
 *
 *
 */
get_header(); ?>

<div id="main-content" class="main-content">

	<div id="cabins" class="content-area">
		
		<div id="cabin-image" style="background-image: url(<?php the_field('background_image') ;?>);"></div>

		<div id="cabin-1" class="site-content" role="main">
			
			<div class="cabin-images">
			<img src="<?php the_field('main_image'); ?>" />
			<?php the_field('thumbnail_gallery'); ?>
			</div>

			<div class="cabin-description">
				<h2><?php the_field('cabin_name'); ?></h2>

				<p><?php the_field('cabin_description'); ?></p>
			</div>

		</div>
	</div>

</div><!-- #main-content -->

<?php

get_footer();?>