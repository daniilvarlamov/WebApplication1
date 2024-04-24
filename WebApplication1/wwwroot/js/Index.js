
document.addEventListener('DOMContentLoaded', function () {
    var scrollList = document.querySelector('.scroll-list');

    // Проверяем, найден ли элемент
    if (scrollList) {
        // Останавливаем автопрокрутку при наведении мыши
        scrollList.addEventListener('mouseenter', function () {
            scrollList.style.animationPlayState = 'paused';
        });

        // Возобновляем автопрокрутку при уходе мыши
        scrollList.addEventListener('mouseleave', function () {
            scrollList.style.animationPlayState = 'running';
        });
    }
});