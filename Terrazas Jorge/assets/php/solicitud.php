<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/BibliotecaUNFV/Terrazas Jorge/assets/css/style.css">
</head>
<body>
    <main>
        

        <?php
            $email_to = "terrazasjorge02@gmail.com";
            $password_email="";
            $email_subject = "Solicitud desde el sitio web biblioteca unfv";

            $nombre=$_POST['txtNombre'];
            $apellido=$_POST['txtApellido'];
            $correo=$_POST['txtCorreo'];
            $tipo=$_POST['txtTipo'];
            $codLib=$_POST['txtCodLib'];
            $comentario=$_POST['txtComentario'];
            echo "<h1>Solicitud</h1>";
            echo "<div class='parrafos'>";
            echo "<p>Nombre:  ",$nombre,"</p>";
            echo "<p>Apellido:  ",$apellido,"</p>";
            echo "<p>Correo:  ",$correo,"</p>";
            echo "<p>Tipo:  ",$tipo,"</p>";
            echo "<p>Codigo:  ",$codLib,"</p>";
            echo "<p>Comentario:  ",$comentario,"</p>";
            echo "</div>";

            $email_message = "Detalles del formulario de solicitud:<br><br>";
            $email_message .= "Nombre: " . $nombre . "<br>";
            $email_message .= "Apellido: " . $apellido . "<br>";
            $email_message .= "Correo: " . $correo . "<br>";
            $email_message .= "Tipo: " . $tipo . "<br>";
            $email_message .= "Codigo: " . $codLib . "<br>";
            $email_message .= "Comentario: " . $comentario . "<br>";
            $result="";
            if(isset($_POST['submit'])){
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
                    echo "Algo esta mal, por favor inténtelo de nuevo.";
                }
                else{
                    echo "¡La solicitud se ha enviada con éxito!";
                }
            }
        ?>
    </main>
</body>
</html>
