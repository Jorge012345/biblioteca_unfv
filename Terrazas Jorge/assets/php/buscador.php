<?php
    include ("conexion.php"); 
    $busqueda=$_POST['txtBuscar'];
    $res=array();

    $sql="select l.name,l.author,l.source,l.code,t.name_type,esp.name_specialty,car.name_career,l.image_book,l.pdf from libros as l 
    inner join tipo_libro as t on l.id_type_book=t.id 
    inner join especialidades as esp on l.id_especialidad=esp.id 
    inner join carreras as car on esp.id_carrera=car.id 
    where 
    ( esp.name_specialty LIKE '%$busqueda%' OR
      car.name_career LIKE '%$busqueda%' OR
      l.name LIKE '%$busqueda%' OR
      l.author LIKE '%$busqueda%' OR
      l.source LIKE '%$busqueda%' OR
      l.code LIKE '%$busqueda%' OR
      t.name_type LIKE '%$busqueda%' 
    )
    ORDER BY l.id ASC";

    
    $result=mysqli_query($conexion,$sql);
    $total_registros=mysqli_num_rows($result);

    if($result) {
                
        while($row = $result->fetch_assoc()){
           
          
            array_push($res,array(
                "name"=>$row["name"],
                "author"=>$row["author"],
                "source"=>$row["source"],
                "code"=>$row["code"],
                "name_type"=>$row["name_type"],
                "name_specialty"=>$row["name_specialty"],
                "name_career"=>$row["name_career"],
                "image_book"=>$row["image_book"],
                "pdf"=>$row["pdf"]
                
            ));
        }
      
       
    }else{
        $message= "No se encuentran resultados";
        $res=array(
            "err"=>true,
            "status"=>http_response_code(400),
            "statusText"=>"$message"
        );
        
    }

    echo json_encode($res);
?>