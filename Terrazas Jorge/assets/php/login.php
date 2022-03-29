<?php
        $message="";
        $email=$_POST['txtEmail'];
        $pass=$_POST['txtPassword'];
        $type=$_POST['txtType'];
        
        $res=array();
        $connection=mysqli_connect("localhost","root","","biblioteca");
        if($type!=="Administrador"){
            

            if(!$connection){
                $message= "Error: No se pudo conectar a MySQL. Error ";
                die;
            }
            
            $query="SELECT * FROM usuarios WHERE mail = '$email' AND password = '$pass' AND type = '$type'";
            
            
            if (!($result = mysqli_query($connection, $query))) {
                die(mysqli_error($connection));
              
            } 


            if(mysqli_fetch_assoc($result)) {
                
                $res=array(
                    "err"=>false,
                    "status"=>http_response_code(200),
                    "statusText"=>"Logeado con éxito",
                    "page"=>"home"
                );
                //header("location:/BibliotecaUNFV/Terrazas%20Jorge/home.html");     
            }else{
                $message= "Error al ingresar datos en login, vuelva a intentarlo";
                $res=array(
                    "err"=>true,
                    "status"=>http_response_code(400),
                    "statusText"=>"$message"
                );
                
            }
        }else{

            if(!$connection){
                $message= "Error: No se pudo conectar a MySQL. Error ";
                die;
            }
            $admin1="admin";
            
            $query="SELECT * FROM administradores WHERE mail = '$email' AND password = '$pass' AND type = '$admin1' AND state=1";
            
            
            if (!($result = mysqli_query($connection, $query))) {
                die(mysqli_error($connection));
            
            } 


            if(mysqli_fetch_assoc($result)) {
                $res=array(
                    "err"=>false,
                    "status"=>http_response_code(200),
                    "statusText"=>"Logeado con éxito",
                    "page"=>"admin"
                );
                //header("location:/BibliotecaUNFV/Terrazas%20Jorge/admin/home_admin.html");     
            }else{
                $message= "Error, vuelva a intentarlo";
                $res=array(
                    "err"=>true,
                    "status"=>http_response_code(400),
                    "statusText"=>"$message"
                );
                
            }
        
        
        }
        echo json_encode($res);
    
?>