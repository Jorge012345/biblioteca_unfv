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
                    <th>Modificar</th>
                    <th>Eliminar</th>

                </tr>
                <?php
                include ("../../assets/php/conexion.php"); 
                $sql="select * from usuarios";
                $execute=mysqli_query($conexion,$sql);
                
                while($fila=mysqli_fetch_assoc($execute)){
                ?> 
                     <tr>
                        <td><?php echo $fila['id'];?></td>
                        <td><?php echo $fila['name'];?></td>
                        <td><?php echo $fila['lastname'];?></td>
                        <td><?php echo $fila['code'];?></td>
                        <td><?php echo $fila['dni'];?></td>
                        <td><?php echo $fila['mail'];?></td>
                        <td><?php echo $fila['gender'];?></td>
 
                        <td>
                            <div class='btn_tabla'>
                                <a href="../../admin/menu/modificar_alu.php?id=<?php echo $fila['id'];?>"> <input type="button" value="Modificar" class='btn--solicitud' >  </a>
                            </div>
                        </td>

                        <td>
                            <div class='btn_tabla'>
                               <a href="../../assets/php/Funciones_administrador/eliminar_alumno.php?id=<?php echo $fila['id'];?>"> <input type='button' class='btn--solicitud' value='Eliminar'></a>
                            </div> 
                       </td>
                       
                      
                    </tr>
            
            
                <?php
                    }

                ?>
                
            
                
            </table>
        </section>




    </main>

    <div data-include="/BibliotecaUNFV/Terrazas%20Jorge/assets/footer.html"></div>

    
</body>
</html>