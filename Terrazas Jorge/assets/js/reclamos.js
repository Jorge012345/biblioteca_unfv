import ajax from "./ajax.js";

const d=document,
$form=document.getElementById("form-reclamos"),
$message=d.getElementById("mensaje")

d.addEventListener("submit", (e) => {
    
    if (e.target === $form) {
        e.preventDefault();
        let formData = new FormData();

        formData.append("txtNombre", e.target.txtNombre.value);
        formData.append("txtApellido", e.target.txtApellido.value);
        formData.append("txtCorreo", e.target.txtCorreo.value);
        formData.append("miCheck", e.target.miCheck.value);
        formData.append("solucion", e.target.solucion.value);
        formData.append("fecha", e.target.fecha.value);
        formData.append("hora", e.target.hora.value);
        formData.append("txtComentario", e.target.txtComentario.value);
        formData.append("foto", e.target.foto.value);
        
        ajax({
            url: "/BibliotecaUNFV/Terrazas%20Jorge/assets/php/reclamos.php",
            method: "POST",
            success: (res) => {
                
                $message.innerHTML ="¡El reclamo se ha enviado con éxito!"
                
                
            },
            error: (err) =>$message.innerHTML =err,
            data: formData
        });


    }

})



