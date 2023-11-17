document.addEventListener("DOMContentLoaded", function () {
    // A dokumentum tartalma betöltődött, 2 másodperc után elrejtjük a betöltési animációt
    setTimeout(function() {
        var loaderWrapper = document.querySelector(".loader-wrapper");
        loaderWrapper.style.display = "none";
    }, 5000); // 2000 milliszekundum = 2 másodperc
});
