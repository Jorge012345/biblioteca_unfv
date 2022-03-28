 
<?php
    include ("../../../assets/php/conexion.php"); 
    $nombre=$_POST['txtNombre'];
    $apellido=$_POST['txtApellido'];
    $codigo=$_POST['txtCodigo'];
    $correo=$_POST['txtCorreo'];
    $pass=$_POST['txtPassword'];
    $estado=1;
    $tipo="admin";
    $alert='';

    $sql="insert into administradores (name, lastname, code , state , mail , password, type) values ('$nombre','$apellido','$codigo',$estado,'$correo','$pass','$tipo')";
    
    $resultado= mysqli_query($conexion,$sql);/*ejecuta el query*/
     
    
    if($resultado){  
        $alert="se agrego correctamente";
        header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/administracion/nuevo_administrador.php?alert={$alert}");
    
    }else{
        $alert='Hubo un error';
        header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/administracion/nuevo_administrador.php?alert={$alert}");   
    }
     
?>
    
 