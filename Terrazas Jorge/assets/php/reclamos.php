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
            $correo=$_POST['txtCorreo'];
            $preg1=$_POST['miCheck'];
            $preg2=$_POST['solucion'];
            $preg3=$_POST['fecha'];
            $preg4=$_POST['hora'];
            $preg5=$_POST['txtComentario'];
            $preg6=$_POST['foto'];
            
            echo "<h1>Reclamo enviado con éxito</h1>";
            echo "<div class='parrafos'>";
            echo "<p>Nombre:  ",$nombre,"</p>";
            echo "<p>Apellido:  ",$apellido,"</p>";
            echo "<p>Correo:  ",$correo,"</p>";
            echo "<p>Pregunta 1:  ",$preg1,"</p>";
            echo "<p>Pregunta 2:  ",$preg2,"</p>";
            echo "<p>Pregunta 3:  ",$preg3,"</p>";
            echo "<p>Pregunta 4:  ",$preg4,"</p>";
            echo "<p>Pregunta 5:  ",$preg5,"</p>";
            echo "<p>Pregunta 6:  ",$preg6,"</p>";
            echo "</div>";
        ?>
    </main>
</body>
</html>
