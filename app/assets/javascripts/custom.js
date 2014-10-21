var jumboHeight = $('.myjumbotron').outerHeight();
function parallax(){
    var scrolled = $(window).scrollTop();
    $('.mybg').scss('height', (jumboHeight-scrolled) + 'px');
}

$(window).scroll(function(e){
    parallax();
});
