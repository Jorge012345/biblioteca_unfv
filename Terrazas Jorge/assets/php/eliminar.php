<?php
    
    $especialidad=$_POST['txtEspecialidad'];
    $codigo=$_POST['txtCodigo'];
    $titulo=$_POST['txtTitulo'];
    $fecha=$_POST['txtFecha'];
    $autor=$_POST['txtAutor'];
    $fuente=$_POST['txtFuente'];



    echo "<h1>Registro eliminado</h1>";
    echo "<p>tipo:  ",$especialidad,"</p>";
    echo "<p>especialidad:  ", $especialidad,"</p>";
    echo "<p>codigo:  ",$codigo,"</p>";
    echo "<p>fecha:  ",$fecha,"</p>";
    echo "<p>titulo:  ", $titulo,"</p>";
    echo "<p>autor:  ",$autor,"</p>";
    echo "<p>fuente:  ",$fuente,"</p>";
    
?>