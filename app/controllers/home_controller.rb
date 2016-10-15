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

  def artist_sheet
    @artist_id = Artist.friendly.find(params[:artist_id])
    @artist_products = Product.where(artist_id: params[:artist_id])

  end

  def product_type
    @product_types = ProductType.all
  end

  def product_list
    @product_list = Product.friendly.where(product_type_id: params[:product_type_id])
    @category_name = ProductType.select(:name).find(params[:product_type_id])
  end

  def product_sheet


    @product_id = Product.friendly.find(params[:product_id])
    ### trayendo nombre de artista
      @artist_name = Artist.friendly.where(id: @product_id.artist_id)

    ### trayendo productos del mismo artista
    @product_random = Product.friendly.where(artist_id: @product_id.artist_id).order("RAND()").first(4)

    ### trayendo atributos de product_type
      p=@product_id.product_type_id
      @product_attribute = ProductAttribute.where(product_type: p)
  end

  def whatwedo
  end
end
