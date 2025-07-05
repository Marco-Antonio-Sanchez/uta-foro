<?php
$serverName = $_SERVER['SERVER_NAME'];
$folder = 'uta-foro/';
define('URL', 'http://'.$serverName .'/' . $folder);
// Configuración de la base de datos
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'dbforo');
define('DB_CHARSET', 'utf8');
?>

<?php
$host = getenv('DB_HOST');
$port = getenv('DB_PORT');
$user = getenv('DB_USER');
$pass = getenv('DB_PASS');
$db   = getenv('DB_NAME');

$conn = new mysqli($host, $user, $pass, $db, $port);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Opcional:
// echo "Conexión exitosa";
?>
