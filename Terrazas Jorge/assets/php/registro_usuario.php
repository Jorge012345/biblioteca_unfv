<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/BibliotecaUNFV/Terrazas Jorge/assets/css/style.css">
</head>
<body>
    <main>
        <?php
            $nombre=$_POST['txtNombre'];
            $apellido=$_POST['txtApellido'];
            $pass=$_POST['txtPassword'];
            $codigo=$_POST['txtCodigo'];
            $dni=$_POST['txtDni'];
            $correo=$_POST['txtCorreo'];
            $genero=$_POST['genero'];
            echo "<h1>Registro enviado con éxito</h1>";
            echo "<div class='parrafos'>";
            echo "<p>Nombre:  ",$nombre,"</p>";
            echo "<p>Apellido:  ",$apellido,"</p>";
            echo "<p>Contraseña:  ",$pass,"</p>";
            echo "<p>Codigo:  ",$codigo,"</p>";
            echo "<p>DNI:  ",$dni,"</p>";
            echo "<p>Correo:  ",$correo,"</p>";
            echo "<p>Género:  ",$genero,"</p>";
            echo "</div>";
            
        ?>
    </main>
</body>
</html>
