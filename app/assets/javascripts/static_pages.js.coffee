# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(window).bind 'orientationchange', ->
  if window.orientation % 180 == 0
    $(document.body).css
      "-webkit-transform-origin" : ''
      "-webkit-transform" : ''
  else
    if window.orientation > 0
      $(document.body).css
        "-webkit-transform-origin" : "200px 190px"
        "-webkit-transform" : "rotate(-90deg)"
    else
      $(document.body).css
        "-webkit-transform-origin" : "280px 190px"
        "-webkit-transform" : "rotate(90deg)"
