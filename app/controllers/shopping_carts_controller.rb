class ShoppingCartsController < ApplicationController
	def show
		@user = current_customer.email
		
	end


end
