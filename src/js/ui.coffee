menuHeight = ->
  menuElem = $('.menu')
  height = $(window).height()
  console.log height
  menuElem.css
    height: height

$ ->
  do menuHeight
  $(window).resize -> do menuHeight