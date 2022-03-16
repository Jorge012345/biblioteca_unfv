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

            $connection=mysqli_connect("localhost","root","","biblioteca");

            if(!$connection){
                echo "Error: No se pudo conectar a MySQL. Error ";
                die;
            }

            $query="insert into usuarios ( name, lastname, password, code, dni, mail, gender ) values ('{$nombre}', '{$apellido}', '{$pass}','{$codigo}', {$dni}, '{$correo}', '{$genero}')";

            if (($result = mysqli_query($connection, $query)) === false) {
                die(mysqli_error($connection));
            }
        ?>
    </main>
</body>
</html>
