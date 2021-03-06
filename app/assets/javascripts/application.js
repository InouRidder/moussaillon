// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require theme/jquery-1.11.3.min.js
//= require theme/jquery.fatNav.min.js
//= require theme/jquery.lighter.js
//= require theme/bootstrap.min.js

//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary

//= require cable.js
//= require theme/modernizr.js
//= require theme/owl.carousel.min.js
//= require theme/own-menu.js
//= require theme/smooth-scroll.js
//= require rs-plugin/js/jquery.tp.min.js
//= require rs-plugin/js/jquery.tp.t.min.js
//= require theme/main.js
//= require rs-plugin/js/jquery.themepunch.enablelog.js
//= require rs-plugin/js/jquery.themepunch.revolution.js

//= require underscore
//= require gmaps/google


$('.owl-carousel-main').owlCarousel({
    loop: true,
    margin: 10,
    nav: true,
    dots: true,
    navText: ['<', '>'],
    responsive: {
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
})


