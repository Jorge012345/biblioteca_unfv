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
            $correo=$_POST['txtCorreo'];
            $mensaje=$_POST['txtComentario'];
            echo "<h1>Consulta enviada con éxito</h1>";
            echo "<div class='parrafos'>";
            echo "<p>Nombre:  ",$nombre,"</p>";
            echo "<p>Correo:  ",$correo,"</p>";
            echo "<p>Mensaje:  ",$mensaje,"</p>";
            echo "</div>"
            
        ?>
    </main>
</body>
</html>
