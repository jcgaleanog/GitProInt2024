<?PHP
// Cargamos variables
require ("aut_config.php");
// le damos un mobre a la sesion (por si quisieramos identificarla)
session_name($usuarios_sesion);
// iniciamos sesiones
session_start();
// destruimos la session de usuarios.
session_destroy();
$host  = $_SERVER['HTTP_HOST'];
//header("Location: http://$host/pxsp/hosting/admin"); 
header("Location: index.php"); 
?>
