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

/*(function(){
    if (!window.navigator.standalone) {
        var meta = document.createElement("meta");
        meta.setAttribute("name", "apple-mobile-web-app-status-bar-style");
        meta.setAttribute("content", "black-translucent");
        var head = document.getElementsByTagName("head")[0];
        head.appendChild(meta);
    }
}());*/

//Function to avoid landscape view.
 var updateLayout = function() {
         if (window.innerWidth != currentWidth) {
               currentWidth = window.innerWidth;
               var orient = (currentWidth == 320) ? "profile" : "landscape";
               document.body.setAttribute("orient", orient);
               window.scrollTo(0, 1);
             }
          };

       /*iPhone.DomLoad(updateLayout);
       setInterval(updateLayout, 400);*/

        var updateStatusBar = navigator.userAgent.match(/iphone|ipad|ipod/i) &&
                    parseInt(navigator.appVersion.match(/OS (\d)/)[1], 10) >= 0;
            if (updateStatusBar) {
                        document.body.style.marginTop= "20px !important";
            }


(function(){
    if (!window.navigator.standalone) {
        var meta = document.createElement("meta");
        meta.setAttribute("name", "apple-mobile-web-app-status-bar-style");
        meta.setAttribute("content", "white-translucent");
        var head = document.getElementsByTagName("head")[0];
        head.appendChild(meta);
    }
}());

$('#example').handsontable({
    data: $data,
    minSpareRows: 1,
    colHeaders: true,
    contextMenu: true
});