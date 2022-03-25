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
        
 
        <form id="form-modificar" method="post" enctype="multipart/form-data">

            <fieldset class="contenido-solicitud">
        <?php 
                include ("../../assets/php/conexion.php"); 
                $id1=(int)$_GET['id'];

                $sql="select  l.name,l.author,l.source,l.code,t.name_type,es.name_specialty from libros as l
                        inner join tipo_libro as t on l.id_type_book=t.id 
                        inner join especialidades as es on l.id_especialidad=es.id  
                        where l.id={$id1}" ;
                $execute=mysqli_query($conexion,$sql);
                while($fila=mysqli_fetch_assoc($execute))  {  
        ?>
                <div>
                    <label for="tipo">Tipo</label>
                    <input type="text"   id="tipo" value=" <?php  echo $fila['name_type'];   ?> " disabled >
                </div>

                <div>
                    <label for="codigo">Especialidad</label>
                    <input type="text"   id="codigo" value=" <?php  echo $fila['name_specialty'];   ?> "   disabled  >
                </div>
 
                <div>
                    <label for="codigo">Codigo</label>
                    <input type="text"   id="codigo" value=" <?php  echo $fila['code'];   ?> "   disabled>
                </div>

                <div>
                    <label for="codigo">Nuevo Codigo</label>
                    <input type="text" name="nuevoCodigo" id="codigo"    required>
                </div>



                <div>
                    <label for="titulo">Titulo</label>
                    <input type="text" name="txtTitulo" id="titulo" value=" <?php  echo $fila['name'];   ?> "  disabled >
                </div>



                <div>
                    <label for="n_titulo">Nuevo titulo</label>
                    <input type="text" name="txtNuevoTitulo" id="n_titulo" required>
                </div>



                <div>
                    <label for="autor">Autor</label>
                    <input type="text" name="txtAutor" value=" <?php  echo $fila['author'];   ?> "   disabled>
                </div>

                <div>
                    <label for="n_autor">Nuevo autor</label>
                    <input type="text" name="txtNuevoAutor" id="n_autor"  required>
                </div>
 
                <div>
                    <label for="fuente">Fuente</label>
                    <input type="text" name="txtFuente" id="fuente"  value=" <?php  echo $fila['source'];   ?> "  disabled>

                </div>

                <div>
                    <label for="n_fuente">Nueva fuente</label>
                    <input type="text" name="txtNuevaFuente" id="n_fuente">

                </div>


                <div>
                    <label for="imagen"> Nueva imagen </label>
                    <input type="file" name="foto_admin" id="imagen" accept=".jpg,.jpeg,.png,.mp3,.mp4">

                </div>


                <div>
                    <label for="pdf">Subir pdf</label>
                    <input type="file" name="pdf">
                </div>


                <div>
                    <input type="submit" class="btn btn--solicitud" value="Modificar ">
                    <input type="reset" class="btn btn--solicitud" value="Limpiar">
                    
                </div>

            <?php } ?>
            </fieldset>

        

        </form>

    </main>
    <div data-include="/BibliotecaUNFV/Terrazas%20Jorge/assets/footer.html"></div>


    <script src="/BibliotecaUNFV/Terrazas%20Jorge/assets/js/modificar.js" ></script>

</body>

</html>