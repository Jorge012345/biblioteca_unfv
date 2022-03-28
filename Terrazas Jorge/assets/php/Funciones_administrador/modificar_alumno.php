
<?php
if(isset($_REQUEST['modificar'])){
    include ("../../../assets/php/conexion.php"); 
    
    $id=(int)$_REQUEST['id'];
    $nombre=$_REQUEST['nombre'];
    $apellido=$_REQUEST['apellido'];
    $codigo=$_REQUEST['codigo'];
    $dni=(int)$_REQUEST['dni'];
    $email=$_REQUEST['mail'];
    $genero=$_REQUEST['genero'];
    include ("../../../assets/php/conexion.php");
    $sql="update usuarios set name='{$nombre}',lastname='{$apellido}',code='{$codigo}',dni=$dni,mail='{$email}',gender='{$genero}'
            where id=$id";
    $resultado= mysqli_query($conexion,$sql);
    $message='';
    if($resultado){
        $message="Registro actualizado";
        header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/menu/modificar_alu.php?id={$id}&message={$message}");
    }else{
        $message="Error al actualizar";
    }



}



?>