<?php

    $connection=mysqli_connect("localhost","root","","biblioteca");

    $query = "select * from libros where type='general'";
	
	$result = mysqli_query($query);
	
	if($result){
		while($row = mysqli_fetch_array($result)){
			$name = $row["$yourfield"];
			echo "Nombre: ".$name."br/>";
		}
	}else{
        die(mysqli_error($connection));
    }

?>