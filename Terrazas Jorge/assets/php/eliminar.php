<?php
    $tipo=$_POST['txtTipo'];
    $especialidad=$_POST['txtEspecialidad'];
    $codigo=$_POST['txtCodigo'];
    $titulo=$_POST['txtTitulo'];
    $autor=$_POST['txtAutor'];
    $fuente=$_POST['txtFuente'];
    


    echo "<h1>Registro eliminado</h1>";
    echo "<p>tipo:  ",$tipo,"</p>";
    echo "<p>especialidad:  ", $especialidad,"</p>";
    echo "<p>codigo:  ",$codigo,"</p>";
    echo "<p>titulo:  ", $titulo,"</p>";
    echo "<p>autor:  ",$autor,"</p>";
    echo "<p>fuente:  ",$fuente,"</p>";
    
?>