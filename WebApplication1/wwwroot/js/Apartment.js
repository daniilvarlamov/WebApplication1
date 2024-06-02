// Получить модальное окно
var modal = document.getElementById("myModal");

// Получить изображение и элемент модального изображения
var img = document.getElementById("apartmentImg");
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");

img.onclick = function () {
    modal.style.display = "block";
    modalImg.src = this.src;
    captionText.innerHTML = this.alt;
}

// Получить элемент <span>, который закрывает модальное окно
var span = document.getElementsByClassName("close")[0];

// Когда пользователь нажимает на <span> (x), закрыть модальное окно
span.onclick = function () {
    modal.style.display = "none";
}

document.getElementById("bron_btn").addEventListener("click", function (event) {
    event.preventDefault();

    var queryString = window.location.search;

    var queryParams = new URLSearchParams(queryString);

    var id = queryParams.get('id');
    formData = new FormData()
    formData.append('id',id)
    fetch('/Apartment/Reserve', {
        method: 'POST',
        body: formData
    })
    .then(response => {
        if (response.status == 200) {
            alert("Забронировано");
        }
        location.reload();
    })
    .catch(error => {
        console.error('Ошибка:', error);
    });
});



