<?php

$usuario = $_POST["usuario"];
$clave = $_POST["clave"];

if ($clave == 2024 && $usuario == 'itfip') {
    
        echo "HAS INICIADO SESION CORRECTAMENTE";
    } else {
        echo "ERROR AL INICIAR SESION VERIFICA LOS DATOS";
    }

?>
