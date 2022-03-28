 


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

        <?php
            include ("../assets/php/conexion.php"); 
          
            $busqueda1=$_REQUEST['busqueda'];
            
            $por_pagina=10;
            if(isset($_GET['pagina'])){
                $pagina=$_GET['pagina'];
            }else{
                $pagina=1;
            }

            $busqueda=ucfirst($busqueda1);
            //la pagina inicia en 0 y se multiplica $por_pagina
            $empieza=($pagina-1)*$por_pagina;

        ?>
 
        <div class="div-agregar">
            <a href="/BibliotecaUNFV/Terrazas%20Jorge/admin/menu/agregar.php"><input type="button" value="Agregar Nuevo" class="boton-agregar" ></a>
        </div>
        
        <form action="buscar_admin.php" method="POST" >
            <div class="buscar-registro">
                <div>
                <input type="text" placeholder="buscar" name="busqueda"  >
                </div>
                <div>
                <input type="submit"  class="boton-buscar"  value="Buscar" > 

                </div>
            </div>
 
        </form>
             

        <?php
        
        //seleccionar los registros de la busqueda
        $sql="select l.id_type_book,l.id_especialidad,l.id,l.name,l.author,l.source,l.code,t.name_type,l.image_book,l.pdf from libros as l 
        inner join tipo_libro as t on l.id_type_book=t.id 
        where 
        ( l.id_type_book LIKE '%$busqueda%' OR
          l.id_especialidad LIKE '%$busqueda%' OR
          l.id LIKE '%$busqueda%' OR
          l.name LIKE '%$busqueda%' OR
          l.author LIKE '%$busqueda%' OR
          l.source LIKE '%$busqueda%' OR
          l.code LIKE '%$busqueda%' OR
          t.name_type LIKE '%$busqueda%' 
        )
        ORDER BY l.id ASC LIMIT $empieza,$por_pagina";
        
        
        $resultado=mysqli_query($conexion,$sql);
       
         ?>
        <section>
       

             <table class="table-admin">
                <tr>
                     
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Autor</th>
                    <th>Fuente</th>
                    <th>Tipo</th>
                    <th>Pdf</th>           
                    <th>Modificar</th>
                    <th>Eliminar</th>

                </tr>
        <?php
        while($fila=mysqli_fetch_array($resultado)){
        ?>
                <tr>
                    <td><?php echo $fila['id'];?></td>
                    <td><?php echo $fila['name'];?></td>
                    <td><?php echo $fila['author'];?></td>
                    <td><?php echo $fila['source'];?></td>
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

            <div class="div-paginas">
                <?php
                 $sql1="select l.id_type_book,l.id_especialidad,l.id,l.name,l.author,l.source,l.code,t.name_type,l.image_book,l.pdf from libros as l 
                 inner join tipo_libro as t on l.id_type_book=t.id   where 
                 ( l.id_type_book LIKE '%$busqueda%' OR
                   l.id_especialidad LIKE '%$busqueda%' OR
                   l.id LIKE '%$busqueda%' OR
                   l.name LIKE '%$busqueda%' OR
                   l.author LIKE '%$busqueda%' OR
                   l.source LIKE '%$busqueda%' OR
                   l.code LIKE '%$busqueda%' OR
                   t.name_type LIKE '%$busqueda%' 
                 )
                 ORDER BY l.id ASC";

                $resultado1=mysqli_query($conexion,$sql1);
                $total_registros=mysqli_num_rows($resultado1);
                /*usando ceil para dividir el total de registros entre $por_pagina*/ 

                $total_paginas=ceil($total_registros/$por_pagina);

               
                for($i=1;$i<=$total_paginas;$i++){
                    echo "<a href='buscar_admin.php?pagina={$i}&busqueda={$busqueda1}'>{$i}</a>";
                }

                 

                ?>
            </div>
 


    </main>

    <div data-include="/BibliotecaUNFV/Terrazas%20Jorge/assets/footer.html"></div>
    
</body>
</html>