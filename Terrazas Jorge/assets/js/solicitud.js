import ajax from "./ajax.js";

const d=document,
$form=document.getElementById("form-solicitud"),
$message=d.getElementById("mensaje")

d.addEventListener("submit", (e) => {
    
    if (e.target === $form) {
        e.preventDefault();
        let formData = new FormData();

        formData.append("txtNombre", e.target.txtNombre.value);
        formData.append("txtApellido", e.target.txtApellido.value);
        formData.append("txtCorreo", e.target.txtCorreo.value);
        formData.append("txtTipo", e.target.txtTipo.value);
        formData.append("txtCodLib", e.target.txtCodLib.value);
        formData.append("txtComentario", e.target.txtComentario.value);
        
        ajax({
            url: "/BibliotecaUNFV/Terrazas%20Jorge/assets/php/solicitud.php",
            method: "POST",
            success: (res) => {
                
                $message.innerHTML ="¡La solicitud se ha enviado con éxito!"
                
                
            },
            error: (err) =>$message.innerHTML =err,
            data: formData
        });


    }

})



