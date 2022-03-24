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
        <h2>Agregar</h2>

        <form id="form-agregar"  method="post" enctype="multipart/form-data">

            <fieldset class="contenido-solicitud">

                <div>
                    <label for="tipo">Tipo </label>
                    <select name="txtTipo" id="tipo">
                        <option value="articulos">Articulos</option>
                        <option value="libros">Libros</option>
                        <option value="revistas">Revistas</option>
                        <option value="tesis">Tesis</option>

                    </select>
                </div>


                <div>
                    <label for="especialidad">Elige especialidad</label>

                    <select id="especialidad" name="txtEspecialidad">

                        <optgroup label="Agroindustrial">

                            <option value="/ing_agroindustrial/bionegocios">Bionegocios</option>
                            <option value="/ing_agroindustrial/gestion">Gestion de recursos hidrobiologicos</option>
                            <option value="/ing_agroindustrial/negocios">Negocios agroindustrial</option>
                            <option value="/ing_agroindustrial/topicos">Topicos</option>

                        </optgroup>
                        <optgroup label="Industrial">
                            <option value="/ing_industrial/ingenieria">Ingenieria de calidad</option>
                            <option value="/ing_industrial/automatizacion">Automatización de la manufactura </option>
                            <option value="/ing_industrial/producto">Producto y estrategia</option>
                            <option value="/ing_industrial/mercado">Mercado de Capitales</option>
                        </optgroup>
                        <optgroup label="Sistemas">
                            <option value="/ing_sistemas/desarrollo_software">Desarrollo de software</option>
                            <option value="/ing_sistemas/seguridad_informatica">Seguridad informatica</option>
                            <option value="/ing_sistemas/gestor_sistemas">Gestor de sistemas </option>
                            <option value="/ing_sistemas/admin_tecnologias">Administrador de tecnologias de la información</option>

                        </optgroup>
                        <optgroup label="Transporte">
                            <option value="/ing_transporte/tecnologias">Tecnologia de transporte</option>
                            <option value="/ing_transporte/gestion">Gestion calidad</option>
                            <option value="/ing_transporte/ingenieria">Ingenieria de mantenimiento</option>
                            <option value="/ing_transporte/simulacion">Simulación de sistemas</option>

                        </optgroup>



                    </select>
                </div>

                <div>
                    <label for="codigo">Codigo</label>
                    <input type="text" name="txtCodigo" id="codigo">
                </div>

                <div>
                    <label for="titulo">Titulo</label>
                    <input type="text" name="txtTitulo" id="titulo">

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
                    <input type="file" name="imagen" id="imagen" accept=".jpg,.jpeg,.png,.mp3,.mp4">
                </div>


                <div>
                    <label for="pdf">Subir pdf</label>
                    <input type="file" name="pdf">
                </div>


                <div>
                    <input type="submit" class="btn btn--solicitud" value="Agregar" name="agregar">
                    <input type="reset" class="btn btn--solicitud" value="Limpiar" name="agregar">
                    
                </div>

            </fieldset>
        </form>

    </main>
    <div data-include="/BibliotecaUNFV/Terrazas%20Jorge/assets/footer.html"></div>


    <script src="/BibliotecaUNFV/Terrazas%20Jorge/assets/js/eliminar.js" ></script>


</body>

</html>