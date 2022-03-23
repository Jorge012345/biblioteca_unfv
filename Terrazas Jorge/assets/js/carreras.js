
import { cargarContenido } from "./carga.js";

const d=document


d.addEventListener("click",e=>{
    if(e.target.matches(".carrera img")){
        e.preventDefault()
        cargarContenido(e.target.alt,"","","main")
    }
    if(e.target.matches(".especialidad img")){
        e.preventDefault()
        cargarContenido(e.target.dataset.carrera,e.target.alt,"","main")
    }
    if(e.target.matches(".tipo_libro img")){
        e.preventDefault()
        cargarContenido(e.target.dataset.carrera,e.target.dataset.especialidad,e.target.alt,"main")
    }
})


