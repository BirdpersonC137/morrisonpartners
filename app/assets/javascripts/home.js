$(document).ready(function() {    
    $( "#msg" ).addClass('animated').delay( 1000 ).queue(function(next){
        $(this).children(".lead").removeClass("jumbo-p")
        $(this).addClass("fadeInDownBig");
        next();
});
})