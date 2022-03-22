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
         $user=$_POST['txtUser'];
         $correo=$_POST['txtCorreo'];
         $estado=1;

         $sql="INSERT INTO lista_administrador(nombre,apellido,codigo,usuario,email,estado) VALUES ('$nombre','$apellido','$codigo',' $user',' $correo',$estado)";
         $resultado= mysqli_query($conexion,$sql);/*ejecuta el query*/
         
  
        if($resultado){
            echo "<h1>Registro exitoso!</h1>";
            echo "<div class='parrafos'>";
            echo "<p>Nombre:  ",$nombre,"</p>";
            echo "<p>Apellido:  ",$apellido,"</p>";
            echo "<p>Codigo:  ",$codigo,"</p>";
            echo "<p>Usuario:  ",$user,"</p>";
            echo "<p>Correo:  ",$correo,"</p>";
           
            echo "</div>";

        }else{
             echo "no se guardaron los datos";
         }
         
        ?>
        
    </main>
</body>
</html>
