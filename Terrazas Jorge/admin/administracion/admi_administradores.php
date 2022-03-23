 


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="shortcut icon" href="/BibliotecaUNFV/Terrazas%20Jorge//favicon/home.ico">
    <link rel="stylesheet" href="/BibliotecaUNFV/Terrazas%20Jorge/assets/css/style.css">
    <script src="/BibliotecaUNFV/Terrazas%20Jorge/assets/js/include-html.js"></script>

</head>
<body>
     
<div data-include="/BibliotecaUNFV/Terrazas%20Jorge/assets/header_admin.html"></div>


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
                        <td>{$fila['name']}</td>
                        <td>{$fila['lastname']}</td>
                        <td>{$fila['code']}</td>
                        <td>{$fila['mail']}</td>
                        <td>{$fila['state']}</td>
                        <td> 
                            <div class='btn_tabla'>
                                <a href='../../assets/php/Funciones_administrador/activar_admin.php?estado=".$fila['state']."&id=".$fila['id']."'> <input type='button' class='btn--solicitud' value='Cambiar' ></a>
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

    <div data-include="/BibliotecaUNFV/Terrazas%20Jorge/assets/footer.html"></div>
    
</body>
</html>