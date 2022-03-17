
<?php

include ("../../../assets/php/conexion.php"); 

eliminar($_GET['id']);

function eliminar($id){
    $sql="DELETE FROM lista_administrador WHERE id='".$id."' ";
    $resultado= mysql_query($sql,$conexion);
    if($resultado){
        header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/administracion/admi_administradores.php");
    }else{
        die(mysqli_error($connection));
    }

}
 
?>

 