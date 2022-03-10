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
         $nombre=$_POST['txtNombre'];
         $apellido=$_POST['txtApellido'];
         $codigo=$_POST['txtCodigo'];
         $user=$_POST['txtUser'];
         $correo=$_POST['txtCorreo'];
         $pass=$_POST['txtPassword'];
        
         echo "<h1>Registro enviado con éxito</h1>";
         echo "<div class='parrafos'>";
         echo "<p>Nombre:  ",$nombre,"</p>";
         echo "<p>Apellido:  ",$apellido,"</p>";
         echo "<p>Codigo:  ",$codigo,"</p>";
         echo "<p>Usuario:  ",$user,"</p>";
         echo "<p>Correo:  ",$correo,"</p>";
         echo "<p>Contraseña:  ",$pass,"</p>";
         echo "</div>";
         ?>
        
    </main>
</body>
</html>
