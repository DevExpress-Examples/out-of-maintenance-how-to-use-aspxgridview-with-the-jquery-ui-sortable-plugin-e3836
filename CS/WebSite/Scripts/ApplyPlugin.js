$(function() {
    
    $('.column').sortable({
        connectWith: '.column',
        opacity: 0.6,
        forcePlaceholderSize: true,
        placeholder: 'placeholder',
        handle: '.header'
    });

});