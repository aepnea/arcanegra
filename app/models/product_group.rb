class ProductGroup < ActiveRecord::Base
	  has_many :products, :through => :product_product_group, autosave: true, :dependent => :destroy
	  has_many :artists, :through => :artist_product_group, autosave: true, :dependent => :destroy
	  has_many :carts, :through => :cart_product_group, autosave: true, :dependent => :destroy

end
