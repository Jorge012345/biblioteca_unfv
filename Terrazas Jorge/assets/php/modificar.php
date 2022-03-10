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
        $tipo=$_POST['txtTipo'];
        $especialidad=$_POST['txtEspecialidad'];
        $codigo=$_POST['txtCodigo'];
        $titulo=$_POST['txtTitulo'];
        $ntitulo=$_POST['txtNuevoTitulo'];

        $autor=$_POST['txtAutor'];
        $nautor=$_POST['txtNuevoAutor'];

        $fecha=$_POST['txtFecha'];
        $nfecha=$_POST['txtNuevaFecha'];

        $fuente=$_POST['txtFuente'];
        $nfuente=$_POST['txtNuevaFuente'];
        
        copy($_FILES['foto_admin']['tmp_name'],$_FILES['foto_admin']['name']);
        copy($_FILES['pdf']['tmp_name'],$_FILES['pdf']['name']);

 
        echo "<h1>Registro modificado</h1>";
        echo "<div class='parrafos'>";
        echo "<p>Tipo:  ",$tipo,"</p>";
        echo "<p>Especialidad:  ", $especialidad,"</p>";
        echo "<p>Codigo:  ",$codigo,"</p>";
        
        echo "<p>Titulo:  ", $titulo,"</p>";
        echo "<p>Nuevo titulo:  ", $ntitulo,"</p>";

        echo "<p>Autor:  ",$autor,"</p>";
        echo "<p>Nuevo autor:  ",$nautor,"</p>";

        echo "<p>fecha:  ",$fecha,"</p>";
        echo "<p>Nueva fecha:  ",$nfecha,"</p>";

        echo "<p>Fuente:  ",$fuente,"</p>";
        echo "<p>Nueva fuente:  ",$nfuente,"</p>";
        echo"<p>Tu imagen se haguardado en nuestro sitio web.</p>";
        echo"<p>Tu pdf se haguardado en nuestro sitio web.</p>";
        echo "</div>";

        ?>

    </main>
</body>
</html>


