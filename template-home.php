
<?php
/**
 * Template Name: Home Page
 *
 * Code borrowed from combination of Kelly Horigan and Anthony Peruzzo
 *
 */
get_header(); ?>

<div id="main-content" class="main-content">

	<div id="primary1" class="content-area">
		<div id="content1" class="site-content" role="main">
				
			<h1><?php the_field('image_caption_1'); ?></h1>
			<h2><?php the_field('image_sub_caption_1'); ?></h2>

				<?php $image = get_field('image_1'); ?>
			
			<div id="image-content-1" style="background-image: url(<?php the_field('image_1') ;?>);"></div>
		</div>
	</div>

	

<!-- 	<div id="primary2" class="content-area">
		<div id="content2" class="site-content" role="main">
				
			<h1><?php the_field('image_caption_2'); ?></h1>
			<h2><?php the_field('image_sub_caption_2'); ?></h2>

			<?php $image = get_field('image_2'); ?>
			
			<div id="image-content-2" style="background-image: url(<?php the_field('image_2'); ?>);"></div>
		</div>
	</div>
	
	<div id="primary3" class="content-area">
		<div id="content3" class="site-content" role="main">
				
			<h1><?php the_field('image_caption_3'); ?></h1>
			<h2><?php the_field('image_sub_caption_3'); ?></h2>

			<?php $image = get_field('image_3'); ?>
			
			<div id="image-content-3" style="background-image: url(<?php the_field('image_3'); ?>);"></div>
		</div>
	</div> -->



</div><!-- #main-content -->

<?php

get_footer();?>