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
        $especialidad=$_POST['txtEspecialidad'];
        $codigo=$_POST['txtCodigo'];
        $titulo=$_POST['txtTitulo'];
        $fecha=$_POST['txtFecha'];
        $autor=$_POST['txtAutor'];
        $fuente=$_POST['txtFuente'];

        echo "<h1>Registro eliminado</h1>";
        echo "<div class='parrafos'>";
        echo "<p>Tipo:  ",$especialidad,"</p>";
        echo "<p>Especialidad:  ", $especialidad,"</p>";
        echo "<p>Codigo:  ",$codigo,"</p>";
        echo "<p>Fecha:  ",$fecha,"</p>";
        echo "<p>Titulo:  ", $titulo,"</p>";
        echo "<p>Autor:  ",$autor,"</p>";
        echo "<p>Fuente:  ",$fuente,"</p>";
        echo "</div>";

        ?>

    </main>
    
</body>
</html>



