$(document).on "turbolinks:load turbolinks:fetch ready", ()->
  componentHandler.upgradeDom()
  console.log('cambie')

  # $('.product-home').on 'click', (e)->
  #   e.stopPropagation();
  # $('.product-home').each (i)->
  #   i++
  #   $(this).attr('id','click'+i)
  #   $(this).on 'click', ->
  #     console.log('clock 1')
  #     $('.short-description-home').removeClass('activo')
  #     $(this).find('.short-description-home').addClass('activo')
  #     console.log('clock')
  #     $(window).on "click", ->
  #       $('.short-description-home').removeClass('activo')


  backhead = $('.background-header').height()
  $(window).scroll ()->
    wScroll = $(this).scrollTop();

    pixels= -100 + (-wScroll)
    pixels2= 100 - (-wScroll/8)
    percent= -50 - (-wScroll/8)

    if (wScroll <= backhead)
      $('.background-header').css("background-position", "0 " + pixels + "px")
      $('.hills').css("background-position", "0 " + pixels2 + "%")
      $('.content-header').css('transform', 'translate(-50%, '+ percent + '%)')