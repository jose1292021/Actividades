<script src="../js/sweetalert2@10.js"></script>
.
<?php
require "../config/conexion.php";

$valor = $_POST["valor"];
$iva = $valor *19/100;
$total = $valor + $iva;

    $sql = "INSERT INTO pagos
    (valor, iva, total, fecha_sys) VALUES 
    ('".$valor."' , '".$iva."' , '".$total."' ,now())";

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