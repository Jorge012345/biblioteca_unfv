<?php
    $email=$_POST['txtEmail'];
    $pass=$_POST['txtPassword'];
    $tipo=$_POST['txtTipo'];

    /*
    $connection=mysqli_connect("localhost","root","","biblioteca");

    if(!$connection){
        echo "Error: No se pudo conectar a MySQL. Error ";
        die;
    }

    $query="SELECT * FROM usuarios WHERE mail = '$email' AND password = '$pass'";





    if (($result = mysqli_query($connection, $query)) === false) {
        die(mysqli_error($connection));
    } 


    */
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