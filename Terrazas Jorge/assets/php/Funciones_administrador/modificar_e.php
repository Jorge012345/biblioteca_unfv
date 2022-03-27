
<?php

if(isset($_REQUEST['modificar'])){
  
    if(empty($_REQUEST['nespecialidad']) || empty($_REQUEST['ntipo']) || empty($_REQUEST['id'])){
        echo "<p>Hay un campo vacio </p>";

    }else{
        include ("../../../assets/php/conexion.php"); 

        $id=(int)$_REQUEST['id'];
        $especialidad=$_REQUEST['nespecialidad'];
        $tipo=$_REQUEST['ntipo'];
        $codigo=$_REQUEST['nCodigo'];
        $titulo=$_REQUEST['nTitulo'];
        $autor=$_REQUEST['nAutor'];
        $fuente=$_REQUEST['nFuente'];
        
        list($carrera1,$especialidad1,$code_especialidad)= explode('/',$especialidad);
        list($tipo1,$code_tipo)= explode('/',$tipo);
 
        $int_code_especialidad=(int)$code_especialidad;
        $int_code_tipo=(int)$code_tipo;
        
        /*agregar imagen*/
        $nombre_imagen=$_FILES['nImagen']['name'];
        $temporalimagen=$_FILES['nImagen']['tmp_name'];
        $rutaimg1="../../../assets/img/carreras/{$carrera1}/{$especialidad1}/{$tipo1}/{$nombre_imagen}";
        $rutaimg2="assets/img/carreras/{$carrera1}/{$especialidad1}/{$tipo1}/{$nombre_imagen}";

        move_uploaded_file($temporalimagen,$rutaimg1);
               
        /*agregar PDF*/

        $nombre_pdf=$_FILES['nPdf']['name'];
        $temporalpdf=$_FILES['nPdf']['tmp_name'];    
        $rutapdf1="../../../media/carreras/{$carrera1}/especialidades/{$tipo1}/{$especialidad1}/{$nombre_pdf}";
        $rutapdf2="media/carreras/{$carrera1}/especialidades/{$tipo1}/{$especialidad1}/{$nombre_pdf}";

        move_uploaded_file($temporalpdf,$rutapdf1);
         

        $sql="update libros set  name='$titulo',id_type_book=$int_code_tipo,author='$autor',source='$fuente',
                 code='$codigo',image_book='$rutaimg2',pdf='$rutapdf2',id_especialidad=$int_code_especialidad 
                 where id=$id";

        $resultado= mysqli_query($conexion,$sql);/*ejecuta el query*/
         
        
        if($resultado){  
            
            header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/home_admin.php");
        
        }else{
            die(mysqli_error($connection));
        }

        }
                       
} else{
        echo "<p>Ocurrio un error</p>";
}

    
?>

