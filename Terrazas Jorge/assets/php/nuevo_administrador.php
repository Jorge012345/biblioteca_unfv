<?php
    $nombre=$_POST['txtNombre'];
    $apellido=$_POST['txtApellido'];
    $codigo=$_POST['txtCodigo'];
    $user=$_POST['txtUser'];
    $correo=$_POST['txtCorreo'];
    $pass=$_POST['txtPassword'];

    echo "<h1>Registro enviado con éxito</h1>";
    echo "<p>Nombre:  ",$nombre,"</p>";
    echo "<p>Apellido:  ",$apellido,"</p>";
    echo "<p>codigo:  ",$codigo,"</p>";
    echo "<p>usuario:  ",$user,"</p>";
    echo "<p>correo:  ",$correo,"</p>";
    echo "<p>contraseña:  ",$pass,"</p>";
    
?>