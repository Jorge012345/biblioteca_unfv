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
    echo "<h2>Agregado<h2>";
    echo "<p>tipo:  ",$tipo,"</p>";
    echo "<p>especialidad:  ",$especialidad,"</p>";
    echo "<p>codigo:  ",$codigo,"</p>";
    echo "<p>titulo:  ",$titulo,"</p>";
    echo "<p>autor:  ",$autor,"</p>";
    echo "<p>fecha:  ",$fecha,"</p>";
    echo "<p>fuente:  ",$fuente,"</p>";
    echo"<p>Tu imagen se haguardado en nuestro sitio web.</p>";
    echo"<p>Tu pdf se haguardado en nuestro sitio web.</p>";
    
?>