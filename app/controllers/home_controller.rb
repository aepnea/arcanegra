class HomeController < ApplicationController
  
  def index
  	@artist_random = Artist.order("RAND()").first(1)
	  @product_random = Product.order("RAND()").first(5)

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

  end

  def whatwedo
  end
end
