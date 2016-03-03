var currentBackground = 0;
var backgrounds = [];
backgrounds[0] = 'url(img/fondo1.jpg) no-repeat center center fixed';
backgrounds[1] = 'url(img/fondo2.jpg) no-repeat center center fixed';
backgrounds[2] = 'url(img/fondo3.jpg) no-repeat center center fixed';

function changeBackground() {
    currentBackground++;
    if(currentBackground > 2) currentBackground = 0;

    $('.full').css('background', backgrounds[currentBackground]);
    $('.full').css('-webkit-background-size', 'cover');
    $('.full').css('-moz-background-size', 'cover');
    $('.full').css('background-size', 'cover');
    $('.full').css('-o-background-size', 'cover');
    setTimeout(changeBackground, 4000);
}

$(document).ready(function() {
    setTimeout(changeBackground, 4000);
});