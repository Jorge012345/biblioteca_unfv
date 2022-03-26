<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/BibliotecaUNFV/Terrazas%20Jorge/assets/css/style.css">
    <script src="/BibliotecaUNFV/Terrazas%20Jorge/assets/js/include-html.js"></script>

</head>

<body>
    <div data-include="/BibliotecaUNFV/Terrazas%20Jorge/assets/header_admin.html"></div>

    <main>
        <h2>Modificar</h2>
        
 
        <form id="form-modificar" method="POST" enctype="multipart/form-data">

            <fieldset class="contenido-solicitud">
        <?php 
                include ("../../assets/php/conexion.php"); 
                $id1=(int)$_GET['id'];
                $codtipo=(int)$_GET['tipolibro'];
                $id_especialidad=(int)$_GET['tipoespecialidad'];

                
                $sql="select l.id_type_book,l.id_especialidad,l.id,l.name,l.author,l.source,l.code,t.name_type,es.name_specialty,ca.name_career from libros as l
                        inner join tipo_libro as t on l.id_type_book=t.id 
                        inner join especialidades as es on es.id=l.id_especialidad  
                        inner join carreras as ca on ca.id=es.id 
                        where l.id={$id1} and l.id_type_book={$codtipo} and l.id_especialidad={$id_especialidad}" ;
                $execute=mysqli_query($conexion,$sql);
                while($fila=mysqli_fetch_assoc($execute)){  
        ?>
                <div>
                    <label for="tipo">Tipo</label>
                    <input type="text"  name='ntipo'  id="ntipo" value=" <?php  echo "{$fila['name_type']}-{$fila['id_type_book']}";?> " disabled >
                </div>

                <div>
                    <label for="carrera">Carrera</label>
                    <input type="text" id="ncarrera" name="ncarrera" value=" <?php  echo $fila['name_career'];   ?>  " disabled>
                </div>

                <div>
                    <label for="codigo">Especialidad</label>
                    <input type="text"   id="nespecialidad" name="nespecialidad" value="<?php  echo "{$fila['name_specialty']}-{$fila['id_especialidad']}"; ?> "   disabled  >
                </div>

                <div>
                    <label for="code">  Codigo</label>
                    <input type="text" name="codigo" id="code"   value="<?php  echo $fila['code']; ?>  " disabled>
                </div>

                <div>
                    <label for="codigo">Nuevo Codigo</label>
                    <input type="text" name="nCodigo" id="codigo"    required>
                </div>



                <div>
                    <label for="titulo">Titulo</label>
                    <input type="text" name="txtTitulo" id="titulo" value=" <?php  echo $fila['name'];   ?> "  disabled >
                </div>



                <div>
                    <label for="n_titulo">Nuevo titulo</label>
                    <input type="text" name="nTitulo" id="n_titulo" required>
                </div>

                <div>
                    <label for="autor">Autor</label>
                    <input type="text" name="txtAutor" value=" <?php  echo $fila['author'];   ?> "   disabled>
                </div>

                <div>
                    <label for="n_autor">Nuevo autor</label>
                    <input type="text" name="nAutor" id="n_autor"  required>
                </div>
 
                <div>
                    <label for="fuente">Fuente</label>
                    <input type="text" name="txtFuente" id="fuente"  value=" <?php  echo $fila['source'];   ?> "  disabled>

                </div>
        <?php } ?>

                <div>
                    <label for="n_fuente">Nueva fuente</label>
                    <input type="text" name="nFuente" id="n_fuente">

                </div>


                <div>
                    <label for="imagen"> Nueva imagen </label>
                    <input type="file" name="nImagen" id="imagen" accept=".jpg,.jpeg,.png,.mp3,.mp4,.webp">

                </div>


                <div>
                    <label for="pdf">Subir pdf</label>
                    <input type="file" name="nPdf">
                </div>


                <div>
                    <input type="submit" class="btn btn--solicitud" name="modificar" value="Modificar">
                    <input type="reset" class="btn btn--solicitud" value="Limpiar">
                    
                </div>

            </fieldset>
        </form>

    </main>
    <div data-include="/BibliotecaUNFV/Terrazas%20Jorge/assets/footer.html"></div>


    <script src="/BibliotecaUNFV/Terrazas%20Jorge/assets/js/modificar.js" ></script>

</body>

</html>