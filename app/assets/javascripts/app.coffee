$(document).on "turbolinks:load turbolinks:fetch ready", ()->
  componentHandler.upgradeDom()
  console.log('hola')

  $('.product-home').on 'click', (e)->
    e.stopPropagation();
  $('.product-home').each (i)->
    i++
    $(this).attr('id','click'+i)
    $(this).on 'click', ->
      console.log('clock 1')
      $('.short-description-home').removeClass('activo')
      $(this).find('.short-description-home').addClass('activo')
      console.log('clock')
      $(window).on "click", ->
        $('.short-description-home').removeClass('activo')


  backhead = $('.background-header').height()
  $(window).scroll ()->
    wScroll = $(this).scrollTop();

    pixels= -wScroll/2 + "px"

    if (wScroll <= backhead)
      $('.background-header').css("background-position", "0 " + pixels)