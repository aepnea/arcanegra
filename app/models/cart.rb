class Cart < ActiveRecord::Base
  belongs_to :customer
  belongs_to :product, :autosave true
  belongs_to :product_group, :autosave true
  belongs_to :state_cart
end
