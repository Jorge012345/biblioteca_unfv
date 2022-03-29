import ajax from "./ajax.js"




const d=document
const $form=d.getElementById("form-busqueda"),
$panelHome=d.querySelector(".panel-home")
let $fragment=""

d.addEventListener("submit",e=>{
    if(e.target===$form){
        e.preventDefault()
        
        let valor=e.target.txtBuscar.value
        ajax({
            url: "/BibliotecaUNFV/Terrazas%20Jorge/assets/php/buscador.php",
            method: "POST",
            success: (res) => {
                const json = JSON.parse(res)
                $panelHome.innerHTML=""
                $fragment=`
                    <table class="">
                    <tr>
                        <th>Nombre</th>
                        <th>Autor</th>
                        <th>Fuente</th>
                        <th>Datos</th>
                        <th>Pdf</th>

                    </tr>
                    `
                json.forEach(el => {
                    $fragment+=`
                    <tr>
                        <td>${el.name}</td>
                        <td>${el.author}</td>
                        <td>${el.source}</td>
                        <td>
                            <p>Codigo: ${el.code}</p>
                            <p>${el.name_type}</p>
                            <p>${el.name_specialty}</p>
                            <p>${el.name_career}</p>
                        </td>
                        
                        <td> 
                            <a href="/BibliotecaUNFV/Terrazas%20Jorge/${el.pdf}" target="_blank">
                                <img src="/BibliotecaUNFV/Terrazas%20Jorge/${el.image_book}" alt="${el.name}"  width='100' height='120'>
                            </a>
                        </td>
                        
                        
                   
                    </tr>
                    `
                })
                if(json.length!==0){
                    $panelHome.innerHTML=$fragment
                }else{
                    $panelHome.innerHTML="<h3>No se encuentran resultados</h3>"
                }
                
                
                   
                
                
            },
            error: (err) => console.log(err),
            data: new FormData(e.target)
        });


    }
})