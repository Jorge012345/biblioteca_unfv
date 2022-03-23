<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="shortcut icon" href="/BibliotecaUNFV/Terrazas%20Jorge/favicon/home.ico">
    <link rel="stylesheet" href="/BibliotecaUNFV/Terrazas%20Jorge/assets/css/style.css">
    <script src="/BibliotecaUNFV/Terrazas%20Jorge/assets/js/include-html.js"></script>

</head>
<body>

    <div data-include="/BibliotecaUNFV/Terrazas%20Jorge/assets/header_admin.html"></div>

    <main>
        <h2>Lista Alumnos</h2>

        
        <section>

        <table>
                <tr>
                     
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>apellido</th>
                    <th>codigo</th>
                    <th>DNI</th>
                    <th>Correo</th>
                    <th>Sexo</th>
                     <th>Eliminar</th>

                </tr>
                <?php
                include ("../../assets/php/conexion.php"); 
                $sql="select * from usuarios";
                $execute=mysqli_query($conexion,$sql);
                
                while($fila=mysqli_fetch_assoc($execute)){
                    echo"
                     <tr>
                        <td>{$fila['id']}</td>
                        <td>{$fila['name']}</td>
                        <td>{$fila['lastname']}</td>
                        <td>{$fila['code']}</td>
                        <td>{$fila['dni']}</td>
                        <td>{$fila['mail']}</td>
                        <td>{$fila['gender']}</td>
 
                        
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