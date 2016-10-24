class InShoppingCartsController < ApplicationController
  def create
  	### agrega al carrito de compra
  	in_shopping_cart = CartProduct.new(product_id: params[:product_id], cart_id: cookies[:cart_id])
    logger.info " valor :#{cookies[:cart_id]}"

  	if in_shopping_cart.save
  		redirect_to carrito_path, notice: "producto añadido al carrito"
  	else
  		#notice: "no se pudo agregar al carrito"
  	end
  end

  def destroy
  	### quita del carrito de compra
  	@in_shopping_cart = CartProduct.find(params[:id])
  	@in_shopping_cart.destroy
  	redirect_to carrito_path, notice: "Se ha eliminado el producto del carrito"
  end
end
