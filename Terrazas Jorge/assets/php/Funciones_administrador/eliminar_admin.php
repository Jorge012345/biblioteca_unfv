
<?php

    include ("../../../assets/php/conexion.php"); 

   
    $id=$_GET['id'];

    $sql="DELETE FROM lista_administrador WHERE id={$id}";
    $resultado= mysqli_query($conexion,$sql);
    if($resultado){
        header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/administracion/admi_administradores.php");
    }else{
        die(mysqli_error($connection));
    }

?>

 