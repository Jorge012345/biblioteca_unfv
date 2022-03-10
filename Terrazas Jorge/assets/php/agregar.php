<?php
    $tipo=$_POST['tipo'];
    $especialidad=$_POST['especialidad'];
    $codigo=$_POST['codigo'];
    $titulo=$_POST['titulo'];
    $autor=$_POST['autor'];
    $correo=$_POST[' '];
    $fuente=$_POST['fuente'];
    $genero=$_POST[''];


    echo "<h1>Datos agregados</h1>";
    echo "<h2>Agregado<h2>";
    echo "<p>tipo:  ",$tipo,"</p>";
    echo "<p>especialidad:  ",$especialidad,"</p>";
    echo "<p>titulo:  ",$titulo,"</p>";
    echo "<p>autor:  ",$autor,"</p>";
    
    echo "<p>DNI:  ",$dni,"</p>";
    echo "<p>Correo:  ",$correo,"</p>";
    echo "<p>Género:  ",$genero,"</p>";
   
    
?>