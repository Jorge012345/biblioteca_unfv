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
        
 
        <form action="../../assets/php/Funciones_administrador/modificar_alumno.php" method="POST" enctype="multipart/form-data">

            <fieldset class="contenido-solicitud">
        <?php 
 
            
                include ("../../assets/php/conexion.php"); 
                $id=(int)$_GET['id'];
                
                $sql="select * from usuarios where id={$id}" ;
                $query=mysqli_query($conexion,$sql);
                $row=mysqli_fetch_assoc($query); 
 
        ?>

                <div>
                    <label for="id">id</label>
                    <input type="text" id="id" value="<?php echo $row['id'];?>" disabled>

                     <input type="hidden" name="id" value="<?php echo $row['id'];?>"  >
                </div>

                <div>
                    <label for="nombre"> Nombre</label>
                    <input type="text" name="nombre" id="nombre"  value="<?php  echo $row['name']; ?> " required  >
                </div>

                <div>
                    <label for="nombre">Apellido</label>
                    <input type="text" name="apellido" id="apellido"  value="<?php  echo $row['lastname']; ?> " required >
                </div>
 
                <div>
                    <label for="codigo">Codigo</label>
                    <input type="text"   id="codigo" name="codigo" value="<?php  echo $row['code']; ?> "  required  >
                </div>

 
                <div>
                    <label for="dni">Dni</label>
                    <input type="text" id="dni" name="dni"  value="<?php  echo $row['dni']; ?> " required >
                </div>
 
 
                <div>
                    <label for="mail">Email</label>
                    <input type="email"   id="mail"  name="mail" value="<?php  echo $row['mail']; ?> " required >
                </div>

                <div>
                    <label >Genero:</label>

                    <div>
                        <label>Masculino</label><input class="check" type="radio" name="genero" value="Masculino" required>
                    </div>
                    <div>
                        <label>Femenino</label><input class="check" type="radio" name="genero" value="Femenino" required>
                    </div>
                   
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