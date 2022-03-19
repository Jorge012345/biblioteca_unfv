 


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="shortcut icon" href="/BibliotecaUNFV/Terrazas%20Jorge//favicon/home.ico">
    <link rel="stylesheet" href="/BibliotecaUNFV/Terrazas%20Jorge/assets/css/style.css">

</head>
<body>
    <header class="header">

        <h1>BIBLIOTECA VIRTUAL ADMINISTRACION</h1>

    </header>
    <nav>
        <a href="/BibliotecaUNFV/Terrazas%20Jorge/admin/home_admin.html">Inicio</a>
        <a href="/BibliotecaUNFV/Terrazas%20Jorge/admin/administracion/admi_alumnos.php"> Alumnos</a>
        <a href="/BibliotecaUNFV/Terrazas%20Jorge/admin/administracion/admi_administradores.php">Administradores</a>
        <a href="/BibliotecaUNFV/Terrazas%20Jorge/admin/administracion/nuevo_administrador.html">Nuevo Administrador</a>
      

    </nav>

    <main>
        <h2>Lista administradores </h2>
 
        <section>
 
             <table>
                <tr>
                     
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>apellido</th>
                    <th>codigo</th>
                    <th>Email</th>
                    <th>Estado</th>
                    <th>Cambiar estado</th>
                    <th>Eliminar</th>

                </tr>
                <?php
                include ("../../assets/php/conexion.php"); 
                $sql="select * from administradores";
                $execute=mysqli_query($conexion,$sql);
                
                while($fila=mysqli_fetch_assoc($execute)){
                    echo"
                     <tr>
                        <td>{$fila['id']}</td>
                        <td>{$fila['nombre']}</td>
                        <td>{$fila['apellido']}</td>
                        <td>{$fila['codigo']}</td>
                        <td>{$fila['email']}</td>
                        <td>{$fila['estado']}</td>
                        <td> 
                            <div class='btn_tabla'>
                                <a href='../../assets/php/Funciones_administrador/activar_admin.php?estado=".$fila['estado']."&id=".$fila['id']."'> <input type='button' class='btn--solicitud' value='Cambiar' ></a>
                            </div> 
                        </td>
                        
                        <td>
                            <div class='btn_tabla'>
                               <a href='../../assets/php/Funciones_administrador/eliminar_admin.php?id=".$fila['id']."'> <input type='button' class='btn--solicitud' value='Eliminar'></a>
                            </div> 
                       </td>
                   
                    </tr>
                ";
            
                }
                
                ?>
                
            </table>
 
 
        </section>




    </main>

    <footer >
        <p><a href="/BibliotecaUNFV/Terrazas%20Jorge/index.html">Cerrar Sesión</a></p>
        <!--Copyright-->
        <p>Copyright © 2022</p>
    </footer>
    
</body>
</html>