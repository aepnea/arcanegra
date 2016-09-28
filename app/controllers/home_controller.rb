class HomeController < ApplicationController
  before_action :set_shopping_cart

  def index
    @artist_random = Artist.order("RAND()").uniq.first(1)
	  @product_random = Product.order("RAND()").first(4)

### guardando customer id en una cookie
#   if customer_signed_in?
#      @user_id = current_customer.id
#      cookies[:user_id] = @user_id
#    end

  end
  def artists
  	@artist = Artist.all
  end

  def products
    @tazas = Product.where(product_type: '1')
    @tazasplatillo = Product.where(product_type: '2')
    @plato = Product.where(product_type: '3')
    @carcazacelular = Product.where(product_type: '4')
    @carcazatablet = Product.where(product_type: '5')
    @cortinabano = Product.where(product_type: '6')
    @lienzo = Product.where(product_type: '7')
    @polera = Product.where(product_type: '8')
    @poleron = Product.where(product_type: '9')
    @almohada = Product.where(product_type: '10')
    @product_types = ProductType.all
  end

  def product_sheet
    @product_id = Product.find(params[:product_id])
    ### trayendo nombre de artista
      @artist_name = Artist.where(id: @product_id.artist_id)

    ### trayendo productos del mismo artista
    @product_random = Product.where(artist_id: @product_id.artist_id).order("RAND()").first(4)

    ### trayendo atributos de product_type
      p=@product_id.product_type_id
      @product_attribute = ProductAttribute.where(product_type: p)
  end

  def whatwedo
  end
end
