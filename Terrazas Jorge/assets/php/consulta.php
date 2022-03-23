<?php
            $email_to = "terrazasjorge02@gmail.com";
            $password_email="";


            $res=array();

            $email_subject = "Consulta desde el sitio web biblioteca unfv";


                $nombre=$_POST['txtNombre'];
                $correo=$_POST['txtCorreo'];
                $mensaje=$_POST['txtComentario'];

                $email_message = "Detalles del formulario de consulta:<br><br>";
                $email_message .= "Nombre: " . $nombre . "<br>";
                $email_message .= "Correo: " . $correo . "<br>";
                $email_message .= "Mensaje: " . $mensaje . "<br>";




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