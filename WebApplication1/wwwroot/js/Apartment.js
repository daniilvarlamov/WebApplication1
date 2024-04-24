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
    })
    .catch(error => {
        console.error('Ошибка:', error);
    });
});