<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/BibliotecaUNFV/Terrazas Jorge/assets/css/style.css">
</head>
<body>
    <main>
        <?php
            $nombre=$_POST['txtNombre'];
            $apellido=$_POST['txtApellido'];
            $pass=$_POST['txtPassword'];
            $codigo=$_POST['txtCodigo'];
            $dni=(int)$_POST['txtDni'];
            $correo=$_POST['txtCorreo'];
            $genero=$_POST['genero'];
            $tipo="";
            $connection=mysqli_connect("localhost","root","","biblioteca");

            if(!$connection){
                echo "Error: No se pudo conectar a MySQL. Error ";
                die;
            }
            if($codigo[0]==="e" && $codigo[1]==="s"){
                $tipo="Estudiante";
            }else if($codigo[0]==="d" && $codigo[1]==="o"){
                $tipo="Docente";
            }
            $query="insert into usuarios ( name, lastname, password, code, dni, mail, gender, type ) values ('{$nombre}', '{$apellido}', '{$pass}','{$codigo}', {$dni}, '{$correo}', '{$genero}','{$tipo}')";

            if (($result = mysqli_query($connection, $query)) === false) {
                die(mysqli_error($connection));
            }else{
                header("location:/BibliotecaUNFV/Terrazas%20Jorge/index.html");
            }
            
        ?>
    </main>
</body>
</html>
