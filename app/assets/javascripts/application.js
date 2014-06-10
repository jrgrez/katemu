// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

$(document).ready( function() {
    $('.dropdown-toggle').dropdown();
});

$(document).ready(function() {
    var height_diff = $(window).height() - $('body').height();
    if ( height_diff > 0 ) {
        $('#footer').css( 'margin-top', height_diff );
    }
});

function popupCenter(url, width, height, name) {
    var left = (screen.width/2)-(width/2);
    var top = (screen.height/2)-(height/2);
    return window.open(url, name, "menubar=no,toolbar=no,status=no,width="+width+",height="+height+",toolbar=no,left="+left+",top="+top);
}

$("a.popup").click(function(e) {
    popupCenter($(this).attr("href"), $(this).attr("data-width"), $(this).attr("data-height"), "authPopup");
    e.stopPropagation(); return false;
});

$(document).ready(function () {
    $(window)
        .bind('orientationchange', function(){
            if (window.orientation % 180 == 0){
                $(document.body).css("-webkit-transform-origin", "")
                    .css("-webkit-transform", "");
            }
            else {
                if ( window.orientation > 0) { //clockwise
                    $(document.body).css("-webkit-transform-origin", "200px 190px")
                        .css("-webkit-transform",  "rotate(-90deg)");
                }
                else {
                    $(document.body).css("-webkit-transform-origin", "280px 190px")
                        .css("-webkit-transform",  "rotate(90deg)");
                }
            }
        })
        .trigger('orientationchange');
});