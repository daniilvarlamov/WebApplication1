// Функция для открытия модального окна авторизации
function openModal() {
    document.getElementById("loginModal").style.display = "flex";
}

function switchmodal() {
    closeregModal();
    openModal();
}
function validateEmail(email) {
    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return regex.test(email);
}

function openregModal() {
    document.getElementById("regModal").style.display = "flex";
}

if (document.getElementById("logoutBtn")) {
    document.getElementById("logoutBtn").addEventListener("click", function () {
        fetch('/Profile/Logout', {
            method: 'POST'
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Ошибка при запросе на выход из системы');
                }
            })
            .then(data => {
                console.log('Выход из системы выполнен успешно');
                location.reload();
            })
            .catch(error => {
                console.error('Ошибка:', error.message);
            });
    });
}
if (document.querySelector("#loginModal .modal-content form")) {
    document.querySelector("#loginModal .modal-content form").addEventListener("submit", function (event) {
        event.preventDefault();
        if (!validateEmail(document.querySelector("#loginModal .modal-content form #login").value)) {
            document.getElementById("error-message").innerText = "Некорректное имя пользователя/пароль";
        }
        else {
            var form = event.target;
            var formData = new FormData(form);

            fetch('/Profile/Login', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (!data.success) {
                    document.querySelector("#loginModal .modal-content form #login").value = "";
                    document.querySelector("#loginModal .modal-content form #password").value = "";
                    document.querySelector("#loginModal .modal-content form #error-message").innerText = data.message;
                } else {
                    window.location.href = data.redirectTo;
                }
            })
        }
    });
}
if (document.querySelector("#regModal .modal-content form")) {
    document.querySelector("#regModal .modal-content form").addEventListener("submit", function (event) {
        event.preventDefault();
        if (!validateEmail(document.querySelector("#regModal .modal-content form #login").value)) {
            document.querySelector("#regModal .modal-content form #error-message").innerText = "Некорректный email";
        }
        else {
            var form = event.target;
            var formData = new FormData(form);
            fetch('/Profile/Registration', {
                method: 'POST',
                body: formData
            })
                .then(response => response.json())
                .then(data => {
                    if (data.isExist) {
                        document.querySelector("#regModal .modal-content form #password").value = "";
                        document.querySelector("#regModal .modal-content form #password").value = "";
                        document.querySelector("#regModal .modal-content form #error-message").innerText = data.message;
                    } else {
                        window.location.href = data.redirectTo;
                    }
                })
        }
        
    });
}
// Обработчик события для кнопки входа
if (document.getElementById("loginBtn"))
{
    document.getElementById("loginBtn").addEventListener("click", openModal);
    document.getElementById("SignUpBtn").addEventListener("click", openregModal);
}

function closeModal() {
    document.getElementById("loginModal").style.display = "none";
}

function closeregModal() {
    document.getElementById("regModal").style.display = "none";
}