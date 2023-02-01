<?php
include ("conexion-cotizacion.php");
include("conexion.php");
        session_start();
        if (isset($_SESSION["loggedin"])) {
            $id = $_SESSION["id"];
        }
$nombre = $_POST["Nombre"];
$fecha_c = $_POST["fecha_c"];
$fecha_f = $_POST["fecha_f"];
$proyecto = $_POST["form_tipop"];
$presupuesto = $_POST["form_presupuesto"];
$extra =$_POST["value"];
$nombre_extra =$_POST["name"];
$valor_extra = $_POST["value"];
$total = $extra + $presupuesto;

$insertar = "INSERT INTO productos (Nombre, fecha_c, fecha_f, TipoProyecto, presupuesto, nombre_extra,  valor_extra,  total, usuario_id)
VALUES('$nombre','$fecha_c','$fecha_f','$proyecto','$presupuesto','$nombre_extra','$valor_extra','$total','$id')";

$resulltado =mysqli_query($conexion, $insertar);

?>

<?php
header("Refresh:5; url=bienvenida.php");
?>

<!DOCTYPE html>
<html>
<head>
    <style>
       .contenedor{
        background-color: #3396FF;
        height: 10vh;
        margin: 10%;


        display: flex;
        justify-content: center;
        align-items: center;
       }
    </style>
</head>
<body>
    <div class="contenedor">
        <h1>Tu compra se realizó con exito</h1>
    </div>

</body>
</html>