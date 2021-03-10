const selectElement = document.querySelector('.seleccion');
const select = document.querySelector('.select');
const hidden = document.querySelector(".hidden");



selectElement.addEventListener('change', () => {
    let evento = selectElement.options[selectElement.selectedIndex].text;

    if(evento === "Auditoría de sistemas") {
        hidden.style.display = "block"
    } else {
        hidden.style.display = "none"
        select.addEventListener('change', () => {
            let evento = select.options[select.selectedIndex].text;

            if(evento === "Auditoría de sistemas") {
                hidden.style.display = "block"
            } else {
                hidden.style.display = "none"
            }
        });
    }
});





