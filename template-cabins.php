<?php
/**
 * Template Name: Cabins Page
 *
 * 
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

</div><!-- #main-content -->

<?php

get_footer();?>