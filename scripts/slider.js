let indice = 1;
muestraSlides(indice);

function avanzaSlider(n){
    muestraSlides(indice+=n);
} 


function posicionSlider(n) {
    muestraSlides(indice=n);
}

setInterval(function tiempo() {
    muestraSlides(indice+=1)
}, 6000)

function muestraSlides(n) {
    let slides = document.getElementsByClassName("item__slider")
    let barras = document.getElementsByClassName("barra")

    if(n > slides.length) {
        indice = 1;
    }

    if(n < 1) {
        indice = slide.length;
    }

    for(i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    for(i = 0; i < barras.length; i++) {
        barras[i].className = barras[i].className.replace(" active", "");
    }

    slides[indice-1].style.display = "block";
    barras[indice-1].className += " active"
}