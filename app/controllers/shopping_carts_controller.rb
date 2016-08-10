class ShoppingCartsController < ApplicationController
	def show
		if customer_signed_in?
			@user = current_customer.email
		end
		
	end


end
