document.getElementById('filterInput').addEventListener('input', function () {
    getFilteredResult(this.value);
});


function getFilteredResult(filterValue) {
    filterValue = filterValue.toLowerCase();
    var items = document.querySelectorAll('#itemsList li');
    items.forEach(function (item) {
        var text = item.textContent.toLowerCase();
        if (text.indexOf(filterValue) !== -1) {
            item.style.display = 'block';
        } else {
            item.style.display = 'none';
        }
    });
}

function filtering(element) {
    var itemText = element.textContent;
    document.getElementById("filterInput").value = itemText;
    getFilteredResult(itemText);
}

document.querySelector('.filter-block form').addEventListener('submit', function (event) {
    event.preventDefault(); // Предотвратить отправку формы по умолчанию
    var form = event.target;
    var minPrice = form.querySelector('#price-min').value.replace(/[^\d]/g, '');
    var maxPrice = form.querySelector('#price-max').value.replace(/[^\d]/g, '');
    var rooms = form.querySelector('#rooms').value;
    var floor = form.querySelector('#floor').value;
    var houseNumber = form.querySelector('#house-number').value;
    var isValid = true;
    if ((minPrice && isNaN(parseInt(minPrice))) ||
        (maxPrice && isNaN(parseInt(maxPrice))) ||
        (rooms && isNaN(parseInt(rooms))) ||
        (floor && isNaN(parseInt(floor))) ||
        (houseNumber && isNaN(parseInt(houseNumber)))) {
        isValid = false;
        alert('Пожалуйста, введите числовые значения для цены, количества комнат, этажа и номера дома');
    }
    if (isValid) {
        form.querySelector('#price-min').value = minPrice;
        form.querySelector('#price-max').value = maxPrice;
        form.querySelector('#rooms').value = rooms;
        form.querySelector('#floor').value = floor;
        form.querySelector('#house-number').value = houseNumber;
        var formData = new FormData(form);

        fetch('/Apartment/Filtering', {
            method: 'POST',
            body: formData
        })
            .then(response => response.json())
            .then(data => {
                updateList(data);
                console.log(data);
            })
            .catch(error => {
                console.error('Ошибка:', error);
            });
    }
});

function updateList(data) {
    // Очищаем текущий список
    var listContainer = document.querySelector('.column-apartments');
    listContainer.innerHTML = '';

    // Создаем новые элементы списка на основе полученных данных
    data.forEach(function (app) {
        var relativePath = app.path_content.replace("\\", "/").replace("wwwroot", "");
        var apartmentItem = document.createElement('div');
        apartmentItem.classList.add('column-apartments__item');
        apartmentItem.innerHTML = `
            <div class="about-apartment">
                <p class="about-apartment__name-company">ЖК Империя</p>
                <a href="/Apartment" target="_blank" class="about-apartment__img">
                    <img src="${relativePath}" alt="План квартиры">
                </a>
                <div class="about-apartment__content">
                    <div class="about-apartment__price">
                        <p class="h3-base-text h3-base-text--black">${app.price.toLocaleString()}</p>
                    </div>
                    <div class="about-apartment__name">
                        <a href="/Apartment" target="_blank" class="b1-semibold-base-text b1-semibold-base-text--black">${app.number_of_rooms === 1 ? 'Однокомнатная квартира' : app.number_of_rooms === 2 ? 'Двухкомнатная квартира' : 'Трехкомнатная квартира'} № ${app.number}</a>
                        <span class="b2-regular-base-text b2-regular-base-text--gray">Площадь: ${app.square} | Этаж: ${app.number_of_floor}</span>
                    </div>
                </div>
            </div>
        `;
        // Добавляем новый элемент в список
        listContainer.appendChild(apartmentItem);
    });
}