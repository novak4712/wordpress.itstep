<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'asentus');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'QJ]0%FG{x!s.3AKs%r@wgwRE,r5-irznJ`KmaD.5MCCv3hyxva{AR*|]IXRb)g^=');
define('SECURE_AUTH_KEY',  'O_?w_cVL@y)MLnG[y)]ZCo5K<*pQS{s&UtD,Cx)|@-TIVaHb8fVW2h9Isve,U3+f');
define('LOGGED_IN_KEY',    'LDfB(`T4nb@3B$>z *)f}dbldfV2C!+D_ L{M%3J$5zXHAfg;acX|T~gvHT K9SK');
define('NONCE_KEY',        '`}O{YF_dv&{kAg?%3,m|v-/3cx-!cKf67Q}+3/;FHL;lDo-2]@Y>7nbk_#yk[fEP');
define('AUTH_SALT',        'f[GG!`!Zy2q313tGuugWwke8G}1t8V,H=<P>JKV!_M:G37+rhfTP6cQ&MKzzW9Om');
define('SECURE_AUTH_SALT', 'HW!uFF4O:y`.+*$cWd([?FXvEI[,<OMTtFz/quh(%r>^ODk}m2`r8K]b2uGcz;@s');
define('LOGGED_IN_SALT',   '~RnlKPfge@4V#=#K:Z*jK,.fIC[$GauB.vEz*/K[9FZYmJ~Nm{=(6@<@t0amsPUB');
define('NONCE_SALT',       'o).dTy?CDrkqV2@V9tJ5VwPJTdX^BMs6aCR6w=)tU6t~THjVkCVy+qglKrNvaQO2');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
