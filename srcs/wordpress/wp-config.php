<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_base' );

/** MySQL database username */
define( 'DB_USER', 'adminwp' );

/** MySQL database password */
define( 'DB_PASSWORD', 'adminwp' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql-svc:3306' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ';%MKobh?3M1-e|3<E~u*a: ^EJoq6Ycn{^Uh.5W]+EKEu-l152YU6bG?%/]~x.bz');
define('SECURE_AUTH_KEY',  'J5v?c*GdxR#dheZsELQNZG~<OYWKlnt(?l0N^i)r*=Wb^^474y_]14OKQov-FV&r');
define('LOGGED_IN_KEY',    'w;;HA<MWmY=.At`Pam}c`gQY3W(8k.S6<_5q5%p4}q2+@|8^BBJ-_,+/3io*vHxG');
define('NONCE_KEY',        'V;X;0/pwx2++xc|L#pH}+B?[kyFo|v^XSZ%o9n 4!7ClMrF^@2jABMGbVG-l[y,)');
define('AUTH_SALT',        'W-Z:BGfb3a_Ra,~:lz(T.BZiF5~.y&i&]E8tt&]|Y9oATVuk1<4O`2]B*%SjIk$d');
define('SECURE_AUTH_SALT', 'QcIl+m}BuIm>Tk9HmUg{#+}@dICyYX9s_7DDUIPqFtPe5Pddru@I`XQ:|b-PJJmc');
define('LOGGED_IN_SALT',   '?>E^sN#.qLvHN(f(Im2|DZ#dvSNCRr$jEWj?r~Pj}}R/:%5=?&_{o5#dfOC5(.E]');
define('NONCE_SALT',       '<jr4}Sx[Yf9&>8`RoM^pan80NUr&m1!QUhc@cW{3`wRg.wz/EhJ-8gOq5b+uB&o}');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php');
