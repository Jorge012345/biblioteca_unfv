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
?>