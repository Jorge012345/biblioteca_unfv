<?php
        $message="";
        $carrera=$_POST['carrera'];
        $especialidad=$_POST['especialidad'];
        $libro=$_POST['libro'];
        
        $res=array();
        $connection=mysqli_connect("localhost","root","","biblioteca");
        
        if($carrera!=="" && $especialidad==="" && $libro===""){
            

            if(!$connection){
                $message= "Error: No se pudo conectar a MySQL. Error ";
                die;
            }
            
            
            $query="SELECT especialidades.name_specialty, especialidades.image, carreras.name_career FROM especialidades INNER JOIN carreras ON especialidades.id_carrera=carreras.id WHERE carreras.name_career='$carrera'";
            
            if (!($result = mysqli_query($connection, $query))) {
                die(mysqli_error($connection));
              
            } 
            
            $arr=array();

            if($result) {
                
                while($row = $result->fetch_assoc()){
                   
                  
                    array_push($res,array(
                        "name_specialty"=>$row["name_specialty"],
                        "image"=>$row["image"],
                        "name_career"=>$row["name_career"]
                    ));
                }
              
               
            }else{
                $message= "Error al ingresar datos en login, vuelva a intentarlo";
                $res=array(
                    "err"=>true,
                    "status"=>http_response_code(400),
                    "statusText"=>"$message"
                );
                
            }
        }else if($carrera!=="" && $especialidad!=="" && $libro===""){
            if(!$connection){
                $message= "Error: No se pudo conectar a MySQL. Error ";
                die;
            }
            
            
            $query="SELECT tipo_libro.name_type, tipo_libro.image FROM tipo_libro";
            
            if (!($result = mysqli_query($connection, $query))) {
                die(mysqli_error($connection));
              
            } 
            
            $arr=array();

            if($result) {
                
                while($row = $result->fetch_assoc()){
                   
                  
                    array_push($res,array(
                        "name_type"=>$row["name_type"],
                        "image"=>$row["image"]
                    ));
                }
              
               
            }else{
                $message= "Error al ingresar datos en login, vuelva a intentarlo";
                $res=array(
                    "err"=>true,
                    "status"=>http_response_code(400),
                    "statusText"=>"$message"
                );
                
            }

        }else if($carrera!=="" && $especialidad!=="" && $libro!==""){
            if(!$connection){
                $message= "Error: No se pudo conectar a MySQL. Error ";
                die;
            }
            
            
            $query="SELECT * FROM libros INNER JOIN especialidades ON libros.id_especialidad=especialidades.id INNER JOIN tipo_libro ON libros.id_type_book=tipo_libro.id WHERE tipo_libro.name_type='$libro' and especialidades.name_specialty='$especialidad'";
            
            if (!($result = mysqli_query($connection, $query))) {
                die(mysqli_error($connection));
              
            } 
            
            $arr=array();

            if($result) {
                
                while($row = $result->fetch_assoc()){
                   
                  
                    array_push($res,array(
                        "name"=>$row["name"],
                        "author"=>$row["author"],
                        "source"=>$row["source"],
                        "code"=>$row["code"],
                        "pdf"=>$row["pdf"],
                        "image_book"=>$row["image_book"]
                    ));
                }
              
               
            }else{
                $message= "Error al ingresar datos en login, vuelva a intentarlo";
                $res=array(
                    "err"=>true,
                    "status"=>http_response_code(400),
                    "statusText"=>"$message"
                );
                
            }

        }
        echo json_encode($res);
    
?>