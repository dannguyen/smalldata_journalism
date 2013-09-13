//= require vendor/jquery/jquery
//= require vendor/bootstrap/transition
//= require vendor/bootstrap/dropdown
//= require vendor/bootstrap/collapse
//= require_directory .


$(document).ready(function(){

    var $root = $('html, body');

    $('a').click(function() {
        var href = $.attr(this, 'href').replace(/^\//, '');

        var href_offset = (href === '#') ? 0 : $(href).offset().top;
        $root.animate({
            scrollTop: href_offset
        }, 500, function () {
            if(href !== '#'){
                window.location.hash = href;
            }            
        });
        return false;
    });
})


