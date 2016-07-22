class Cart < ActiveRecord::Base
  belongs_to :customer
  belongs_to :state_cart

  has_many :product_groups, :through => :cart_product_group, autosave: true, :dependent => :destroy
  has_many :products, :through => :cart_product, autosave: true, :dependent => :destroy


end
