const d = document;

const $nextBtn = d.querySelector(".slider-btns .next"),
  $prevBtn = d.querySelector(".slider-btns .prev"),
  $slides = d.querySelectorAll(".slider-slide");

let i = 0;

setInterval(()=>{
    $slides[i].classList.remove("active");
    i++;
    if (i >= $slides.length) {
      i = 0;
    }
    $slides[i].classList.add("active");
},4000)
