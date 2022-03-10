<?php
    $tipo=$_POST['txtTipo'];
    $especialidad=$_POST['txtEspecialidad'];
    $codigo=$_POST['txtCodigo'];
    $titulo=$_POST['txtTitulo'];
    $ntitulo=$_POST['txtNuevoTitulo'];

    $autor=$_POST['txtAutor'];
    $nautor=$_POST['txtNuevoAutor'];

    $fuente=$_POST['txtNuevaFuente'];
    $nfuente=$_POST['txtNuevaFuente'];

    copy($FILES['foto_admin']['tmp_name'],$FILES['foto_admin'],['name']);
    copy($FILES['pdf']['tmp_name'],$FILES['pdf'],['name']);

//imagen
//pdf

 
    echo "<h1>Registro modificado</h1>";
    echo "<p>Tipo:  ",$tipo,"</p>";
    echo "<p>Especialidad:  ", $especialidad,"</p>";
    echo "<p>Codigo:  ",$codigo,"</p>";
    
    echo "<p>Titulo:  ", $titulo,"</p>";
    echo "<p>Nuevo titulo:  ", $ntitulo,"</p>";

    echo "<p>Autor:  ",$autor,"</p>";
    echo "<p>Nuevo autor:  ",$nautor,"</p>";

    echo "<p>Fuente:  ",$fuente,"</p>";
    echo "<p>Nueva fuente:  ",$nfuente,"</p>";

    echo"Tuarchivosehaguardadoennuestositioweb.";
    echo"Tuarchivosehaguardadoennuestositioweb.";

?>