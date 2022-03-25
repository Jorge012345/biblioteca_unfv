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

                <div>
                    <label for="tipo">Tipo </label>
                    <select name="txtTipo" id="tipo">
                        <option value="articulos">Articulos</option>
                        <option value="revistas">Revistas</option>
                        <option value="tesis">Tesis</option>

                    </select>
                </div>


                <div>
                    <label for="especialidad">Elige especialidad</label>

                    <select id="especialidad" name="txtEspecialidad">

                        <optgroup label="Ing_agroindustrial">

                            <option value="bionegocios">Bionegocios</option>
                            <option value="gestion_recursos">Gestion de recursos hidrobiologicos</option>
                            <option value="negocios_agro">Negocios agroindustrial</option>
                            <option value="topicos">Topicos</option>

                        </optgroup>
                        <optgroup label="Ing_industrial">
                            <option value="ig_calidad">Ingenieria de calidad</option>
                            <option value="auto_manufactura">Automatización de la manufactura </option>
                            <option value="pye">Producto y estrategia</option>
                            <option value="mc_capi">Mercado de Capitales</option>
                        </optgroup>
                        <optgroup label="Ing_sistemas">
                            <option value="d_software">Desarrollo de software</option>
                            <option value="s_info">Seguridad informatica</option>
                            <option value="g_sistemas">Gestor de sistemas </option>
                            <option value="admin_tecnologias">Administrador de tecnologias de la información</option>

                        </optgroup>
                        <optgroup label="Transporte">
                            <option value="t_transport">Tecnologia de transporte</option>
                            <option value="g_calidad">Gestion calidad</option>
                            <option value="ig_mant">Ingenieria de mantenimiento</option>
                            <option value="simu_sistemas">Simulación de sistemas</option>

                        </optgroup>

                    </select>
                </div>

                <div>
                    <label for="codigo">Codigo</label>
                    <input type="text" name="txtCodigo" id="codigo" required>
                </div>


                <div>
                    <label for="titulo">Titulo</label>
                    <input type="text" name="txtTitulo" id="titulo" required >
                </div>



                <div>
                    <label for="n_titulo">Nuevo titulo</label>
                    <input type="text" name="txtNuevoTitulo" id="n_titulo" required>
                </div>



                <div>
                    <label for="autor">Autor</label>
                    <input type="text" name="txtAutor" required>
                </div>

                <div>
                    <label for="n_autor">Nuevo autor</label>
                    <input type="text" name="txtNuevoAutor" id="n_autor" required>
                </div>
 
                <div>
                    <label for="fuente">Fuente</label>
                    <input type="text" name="txtFuente" id="fuente" required>

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
            </fieldset>

        </form>

    </main>
    <div data-include="/BibliotecaUNFV/Terrazas%20Jorge/assets/footer.html"></div>


    <script src="/BibliotecaUNFV/Terrazas%20Jorge/assets/js/modificar.js" ></script>

</body>

</html>