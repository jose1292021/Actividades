<?php

$nombre = $_POST["nombre"];
$apellido = $_POST["apellido"];
$celular = $_POST["celular"];
$email = $_POST["email"];
$estrato = $_POST["estrato"];
$tipo = $_POST["tipo"];


if ($estrato <= 3) {
    
        echo "REGISTRO EXITOSO CON ESTIMULO";
    } else {
        echo "REGISTRO EXITOSO SIN ESTIMULO";
    }

?>
