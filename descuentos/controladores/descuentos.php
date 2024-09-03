<script src="../js/sweetalert2@10.js"></script>
.
<?php
require "../config/conexion.php";

$valorgastado = $_POST["valorgastado"];
$iva = $valorgastado * 0.19;
$descuento = 0;

if ($valorgastado <= 100000){
  $descuento = $valorgastado * 0.10;
}else{
  $descuento = $valorgastado * 0.20;
}


    $sql = "INSERT INTO descuentos
    (valorgastado,  iva, descuento, fecha_sys) VALUES 
    ('".$valorgastado."','".$iva."', '".$descuento."', now())";

if ($conexion->query($sql)){
    echo "<script>
    Swal.fire({
      title: 'Pago exitoso',
      icon: 'success',
      confirmButtonColor: '#3085d6',
      confirmButtonText: 'Aceptar'
    }).then((result) => {
      if (result.isConfirmed) {
        window.location.href = '../pago.html';
      }
    });
  </script>";
}
   else
{
    echo "<script>
    Swal.fire({
      title: 'Error en el pago',
      icon: 'error',
      confirmButtonColor: '#3085d6',
      confirmButtonText: 'Aceptar'
    }).then((result) => {
      if (result.isConfirmed) {
        window.location.href = '../pago.html';
      }
    });
  </script>";
}

?>