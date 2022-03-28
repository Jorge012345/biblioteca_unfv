<?php
    if(isset($_REQUEST['agregar'])){


        $tipo=$_REQUEST['txtTipo'];
        $especialidad=$_REQUEST['txtEspecialidad'];
        $codigo=$_REQUEST['txtCodigo'];
        $titulo=$_REQUEST['txtTitulo'];
        $autor=$_REQUEST['txtAutor'];
        $fuente=$_REQUEST['txtFuente'];

        /*separando strings y guardando en variables */ 
        list($carrera1,$especialidad1,$code_especialidad)= explode('/',$especialidad);
        list($tipo1,$code_tipo)= explode('/',$tipo);
        $int_code_especialidad=(int)$code_especialidad;
        $int_code_tipo=(int)$code_tipo;

        /*insertar imagen*/
        $nombre_imagen=$_FILES['imagen']['name'];
        $temporalimg=$_FILES['imagen']['tmp_name'];
        $rutaimg1="../../../assets/img/carreras/{$carrera1}/{$especialidad1}/{$tipo1}/{$nombre_imagen}";
        $rutaimg2="assets/img/carreras/{$carrera1}/{$especialidad1}/{$tipo1}/{$nombre_imagen}";
        move_uploaded_file($temporalimg,$rutaimg1);


        /*insertando pdf*/
        $nombre_pdf=$_FILES['pdf']['name'];
        $temporal_pdf=$_FILES['pdf']['tmp_name'];
        $rutapdf1="../../../media/carreras/{$carrera1}/especialidades/{$tipo1}/{$especialidad1}/{$nombre_pdf}";
        $rutapdf2="media/carreras/{$carrera1}/especialidades/{$tipo1}/{$especialidad1}/{$nombre_pdf}";

        move_uploaded_file($temporal_pdf,$rutapdf1);

        include ("../../../assets/php/conexion.php"); 

        $sql="insert into libros(name,id_type_book,author,source,code,image_book,pdf,id_especialidad) 
           values ('$titulo',$int_code_tipo,'$autor','$fuente','$codigo','$rutaimg2','$rutapdf2',$int_code_especialidad)";

        $resultado= mysqli_query($conexion,$sql);
        $alert='';

        if($resultado){  
            $alert='se inserto correctamente';
            header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/menu/agregar.php?alert={$alert}");

        }else{
            $alert='Hubo un error';
            header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/menu/agregar.php?alert={$alert}");

        }

    }

?>