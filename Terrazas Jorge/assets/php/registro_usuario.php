
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

            if (!($result = mysqli_query($connection, $query))) {
                die(mysqli_error($connection));
            }else{
                header("location:/BibliotecaUNFV/Terrazas%20Jorge/index.php");
            }
            
        ?>

