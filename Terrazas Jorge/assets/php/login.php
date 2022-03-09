<?php
    $email=$_POST['txtEmail'];
    $pass=$_POST['txtPassword'];
    $tipo=$_POST['txtTipo'];

   
    if($email=="admin@gmail.com" && $pass=="1234" && $tipo=="Administrador"){
        header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/home_admin.html");
    }else if($email=="estudiante@gmail.com" && $pass=="1234" && $tipo=="Estudiante"){
        header("location:/BibliotecaUNFV/Terrazas%20Jorge/home.html");
    }else if($email=="docente@gmail.com" && $pass=="1234" && $tipo=="Docente"){
        header("location:/BibliotecaUNFV/Terrazas%20Jorge/home.html");
    }else{
        echo "<h2>Error al ingresar datos en login, vuelva a intentarlo</h2>";
    }
?>