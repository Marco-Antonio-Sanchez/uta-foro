<?php
date_default_timezone_set("America/Mexico_City");
//echo "Hora actual: " . date('Y-m-d H:i:s T');
// Mostrará algo como: 2025-06-16 10:30:45 CST

error_reporting(E_ALL);
ini_set('ignore_repeated_errors', TRUE);
ini_set('display_errors', TRUE);// Para ver que pasa en Render
ini_set('log_errors', TRUE);
ini_set("error_log", "php-error.log");

require_once 'config/config.php';
require_once 'config/database.php';

require_once 'libs/app.php';
require_once 'libs/controller.php';
require_once 'libs/model.php';
require_once 'libs/view.php';

require_once 'classes/sessioncontroller.php';

$app = new App();


