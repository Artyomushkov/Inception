<?php
/**
 * Custom WordPress configurations on "wp-config.php" file.
 *
 * This file has the following configurations: MySQL settings, Table Prefix, Secret Keys, WordPress Language, ABSPATH and more.
 * For more information visit {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php} Codex page.
 * Created using {@link http://generatewp.com/wp-config/ wp-config.php File Generator} on GenerateWP.com.
 *
 * @package WordPress
 * @generator GenerateWP.com
 */


/* MySQL settings */
define( 'DB_NAME',     '${MYSQL_DB}' );
define( 'DB_USER',     '${MYSQL_USER}' );
define( 'DB_PASSWORD', '${MYSQL_PASSWORD}' );
define( 'DB_HOST',     '${MYSQL_HOST}' );
define( 'DB_CHARSET',  'utf8mb4' );


/* MySQL database table prefix. */
$table_prefix = 'wp_';


/* Authentication Unique Keys and Salts. */
/* https://api.wordpress.org/secret-key/1.1/salt/ */
define('AUTH_KEY',         '^vay;^wD7.Zf+XIW5N^5l7[j&]ncW=rVVA;ZdI1Mfn7qAkMqkGfxZ=N:)7y{Hu Z');
define('SECURE_AUTH_KEY',  's7j:e5w;3~9bQuNN&J,Oj(J?TPc[-Pg|AmZHy|+DoO)Z-VI|v~+vOWXc;%T(jp|)');
define('LOGGED_IN_KEY',    'X7-Aa}j44Aqs,R-*c!XolfcG~aa`74fI8C~Ht6)E| aW~D|=t(dC-C[<S16?S]a(');
define('NONCE_KEY',        '=rOTHYuh`pm-`=o%ICti&jiD]TsYnODy_rBgdcS|][>[y;=V^jKTNDfwiEoy|>~#');
define('AUTH_SALT',        'im6/.dBoR(S?L5{4ME<L&v6wdnQ?_jzyBz<!2;?I=Cab[*v#-JRmKnuo*wofAGTg');
define('SECURE_AUTH_SALT', '&rwg8VQ^5@Ff7`xzJ?Eqg1|x`(n2`w/-k:r|G+c?-b|93C^(irKlVhj#|IRYbnhI');
define('LOGGED_IN_SALT',   'd$O<-^57_J$UDGVeM6I7#J sbOIh.u#EM{S~^<:kfdL:n9?~E-[@.C>mh+{rcG<;');
define('NONCE_SALT',       '{&8~-wd}h1W~|`Bnb]5A-J~|#(q*Q$8UNZCy/[5PgB[e(se5c@7? *Ivb~(poUPE');


/* Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/* Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');