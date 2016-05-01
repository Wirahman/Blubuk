<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
|--------------------------------------------------------------------------
| File and Directory Modes
|--------------------------------------------------------------------------
|
| These prefs are used when checking and setting modes when working
| with the file system.  The defaults are fine on servers with proper
| security, but you may wish (or even need) to change the values in
| certain environments (Apache running a separate process for each
| user, PHP under CGI with Apache suEXEC, etc.).  Octal values should
| always be used to set the mode correctly.
|
*/
define('FILE_READ_MODE', 0644);
define('FILE_WRITE_MODE', 0666);
define('DIR_READ_MODE', 0755);
define('DIR_WRITE_MODE', 0777);

/*
|--------------------------------------------------------------------------
| File Stream Modes
|--------------------------------------------------------------------------
|
| These modes are used when working with fopen()/popen()
|
*/

define('FOPEN_READ',							'rb');
define('FOPEN_READ_WRITE',						'r+b');
define('FOPEN_WRITE_CREATE_DESTRUCTIVE',		'wb'); // truncates existing file data, use with care
define('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE',	'w+b'); // truncates existing file data, use with care
define('FOPEN_WRITE_CREATE',					'ab');
define('FOPEN_READ_WRITE_CREATE',				'a+b');
define('FOPEN_WRITE_CREATE_STRICT',				'xb');
define('FOPEN_READ_WRITE_CREATE_STRICT',		'x+b');

define('AJAX_FAILED', '0');
define('AJAX_SUCCESS', '1');
define('MIN_LENGTH_PASSWORD', 6);
define('AUTOCOMPLETE_DELIMITER', ' - ');
define('ROLE_ADMIN', '1');
define('SATKER_ADMIN', '1');
define('DEFAULT_PER_PAGE', 20);
/* End of file constants.php */
/* Location: ./application/config/constants.php */

define('THEME_PATH','http://localhost/pelisia/lib/theme-blue/');

define('RECAPTCHA_PUBLIC_KEY','6Lf20gATAAAAAC8X4jBWSvoRfP_TJ1WYwn_HL-Dy');
define('RECAPTCHA_PRIVATE_KEY','6Lf20gATAAAAAPkHt1Zqa7e1BzhAbfAf7ewGnx-q');
