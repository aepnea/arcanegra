class Cart < ActiveRecord::Base
  belongs_to :customer
  belongs_to :product
  belongs_to :product_group
  belongs_to :state_cart
end
