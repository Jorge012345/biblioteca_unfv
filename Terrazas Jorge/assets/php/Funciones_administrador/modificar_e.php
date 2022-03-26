
<?php

if(isset($_REQUEST['modificar'])){
    $especialidad=$_POST['nespecialidad'];
    $carrera=$_POST['ncarrera'];
    $tipo=$_POST['ntipo'];
    $codigo=$_POST['nCodigo'];
    $titulo=$_POST['nTitulo'];
    $autor=$_POST['nAutor'];
    $fuente=$_POST['nFuente'];
    
    list($especialidad1,$codespecialidad)= explode('-',$especialidad);
    list($tipo1,$codtipo)= explode('-',$tipo);
 
    $int_codespecialidad=(int)$codespecialidad;
    $int_codtipo=(int)$codtipo;
    
    $imagen=$_FILES['nImagen']['name'];
    $temporalimagen=$_FILES['nImagen']['tmp_name'];
    $ruta1="../../../assets/img/carreras/{$carrera}/{$especialidad1}/{$tipo1}/{$imagen}";
    $ruta2="assets/img/carreras/{$carrera}/{$especialidad1}/{$tipo1}/{$imagen}";

    move_uploaded_file($temporalimagen,$ruta1);
    
    $pdf=$_FILES['nPdf']['name'];
    $temporalpdf=$_FILES['nPdf']['tmp_name'];    
    $rutapdf1="../../../media/carreras/{$carrera}/especialidades/{$tipo1}/{$especialidad1}/{$pdf}";
    $rutapdf2="media/carreras/{$carrera}/especialidades/{$tipo1}/{$especialidad1}/{$pdf}";

    move_uploaded_file($temporalpdf,$rutapdf1);
     
    include ("../../../assets/php/conexion.php"); 
    $sql="update libros set  name='$titulo',id_type_book=$int_codtipo,author='$autor',source='$fuente',
             code='$codigo',image_book='$ruta2',pdf='$rutapdf2',id_especialidad=$int_codespecialidad ";

    $resultado= mysqli_query($conexion,$sql);/*ejecuta el query*/
     
    
    if($resultado){  
        
        header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/home_admin.php");
    
    }else{
        die(mysqli_error($connection));
    }
                       


}
?>

