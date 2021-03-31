const elHumburgerButton = document.querySelector('.menu-button');
const elSiteHeader = document.querySelector('.site-header');

elHumburgerButton.addEventListener('click', function () {
    elSiteHeader.classList.toggle('site-header-open');
});