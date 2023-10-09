<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'customwpthmem_db' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '=U56nTgix01HG;=-1x<Lw0+`)[sUV#$r2OEZh# [KKBe{8},t_<p|e,&iu#s dKg' );
define( 'SECURE_AUTH_KEY',  'M#`Vho!}@M;Z|B:aw([+{]+`s7FpkoA9?5<}N379m&H3 oSBAHuOiVIx-AOwH{w+' );
define( 'LOGGED_IN_KEY',    '`EuomQa26@it;<h,(B!fLGAZo3O=Ndj4%Y^!3r*.sa-1(?Anhgx.Dm%UUEM&(&~.' );
define( 'NONCE_KEY',        'eC:YJb fOJotp+pU[m7Qe--,Sopvb`t8xR;zdPP![A[M54rGa)vw>1EyY~z }cy*' );
define( 'AUTH_SALT',        'f(<[bF9J}e-=swRC)JX1W7GVi}%@/y<<rW!. (J^W|Wsx{m7C_[t>ILhiEjE>8.W' );
define( 'SECURE_AUTH_SALT', '@/Q>utBf$#jsvYE{4])+kOj&/lWPI+w6}gDeZz}-?Bmolx08-y4g}X1-1.i>@U.N' );
define( 'LOGGED_IN_SALT',   'olY5,SM--.SZ.7}`}y]!2z5}8*Af1dyzP3Pm6rcp>|L9)Ub4W4$@+y`A?JqF2i:K' );
define( 'NONCE_SALT',       '7YRsc,f:edZ]uq=h]4jU|xw.i)trs 7!ZX)L4~IU~li]7NJ!~@2Th$%I@UYs-s n' );

/**#@-*/

/**
 * WordPress database table prefix.
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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
