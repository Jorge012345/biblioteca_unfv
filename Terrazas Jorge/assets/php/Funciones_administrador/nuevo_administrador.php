<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/BibliotecaUNFV/Terrazas Jorge/assets/css/style.css">
    <title>Document</title>
</head>
<body>
    <main>
        
        <?php
            include ("../../../assets/php/conexion.php"); 
            $nombre=$_POST['txtNombre'];
            $apellido=$_POST['txtApellido'];
            $codigo=$_POST['txtCodigo'];
            $correo=$_POST['txtCorreo'];
            $pass=$_POST['txtPassword'];
            $estado=1;
            $tipo="admin";

            $sql="INSERT INTO administradores(name,lastname,code,state,mail,password,type) VALUES ('$nombre','$apellido','$codigo',$estado,'$correo','$pass',$tipo)";
            $resultado= mysqli_query($conexion,$sql);/*ejecuta el query*/
             
    
            if($resultado){  
                
                header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/administracion/nuevo_administrador.html");
    
            }else{
                die(mysqli_error($connection));
            }
             
            ?>
            
    </main>
</body>
</html>
