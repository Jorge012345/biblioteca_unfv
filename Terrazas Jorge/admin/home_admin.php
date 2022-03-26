 


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
        <h2>Menu Principal </h2>

        
        <section >
            <a href="/BibliotecaUNFV/Terrazas%20Jorge/admin/menu/agregar.php"><input type="button" value="Agregar Nuevo" class="btn--solicitud" ></a>
        </section>

      
        <section>
       
 
             <table>
                <tr>
                     
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Autor</th>
                    <th>Fuente</th>
                    <th>Codigo</th>
                    <th>Tipo</th>
                    <th>Pdf</th>           
                    <th>Modificar</th>
                    <th>Eliminar</th>

                </tr>
                <?php
                include ("../assets/php/conexion.php"); 
                $sql="select l.id_type_book,l.id_especialidad,l.id,l.name,l.author,l.source,l.code,t.name_type,l.image_book,l.pdf from libros as l 
                            inner join tipo_libro as t on l.id_type_book=t.id  ORDER BY l.id ASC";
                $execute=mysqli_query($conexion,$sql);
                
                while($fila=mysqli_fetch_array($execute)){

                ?>
                <tr>
                    <td><?php echo $fila['id'];?></td>
                    <td><?php echo $fila['name'];?></td>
                    <td><?php echo $fila['author'];?></td>
                    <td><?php echo $fila['source'];?></td>
                    <td><?php echo $fila['code']?></td>
                    <td><?php echo $fila['name_type']?></td>
                    <td> 
                        <a href= "<?php echo " /BibliotecaUNFV/Terrazas%20Jorge/{$fila['pdf']} "; ?>">
                            <img src=" <?php echo "/BibliotecaUNFV/Terrazas%20Jorge/{$fila['image_book']} ";?>" alt='imagen' width='100' height='120'>
                        </a>
                    </td>
                    
                    <td  class="btn_tabla"> 
                        <div >
                            <a href="<?php echo "../admin/menu/modificar.php?id={$fila['id']}&tipolibro={$fila['id_type_book']}&tipoespecialidad={$fila['id_especialidad']} ";?>"> <input type='button' class="btn_tabla" value="Modificar"></a>
                        </div> 
                    </td>
                    
                    <td class="btn_tabla">
                        <div >
                             <a href="<?php echo "../assets/php/Funciones_administrador/eliminar_e.php?id={$fila['id']}"; ?>"> <input type='button'  class="btn_tabla" value="Eliminar"></a>
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