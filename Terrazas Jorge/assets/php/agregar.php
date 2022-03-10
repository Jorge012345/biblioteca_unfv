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
            $tipo=$_POST['txtTipo'];
            $especialidad=$_POST['txtEspecialidad'];
            $codigo=$_POST['txtCodigo'];
            $titulo=$_POST['txtTitulo'];
            $autor=$_POST['txtAutor'];
            $fecha=$_POST['txtFecha'];
            $fuente=$_POST['txtFuente'];
            //foto,pdf
            copy($_FILES['foto_admin']['tmp_name'],$_FILES['foto_admin']['name']);
            copy($_FILES['pdf']['tmp_name'],$_FILES['pdf']['name']);


            echo "<h1>Datos agregados</h1>";

            echo"<div class='parrafos'>";
            echo "<p>Tipo:  ",$tipo,"</p>";
            echo "<p>Especialidad:  ",$especialidad,"</p>";
            echo "<p>Codigo:  ",$codigo,"</p>";
            echo "<p>Titulo:  ",$titulo,"</p>";
            echo "<p>Autor:  ",$autor,"</p>";
            echo "<p>Fecha:  ",$fecha,"</p>";
            echo "<p>Fuente:  ",$fuente,"</p>";
            echo"<p>Tu imagen se haguardado en nuestro sitio web.</p>";
            echo"<p>Tu pdf se haguardado en nuestro sitio web.</p>";
            echo "</div>";

        ?>

    </main>
</body>
</html>


