<?php

    include ("../../../assets/php/conexion.php"); 

    $id=(int)$_GET['id'];

    $sql="delete from libros where id={$id}";
    $resultado= mysqli_query($conexion,$sql);
    if($resultado){
        header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/home.php");
    }else{
        die(mysqli_error($connection));
    }

?>

 