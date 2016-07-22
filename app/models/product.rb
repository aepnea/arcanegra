class Product < ActiveRecord::Base
  belongs_to :product_type
  belongs_to :artist

  has_many :product_groups, :through => :product_product_group, autosave: true, :dependent => :destroy

  has_many :carts, :through => :cart_product, autosave: true, :dependent => :destroy


end
