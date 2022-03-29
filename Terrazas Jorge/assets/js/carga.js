import ajax from "./ajax.js"; 
const d=document

export function cargarContenido(carrera,especialidad,libro,main){
    let formData = new FormData();

    formData.append("carrera", carrera);
    formData.append("especialidad", especialidad);
    formData.append("libro", libro);
    
    const $main=d.querySelector(main),
    $h2=d.createElement("h2"),
    $h2_2=d.createElement("h2"),
    $h2_3=d.createElement("h2")

    ajax({
        url: "/BibliotecaUNFV/Terrazas%20Jorge/assets/php/conexionBD.php",
        method: "POST",
        success: (res) => {
            const json = JSON.parse(res);
            
                
                if(carrera!=="" && especialidad==="" && libro===""){
                    $main.innerHTML=""
                    
                    const $table=d.createElement("table"),
                    $tr1=d.createElement("tr"),
                    $tr2=d.createElement("tr"),
                    $fragment=d.createDocumentFragment()
                    
                    let i=0
                    json.forEach(el => {
                        i++
                        let carrera=el.name_career

                        const $td=d.createElement("td"),
                        $figure=d.createElement("figure"),
                        $a=d.createElement("a"),
                        $img=d.createElement("img"),
                        $figcaption=d.createElement("figcaption")
                        
                        $img.setAttribute("src",`/BibliotecaUNFV/Terrazas%20Jorge/${el.image}`)
                        $img.setAttribute("width",`400`)
                        $img.setAttribute("height",`290`)
                        $img.setAttribute("alt",el.name_specialty)
                        $img.dataset.carrera=carrera
                        $figcaption.textContent=el.name_specialty

                        $a.href="#"
                        $a.classList.add("especialidad")
                        $a.appendChild($img)
                        $figure.appendChild($a)
                        $figure.appendChild($figcaption)
                        $td.appendChild($figure)


                        if(i<=2){
                            $tr1.appendChild($td)
                        }else{
                            $tr2.appendChild($td)
                        }
                    });
                    $h2.textContent=carrera
                    $h2_2.textContent="Especialidades"
                    $table.appendChild($tr1)
                    $table.appendChild($tr2)
                    $fragment.appendChild($h2)
                    $fragment.appendChild($h2_2)
                    $fragment.appendChild($table)
                    

                    $main.appendChild($fragment)
                }else if(carrera!=="" && especialidad!=="" && libro===""){
                    $main.innerHTML=""
                    
                    const $table=d.createElement("table"),
                    $fragment=d.createDocumentFragment()
                    
                    json.forEach(el => {

                        const $td=d.createElement("td"),
                        $figure=d.createElement("figure"),
                        $a=d.createElement("a"),
                        $img=d.createElement("img"),
                        $figcaption=d.createElement("figcaption"),
                        $tr=d.createElement("tr"),
                        $h2_fig=d.createElement("h2")
                        
                        $img.setAttribute("src",`/BibliotecaUNFV/Terrazas%20Jorge/${el.image}`)
                        $img.setAttribute("width",`400`)
                        $img.setAttribute("height",`290`)
                        $img.setAttribute("alt",el.name_type)
                        $img.dataset.carrera=carrera
                        $img.dataset.especialidad=especialidad
                        $h2_fig.textContent=el.name_type
                        $figcaption.appendChild($h2_fig)

                        $a.href="#"
                        $a.classList.add("tipo_libro")
                        $a.appendChild($img)
                        $figure.appendChild($a)
                        $figure.appendChild($figcaption)
                        $td.appendChild($figure)


                        $tr.appendChild($td)
                        $table.appendChild($tr)
                    });
                    $h2.textContent=carrera
                    $h2_2.textContent=especialidad
                    $fragment.appendChild($h2)
                    $fragment.appendChild($h2_2)
                    $fragment.appendChild($table)

                    $main.appendChild($fragment)
                }else if(carrera!=="" && especialidad!=="" && libro!==""){
                    $main.innerHTML=""
                    let i=0
                    const $table=d.createElement("table"),
                    $fragment=d.createDocumentFragment(),
                    $tr1=d.createElement("tr"),
                    $tr2=d.createElement("tr"),
                    $tr3=d.createElement("tr")
                    console.log(json[0].image)
                    json.forEach(el => {
                        i++
                        const $td=d.createElement("td"),
                        $td2=d.createElement("td"),
                        $figure=d.createElement("figure"),
                        $a=d.createElement("a"),
                        $img=d.createElement("img"),
                        $p1=d.createElement("p"),
                        $p2=d.createElement("p"),
                        $p3=d.createElement("p"),
                        $p4=d.createElement("p")

                        $p1.textContent=`Nombre: ${el.name}`
                        $p2.textContent=`Autor: ${el.author}`
                        $p3.textContent=`Fuente: ${el.source}`
                        $p4.textContent=`Codigo: ${el.code}`
                        

                        $img.setAttribute("src",`/BibliotecaUNFV/Terrazas%20Jorge/${el.image_book}`)
                        $img.setAttribute("width",`240`)
                        $img.setAttribute("height",`290`)
                        $img.setAttribute("alt",el.code)

                        $a.href=`/BibliotecaUNFV/Terrazas%20Jorge/${el.pdf}`
                        $a.target="_blank"
                        $a.appendChild($img)
                        $figure.appendChild($a)
                        
                        $td.appendChild($p1)
                        $td.appendChild($p2)
                        $td.appendChild($p3)
                        $td.appendChild($p4)
                        $td2.appendChild($figure)



                        if(i<=2){
                            $tr1.appendChild($td)
                            $tr1.appendChild($td2)
                        }else if(i<=4){
                            $tr2.appendChild($td)
                            $tr2.appendChild($td2)
                        }else if(i<=6){
                            $tr3.appendChild($td)
                            $tr3.appendChild($td2)
                        }
                    });
                    $h2.textContent=carrera
                    $h2_2.textContent=especialidad
                    $h2_3.textContent=libro
                    $table.appendChild($tr1)
                    $table.appendChild($tr2)
                    $table.appendChild($tr3)
                    $fragment.appendChild($h2)
                    $fragment.appendChild($h2_2)
                    $fragment.appendChild($h2_3)
                    $fragment.appendChild($table)

                    $main.appendChild($fragment)
                }

               
            
            
        },
        error: (err) => err,
        data: formData
    });
    
    
   
}