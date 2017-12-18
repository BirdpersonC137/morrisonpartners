$(document).ready(function() {    
    $( "#msg" ).addClass('animated').delay( 1000 ).queue(function(next){
        $(this).children(".lead").removeClass("jumbo-p")
        $(this).addClass("fadeInDownBig");
        next();
    });
    $(window).scroll(function () {
        //if you hard code, then use console
        //.log to determine when you want the 
        //nav bar to stick.  
        console.log($(window).scrollTop())
      if ($(window).scrollTop() > 65) {
        $('#nav_bar').addClass('fixed-top');
      }
      if ($(window).scrollTop() < 65) {
        $('#nav_bar').removeClass('fixed-top');
      }
    });
})