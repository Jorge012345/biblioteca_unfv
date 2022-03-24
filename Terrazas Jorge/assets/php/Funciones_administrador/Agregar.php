<?php
    include ("../../../assets/php/conexion.php"); 
    if(isset($_REQUEST['agregar'])){
        $tipo=$_REQUEST['txtTipo'];
        $especialidad=$_REQUEST['txtEspecialidad'];
        $codigo=$_REQUEST['txtCodigo'];
        $titulo=$_REQUEST['txtTitulo'];
        $autor=$_REQUEST['txtAutor'];
        $autor=$_REQUEST['txtFuente'];

 

        $nombre_imagen=$_FILES['imagen']['name'];
        $temporal=$_FILES['imagen']['tmp_name'];
        $ruta="/BibliotecaUNFV/Terrazas%20Jorge/assets/img/carreras/{$especialidad}/{$tipo}/{$nombre_imagen}";
        move_uploaded_file($temporal,$ruta);


        $nombrepdf=$_FILES['pdf']['name'];
        $temporalpdf=$_FILES['pdf']['tmp_name'];
        $rutapdf="/BibliotecaUNFV/Terrazas%20Jorge/media/carreras/pdf_auxiliar/{$nombrepdf}";
        move_uploaded_file($temporalpdf,$rutapdf);

        $rutaprincipal="/BibliotecaUNFV/Terrazas%20Jorge/media/carreras";
        $rutanuevapdf= copy($temporalpdf,);



    }

?>