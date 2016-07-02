$("p").hide()

$('li').hide().delay(500).fadeIn(1400);

$(document).ready(function(){
    $("#image").click(function(){
        $(this).hide();
    });
});

$('li').css('border-style', 'solid').css('border-color', 'pink').css('padding','2px').css('width','25%');
