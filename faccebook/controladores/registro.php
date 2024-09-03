<script src="../js/sweetalert2@10.js"></script>
.
<?php
require "../config/conexion.php";

$nombre = $_POST["nombre"];
$documento = $_POST["documento"];
$fecha = $_POST["fecha"];
$telefono = $_POST["telefono"];
$contraseña = $_POST["contraseña"];
$confirmar = $_POST["confirmar"];

    $sql = "INSERT INTO faccebook
    (nombre, documento, fecha, telefono, contraseña, confirmar, fecha_sys) VALUES 
    ('".$nombre."' , '".$documento."' , '".$fecha."' , '".$telefono."','".$contraseña."','".$confirmar."',now())";

if ($conexion->query($sql)){
    echo "<script>
    Swal.fire({
      title: 'Registro exitoso',
      icon: 'success',
      confirmButtonColor: '#3085d6',
      confirmButtonText: 'Aceptar'
    }).then((result) => {
      if (result.isConfirmed) {
        window.location.href = '../index.html';
      }
    });
  </script>";
}
   else
{
    echo "<script>
    Swal.fire({
      title: 'Error al registrarse',
      icon: 'error',
      confirmButtonColor: '#3085d6',
      confirmButtonText: 'Aceptar'
    }).then((result) => {
      if (result.isConfirmed) {
        window.location.href = '../index.html';
      }
    });
  </script>";
}

?>