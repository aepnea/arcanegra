class ShoppingCartsController < ApplicationController
	before_action :set_shopping_cart

	def show
		if customer_signed_in?
			@user = current_customer.email
		end

	end

end
