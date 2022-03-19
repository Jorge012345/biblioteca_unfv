<?php


    include ("../../../assets/php/conexion.php"); 

    $estado=(int)$_GET['estado'];
    $id=(int)$_GET['id'];
    if($estado==0){
        $sql="update administradores set state=1 where state={$estado} and id={$id}";
        $resultado= mysqli_query($conexion,$sql);
        header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/administracion/admi_administradores.php");


    }else{
        $sql="update administradores set state=0 where state={$estado} and id={$id}";
        $resultado= mysqli_query($conexion,$sql);
        header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/administracion/admi_administradores.php");
    
    }

?>