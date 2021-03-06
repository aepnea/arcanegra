class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_shopping_cart, :configure_permitted_parameters, :if => :devise_controller?
  before_filter :store_current_location, :unless => :devise_controller?

  #show products cart on layout
  before_action :show_cart_products
# Poner protected
  def show_cart_products
    @p_id = CartProduct.select(:product_id).where(cart_id: cookies[:cart_id])
    @products = Product.where(id: @p_id)
  end
protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :rut])
    end
private

	def store_current_location
		store_location_for(:user, request.url)
	end

  def after_sign_out_path_for(resource)
   	request.referrer || root_path
 	end



  def set_shopping_cart
    ### preguntando si el usuario tiene o no creado un carro
    if cookies[:cart_id].blank?
      #si no tiene se le crea uno
      if signed_in?
        @shopping_cart = Cart.create!(customer_id: current_customer.id, ip: request.remote_ip)
      else
        @shopping_cart = Cart.create!(ip: request.remote_ip)
      end
      cookies[:cart_id] = {:value => @shopping_cart.id, :expires => 168.hour.from_now}
    else
      # si ya tiene uno se busca y se mete  a variable de clase
      @shopping_cart = Cart.find(cookies[:cart_id])
    end

      ### Log del carrito
      logger.info "Creando carro id #{cookies[:cart_id]}"

    ## si por algun motivo no se encuentra el carro se le crea uno nuevo
    rescue ActiveRecord::RecordNotFound => e
      @shopping_cart = Cart.create!(ip: request.remote_ip)
      #cookies[:cart_id] = @shopping_cart.id
      cookies[:cart_id] = {:value => @shopping_cart.id, :expires => 168.hour.from_now}

      ### Log del carrito
      logger.info "Creando despues de RecordNotFound carro id #{cookies[:cart_id]}"


  end
end
