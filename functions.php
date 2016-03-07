<?php
/**
 * frustration functions and definitions.
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package frustration
 */

if ( ! function_exists( 'frustration_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function frustration_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on frustration, use a find and replace
	 * to change 'frustration' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'frustration', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'primary' => esc_html__( 'Primary', 'frustration' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form',
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 * See https://developer.wordpress.org/themes/functionality/post-formats/
	 */
	add_theme_support( 'post-formats', array(
		'aside',
		'image',
		'video',
		'quote',
		'link',
	) );

	// Set up the WordPress core custom background feature.
	add_theme_support( 'custom-background', apply_filters( 'frustration_custom_background_args', array(
		'default-color' => 'ffffff',
		'default-image' => '',
	) ) );
}
endif;
add_action( 'after_setup_theme', 'frustration_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function frustration_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'frustration_content_width', 640 );
}
add_action( 'after_setup_theme', 'frustration_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function frustration_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'frustration' ),
		'id'            => 'sidebar-1',
		'description'   => '',
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'frustration_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function frustration_scripts() {
	wp_enqueue_style( 'frustration-style', get_stylesheet_uri() );

	wp_enqueue_script( 'frustration-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'frustration-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	wp_register_style('googleFonts', 'https://fonts.googleapis.com/css?family=Open+Sans:400,700|Open+Sans+Condensed:300|Arvo:400,700');
    wp_enqueue_style( 'googleFonts');

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}

// Custom Post Types
add_action( 'init', 'create_my_post_types' );

function create_my_post_types() {
 register_post_type( 'team_member', 
 array(
      'labels' => array(
      	'name' => __( 'Team Members' ),
      	'singular_name' => __( 'Team Member' ),
      	'add_new' => __( 'Add New' ),
      	'add_new_item' => __( 'Add New Team Member' ),
      	'edit' => __( 'Edit' ),
      	'edit_item' => __( 'Edit Team Member' ),
      	'new_item' => __( 'New Team Member' ),
      	'view' => __( 'View Team Member' ),
      	'view_item' => __( 'View Team Member' ),
      	'search_items' => __( 'Search Team Members' ),
      	'not_found' => __( 'No Team Members found' ),
      	'not_found_in_trash' => __( 'No Team Members found in Trash' ),
      	'parent' => __( 'Parent Team Member' ),
      ),
 'public' => true,
      'menu_position' => 4,
      'rewrite' => array('slug' => 'team_members'),
      'supports' => array( 'title', 'editor', 'excerpt', 'thumbnail' ),
      'taxonomies' => array('category', 'post_tag'),
      'publicly_queryable' => true,
      'show_ui' => true,
      'query_var' => true,
      'capability_type' => 'post',
      'hierarchical' => false,
     )
  );
	register_post_type( 'cabins', 
 array(
      'labels' => array(
      	'name' => __( 'Cabins' ),
      	'singular_name' => __( 'Cabin' ),
      	'add_new' => __( 'Add New' ),
      	'add_new_item' => __( 'Add New Team Cabin' ),
      	'edit' => __( 'Edit' ),
      	'edit_item' => __( 'Edit Cabin' ),
      	'new_item' => __( 'New Cabin' ),
      	'view' => __( 'View Cabin' ),
      	'view_item' => __( 'View Cabin' ),
      	'search_items' => __( 'Search Cabins' ),
      	'not_found' => __( 'No Cabins found' ),
      	'not_found_in_trash' => __( 'No Cabins found in Trash' ),
      	'parent' => __( 'Parent Cabin' ),
      ),
 'public' => true,
      'menu_position' => 4,
      'rewrite' => array('slug' => 'cabins'),
      'supports' => array( 'title', 'editor', 'excerpt', 'thumbnail' ),
      'taxonomies' => array('category', 'post_tag'),
      'publicly_queryable' => true,
      'show_ui' => true,
      'query_var' => true,
      'capability_type' => 'post',
      'hierarchical' => false,
     )
  );
}

add_action( 'wp_enqueue_scripts', 'frustration_scripts' );

// 
wp_enqueue_script( 'jquery', false, false, false, false );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
require get_template_directory() . '/inc/jetpack.php';
