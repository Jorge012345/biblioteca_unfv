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

    
        <h2>Agregar</h2> <br>
        <?php 
        if(isset($_GET['alert'])){
            $alert=$_GET['alert'];
        }else{
            $alert="";
        } 
        
        ?>
        <div class="alert"> <p> <?php echo $alert;?></p></div>

        <form id="form-agregar"  method="POST" enctype="multipart/form-data">

            <fieldset class="contenido-solicitud">

                <div>
                    <label for="tipo">Tipo </label>
                    <select name="txtTipo" id="tipo">
                        <option value="articulos/2">Articulos</option>
                        <option value="revistas/3">Revistas</option>
                        <option value="tesis/4">Tesis</option>

                    </select>
                </div>


                <div>
                    <label for="especialidad">Elige especialidad</label>

                    <select id="especialidad" name="txtEspecialidad">

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
                    <label for="codigo">Codigo</label>
                    <input type="text" name="txtCodigo" id="codigo" required>
                </div>

                <div>
                    <label for="titulo">Titulo</label>
                    <input type="text" name="txtTitulo" id="titulo" required>

                </div>


                <div>
                    <label for="autor">Autor</label>
                    <input type="text" name="txtAutor" id="autor">
                </div>

                <div>
                    <label for="autor">Fuente</label>
                    <input type="text" name="txtFuente" id="txtFuente">
                </div>
 
 
                <div>
                    <label for="imagen"> Subir imagen </label>
                    <input type="file" name="imagen" id="imagen" accept=".jpg,.jpeg,.png,.webp">
                </div>


                <div>
                    <label for="pdf">Subir pdf</label>
                    <input type="file" name="pdf">
                </div>


                <div>
                    <input type="submit" class="btn btn--solicitud" value="Agregar" name="agregar">
                    <input type="reset" class="btn btn--solicitud" value="Limpiar">
                    
                </div>

            </fieldset>
        </form>

    </main>
    <div data-include="/BibliotecaUNFV/Terrazas%20Jorge/assets/footer.html"></div>


    <script src="/BibliotecaUNFV/Terrazas%20Jorge/assets/js/agregar.js" ></script>


</body>

</html>