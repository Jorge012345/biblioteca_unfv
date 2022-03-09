<?php
    $nombre=$_POST['txtNombre'];
    $apellido=$_POST['txtApellido'];
    $pass=$_POST['txtPassword'];
    $codigo=$_POST['txtCodigo'];
    $dni=$_POST['txtDni'];
    $correo=$_POST['txtCorreo'];
    $genero=$_POST['genero'];
    echo "<h1>Registro enviado con éxito</h1>";
    echo "<p>Nombre:  ",$nombre,"</p>";
    echo "<p>Apellido:  ",$apellido,"</p>";
    echo "<p>Contraseña:  ",$pass,"</p>";
    echo "<p>Codigo:  ",$codigo,"</p>";
    echo "<p>DNI:  ",$dni,"</p>";
    echo "<p>Correo:  ",$correo,"</p>";
    echo "<p>Género:  ",$genero,"</p>";
   
    
?>