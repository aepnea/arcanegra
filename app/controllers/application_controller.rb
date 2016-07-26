class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_shopping_cart 

  private
  	def set_shopping_cart
  		### preguntando si el usuario tiene o no creado un carro
  		if cookies[:cart_id].blank?
  		#si no tiene se le crea uno		
  			@shopping_cart = Cart.create!(ip: request.remote_ip)
  			cookies[:cart_id] = @shopping_cart.id
  		else
  		# si ya tiene uno se busca y se mete  a variable de clase	
  			@shopping_cart = Cart.find(cookies[:cart_id])
  		end
  		## si por algun motivo no se encuentra el carro se le crea uno nuevo
  		rescue ActiveRecord::RecordNotFound => e
  			@shopping_cart = Cart.create!(ip: request.remote_ip)
  			cookies[:cart_id] = @shopping_cart.id
  	end
end

