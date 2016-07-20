class HomeController < ApplicationController
	  #before_action :set_address, only: [:show, :edit, :update, :destroy]
	    before_action :set_address, only: [:show]


	    def index
	    	@artist_random = Artist.order("RAND()").first(1)
	    	@product_random = Product.order("RAND()").first(5)
	    end

end