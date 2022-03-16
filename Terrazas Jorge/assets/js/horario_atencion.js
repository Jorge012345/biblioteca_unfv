const arrayHorario=[ ["Sector/Dia","Lunes","Martes","Miercoles","Jueves","Viernes","Sabado"],
["Oficina","16:20 - 18:00","13:50 - 15:30","","16:20 - 18:00","",""],
["Secretaría","","","16:20 - 18:00","","","18:00 - 20:45"] ]
const d=document
const $tableHorario=d.getElementById("horario")
let cad=""

for(let i=0;i<arrayHorario.length;i++){
    cad+=`<tr>`
    for(let j=0;j<arrayHorario[i].length;j++){
        if(i===0){
            cad+=`<th>${arrayHorario[i][j]}</th>`
        }else{
            cad+=`<td>${arrayHorario[i][j]}</td>`
        }
        
    }
    cad+=`</tr>`
}
$tableHorario.innerHTML=cad
