
<?php
/**
 * Template Name: Gallery Page
 *
 * 
 *
 */
get_header(); ?>

<div id="main-content" class="main-content">

	<div class="content-area">
		<div role="main">
			 <?php
			    $images = get_field('image_gallery');
			 
			    if( $images ): ?>
			        <div id="slider" class="flexslider">
			            <ul class="slides">
			                <?php foreach( $images as $image ): ?>
			                    <li>
			                        <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
			                        <p class="flex-caption"><?php echo $image['caption']; ?></p>
			                    </li>
			                <?php endforeach; ?>
			            </ul>
			        </div>
			 
			    <?php endif; ?>
					
		</div>
	</div>

	




</div><!-- #main-content -->

<?php

get_footer();?>