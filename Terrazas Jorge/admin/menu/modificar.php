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
                        inner join carreras as ca on ca.id=es.id_carrera 
                        where l.id={$id1} and l.id_type_book={$codtipo} and l.id_especialidad={$id_especialidad}" ;
                $query=mysqli_query($conexion,$sql);
                $row=mysqli_fetch_assoc($query); 

                if(empty($row['name']) || empty($row['source']) ||  empty($row['author']) ||  empty($row['id']) || empty($row['name_type']) &&  empty($row['id_type_book']) || empty($row['name_career']) ||  empty($row['name_specialty']) || empty($row['id_especialidad']) ||  empty($row['code']))
                {
                    echo "<p>Hay alugun campo vacio</p>";
                }else{
        ?>

                <div>
                     <input type="hidden" name="id" value="<?php echo $row['id'];?>">
                </div>

                <div>
                    <label for="tipo">Tipo</label>
                    <input type="text"   id="tipo" value="<?php  echo $row['name_type'];?> " disabled >                
                </div>

                <div>
                    <label for="tipo">Tipo </label>
                    <select name="ntipo" id="tipo">
                        <option value="libros/1">Libros</option>
                        <option value="articulos/2">Articulos</option>
                        <option value="revistas/3">Revistas</option>
                        <option value="tesis/4">Tesis</option>

                    </select>
                </div>

                <div>
                    <label for="carrera">Carrera</label>
                    <input type="text" id="carrera"   value="<?php echo $row['name_career'];?>  " disabled>
                </div>

                <div>
                    <label for="nespecialidad">Especialidad</label>
                    <input type="text"   id="nespecialidad"   value="<?php  echo $row['name_specialty']; ?>"   disabled  >
                 </div>

                 <div>
                    <label for="especialidad">Elige especialidad</label>

                    <select id="especialidad" name="nespecialidad">

                        <optgroup label="Agroindustrial">

                            <option value="ing_agroindustrial/bionegocios/1">Bionegocios</option>
                            <option value="ing_agroindustrial/gestion/2">Gestion de recursos hidrobiologicos</option>
                            <option value="ing_agroindustrial/negocios/4">Negocios agroindustrial</option>
                            <option value="ing_agroindustrial/topicos/3">Topicos</option>
 
                        </optgroup>
                        <optgroup label="Industrial">
                            <option value="ing_industrial/ingenieria/5">Ingenieria de calidad</option>
                            <option value="ing_industrial/automatizacion/6">Automatización de la manufactura </option>
                            <option value="ing_industrial/producto/7">Producto y estrategia</option>
                            <option value="ing_industrial/mercado/8">Mercado de Capitales</option>
                        </optgroup>
                        <optgroup label="Sistemas">
                            <option value="ing_sistemas/desarrollo_software/9">Desarrollo de software</option>
                            <option value="ing_sistemas/seguridad_informatica/10">Seguridad informatica</option>
                            <option value="ing_sistemas/gestor_sistemas/11">Gestor de sistemas </option>
                            <option value="ing_sistemas/admin_tecnologias/12">Administrador de tecnologias de la información</option>

                        </optgroup>
                        <optgroup label="Transporte">
                            <option value="ing_transporte/tecnologias/13">Tecnologia de transporte</option>
                            <option value="ing_transporte/gestion/14">Gestion calidad</option>
                            <option value="ing_transporte/ingenieria/15">Ingenieria de mantenimiento</option>
                            <option value="ing_transporte/simulacion/16">Simulación de sistemas</option>

                        </optgroup>

                    </select>
                </div>

                <div>
                    <label for="code">  Codigo</label>
                    <input type="text" name="codigo" id="code"   value="<?php  echo $row['code']; ?>  " disabled>
                </div>

                <div>
                    <label for="codigo">Nuevo Codigo</label>
                    <input type="text" name="nCodigo" id="codigo"    required>
                </div>

                <div>
                    <label for="titulo">Titulo</label>
                    <input type="text"   id="titulo" value="<?php  echo $row['name'];?> "  disabled >
                </div>



                <div>
                    <label for="n_titulo">Nuevo titulo</label>
                    <input type="text" name="nTitulo" id="n_titulo" required>
                </div>

                <div>
                    <label for="autor">Autor</label>
                    <input type="text"   value="<?php  echo $row['author']; ?> "   disabled>
                </div>

                <div>
                    <label for="n_autor">Nuevo autor</label>
                    <input type="text" name="nAutor" id="n_autor"  required>
                </div>
 
                <div>
                    <label for="fuente">Fuente</label>
                    <input type="text"   id="fuente"  value="<?php  echo $row['source']; ?> "  disabled>
                </div>
            <?php }  ?>
            
        
                <div>
                    <label for="n_fuente">Nueva fuente</label>
                    <input type="text" name="nFuente" id="nfuente">

                </div>


                <div>
                    <label for="imagen"> Nueva imagen </label>
                    <input type="file" name="nImagen" id="nimagen" accept=".jpg,.jpeg,.png,.mp3,.mp4,.webp">

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