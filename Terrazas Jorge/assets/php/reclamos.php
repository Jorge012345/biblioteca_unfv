<?php
        $email_to = "terrazasjorge02@gmail.com";
        $password_email="";
        $email_subject = "Reclamo desde el sitio web biblioteca unfv";
        $res=array();
       
    
            $nombre=$_POST['txtNombre'];
            $apellido=$_POST['txtApellido'];
            $correo=$_POST['txtCorreo'];
            $preg1=$_POST['miCheck'];
            $preg2=$_POST['solucion'];
            $preg3=$_POST['fecha'];
            $preg4=$_POST['hora'];
            $preg5=$_POST['txtComentario'];
            $preg6=$_POST['foto'];

            

            $email_message = "Detalles del formulario de reclamo:<br><br>";
            $email_message .= "Nombre: " . $nombre . "<br>";
            $email_message .= "Apellido: " . $apellido . "<br>";
            $email_message .= "Correo: " . $correo . "<br>";
            $email_message .= "1.Identifica el motivo del reclamo: " . $preg1 . "<br>";
            $email_message .= "2.¿Trataron de darle una solución previa al registro del reclamo?: " . $preg2 . "<br>";
            $email_message .= "3.¿Cuando ocurrio la situación que origina el siguiente reclamo?: " . $preg3 . "<br>";
            $email_message .= "4.¿Aproximadamente a que hora ocurrio?: " . $preg4 . "<br>";
            $email_message .= "5.Descríbenos ¿que sucedió?. Detalla cuál fue el problema que ocasionó que presentes este reclamo de la manera más detallada posible: " . $preg5 . "<br>";
            $email_message .= "6.Adjuntar archivo (opcional) fotos, videos y/o textos que ayuden a evidenciar tu reclamo: " . $preg6 . "<br><br>"; 


            require 'phpmailer/PHPMailerAutoload.php';
            $mail = new PHPMailer;
            $mail->isSMTP();
            $mail->Host='smtp.gmail.com';
            $mail->Port=587;
            $mail->SMTPAuth=true;
            $mail->SMTPSecure='tls';
            $mail->Username=$email_to;
            $mail->Password=$password_email;

            $mail->setFrom($correo,$nombre);
            $mail->addAddress($email_to);
            $mail->addReplyTo($correo,$nombre);

            $mail->isHTML(true);
            $mail->Subject=$email_subject;
            $mail->Body=$email_message;
            if(!$mail->send()){
                $res=array(
                    "err"=>true,
                    "status"=>http_response_code(400),
                    "statusText"=>"Algo esta mal, por favor inténtelo de nuevo."
                );
            }
            else{
                $res=array(
                    "err"=>false,
                    "status"=>http_response_code(200),
                    "statusText"=>"¡La consulta se ha enviado con éxito!"
                );
            }
            echo json_encode($res);
        
        
?>