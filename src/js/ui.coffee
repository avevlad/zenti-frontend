fixedStyleParams = ->
  menuElem = $('.menu')
  menuWidth = menuElem.width()
  headerElem = $('.header')
  contentElem = $('.content')
  width = $(window).width()
  height = $(window).height()
  contentWidth = width - menuWidth - 1
  menuElem.css
    height: height
  if width > 800
    headerElem.css
      width: contentWidth
    contentElem.css
      width: contentWidth
  else
    headerElem.attr('style', '')
    contentElem.attr('style', '')

$ ->
  do fixedStyleParams
  $(window).resize -> do fixedStyleParams